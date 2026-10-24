-- @file Interfaces.hs
-- @brief Full agibot haskell codecs and original record metadata.
-- @details Complete agibot ros2_sdk_v0_8_2_main values in haskell. 72 original records retain 227 fields and 55
-- interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
-- definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
-- profile API manual under document/platform/agibot/en_US/catalog/.
module RosWasm.Interfaces where
import Data.Word
import RosWasm
import RosWasm.Records
import qualified RosWasm.Typed as Typed
-- | \@brief Publish one complete aimdk_msgs/msg/AgentProperties message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAgentProperties.
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
publishRos2Aimdk_msgsMsgAgentProperties :: Owner -> Ros2Aimdk_msgsMsgAgentProperties -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgAgentProperties = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/AgentProperties message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgAgentProperties.
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
pollRos2Aimdk_msgsMsgAgentProperties :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgAgentProperties)
pollRos2Aimdk_msgsMsgAgentProperties = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/AgentPropertiesValue message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components:
-- message=Ros2Aimdk_msgsMsgAgentPropertiesValue.
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
publishRos2Aimdk_msgsMsgAgentPropertiesValue :: Owner -> Ros2Aimdk_msgsMsgAgentPropertiesValue -> IO (Either
    RosError ())
publishRos2Aimdk_msgsMsgAgentPropertiesValue = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/AgentPropertiesValue message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgAgentPropertiesValue.
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
pollRos2Aimdk_msgsMsgAgentPropertiesValue :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgAgentPropertiesValue)
pollRos2Aimdk_msgsMsgAgentPropertiesValue = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/AgentPropertyIdType message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components:
-- message=Ros2Aimdk_msgsMsgAgentPropertyIdType.
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
publishRos2Aimdk_msgsMsgAgentPropertyIdType :: Owner -> Ros2Aimdk_msgsMsgAgentPropertyIdType -> IO (Either RosError
    ())
publishRos2Aimdk_msgsMsgAgentPropertyIdType = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/AgentPropertyIdType message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgAgentPropertyIdType.
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
pollRos2Aimdk_msgsMsgAgentPropertyIdType :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgAgentPropertyIdType)
pollRos2Aimdk_msgsMsgAgentPropertyIdType = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/AudioVadStateType message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioVadStateType.
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
publishRos2Aimdk_msgsMsgAudioVadStateType :: Owner -> Ros2Aimdk_msgsMsgAudioVadStateType -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgAudioVadStateType = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/AudioVadStateType message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgAudioVadStateType.
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
pollRos2Aimdk_msgsMsgAudioVadStateType :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgAudioVadStateType)
pollRos2Aimdk_msgsMsgAudioVadStateType = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/CommonRequest message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonRequest.
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
publishRos2Aimdk_msgsMsgCommonRequest :: Owner -> Ros2Aimdk_msgsMsgCommonRequest -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgCommonRequest = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/CommonRequest message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgCommonRequest.
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
pollRos2Aimdk_msgsMsgCommonRequest :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgCommonRequest)
pollRos2Aimdk_msgsMsgCommonRequest = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/CommonResponse message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonResponse.
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
publishRos2Aimdk_msgsMsgCommonResponse :: Owner -> Ros2Aimdk_msgsMsgCommonResponse -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgCommonResponse = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/CommonResponse message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgCommonResponse.
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
pollRos2Aimdk_msgsMsgCommonResponse :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgCommonResponse)
pollRos2Aimdk_msgsMsgCommonResponse = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/CommonState message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonState.
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
publishRos2Aimdk_msgsMsgCommonState :: Owner -> Ros2Aimdk_msgsMsgCommonState -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgCommonState = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/CommonState message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgCommonState.
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
pollRos2Aimdk_msgsMsgCommonState :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgCommonState)
pollRos2Aimdk_msgsMsgCommonState = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/CommonTaskResponse message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonTaskResponse.
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
publishRos2Aimdk_msgsMsgCommonTaskResponse :: Owner -> Ros2Aimdk_msgsMsgCommonTaskResponse -> IO (Either RosError
    ())
publishRos2Aimdk_msgsMsgCommonTaskResponse = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/CommonTaskResponse message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgCommonTaskResponse.
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
pollRos2Aimdk_msgsMsgCommonTaskResponse :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgCommonTaskResponse)
pollRos2Aimdk_msgsMsgCommonTaskResponse = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/FaceEmojiStatus message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFaceEmojiStatus.
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
publishRos2Aimdk_msgsMsgFaceEmojiStatus :: Owner -> Ros2Aimdk_msgsMsgFaceEmojiStatus -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgFaceEmojiStatus = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/FaceEmojiStatus message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgFaceEmojiStatus.
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
pollRos2Aimdk_msgsMsgFaceEmojiStatus :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgFaceEmojiStatus)
pollRos2Aimdk_msgsMsgFaceEmojiStatus = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/HandCommand message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandCommand.
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
publishRos2Aimdk_msgsMsgHandCommand :: Owner -> Ros2Aimdk_msgsMsgHandCommand -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgHandCommand = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/HandCommand message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgHandCommand.
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
pollRos2Aimdk_msgsMsgHandCommand :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgHandCommand)
pollRos2Aimdk_msgsMsgHandCommand = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/HandCommandArray message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandCommandArray.
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
publishRos2Aimdk_msgsMsgHandCommandArray :: Owner -> Ros2Aimdk_msgsMsgHandCommandArray -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgHandCommandArray = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/HandCommandArray message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgHandCommandArray.
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
pollRos2Aimdk_msgsMsgHandCommandArray :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgHandCommandArray)
pollRos2Aimdk_msgsMsgHandCommandArray = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/HandState message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandState.
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
publishRos2Aimdk_msgsMsgHandState :: Owner -> Ros2Aimdk_msgsMsgHandState -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgHandState = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/HandState message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHandState.
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
pollRos2Aimdk_msgsMsgHandState :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgHandState)
pollRos2Aimdk_msgsMsgHandState = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/HandStateArray message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandStateArray.
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
publishRos2Aimdk_msgsMsgHandStateArray :: Owner -> Ros2Aimdk_msgsMsgHandStateArray -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgHandStateArray = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/HandStateArray message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgHandStateArray.
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
pollRos2Aimdk_msgsMsgHandStateArray :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgHandStateArray)
pollRos2Aimdk_msgsMsgHandStateArray = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/HandType message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandType.
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
publishRos2Aimdk_msgsMsgHandType :: Owner -> Ros2Aimdk_msgsMsgHandType -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgHandType = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/HandType message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHandType.
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
pollRos2Aimdk_msgsMsgHandType :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgHandType)
pollRos2Aimdk_msgsMsgHandType = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/JointCommand message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointCommand.
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
publishRos2Aimdk_msgsMsgJointCommand :: Owner -> Ros2Aimdk_msgsMsgJointCommand -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgJointCommand = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/JointCommand message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgJointCommand.
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
pollRos2Aimdk_msgsMsgJointCommand :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgJointCommand)
pollRos2Aimdk_msgsMsgJointCommand = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/JointCommandArray message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointCommandArray.
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
publishRos2Aimdk_msgsMsgJointCommandArray :: Owner -> Ros2Aimdk_msgsMsgJointCommandArray -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgJointCommandArray = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/JointCommandArray message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgJointCommandArray.
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
pollRos2Aimdk_msgsMsgJointCommandArray :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgJointCommandArray)
pollRos2Aimdk_msgsMsgJointCommandArray = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/JointState message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointState.
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
publishRos2Aimdk_msgsMsgJointState :: Owner -> Ros2Aimdk_msgsMsgJointState -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgJointState = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/JointState message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgJointState.
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
pollRos2Aimdk_msgsMsgJointState :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgJointState)
pollRos2Aimdk_msgsMsgJointState = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/JointStateArray message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointStateArray.
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
publishRos2Aimdk_msgsMsgJointStateArray :: Owner -> Ros2Aimdk_msgsMsgJointStateArray -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgJointStateArray = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/JointStateArray message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgJointStateArray.
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
pollRos2Aimdk_msgsMsgJointStateArray :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgJointStateArray)
pollRos2Aimdk_msgsMsgJointStateArray = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/McAction message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcAction.
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
publishRos2Aimdk_msgsMsgMcAction :: Owner -> Ros2Aimdk_msgsMsgMcAction -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgMcAction = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McAction message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcAction.
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
pollRos2Aimdk_msgsMsgMcAction :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMcAction)
pollRos2Aimdk_msgsMsgMcAction = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/McActionCommand message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcActionCommand.
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
publishRos2Aimdk_msgsMsgMcActionCommand :: Owner -> Ros2Aimdk_msgsMsgMcActionCommand -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgMcActionCommand = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McActionCommand message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMcActionCommand.
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
pollRos2Aimdk_msgsMsgMcActionCommand :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMcActionCommand)
pollRos2Aimdk_msgsMsgMcActionCommand = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/McActionInfo message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcActionInfo.
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
publishRos2Aimdk_msgsMsgMcActionInfo :: Owner -> Ros2Aimdk_msgsMsgMcActionInfo -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgMcActionInfo = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McActionInfo message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMcActionInfo.
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
pollRos2Aimdk_msgsMsgMcActionInfo :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMcActionInfo)
pollRos2Aimdk_msgsMsgMcActionInfo = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/McActionStatus message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcActionStatus.
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
publishRos2Aimdk_msgsMsgMcActionStatus :: Owner -> Ros2Aimdk_msgsMsgMcActionStatus -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgMcActionStatus = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McActionStatus message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMcActionStatus.
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
pollRos2Aimdk_msgsMsgMcActionStatus :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMcActionStatus)
pollRos2Aimdk_msgsMsgMcActionStatus = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/McControlArea message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcControlArea.
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
publishRos2Aimdk_msgsMsgMcControlArea :: Owner -> Ros2Aimdk_msgsMsgMcControlArea -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgMcControlArea = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McControlArea message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMcControlArea.
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
pollRos2Aimdk_msgsMsgMcControlArea :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMcControlArea)
pollRos2Aimdk_msgsMsgMcControlArea = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/McInputAction message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcInputAction.
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
publishRos2Aimdk_msgsMsgMcInputAction :: Owner -> Ros2Aimdk_msgsMsgMcInputAction -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgMcInputAction = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McInputAction message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMcInputAction.
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
pollRos2Aimdk_msgsMsgMcInputAction :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMcInputAction)
pollRos2Aimdk_msgsMsgMcInputAction = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/McInputSource message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcInputSource.
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
publishRos2Aimdk_msgsMsgMcInputSource :: Owner -> Ros2Aimdk_msgsMsgMcInputSource -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgMcInputSource = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McInputSource message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMcInputSource.
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
pollRos2Aimdk_msgsMsgMcInputSource :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMcInputSource)
pollRos2Aimdk_msgsMsgMcInputSource = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/McLocomotionVelocity message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components:
-- message=Ros2Aimdk_msgsMsgMcLocomotionVelocity.
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
publishRos2Aimdk_msgsMsgMcLocomotionVelocity :: Owner -> Ros2Aimdk_msgsMsgMcLocomotionVelocity -> IO (Either
    RosError ())
publishRos2Aimdk_msgsMsgMcLocomotionVelocity = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McLocomotionVelocity message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMcLocomotionVelocity.
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
pollRos2Aimdk_msgsMsgMcLocomotionVelocity :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMcLocomotionVelocity)
pollRos2Aimdk_msgsMsgMcLocomotionVelocity = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/McPresetMotion message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcPresetMotion.
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
publishRos2Aimdk_msgsMsgMcPresetMotion :: Owner -> Ros2Aimdk_msgsMsgMcPresetMotion -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgMcPresetMotion = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McPresetMotion message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMcPresetMotion.
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
pollRos2Aimdk_msgsMsgMcPresetMotion :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMcPresetMotion)
pollRos2Aimdk_msgsMsgMcPresetMotion = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/MessageHeader message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMessageHeader.
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
publishRos2Aimdk_msgsMsgMessageHeader :: Owner -> Ros2Aimdk_msgsMsgMessageHeader -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgMessageHeader = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/MessageHeader message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMessageHeader.
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
pollRos2Aimdk_msgsMsgMessageHeader :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMessageHeader)
pollRos2Aimdk_msgsMsgMessageHeader = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/PlayMediaFileRequest message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components:
-- message=Ros2Aimdk_msgsMsgPlayMediaFileRequest.
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
publishRos2Aimdk_msgsMsgPlayMediaFileRequest :: Owner -> Ros2Aimdk_msgsMsgPlayMediaFileRequest -> IO (Either
    RosError ())
publishRos2Aimdk_msgsMsgPlayMediaFileRequest = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/PlayMediaFileRequest message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgPlayMediaFileRequest.
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
pollRos2Aimdk_msgsMsgPlayMediaFileRequest :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgPlayMediaFileRequest)
pollRos2Aimdk_msgsMsgPlayMediaFileRequest = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/PlayTtsRequest message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayTtsRequest.
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
publishRos2Aimdk_msgsMsgPlayTtsRequest :: Owner -> Ros2Aimdk_msgsMsgPlayTtsRequest -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgPlayTtsRequest = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/PlayTtsRequest message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgPlayTtsRequest.
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
pollRos2Aimdk_msgsMsgPlayTtsRequest :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgPlayTtsRequest)
pollRos2Aimdk_msgsMsgPlayTtsRequest = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/PlayTtsResponse message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayTtsResponse.
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
publishRos2Aimdk_msgsMsgPlayTtsResponse :: Owner -> Ros2Aimdk_msgsMsgPlayTtsResponse -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgPlayTtsResponse = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/PlayTtsResponse message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgPlayTtsResponse.
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
pollRos2Aimdk_msgsMsgPlayTtsResponse :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgPlayTtsResponse)
pollRos2Aimdk_msgsMsgPlayTtsResponse = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/PmuState message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPmuState.
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
publishRos2Aimdk_msgsMsgPmuState :: Owner -> Ros2Aimdk_msgsMsgPmuState -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgPmuState = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/PmuState message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPmuState.
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
pollRos2Aimdk_msgsMsgPmuState :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgPmuState)
pollRos2Aimdk_msgsMsgPmuState = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/ProcessedAudioOutput message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components:
-- message=Ros2Aimdk_msgsMsgProcessedAudioOutput.
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
publishRos2Aimdk_msgsMsgProcessedAudioOutput :: Owner -> Ros2Aimdk_msgsMsgProcessedAudioOutput -> IO (Either
    RosError ())
publishRos2Aimdk_msgsMsgProcessedAudioOutput = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/ProcessedAudioOutput message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgProcessedAudioOutput.
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
pollRos2Aimdk_msgsMsgProcessedAudioOutput :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgProcessedAudioOutput)
pollRos2Aimdk_msgsMsgProcessedAudioOutput = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/RequestHeader message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgRequestHeader.
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
publishRos2Aimdk_msgsMsgRequestHeader :: Owner -> Ros2Aimdk_msgsMsgRequestHeader -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgRequestHeader = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/RequestHeader message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgRequestHeader.
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
pollRos2Aimdk_msgsMsgRequestHeader :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgRequestHeader)
pollRos2Aimdk_msgsMsgRequestHeader = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/ResponseHeader message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgResponseHeader.
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
publishRos2Aimdk_msgsMsgResponseHeader :: Owner -> Ros2Aimdk_msgsMsgResponseHeader -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgResponseHeader = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/ResponseHeader message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgResponseHeader.
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
pollRos2Aimdk_msgsMsgResponseHeader :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgResponseHeader)
pollRos2Aimdk_msgsMsgResponseHeader = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/TouchState message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgTouchState.
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
publishRos2Aimdk_msgsMsgTouchState :: Owner -> Ros2Aimdk_msgsMsgTouchState -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgTouchState = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/TouchState message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgTouchState.
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
pollRos2Aimdk_msgsMsgTouchState :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgTouchState)
pollRos2Aimdk_msgsMsgTouchState = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/TtsPriorityLevel message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgTtsPriorityLevel.
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
publishRos2Aimdk_msgsMsgTtsPriorityLevel :: Owner -> Ros2Aimdk_msgsMsgTtsPriorityLevel -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgTtsPriorityLevel = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/TtsPriorityLevel message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgTtsPriorityLevel.
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
pollRos2Aimdk_msgsMsgTtsPriorityLevel :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgTtsPriorityLevel)
pollRos2Aimdk_msgsMsgTtsPriorityLevel = Typed.pollValue
-- | \@brief Call the selected aimdk_msgs/srv/GetAllJointState service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvGetAllJointState_Request, response=Ros2Aimdk_msgsSrvGetAllJointState_Response.
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
callRos2Aimdk_msgsSrvGetAllJointState :: Owner -> Ros2Aimdk_msgsSrvGetAllJointState_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvGetAllJointState_Response)
callRos2Aimdk_msgsSrvGetAllJointState = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/GetAllJointState service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvGetAllJointState_Request, response=Ros2Aimdk_msgsSrvGetAllJointState_Response.
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
incomingRos2Aimdk_msgsSrvGetAllJointState :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvGetAllJointState_Request))
incomingRos2Aimdk_msgsSrvGetAllJointState = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/GetAllJointState service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetAllJointState_Request,
-- response=Ros2Aimdk_msgsSrvGetAllJointState_Response.
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
respondRos2Aimdk_msgsSrvGetAllJointState :: Owner -> Word64 -> Ros2Aimdk_msgsSrvGetAllJointState_Response -> IO
    (Either RosError ())
respondRos2Aimdk_msgsSrvGetAllJointState = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/GetCurrentInputSource service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvGetCurrentInputSource_Request, response=Ros2Aimdk_msgsSrvGetCurrentInputSource_Response.
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
callRos2Aimdk_msgsSrvGetCurrentInputSource :: Owner -> Ros2Aimdk_msgsSrvGetCurrentInputSource_Request -> IO (Either
    RosError Ros2Aimdk_msgsSrvGetCurrentInputSource_Response)
callRos2Aimdk_msgsSrvGetCurrentInputSource = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/GetCurrentInputSource service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvGetCurrentInputSource_Request, response=Ros2Aimdk_msgsSrvGetCurrentInputSource_Response.
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
incomingRos2Aimdk_msgsSrvGetCurrentInputSource :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvGetCurrentInputSource_Request))
incomingRos2Aimdk_msgsSrvGetCurrentInputSource = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/GetCurrentInputSource service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetCurrentInputSource_Request,
-- response=Ros2Aimdk_msgsSrvGetCurrentInputSource_Response.
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
respondRos2Aimdk_msgsSrvGetCurrentInputSource :: Owner -> Word64 -> Ros2Aimdk_msgsSrvGetCurrentInputSource_Response
    -> IO (Either RosError ())
respondRos2Aimdk_msgsSrvGetCurrentInputSource = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/GetHandType service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvGetHandType_Request, response=Ros2Aimdk_msgsSrvGetHandType_Response.
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
callRos2Aimdk_msgsSrvGetHandType :: Owner -> Ros2Aimdk_msgsSrvGetHandType_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvGetHandType_Response)
callRos2Aimdk_msgsSrvGetHandType = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/GetHandType service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvGetHandType_Request, response=Ros2Aimdk_msgsSrvGetHandType_Response.
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
incomingRos2Aimdk_msgsSrvGetHandType :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvGetHandType_Request))
incomingRos2Aimdk_msgsSrvGetHandType = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/GetHandType service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetHandType_Request,
-- response=Ros2Aimdk_msgsSrvGetHandType_Response.
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
respondRos2Aimdk_msgsSrvGetHandType :: Owner -> Word64 -> Ros2Aimdk_msgsSrvGetHandType_Response -> IO (Either
    RosError ())
respondRos2Aimdk_msgsSrvGetHandType = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/GetMcAction service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvGetMcAction_Request, response=Ros2Aimdk_msgsSrvGetMcAction_Response.
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
callRos2Aimdk_msgsSrvGetMcAction :: Owner -> Ros2Aimdk_msgsSrvGetMcAction_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvGetMcAction_Response)
callRos2Aimdk_msgsSrvGetMcAction = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/GetMcAction service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvGetMcAction_Request, response=Ros2Aimdk_msgsSrvGetMcAction_Response.
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
incomingRos2Aimdk_msgsSrvGetMcAction :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvGetMcAction_Request))
incomingRos2Aimdk_msgsSrvGetMcAction = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/GetMcAction service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetMcAction_Request,
-- response=Ros2Aimdk_msgsSrvGetMcAction_Response.
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
respondRos2Aimdk_msgsSrvGetMcAction :: Owner -> Word64 -> Ros2Aimdk_msgsSrvGetMcAction_Response -> IO (Either
    RosError ())
respondRos2Aimdk_msgsSrvGetMcAction = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/GetMute service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvGetMute_Request, response=Ros2Aimdk_msgsSrvGetMute_Response.
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
callRos2Aimdk_msgsSrvGetMute :: Owner -> Ros2Aimdk_msgsSrvGetMute_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvGetMute_Response)
callRos2Aimdk_msgsSrvGetMute = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/GetMute service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components: request=Ros2Aimdk_msgsSrvGetMute_Request,
-- response=Ros2Aimdk_msgsSrvGetMute_Response.
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
incomingRos2Aimdk_msgsSrvGetMute :: Owner -> IO (Either RosError (Typed.Incoming Ros2Aimdk_msgsSrvGetMute_Request))
incomingRos2Aimdk_msgsSrvGetMute = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/GetMute service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetMute_Request,
-- response=Ros2Aimdk_msgsSrvGetMute_Response.
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
respondRos2Aimdk_msgsSrvGetMute :: Owner -> Word64 -> Ros2Aimdk_msgsSrvGetMute_Response -> IO (Either RosError ())
respondRos2Aimdk_msgsSrvGetMute = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/GetVolume service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvGetVolume_Request, response=Ros2Aimdk_msgsSrvGetVolume_Response.
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
callRos2Aimdk_msgsSrvGetVolume :: Owner -> Ros2Aimdk_msgsSrvGetVolume_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvGetVolume_Response)
callRos2Aimdk_msgsSrvGetVolume = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/GetVolume service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvGetVolume_Request, response=Ros2Aimdk_msgsSrvGetVolume_Response.
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
incomingRos2Aimdk_msgsSrvGetVolume :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvGetVolume_Request))
incomingRos2Aimdk_msgsSrvGetVolume = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/GetVolume service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetVolume_Request,
-- response=Ros2Aimdk_msgsSrvGetVolume_Response.
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
respondRos2Aimdk_msgsSrvGetVolume :: Owner -> Word64 -> Ros2Aimdk_msgsSrvGetVolume_Response -> IO (Either RosError
    ())
respondRos2Aimdk_msgsSrvGetVolume = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/LedStripCommand service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvLedStripCommand_Request, response=Ros2Aimdk_msgsSrvLedStripCommand_Response.
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
callRos2Aimdk_msgsSrvLedStripCommand :: Owner -> Ros2Aimdk_msgsSrvLedStripCommand_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvLedStripCommand_Response)
callRos2Aimdk_msgsSrvLedStripCommand = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/LedStripCommand service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvLedStripCommand_Request, response=Ros2Aimdk_msgsSrvLedStripCommand_Response.
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
incomingRos2Aimdk_msgsSrvLedStripCommand :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvLedStripCommand_Request))
incomingRos2Aimdk_msgsSrvLedStripCommand = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/LedStripCommand service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvLedStripCommand_Request,
-- response=Ros2Aimdk_msgsSrvLedStripCommand_Response.
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
respondRos2Aimdk_msgsSrvLedStripCommand :: Owner -> Word64 -> Ros2Aimdk_msgsSrvLedStripCommand_Response -> IO
    (Either RosError ())
respondRos2Aimdk_msgsSrvLedStripCommand = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/PlayEmoji service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvPlayEmoji_Request, response=Ros2Aimdk_msgsSrvPlayEmoji_Response.
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
callRos2Aimdk_msgsSrvPlayEmoji :: Owner -> Ros2Aimdk_msgsSrvPlayEmoji_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvPlayEmoji_Response)
callRos2Aimdk_msgsSrvPlayEmoji = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/PlayEmoji service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvPlayEmoji_Request, response=Ros2Aimdk_msgsSrvPlayEmoji_Response.
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
incomingRos2Aimdk_msgsSrvPlayEmoji :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvPlayEmoji_Request))
incomingRos2Aimdk_msgsSrvPlayEmoji = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/PlayEmoji service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvPlayEmoji_Request,
-- response=Ros2Aimdk_msgsSrvPlayEmoji_Response.
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
respondRos2Aimdk_msgsSrvPlayEmoji :: Owner -> Word64 -> Ros2Aimdk_msgsSrvPlayEmoji_Response -> IO (Either RosError
    ())
respondRos2Aimdk_msgsSrvPlayEmoji = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/PlayMediaFile service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvPlayMediaFile_Request, response=Ros2Aimdk_msgsSrvPlayMediaFile_Response.
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
callRos2Aimdk_msgsSrvPlayMediaFile :: Owner -> Ros2Aimdk_msgsSrvPlayMediaFile_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvPlayMediaFile_Response)
callRos2Aimdk_msgsSrvPlayMediaFile = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/PlayMediaFile service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvPlayMediaFile_Request, response=Ros2Aimdk_msgsSrvPlayMediaFile_Response.
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
incomingRos2Aimdk_msgsSrvPlayMediaFile :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvPlayMediaFile_Request))
incomingRos2Aimdk_msgsSrvPlayMediaFile = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/PlayMediaFile service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvPlayMediaFile_Request,
-- response=Ros2Aimdk_msgsSrvPlayMediaFile_Response.
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
respondRos2Aimdk_msgsSrvPlayMediaFile :: Owner -> Word64 -> Ros2Aimdk_msgsSrvPlayMediaFile_Response -> IO (Either
    RosError ())
respondRos2Aimdk_msgsSrvPlayMediaFile = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/PlayTts service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvPlayTts_Request, response=Ros2Aimdk_msgsSrvPlayTts_Response.
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
callRos2Aimdk_msgsSrvPlayTts :: Owner -> Ros2Aimdk_msgsSrvPlayTts_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvPlayTts_Response)
callRos2Aimdk_msgsSrvPlayTts = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/PlayTts service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components: request=Ros2Aimdk_msgsSrvPlayTts_Request,
-- response=Ros2Aimdk_msgsSrvPlayTts_Response.
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
incomingRos2Aimdk_msgsSrvPlayTts :: Owner -> IO (Either RosError (Typed.Incoming Ros2Aimdk_msgsSrvPlayTts_Request))
incomingRos2Aimdk_msgsSrvPlayTts = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/PlayTts service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvPlayTts_Request,
-- response=Ros2Aimdk_msgsSrvPlayTts_Response.
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
respondRos2Aimdk_msgsSrvPlayTts :: Owner -> Word64 -> Ros2Aimdk_msgsSrvPlayTts_Response -> IO (Either RosError ())
respondRos2Aimdk_msgsSrvPlayTts = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/PlayVideo service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvPlayVideo_Request, response=Ros2Aimdk_msgsSrvPlayVideo_Response.
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
callRos2Aimdk_msgsSrvPlayVideo :: Owner -> Ros2Aimdk_msgsSrvPlayVideo_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvPlayVideo_Response)
callRos2Aimdk_msgsSrvPlayVideo = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/PlayVideo service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvPlayVideo_Request, response=Ros2Aimdk_msgsSrvPlayVideo_Response.
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
incomingRos2Aimdk_msgsSrvPlayVideo :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvPlayVideo_Request))
incomingRos2Aimdk_msgsSrvPlayVideo = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/PlayVideo service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvPlayVideo_Request,
-- response=Ros2Aimdk_msgsSrvPlayVideo_Response.
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
respondRos2Aimdk_msgsSrvPlayVideo :: Owner -> Word64 -> Ros2Aimdk_msgsSrvPlayVideo_Response -> IO (Either RosError
    ())
respondRos2Aimdk_msgsSrvPlayVideo = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/SetAgentPropertiesRequest service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request,
-- response=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response.
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
callRos2Aimdk_msgsSrvSetAgentPropertiesRequest :: Owner -> Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request -> IO
    (Either RosError Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response)
callRos2Aimdk_msgsSrvSetAgentPropertiesRequest = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/SetAgentPropertiesRequest service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request,
-- response=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response.
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
incomingRos2Aimdk_msgsSrvSetAgentPropertiesRequest :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request))
incomingRos2Aimdk_msgsSrvSetAgentPropertiesRequest = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/SetAgentPropertiesRequest service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request,
-- response=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response.
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
respondRos2Aimdk_msgsSrvSetAgentPropertiesRequest :: Owner -> Word64 ->
    Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response -> IO (Either RosError ())
respondRos2Aimdk_msgsSrvSetAgentPropertiesRequest = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/SetMcAction service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvSetMcAction_Request, response=Ros2Aimdk_msgsSrvSetMcAction_Response.
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
callRos2Aimdk_msgsSrvSetMcAction :: Owner -> Ros2Aimdk_msgsSrvSetMcAction_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvSetMcAction_Response)
callRos2Aimdk_msgsSrvSetMcAction = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/SetMcAction service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvSetMcAction_Request, response=Ros2Aimdk_msgsSrvSetMcAction_Response.
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
incomingRos2Aimdk_msgsSrvSetMcAction :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvSetMcAction_Request))
incomingRos2Aimdk_msgsSrvSetMcAction = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/SetMcAction service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvSetMcAction_Request,
-- response=Ros2Aimdk_msgsSrvSetMcAction_Response.
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
respondRos2Aimdk_msgsSrvSetMcAction :: Owner -> Word64 -> Ros2Aimdk_msgsSrvSetMcAction_Response -> IO (Either
    RosError ())
respondRos2Aimdk_msgsSrvSetMcAction = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/SetMcInputSource service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvSetMcInputSource_Request, response=Ros2Aimdk_msgsSrvSetMcInputSource_Response.
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
callRos2Aimdk_msgsSrvSetMcInputSource :: Owner -> Ros2Aimdk_msgsSrvSetMcInputSource_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvSetMcInputSource_Response)
callRos2Aimdk_msgsSrvSetMcInputSource = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/SetMcInputSource service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvSetMcInputSource_Request, response=Ros2Aimdk_msgsSrvSetMcInputSource_Response.
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
incomingRos2Aimdk_msgsSrvSetMcInputSource :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvSetMcInputSource_Request))
incomingRos2Aimdk_msgsSrvSetMcInputSource = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/SetMcInputSource service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvSetMcInputSource_Request,
-- response=Ros2Aimdk_msgsSrvSetMcInputSource_Response.
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
respondRos2Aimdk_msgsSrvSetMcInputSource :: Owner -> Word64 -> Ros2Aimdk_msgsSrvSetMcInputSource_Response -> IO
    (Either RosError ())
respondRos2Aimdk_msgsSrvSetMcInputSource = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/SetMcPresetMotion service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvSetMcPresetMotion_Request, response=Ros2Aimdk_msgsSrvSetMcPresetMotion_Response.
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
callRos2Aimdk_msgsSrvSetMcPresetMotion :: Owner -> Ros2Aimdk_msgsSrvSetMcPresetMotion_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvSetMcPresetMotion_Response)
callRos2Aimdk_msgsSrvSetMcPresetMotion = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/SetMcPresetMotion service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvSetMcPresetMotion_Request, response=Ros2Aimdk_msgsSrvSetMcPresetMotion_Response.
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
incomingRos2Aimdk_msgsSrvSetMcPresetMotion :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvSetMcPresetMotion_Request))
incomingRos2Aimdk_msgsSrvSetMcPresetMotion = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/SetMcPresetMotion service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvSetMcPresetMotion_Request,
-- response=Ros2Aimdk_msgsSrvSetMcPresetMotion_Response.
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
respondRos2Aimdk_msgsSrvSetMcPresetMotion :: Owner -> Word64 -> Ros2Aimdk_msgsSrvSetMcPresetMotion_Response -> IO
    (Either RosError ())
respondRos2Aimdk_msgsSrvSetMcPresetMotion = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/SetMute service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvSetMute_Request, response=Ros2Aimdk_msgsSrvSetMute_Response.
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
callRos2Aimdk_msgsSrvSetMute :: Owner -> Ros2Aimdk_msgsSrvSetMute_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvSetMute_Response)
callRos2Aimdk_msgsSrvSetMute = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/SetMute service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components: request=Ros2Aimdk_msgsSrvSetMute_Request,
-- response=Ros2Aimdk_msgsSrvSetMute_Response.
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
incomingRos2Aimdk_msgsSrvSetMute :: Owner -> IO (Either RosError (Typed.Incoming Ros2Aimdk_msgsSrvSetMute_Request))
incomingRos2Aimdk_msgsSrvSetMute = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/SetMute service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvSetMute_Request,
-- response=Ros2Aimdk_msgsSrvSetMute_Response.
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
respondRos2Aimdk_msgsSrvSetMute :: Owner -> Word64 -> Ros2Aimdk_msgsSrvSetMute_Response -> IO (Either RosError ())
respondRos2Aimdk_msgsSrvSetMute = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/SetVolume service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvSetVolume_Request, response=Ros2Aimdk_msgsSrvSetVolume_Response.
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
callRos2Aimdk_msgsSrvSetVolume :: Owner -> Ros2Aimdk_msgsSrvSetVolume_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvSetVolume_Response)
callRos2Aimdk_msgsSrvSetVolume = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/SetVolume service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvSetVolume_Request, response=Ros2Aimdk_msgsSrvSetVolume_Response.
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
incomingRos2Aimdk_msgsSrvSetVolume :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvSetVolume_Request))
incomingRos2Aimdk_msgsSrvSetVolume = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/SetVolume service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvSetVolume_Request,
-- response=Ros2Aimdk_msgsSrvSetVolume_Response.
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
respondRos2Aimdk_msgsSrvSetVolume :: Owner -> Word64 -> Ros2Aimdk_msgsSrvSetVolume_Response -> IO (Either RosError
    ())
respondRos2Aimdk_msgsSrvSetVolume = Typed.respondValue
