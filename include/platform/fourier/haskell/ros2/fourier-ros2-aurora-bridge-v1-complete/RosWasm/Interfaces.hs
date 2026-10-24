-- @file Interfaces.hs
-- @brief Full fourier haskell codecs and original record metadata.
-- @details Complete fourier ros2_aurora_bridge_v1 values in haskell. 51 original records retain 138 fields and 28
-- interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
-- definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
-- profile API manual under document/platform/fourier/en_US/catalog/.
module RosWasm.Interfaces where
import Data.Word
import RosWasm
import RosWasm.Records
import qualified RosWasm.Typed as Typed
-- | \@brief Publish one complete uwvm_fourier_bridge/msg/GroupState message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components:
-- message=Ros2Uwvm_fourier_bridgeMsgGroupState.
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
publishRos2Uwvm_fourier_bridgeMsgGroupState :: Owner -> Ros2Uwvm_fourier_bridgeMsgGroupState -> IO (Either RosError
    ())
publishRos2Uwvm_fourier_bridgeMsgGroupState = Typed.publishValue
-- | \@brief Poll and decode one complete uwvm_fourier_bridge/msg/GroupState message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Uwvm_fourier_bridgeMsgGroupState.
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
pollRos2Uwvm_fourier_bridgeMsgGroupState :: Owner -> IO (Either RosError Ros2Uwvm_fourier_bridgeMsgGroupState)
pollRos2Uwvm_fourier_bridgeMsgGroupState = Typed.pollValue
-- | \@brief Publish one complete uwvm_fourier_bridge/msg/GroupValues message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components:
-- message=Ros2Uwvm_fourier_bridgeMsgGroupValues.
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
publishRos2Uwvm_fourier_bridgeMsgGroupValues :: Owner -> Ros2Uwvm_fourier_bridgeMsgGroupValues -> IO (Either
    RosError ())
publishRos2Uwvm_fourier_bridgeMsgGroupValues = Typed.publishValue
-- | \@brief Poll and decode one complete uwvm_fourier_bridge/msg/GroupValues message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Uwvm_fourier_bridgeMsgGroupValues.
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
pollRos2Uwvm_fourier_bridgeMsgGroupValues :: Owner -> IO (Either RosError Ros2Uwvm_fourier_bridgeMsgGroupValues)
pollRos2Uwvm_fourier_bridgeMsgGroupValues = Typed.pollValue
-- | \@brief Publish one complete uwvm_fourier_bridge/msg/MotionRecipe message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components:
-- message=Ros2Uwvm_fourier_bridgeMsgMotionRecipe.
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
publishRos2Uwvm_fourier_bridgeMsgMotionRecipe :: Owner -> Ros2Uwvm_fourier_bridgeMsgMotionRecipe -> IO (Either
    RosError ())
publishRos2Uwvm_fourier_bridgeMsgMotionRecipe = Typed.publishValue
-- | \@brief Poll and decode one complete uwvm_fourier_bridge/msg/MotionRecipe message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Uwvm_fourier_bridgeMsgMotionRecipe.
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
pollRos2Uwvm_fourier_bridgeMsgMotionRecipe :: Owner -> IO (Either RosError Ros2Uwvm_fourier_bridgeMsgMotionRecipe)
pollRos2Uwvm_fourier_bridgeMsgMotionRecipe = Typed.pollValue
-- | \@brief Publish one complete uwvm_fourier_bridge/msg/Status message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Uwvm_fourier_bridgeMsgStatus.
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
publishRos2Uwvm_fourier_bridgeMsgStatus :: Owner -> Ros2Uwvm_fourier_bridgeMsgStatus -> IO (Either RosError ())
publishRos2Uwvm_fourier_bridgeMsgStatus = Typed.publishValue
-- | \@brief Poll and decode one complete uwvm_fourier_bridge/msg/Status message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Uwvm_fourier_bridgeMsgStatus.
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
pollRos2Uwvm_fourier_bridgeMsgStatus :: Owner -> IO (Either RosError Ros2Uwvm_fourier_bridgeMsgStatus)
pollRos2Uwvm_fourier_bridgeMsgStatus = Typed.pollValue
-- | \@brief Publish one complete uwvm_fourier_bridge/msg/VelocityCommand message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components:
-- message=Ros2Uwvm_fourier_bridgeMsgVelocityCommand.
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
publishRos2Uwvm_fourier_bridgeMsgVelocityCommand :: Owner -> Ros2Uwvm_fourier_bridgeMsgVelocityCommand -> IO (Either
    RosError ())
publishRos2Uwvm_fourier_bridgeMsgVelocityCommand = Typed.publishValue
-- | \@brief Poll and decode one complete uwvm_fourier_bridge/msg/VelocityCommand message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Uwvm_fourier_bridgeMsgVelocityCommand.
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
pollRos2Uwvm_fourier_bridgeMsgVelocityCommand :: Owner -> IO (Either RosError
    Ros2Uwvm_fourier_bridgeMsgVelocityCommand)
pollRos2Uwvm_fourier_bridgeMsgVelocityCommand = Typed.pollValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/ExecuteMove service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request, response=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response.
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
callRos2Uwvm_fourier_bridgeSrvExecuteMove :: Owner -> Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request -> IO (Either
    RosError Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response)
callRos2Uwvm_fourier_bridgeSrvExecuteMove = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/ExecuteMove service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request, response=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvExecuteMove :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request))
incomingRos2Uwvm_fourier_bridgeSrvExecuteMove = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/ExecuteMove service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response.
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
respondRos2Uwvm_fourier_bridgeSrvExecuteMove :: Owner -> Word64 -> Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response ->
    IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvExecuteMove = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/GetBaseData service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request, response=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response.
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
callRos2Uwvm_fourier_bridgeSrvGetBaseData :: Owner -> Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request -> IO (Either
    RosError Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response)
callRos2Uwvm_fourier_bridgeSrvGetBaseData = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/GetBaseData service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request, response=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvGetBaseData :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request))
incomingRos2Uwvm_fourier_bridgeSrvGetBaseData = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/GetBaseData service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response.
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
respondRos2Uwvm_fourier_bridgeSrvGetBaseData :: Owner -> Word64 -> Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response ->
    IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvGetBaseData = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/GetCartesianState service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response.
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
callRos2Uwvm_fourier_bridgeSrvGetCartesianState :: Owner -> Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request ->
    IO (Either RosError Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response)
callRos2Uwvm_fourier_bridgeSrvGetCartesianState = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/GetCartesianState service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvGetCartesianState :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request))
incomingRos2Uwvm_fourier_bridgeSrvGetCartesianState = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/GetCartesianState service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response.
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
respondRos2Uwvm_fourier_bridgeSrvGetCartesianState :: Owner -> Word64 ->
    Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response -> IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvGetCartesianState = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/GetContactData service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetContactData_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetContactData_Response.
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
callRos2Uwvm_fourier_bridgeSrvGetContactData :: Owner -> Ros2Uwvm_fourier_bridgeSrvGetContactData_Request -> IO
    (Either RosError Ros2Uwvm_fourier_bridgeSrvGetContactData_Response)
callRos2Uwvm_fourier_bridgeSrvGetContactData = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/GetContactData service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetContactData_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetContactData_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvGetContactData :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvGetContactData_Request))
incomingRos2Uwvm_fourier_bridgeSrvGetContactData = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/GetContactData service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetContactData_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetContactData_Response.
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
respondRos2Uwvm_fourier_bridgeSrvGetContactData :: Owner -> Word64 ->
    Ros2Uwvm_fourier_bridgeSrvGetContactData_Response -> IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvGetContactData = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/GetFsmName service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request, response=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response.
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
callRos2Uwvm_fourier_bridgeSrvGetFsmName :: Owner -> Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request -> IO (Either
    RosError Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response)
callRos2Uwvm_fourier_bridgeSrvGetFsmName = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/GetFsmName service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request, response=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvGetFsmName :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request))
incomingRos2Uwvm_fourier_bridgeSrvGetFsmName = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/GetFsmName service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response.
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
respondRos2Uwvm_fourier_bridgeSrvGetFsmName :: Owner -> Word64 -> Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response ->
    IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvGetFsmName = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/GetFsmState service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request, response=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response.
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
callRos2Uwvm_fourier_bridgeSrvGetFsmState :: Owner -> Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request -> IO (Either
    RosError Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response)
callRos2Uwvm_fourier_bridgeSrvGetFsmState = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/GetFsmState service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request, response=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvGetFsmState :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request))
incomingRos2Uwvm_fourier_bridgeSrvGetFsmState = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/GetFsmState service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response.
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
respondRos2Uwvm_fourier_bridgeSrvGetFsmState :: Owner -> Word64 -> Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response ->
    IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvGetFsmState = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/GetGroupMotionState service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response.
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
callRos2Uwvm_fourier_bridgeSrvGetGroupMotionState :: Owner -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
    -> IO (Either RosError Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response)
callRos2Uwvm_fourier_bridgeSrvGetGroupMotionState = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/GetGroupMotionState service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvGetGroupMotionState :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request))
incomingRos2Uwvm_fourier_bridgeSrvGetGroupMotionState = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/GetGroupMotionState service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response.
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
respondRos2Uwvm_fourier_bridgeSrvGetGroupMotionState :: Owner -> Word64 ->
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response -> IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvGetGroupMotionState = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/GetGroupMotorCfg service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response.
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
callRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg :: Owner -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request -> IO
    (Either RosError Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response)
callRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/GetGroupMotorCfg service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request))
incomingRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/GetGroupMotorCfg service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response.
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
respondRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg :: Owner -> Word64 ->
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response -> IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/GetGroupState service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response.
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
callRos2Uwvm_fourier_bridgeSrvGetGroupState :: Owner -> Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request -> IO
    (Either RosError Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response)
callRos2Uwvm_fourier_bridgeSrvGetGroupState = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/GetGroupState service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvGetGroupState :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request))
incomingRos2Uwvm_fourier_bridgeSrvGetGroupState = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/GetGroupState service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response.
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
respondRos2Uwvm_fourier_bridgeSrvGetGroupState :: Owner -> Word64 ->
    Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response -> IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvGetGroupState = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/GetSnapshot service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request, response=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response.
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
callRos2Uwvm_fourier_bridgeSrvGetSnapshot :: Owner -> Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request -> IO (Either
    RosError Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response)
callRos2Uwvm_fourier_bridgeSrvGetSnapshot = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/GetSnapshot service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request, response=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvGetSnapshot :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request))
incomingRos2Uwvm_fourier_bridgeSrvGetSnapshot = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/GetSnapshot service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response.
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
respondRos2Uwvm_fourier_bridgeSrvGetSnapshot :: Owner -> Word64 -> Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response ->
    IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvGetSnapshot = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/GetStandPose service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request, response=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response.
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
callRos2Uwvm_fourier_bridgeSrvGetStandPose :: Owner -> Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request -> IO (Either
    RosError Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response)
callRos2Uwvm_fourier_bridgeSrvGetStandPose = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/GetStandPose service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request, response=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvGetStandPose :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request))
incomingRos2Uwvm_fourier_bridgeSrvGetStandPose = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/GetStandPose service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response.
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
respondRos2Uwvm_fourier_bridgeSrvGetStandPose :: Owner -> Word64 -> Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response
    -> IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvGetStandPose = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/GetUpperFsmName service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response.
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
callRos2Uwvm_fourier_bridgeSrvGetUpperFsmName :: Owner -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request -> IO
    (Either RosError Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response)
callRos2Uwvm_fourier_bridgeSrvGetUpperFsmName = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/GetUpperFsmName service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvGetUpperFsmName :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request))
incomingRos2Uwvm_fourier_bridgeSrvGetUpperFsmName = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/GetUpperFsmName service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response.
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
respondRos2Uwvm_fourier_bridgeSrvGetUpperFsmName :: Owner -> Word64 ->
    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response -> IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvGetUpperFsmName = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/GetUpperFsmState service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response.
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
callRos2Uwvm_fourier_bridgeSrvGetUpperFsmState :: Owner -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request -> IO
    (Either RosError Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response)
callRos2Uwvm_fourier_bridgeSrvGetUpperFsmState = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/GetUpperFsmState service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvGetUpperFsmState :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request))
incomingRos2Uwvm_fourier_bridgeSrvGetUpperFsmState = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/GetUpperFsmState service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response.
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
respondRos2Uwvm_fourier_bridgeSrvGetUpperFsmState :: Owner -> Word64 ->
    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response -> IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvGetUpperFsmState = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/GetVelocitySource service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response.
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
callRos2Uwvm_fourier_bridgeSrvGetVelocitySource :: Owner -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request ->
    IO (Either RosError Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response)
callRos2Uwvm_fourier_bridgeSrvGetVelocitySource = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/GetVelocitySource service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvGetVelocitySource :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request))
incomingRos2Uwvm_fourier_bridgeSrvGetVelocitySource = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/GetVelocitySource service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response.
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
respondRos2Uwvm_fourier_bridgeSrvGetVelocitySource :: Owner -> Word64 ->
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response -> IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvGetVelocitySource = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/GetVelocitySourceName service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response.
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
callRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName :: Owner ->
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request -> IO (Either RosError
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response)
callRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/GetVelocitySourceName service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request))
incomingRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/GetVelocitySourceName service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response.
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
respondRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName :: Owner -> Word64 ->
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response -> IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/SetFsmState service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request, response=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response.
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
callRos2Uwvm_fourier_bridgeSrvSetFsmState :: Owner -> Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request -> IO (Either
    RosError Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response)
callRos2Uwvm_fourier_bridgeSrvSetFsmState = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/SetFsmState service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request, response=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvSetFsmState :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request))
incomingRos2Uwvm_fourier_bridgeSrvSetFsmState = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/SetFsmState service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response.
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
respondRos2Uwvm_fourier_bridgeSrvSetFsmState :: Owner -> Word64 -> Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response ->
    IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvSetFsmState = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/SetGroupCommand service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response.
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
callRos2Uwvm_fourier_bridgeSrvSetGroupCommand :: Owner -> Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request -> IO
    (Either RosError Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response)
callRos2Uwvm_fourier_bridgeSrvSetGroupCommand = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/SetGroupCommand service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvSetGroupCommand :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request))
incomingRos2Uwvm_fourier_bridgeSrvSetGroupCommand = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/SetGroupCommand service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response.
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
respondRos2Uwvm_fourier_bridgeSrvSetGroupCommand :: Owner -> Word64 ->
    Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response -> IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvSetGroupCommand = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/SetMotorCfgPd service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response.
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
callRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd :: Owner -> Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request -> IO
    (Either RosError Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response)
callRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/SetMotorCfgPd service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request))
incomingRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/SetMotorCfgPd service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response.
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
respondRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd :: Owner -> Word64 ->
    Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response -> IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/SetStandPose service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request, response=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response.
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
callRos2Uwvm_fourier_bridgeSrvSetStandPose :: Owner -> Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request -> IO (Either
    RosError Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response)
callRos2Uwvm_fourier_bridgeSrvSetStandPose = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/SetStandPose service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request, response=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvSetStandPose :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request))
incomingRos2Uwvm_fourier_bridgeSrvSetStandPose = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/SetStandPose service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response.
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
respondRos2Uwvm_fourier_bridgeSrvSetStandPose :: Owner -> Word64 -> Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response
    -> IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvSetStandPose = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/SetUpperFsmState service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response.
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
callRos2Uwvm_fourier_bridgeSrvSetUpperFsmState :: Owner -> Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request -> IO
    (Either RosError Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response)
callRos2Uwvm_fourier_bridgeSrvSetUpperFsmState = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/SetUpperFsmState service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvSetUpperFsmState :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request))
incomingRos2Uwvm_fourier_bridgeSrvSetUpperFsmState = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/SetUpperFsmState service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response.
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
respondRos2Uwvm_fourier_bridgeSrvSetUpperFsmState :: Owner -> Word64 ->
    Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response -> IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvSetUpperFsmState = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/SetVelocity service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request, response=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response.
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
callRos2Uwvm_fourier_bridgeSrvSetVelocity :: Owner -> Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request -> IO (Either
    RosError Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response)
callRos2Uwvm_fourier_bridgeSrvSetVelocity = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/SetVelocity service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request, response=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvSetVelocity :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request))
incomingRos2Uwvm_fourier_bridgeSrvSetVelocity = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/SetVelocity service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response.
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
respondRos2Uwvm_fourier_bridgeSrvSetVelocity :: Owner -> Word64 -> Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response ->
    IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvSetVelocity = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/SetVelocitySource service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response.
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
callRos2Uwvm_fourier_bridgeSrvSetVelocitySource :: Owner -> Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request ->
    IO (Either RosError Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response)
callRos2Uwvm_fourier_bridgeSrvSetVelocitySource = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/SetVelocitySource service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvSetVelocitySource :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request))
incomingRos2Uwvm_fourier_bridgeSrvSetVelocitySource = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/SetVelocitySource service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response.
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
respondRos2Uwvm_fourier_bridgeSrvSetVelocitySource :: Owner -> Word64 ->
    Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response -> IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvSetVelocitySource = Typed.respondValue
-- | \@brief Call the selected uwvm_fourier_bridge/srv/WaitGroupsMotionComplete service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response.
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
callRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete :: Owner ->
    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request -> IO (Either RosError
    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response)
callRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete = Typed.callValue
-- | \@brief Receive an actually delivered uwvm_fourier_bridge/srv/WaitGroupsMotionComplete service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response.
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
incomingRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request))
incomingRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete = Typed.incoming
-- | \@brief Respond once to a delivered uwvm_fourier_bridge/srv/WaitGroupsMotionComplete service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request,
-- response=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response.
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
respondRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete :: Owner -> Word64 ->
    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response -> IO (Either RosError ())
respondRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete = Typed.respondValue
