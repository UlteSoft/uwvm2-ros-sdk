-- @file Interfaces.hs
-- @brief Full fourier haskell codecs and original record metadata.
-- @details Complete fourier ros1_aurora_bridge_v1 values in haskell. 51 original records retain 138 fields and 28
-- interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
-- definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
-- profile API manual under document/platform/fourier/en_US/catalog/.
module RosWasm.Interfaces where
import Data.Word
import RosWasm
import RosWasm.Records
import qualified RosWasm.Typed as Typed
-- | \@brief Call the selected uwvm_fourier_bridge/ExecuteMove service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeExecuteMoveRequest, response=Ros1Uwvm_fourier_bridgeExecuteMoveResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeExecuteMove :: Owner -> Ros1Uwvm_fourier_bridgeExecuteMoveRequest -> IO (Either RosError
    Ros1Uwvm_fourier_bridgeExecuteMoveResponse)
callRos1Uwvm_fourier_bridgeExecuteMove = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/ExecuteMove service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeExecuteMoveRequest, response=Ros1Uwvm_fourier_bridgeExecuteMoveResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeExecuteMove :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeExecuteMoveRequest))
incomingRos1Uwvm_fourier_bridgeExecuteMove = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/ExecuteMove service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeExecuteMoveRequest,
-- response=Ros1Uwvm_fourier_bridgeExecuteMoveResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeExecuteMove :: Owner -> Word64 -> Ros1Uwvm_fourier_bridgeExecuteMoveResponse -> IO
    (Either RosError ())
respondRos1Uwvm_fourier_bridgeExecuteMove = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/GetBaseData service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeGetBaseDataRequest, response=Ros1Uwvm_fourier_bridgeGetBaseDataResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeGetBaseData :: Owner -> Ros1Uwvm_fourier_bridgeGetBaseDataRequest -> IO (Either RosError
    Ros1Uwvm_fourier_bridgeGetBaseDataResponse)
callRos1Uwvm_fourier_bridgeGetBaseData = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/GetBaseData service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeGetBaseDataRequest, response=Ros1Uwvm_fourier_bridgeGetBaseDataResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeGetBaseData :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeGetBaseDataRequest))
incomingRos1Uwvm_fourier_bridgeGetBaseData = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/GetBaseData service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeGetBaseDataRequest,
-- response=Ros1Uwvm_fourier_bridgeGetBaseDataResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeGetBaseData :: Owner -> Word64 -> Ros1Uwvm_fourier_bridgeGetBaseDataResponse -> IO
    (Either RosError ())
respondRos1Uwvm_fourier_bridgeGetBaseData = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/GetCartesianState service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeGetCartesianStateRequest,
-- response=Ros1Uwvm_fourier_bridgeGetCartesianStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeGetCartesianState :: Owner -> Ros1Uwvm_fourier_bridgeGetCartesianStateRequest -> IO
    (Either RosError Ros1Uwvm_fourier_bridgeGetCartesianStateResponse)
callRos1Uwvm_fourier_bridgeGetCartesianState = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/GetCartesianState service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeGetCartesianStateRequest,
-- response=Ros1Uwvm_fourier_bridgeGetCartesianStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeGetCartesianState :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeGetCartesianStateRequest))
incomingRos1Uwvm_fourier_bridgeGetCartesianState = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/GetCartesianState service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros1Uwvm_fourier_bridgeGetCartesianStateRequest,
-- response=Ros1Uwvm_fourier_bridgeGetCartesianStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeGetCartesianState :: Owner -> Word64 ->
    Ros1Uwvm_fourier_bridgeGetCartesianStateResponse -> IO (Either RosError ())
respondRos1Uwvm_fourier_bridgeGetCartesianState = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/GetContactData service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeGetContactDataRequest, response=Ros1Uwvm_fourier_bridgeGetContactDataResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeGetContactData :: Owner -> Ros1Uwvm_fourier_bridgeGetContactDataRequest -> IO (Either
    RosError Ros1Uwvm_fourier_bridgeGetContactDataResponse)
callRos1Uwvm_fourier_bridgeGetContactData = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/GetContactData service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeGetContactDataRequest, response=Ros1Uwvm_fourier_bridgeGetContactDataResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeGetContactData :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeGetContactDataRequest))
incomingRos1Uwvm_fourier_bridgeGetContactData = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/GetContactData service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeGetContactDataRequest,
-- response=Ros1Uwvm_fourier_bridgeGetContactDataResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeGetContactData :: Owner -> Word64 -> Ros1Uwvm_fourier_bridgeGetContactDataResponse ->
    IO (Either RosError ())
respondRos1Uwvm_fourier_bridgeGetContactData = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/GetFsmName service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeGetFsmNameRequest, response=Ros1Uwvm_fourier_bridgeGetFsmNameResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeGetFsmName :: Owner -> Ros1Uwvm_fourier_bridgeGetFsmNameRequest -> IO (Either RosError
    Ros1Uwvm_fourier_bridgeGetFsmNameResponse)
callRos1Uwvm_fourier_bridgeGetFsmName = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/GetFsmName service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeGetFsmNameRequest, response=Ros1Uwvm_fourier_bridgeGetFsmNameResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeGetFsmName :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeGetFsmNameRequest))
incomingRos1Uwvm_fourier_bridgeGetFsmName = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/GetFsmName service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeGetFsmNameRequest,
-- response=Ros1Uwvm_fourier_bridgeGetFsmNameResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeGetFsmName :: Owner -> Word64 -> Ros1Uwvm_fourier_bridgeGetFsmNameResponse -> IO
    (Either RosError ())
respondRos1Uwvm_fourier_bridgeGetFsmName = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/GetFsmState service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeGetFsmStateRequest, response=Ros1Uwvm_fourier_bridgeGetFsmStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeGetFsmState :: Owner -> Ros1Uwvm_fourier_bridgeGetFsmStateRequest -> IO (Either RosError
    Ros1Uwvm_fourier_bridgeGetFsmStateResponse)
callRos1Uwvm_fourier_bridgeGetFsmState = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/GetFsmState service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeGetFsmStateRequest, response=Ros1Uwvm_fourier_bridgeGetFsmStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeGetFsmState :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeGetFsmStateRequest))
incomingRos1Uwvm_fourier_bridgeGetFsmState = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/GetFsmState service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeGetFsmStateRequest,
-- response=Ros1Uwvm_fourier_bridgeGetFsmStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeGetFsmState :: Owner -> Word64 -> Ros1Uwvm_fourier_bridgeGetFsmStateResponse -> IO
    (Either RosError ())
respondRos1Uwvm_fourier_bridgeGetFsmState = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/GetGroupMotionState service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest,
-- response=Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeGetGroupMotionState :: Owner -> Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest -> IO
    (Either RosError Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse)
callRos1Uwvm_fourier_bridgeGetGroupMotionState = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/GetGroupMotionState service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest,
-- response=Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeGetGroupMotionState :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest))
incomingRos1Uwvm_fourier_bridgeGetGroupMotionState = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/GetGroupMotionState service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest,
-- response=Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeGetGroupMotionState :: Owner -> Word64 ->
    Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse -> IO (Either RosError ())
respondRos1Uwvm_fourier_bridgeGetGroupMotionState = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/GetGroupMotorCfg service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest, response=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeGetGroupMotorCfg :: Owner -> Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest -> IO (Either
    RosError Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse)
callRos1Uwvm_fourier_bridgeGetGroupMotorCfg = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/GetGroupMotorCfg service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest, response=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeGetGroupMotorCfg :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest))
incomingRos1Uwvm_fourier_bridgeGetGroupMotorCfg = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/GetGroupMotorCfg service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest,
-- response=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeGetGroupMotorCfg :: Owner -> Word64 -> Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
    -> IO (Either RosError ())
respondRos1Uwvm_fourier_bridgeGetGroupMotorCfg = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/GetGroupState service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeGetGroupStateRequest, response=Ros1Uwvm_fourier_bridgeGetGroupStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeGetGroupState :: Owner -> Ros1Uwvm_fourier_bridgeGetGroupStateRequest -> IO (Either
    RosError Ros1Uwvm_fourier_bridgeGetGroupStateResponse)
callRos1Uwvm_fourier_bridgeGetGroupState = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/GetGroupState service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeGetGroupStateRequest, response=Ros1Uwvm_fourier_bridgeGetGroupStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeGetGroupState :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeGetGroupStateRequest))
incomingRos1Uwvm_fourier_bridgeGetGroupState = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/GetGroupState service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeGetGroupStateRequest,
-- response=Ros1Uwvm_fourier_bridgeGetGroupStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeGetGroupState :: Owner -> Word64 -> Ros1Uwvm_fourier_bridgeGetGroupStateResponse -> IO
    (Either RosError ())
respondRos1Uwvm_fourier_bridgeGetGroupState = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/GetSnapshot service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeGetSnapshotRequest, response=Ros1Uwvm_fourier_bridgeGetSnapshotResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeGetSnapshot :: Owner -> Ros1Uwvm_fourier_bridgeGetSnapshotRequest -> IO (Either RosError
    Ros1Uwvm_fourier_bridgeGetSnapshotResponse)
callRos1Uwvm_fourier_bridgeGetSnapshot = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/GetSnapshot service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeGetSnapshotRequest, response=Ros1Uwvm_fourier_bridgeGetSnapshotResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeGetSnapshot :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeGetSnapshotRequest))
incomingRos1Uwvm_fourier_bridgeGetSnapshot = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/GetSnapshot service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeGetSnapshotRequest,
-- response=Ros1Uwvm_fourier_bridgeGetSnapshotResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeGetSnapshot :: Owner -> Word64 -> Ros1Uwvm_fourier_bridgeGetSnapshotResponse -> IO
    (Either RosError ())
respondRos1Uwvm_fourier_bridgeGetSnapshot = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/GetStandPose service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeGetStandPoseRequest, response=Ros1Uwvm_fourier_bridgeGetStandPoseResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeGetStandPose :: Owner -> Ros1Uwvm_fourier_bridgeGetStandPoseRequest -> IO (Either
    RosError Ros1Uwvm_fourier_bridgeGetStandPoseResponse)
callRos1Uwvm_fourier_bridgeGetStandPose = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/GetStandPose service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeGetStandPoseRequest, response=Ros1Uwvm_fourier_bridgeGetStandPoseResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeGetStandPose :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeGetStandPoseRequest))
incomingRos1Uwvm_fourier_bridgeGetStandPose = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/GetStandPose service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeGetStandPoseRequest,
-- response=Ros1Uwvm_fourier_bridgeGetStandPoseResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeGetStandPose :: Owner -> Word64 -> Ros1Uwvm_fourier_bridgeGetStandPoseResponse -> IO
    (Either RosError ())
respondRos1Uwvm_fourier_bridgeGetStandPose = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/GetUpperFsmName service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest, response=Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeGetUpperFsmName :: Owner -> Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest -> IO (Either
    RosError Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse)
callRos1Uwvm_fourier_bridgeGetUpperFsmName = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/GetUpperFsmName service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest, response=Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeGetUpperFsmName :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest))
incomingRos1Uwvm_fourier_bridgeGetUpperFsmName = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/GetUpperFsmName service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest,
-- response=Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeGetUpperFsmName :: Owner -> Word64 -> Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse
    -> IO (Either RosError ())
respondRos1Uwvm_fourier_bridgeGetUpperFsmName = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/GetUpperFsmState service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest, response=Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeGetUpperFsmState :: Owner -> Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest -> IO (Either
    RosError Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse)
callRos1Uwvm_fourier_bridgeGetUpperFsmState = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/GetUpperFsmState service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest, response=Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeGetUpperFsmState :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest))
incomingRos1Uwvm_fourier_bridgeGetUpperFsmState = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/GetUpperFsmState service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest,
-- response=Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeGetUpperFsmState :: Owner -> Word64 -> Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse
    -> IO (Either RosError ())
respondRos1Uwvm_fourier_bridgeGetUpperFsmState = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/GetVelocitySource service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest,
-- response=Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeGetVelocitySource :: Owner -> Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest -> IO
    (Either RosError Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse)
callRos1Uwvm_fourier_bridgeGetVelocitySource = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/GetVelocitySource service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest,
-- response=Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeGetVelocitySource :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest))
incomingRos1Uwvm_fourier_bridgeGetVelocitySource = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/GetVelocitySource service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest,
-- response=Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeGetVelocitySource :: Owner -> Word64 ->
    Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse -> IO (Either RosError ())
respondRos1Uwvm_fourier_bridgeGetVelocitySource = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/GetVelocitySourceName service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest,
-- response=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeGetVelocitySourceName :: Owner -> Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest ->
    IO (Either RosError Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse)
callRos1Uwvm_fourier_bridgeGetVelocitySourceName = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/GetVelocitySourceName service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest,
-- response=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeGetVelocitySourceName :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest))
incomingRos1Uwvm_fourier_bridgeGetVelocitySourceName = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/GetVelocitySourceName service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest,
-- response=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeGetVelocitySourceName :: Owner -> Word64 ->
    Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse -> IO (Either RosError ())
respondRos1Uwvm_fourier_bridgeGetVelocitySourceName = Typed.respondValue
-- | \@brief Publish one complete uwvm_fourier_bridge/GroupState message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeGroupState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos1Uwvm_fourier_bridgeGroupState :: Owner -> Ros1Uwvm_fourier_bridgeGroupState -> IO (Either RosError ())
publishRos1Uwvm_fourier_bridgeGroupState = Typed.publishValue
-- | \@brief Poll and decode one complete uwvm_fourier_bridge/GroupState message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros1Uwvm_fourier_bridgeGroupState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos1Uwvm_fourier_bridgeGroupState :: Owner -> IO (Either RosError Ros1Uwvm_fourier_bridgeGroupState)
pollRos1Uwvm_fourier_bridgeGroupState = Typed.pollValue
-- | \@brief Publish one complete uwvm_fourier_bridge/GroupValues message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeGroupValues.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos1Uwvm_fourier_bridgeGroupValues :: Owner -> Ros1Uwvm_fourier_bridgeGroupValues -> IO (Either RosError ())
publishRos1Uwvm_fourier_bridgeGroupValues = Typed.publishValue
-- | \@brief Poll and decode one complete uwvm_fourier_bridge/GroupValues message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros1Uwvm_fourier_bridgeGroupValues.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos1Uwvm_fourier_bridgeGroupValues :: Owner -> IO (Either RosError Ros1Uwvm_fourier_bridgeGroupValues)
pollRos1Uwvm_fourier_bridgeGroupValues = Typed.pollValue
-- | \@brief Publish one complete uwvm_fourier_bridge/MotionRecipe message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeMotionRecipe.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos1Uwvm_fourier_bridgeMotionRecipe :: Owner -> Ros1Uwvm_fourier_bridgeMotionRecipe -> IO (Either RosError
    ())
publishRos1Uwvm_fourier_bridgeMotionRecipe = Typed.publishValue
-- | \@brief Poll and decode one complete uwvm_fourier_bridge/MotionRecipe message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros1Uwvm_fourier_bridgeMotionRecipe.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos1Uwvm_fourier_bridgeMotionRecipe :: Owner -> IO (Either RosError Ros1Uwvm_fourier_bridgeMotionRecipe)
pollRos1Uwvm_fourier_bridgeMotionRecipe = Typed.pollValue
-- | \@brief Call the selected uwvm_fourier_bridge/SetFsmState service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeSetFsmStateRequest, response=Ros1Uwvm_fourier_bridgeSetFsmStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeSetFsmState :: Owner -> Ros1Uwvm_fourier_bridgeSetFsmStateRequest -> IO (Either RosError
    Ros1Uwvm_fourier_bridgeSetFsmStateResponse)
callRos1Uwvm_fourier_bridgeSetFsmState = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/SetFsmState service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeSetFsmStateRequest, response=Ros1Uwvm_fourier_bridgeSetFsmStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeSetFsmState :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeSetFsmStateRequest))
incomingRos1Uwvm_fourier_bridgeSetFsmState = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/SetFsmState service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeSetFsmStateRequest,
-- response=Ros1Uwvm_fourier_bridgeSetFsmStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeSetFsmState :: Owner -> Word64 -> Ros1Uwvm_fourier_bridgeSetFsmStateResponse -> IO
    (Either RosError ())
respondRos1Uwvm_fourier_bridgeSetFsmState = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/SetGroupCommand service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeSetGroupCommandRequest, response=Ros1Uwvm_fourier_bridgeSetGroupCommandResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeSetGroupCommand :: Owner -> Ros1Uwvm_fourier_bridgeSetGroupCommandRequest -> IO (Either
    RosError Ros1Uwvm_fourier_bridgeSetGroupCommandResponse)
callRos1Uwvm_fourier_bridgeSetGroupCommand = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/SetGroupCommand service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeSetGroupCommandRequest, response=Ros1Uwvm_fourier_bridgeSetGroupCommandResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeSetGroupCommand :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeSetGroupCommandRequest))
incomingRos1Uwvm_fourier_bridgeSetGroupCommand = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/SetGroupCommand service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeSetGroupCommandRequest,
-- response=Ros1Uwvm_fourier_bridgeSetGroupCommandResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeSetGroupCommand :: Owner -> Word64 -> Ros1Uwvm_fourier_bridgeSetGroupCommandResponse
    -> IO (Either RosError ())
respondRos1Uwvm_fourier_bridgeSetGroupCommand = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/SetMotorCfgPd service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest, response=Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeSetMotorCfgPd :: Owner -> Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest -> IO (Either
    RosError Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse)
callRos1Uwvm_fourier_bridgeSetMotorCfgPd = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/SetMotorCfgPd service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest, response=Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeSetMotorCfgPd :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest))
incomingRos1Uwvm_fourier_bridgeSetMotorCfgPd = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/SetMotorCfgPd service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest,
-- response=Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeSetMotorCfgPd :: Owner -> Word64 -> Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse -> IO
    (Either RosError ())
respondRos1Uwvm_fourier_bridgeSetMotorCfgPd = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/SetStandPose service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeSetStandPoseRequest, response=Ros1Uwvm_fourier_bridgeSetStandPoseResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeSetStandPose :: Owner -> Ros1Uwvm_fourier_bridgeSetStandPoseRequest -> IO (Either
    RosError Ros1Uwvm_fourier_bridgeSetStandPoseResponse)
callRos1Uwvm_fourier_bridgeSetStandPose = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/SetStandPose service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeSetStandPoseRequest, response=Ros1Uwvm_fourier_bridgeSetStandPoseResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeSetStandPose :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeSetStandPoseRequest))
incomingRos1Uwvm_fourier_bridgeSetStandPose = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/SetStandPose service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeSetStandPoseRequest,
-- response=Ros1Uwvm_fourier_bridgeSetStandPoseResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeSetStandPose :: Owner -> Word64 -> Ros1Uwvm_fourier_bridgeSetStandPoseResponse -> IO
    (Either RosError ())
respondRos1Uwvm_fourier_bridgeSetStandPose = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/SetUpperFsmState service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest, response=Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeSetUpperFsmState :: Owner -> Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest -> IO (Either
    RosError Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse)
callRos1Uwvm_fourier_bridgeSetUpperFsmState = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/SetUpperFsmState service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest, response=Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeSetUpperFsmState :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest))
incomingRos1Uwvm_fourier_bridgeSetUpperFsmState = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/SetUpperFsmState service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest,
-- response=Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeSetUpperFsmState :: Owner -> Word64 -> Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse
    -> IO (Either RosError ())
respondRos1Uwvm_fourier_bridgeSetUpperFsmState = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/SetVelocity service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeSetVelocityRequest, response=Ros1Uwvm_fourier_bridgeSetVelocityResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeSetVelocity :: Owner -> Ros1Uwvm_fourier_bridgeSetVelocityRequest -> IO (Either RosError
    Ros1Uwvm_fourier_bridgeSetVelocityResponse)
callRos1Uwvm_fourier_bridgeSetVelocity = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/SetVelocity service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeSetVelocityRequest, response=Ros1Uwvm_fourier_bridgeSetVelocityResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeSetVelocity :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeSetVelocityRequest))
incomingRos1Uwvm_fourier_bridgeSetVelocity = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/SetVelocity service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeSetVelocityRequest,
-- response=Ros1Uwvm_fourier_bridgeSetVelocityResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeSetVelocity :: Owner -> Word64 -> Ros1Uwvm_fourier_bridgeSetVelocityResponse -> IO
    (Either RosError ())
respondRos1Uwvm_fourier_bridgeSetVelocity = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/SetVelocitySource service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest,
-- response=Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeSetVelocitySource :: Owner -> Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest -> IO
    (Either RosError Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse)
callRos1Uwvm_fourier_bridgeSetVelocitySource = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/SetVelocitySource service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest,
-- response=Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeSetVelocitySource :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest))
incomingRos1Uwvm_fourier_bridgeSetVelocitySource = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/SetVelocitySource service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest,
-- response=Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeSetVelocitySource :: Owner -> Word64 ->
    Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse -> IO (Either RosError ())
respondRos1Uwvm_fourier_bridgeSetVelocitySource = Typed.respondValue
-- | \@brief Publish one complete uwvm_fourier_bridge/Status message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeStatus.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos1Uwvm_fourier_bridgeStatus :: Owner -> Ros1Uwvm_fourier_bridgeStatus -> IO (Either RosError ())
publishRos1Uwvm_fourier_bridgeStatus = Typed.publishValue
-- | \@brief Poll and decode one complete uwvm_fourier_bridge/Status message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros1Uwvm_fourier_bridgeStatus.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos1Uwvm_fourier_bridgeStatus :: Owner -> IO (Either RosError Ros1Uwvm_fourier_bridgeStatus)
pollRos1Uwvm_fourier_bridgeStatus = Typed.pollValue
-- | \@brief Publish one complete uwvm_fourier_bridge/VelocityCommand message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components:
-- message=Ros1Uwvm_fourier_bridgeVelocityCommand.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos1Uwvm_fourier_bridgeVelocityCommand :: Owner -> Ros1Uwvm_fourier_bridgeVelocityCommand -> IO (Either
    RosError ())
publishRos1Uwvm_fourier_bridgeVelocityCommand = Typed.publishValue
-- | \@brief Poll and decode one complete uwvm_fourier_bridge/VelocityCommand message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros1Uwvm_fourier_bridgeVelocityCommand.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos1Uwvm_fourier_bridgeVelocityCommand :: Owner -> IO (Either RosError Ros1Uwvm_fourier_bridgeVelocityCommand)
pollRos1Uwvm_fourier_bridgeVelocityCommand = Typed.pollValue
-- | \@brief Call the selected uwvm_fourier_bridge/WaitGroupsMotionComplete service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest,
-- response=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos1Uwvm_fourier_bridgeWaitGroupsMotionComplete :: Owner ->
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest -> IO (Either RosError
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse)
callRos1Uwvm_fourier_bridgeWaitGroupsMotionComplete = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/WaitGroupsMotionComplete service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest,
-- response=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos1Uwvm_fourier_bridgeWaitGroupsMotionComplete :: Owner -> IO (Either RosError (Typed.Incoming
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest))
incomingRos1Uwvm_fourier_bridgeWaitGroupsMotionComplete = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/WaitGroupsMotionComplete service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest,
-- response=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos1Uwvm_fourier_bridgeWaitGroupsMotionComplete :: Owner -> Word64 ->
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse -> IO (Either RosError ())
respondRos1Uwvm_fourier_bridgeWaitGroupsMotionComplete = Typed.respondValue
