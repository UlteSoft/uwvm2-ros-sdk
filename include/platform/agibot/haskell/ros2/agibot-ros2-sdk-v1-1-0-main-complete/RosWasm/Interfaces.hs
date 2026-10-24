-- @file Interfaces.hs
-- @brief Full agibot haskell codecs and original record metadata.
-- @details Complete agibot ros2_sdk_v1_1_0_main values in haskell. 166 original records retain 552 fields and 133
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
-- | \@brief Publish one complete aimdk_msgs/msg/AlertCode message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAlertCode.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgAlertCode :: Owner -> Ros2Aimdk_msgsMsgAlertCode -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgAlertCode = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/AlertCode message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAlertCode.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgAlertCode :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgAlertCode)
pollRos2Aimdk_msgsMsgAlertCode = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/AlertCodeArray message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAlertCodeArray.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgAlertCodeArray :: Owner -> Ros2Aimdk_msgsMsgAlertCodeArray -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgAlertCodeArray = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/AlertCodeArray message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgAlertCodeArray.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgAlertCodeArray :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgAlertCodeArray)
pollRos2Aimdk_msgsMsgAlertCodeArray = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/AudioCapture message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioCapture.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgAudioCapture :: Owner -> Ros2Aimdk_msgsMsgAudioCapture -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgAudioCapture = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/AudioCapture message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgAudioCapture.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgAudioCapture :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgAudioCapture)
pollRos2Aimdk_msgsMsgAudioCapture = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/AudioData message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioData.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgAudioData :: Owner -> Ros2Aimdk_msgsMsgAudioData -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgAudioData = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/AudioData message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioData.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgAudioData :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgAudioData)
pollRos2Aimdk_msgsMsgAudioData = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/AudioFile message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioFile.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgAudioFile :: Owner -> Ros2Aimdk_msgsMsgAudioFile -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgAudioFile = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/AudioFile message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioFile.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgAudioFile :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgAudioFile)
pollRos2Aimdk_msgsMsgAudioFile = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/AudioInfo message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioInfo.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgAudioInfo :: Owner -> Ros2Aimdk_msgsMsgAudioInfo -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgAudioInfo = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/AudioInfo message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioInfo.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgAudioInfo :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgAudioInfo)
pollRos2Aimdk_msgsMsgAudioInfo = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/AudioPlayback message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioPlayback.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgAudioPlayback :: Owner -> Ros2Aimdk_msgsMsgAudioPlayback -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgAudioPlayback = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/AudioPlayback message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgAudioPlayback.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgAudioPlayback :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgAudioPlayback)
pollRos2Aimdk_msgsMsgAudioPlayback = Typed.pollValue
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
-- | \@brief Publish one complete aimdk_msgs/msg/CommonTaskRequest message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonTaskRequest.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgCommonTaskRequest :: Owner -> Ros2Aimdk_msgsMsgCommonTaskRequest -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgCommonTaskRequest = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/CommonTaskRequest message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgCommonTaskRequest.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgCommonTaskRequest :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgCommonTaskRequest)
pollRos2Aimdk_msgsMsgCommonTaskRequest = Typed.pollValue
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
-- | \@brief Publish one complete aimdk_msgs/msg/CurrentVersion message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCurrentVersion.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgCurrentVersion :: Owner -> Ros2Aimdk_msgsMsgCurrentVersion -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgCurrentVersion = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/CurrentVersion message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgCurrentVersion.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgCurrentVersion :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgCurrentVersion)
pollRos2Aimdk_msgsMsgCurrentVersion = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/DiagnosticInfo message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgDiagnosticInfo.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgDiagnosticInfo :: Owner -> Ros2Aimdk_msgsMsgDiagnosticInfo -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgDiagnosticInfo = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/DiagnosticInfo message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgDiagnosticInfo.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgDiagnosticInfo :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgDiagnosticInfo)
pollRos2Aimdk_msgsMsgDiagnosticInfo = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/DiagnosticInfoArray message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components:
-- message=Ros2Aimdk_msgsMsgDiagnosticInfoArray.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgDiagnosticInfoArray :: Owner -> Ros2Aimdk_msgsMsgDiagnosticInfoArray -> IO (Either RosError
    ())
publishRos2Aimdk_msgsMsgDiagnosticInfoArray = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/DiagnosticInfoArray message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgDiagnosticInfoArray.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgDiagnosticInfoArray :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgDiagnosticInfoArray)
pollRos2Aimdk_msgsMsgDiagnosticInfoArray = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/DiagnosticType message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgDiagnosticType.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgDiagnosticType :: Owner -> Ros2Aimdk_msgsMsgDiagnosticType -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgDiagnosticType = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/DiagnosticType message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgDiagnosticType.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgDiagnosticType :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgDiagnosticType)
pollRos2Aimdk_msgsMsgDiagnosticType = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/DomainErrorState message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgDomainErrorState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgDomainErrorState :: Owner -> Ros2Aimdk_msgsMsgDomainErrorState -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgDomainErrorState = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/DomainErrorState message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgDomainErrorState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgDomainErrorState :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgDomainErrorState)
pollRos2Aimdk_msgsMsgDomainErrorState = Typed.pollValue
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
-- | \@brief Publish one complete aimdk_msgs/msg/FixLineIntroState message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFixLineIntroState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgFixLineIntroState :: Owner -> Ros2Aimdk_msgsMsgFixLineIntroState -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgFixLineIntroState = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/FixLineIntroState message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgFixLineIntroState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgFixLineIntroState :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgFixLineIntroState)
pollRos2Aimdk_msgsMsgFixLineIntroState = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/FocusRequester message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFocusRequester.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgFocusRequester :: Owner -> Ros2Aimdk_msgsMsgFocusRequester -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgFocusRequester = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/FocusRequester message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgFocusRequester.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgFocusRequester :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgFocusRequester)
pollRos2Aimdk_msgsMsgFocusRequester = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/FocusResponse message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFocusResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgFocusResponse :: Owner -> Ros2Aimdk_msgsMsgFocusResponse -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgFocusResponse = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/FocusResponse message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgFocusResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgFocusResponse :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgFocusResponse)
pollRos2Aimdk_msgsMsgFocusResponse = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/HRPoint message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHRPoint.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgHRPoint :: Owner -> Ros2Aimdk_msgsMsgHRPoint -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgHRPoint = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/HRPoint message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHRPoint.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgHRPoint :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgHRPoint)
pollRos2Aimdk_msgsMsgHRPoint = Typed.pollValue
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
-- | \@brief Publish one complete aimdk_msgs/msg/HandTouchSensorData message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components:
-- message=Ros2Aimdk_msgsMsgHandTouchSensorData.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgHandTouchSensorData :: Owner -> Ros2Aimdk_msgsMsgHandTouchSensorData -> IO (Either RosError
    ())
publishRos2Aimdk_msgsMsgHandTouchSensorData = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/HandTouchSensorData message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgHandTouchSensorData.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgHandTouchSensorData :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgHandTouchSensorData)
pollRos2Aimdk_msgsMsgHandTouchSensorData = Typed.pollValue
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
-- | \@brief Publish one complete aimdk_msgs/msg/HdsEventQuery message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHdsEventQuery.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgHdsEventQuery :: Owner -> Ros2Aimdk_msgsMsgHdsEventQuery -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgHdsEventQuery = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/HdsEventQuery message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgHdsEventQuery.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgHdsEventQuery :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgHdsEventQuery)
pollRos2Aimdk_msgsMsgHdsEventQuery = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/HdsEventRecord message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHdsEventRecord.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgHdsEventRecord :: Owner -> Ros2Aimdk_msgsMsgHdsEventRecord -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgHdsEventRecord = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/HdsEventRecord message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgHdsEventRecord.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgHdsEventRecord :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgHdsEventRecord)
pollRos2Aimdk_msgsMsgHdsEventRecord = Typed.pollValue
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
-- | \@brief Publish one complete aimdk_msgs/msg/McBodyPoseStatus message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcBodyPoseStatus.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgMcBodyPoseStatus :: Owner -> Ros2Aimdk_msgsMsgMcBodyPoseStatus -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgMcBodyPoseStatus = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McBodyPoseStatus message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMcBodyPoseStatus.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgMcBodyPoseStatus :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMcBodyPoseStatus)
pollRos2Aimdk_msgsMsgMcBodyPoseStatus = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/McCommonState message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcCommonState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgMcCommonState :: Owner -> Ros2Aimdk_msgsMsgMcCommonState -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgMcCommonState = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McCommonState message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMcCommonState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgMcCommonState :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMcCommonState)
pollRos2Aimdk_msgsMsgMcCommonState = Typed.pollValue
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
-- | \@brief Publish one complete aimdk_msgs/msg/McFsmState message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcFsmState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgMcFsmState :: Owner -> Ros2Aimdk_msgsMsgMcFsmState -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgMcFsmState = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McFsmState message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcFsmState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgMcFsmState :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMcFsmState)
pollRos2Aimdk_msgsMsgMcFsmState = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/McHandStatus message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcHandStatus.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgMcHandStatus :: Owner -> Ros2Aimdk_msgsMsgMcHandStatus -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgMcHandStatus = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McHandStatus message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMcHandStatus.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgMcHandStatus :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMcHandStatus)
pollRos2Aimdk_msgsMsgMcHandStatus = Typed.pollValue
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
-- | \@brief Publish one complete aimdk_msgs/msg/McLocomotionSpeedBounds message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components:
-- message=Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgMcLocomotionSpeedBounds :: Owner -> Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds -> IO (Either
    RosError ())
publishRos2Aimdk_msgsMsgMcLocomotionSpeedBounds = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McLocomotionSpeedBounds message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgMcLocomotionSpeedBounds :: Owner -> IO (Either RosError
    Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds)
pollRos2Aimdk_msgsMsgMcLocomotionSpeedBounds = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/McLocomotionSpeedMode message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components:
-- message=Ros2Aimdk_msgsMsgMcLocomotionSpeedMode.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgMcLocomotionSpeedMode :: Owner -> Ros2Aimdk_msgsMsgMcLocomotionSpeedMode -> IO (Either
    RosError ())
publishRos2Aimdk_msgsMsgMcLocomotionSpeedMode = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McLocomotionSpeedMode message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMcLocomotionSpeedMode.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgMcLocomotionSpeedMode :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMcLocomotionSpeedMode)
pollRos2Aimdk_msgsMsgMcLocomotionSpeedMode = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/McLocomotionSpeedStatus message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components:
-- message=Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgMcLocomotionSpeedStatus :: Owner -> Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus -> IO (Either
    RosError ())
publishRos2Aimdk_msgsMsgMcLocomotionSpeedStatus = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McLocomotionSpeedStatus message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgMcLocomotionSpeedStatus :: Owner -> IO (Either RosError
    Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus)
pollRos2Aimdk_msgsMsgMcLocomotionSpeedStatus = Typed.pollValue
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
-- | \@brief Publish one complete aimdk_msgs/msg/McMotionStatus message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcMotionStatus.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgMcMotionStatus :: Owner -> Ros2Aimdk_msgsMsgMcMotionStatus -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgMcMotionStatus = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McMotionStatus message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMcMotionStatus.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgMcMotionStatus :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMcMotionStatus)
pollRos2Aimdk_msgsMsgMcMotionStatus = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/McMotionType message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcMotionType.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgMcMotionType :: Owner -> Ros2Aimdk_msgsMsgMcMotionType -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgMcMotionType = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McMotionType message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMcMotionType.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgMcMotionType :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMcMotionType)
pollRos2Aimdk_msgsMsgMcMotionType = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/McPlayerState message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcPlayerState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgMcPlayerState :: Owner -> Ros2Aimdk_msgsMsgMcPlayerState -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgMcPlayerState = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McPlayerState message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMcPlayerState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgMcPlayerState :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMcPlayerState)
pollRos2Aimdk_msgsMsgMcPlayerState = Typed.pollValue
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
-- | \@brief Publish one complete aimdk_msgs/msg/McRuntimeModel message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcRuntimeModel.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgMcRuntimeModel :: Owner -> Ros2Aimdk_msgsMsgMcRuntimeModel -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgMcRuntimeModel = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McRuntimeModel message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMcRuntimeModel.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgMcRuntimeModel :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMcRuntimeModel)
pollRos2Aimdk_msgsMsgMcRuntimeModel = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/McServoStatus message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcServoStatus.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgMcServoStatus :: Owner -> Ros2Aimdk_msgsMsgMcServoStatus -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgMcServoStatus = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/McServoStatus message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgMcServoStatus.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgMcServoStatus :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgMcServoStatus)
pollRos2Aimdk_msgsMsgMcServoStatus = Typed.pollValue
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
-- | \@brief Publish one complete aimdk_msgs/msg/NaviPoint message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgNaviPoint.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgNaviPoint :: Owner -> Ros2Aimdk_msgsMsgNaviPoint -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgNaviPoint = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/NaviPoint message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgNaviPoint.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgNaviPoint :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgNaviPoint)
pollRos2Aimdk_msgsMsgNaviPoint = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/Path message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPath.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgPath :: Owner -> Ros2Aimdk_msgsMsgPath -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgPath = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/Path message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPath.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgPath :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgPath)
pollRos2Aimdk_msgsMsgPath = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/PilotState message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPilotState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgPilotState :: Owner -> Ros2Aimdk_msgsMsgPilotState -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgPilotState = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/PilotState message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPilotState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgPilotState :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgPilotState)
pollRos2Aimdk_msgsMsgPilotState = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/PlayStateChange message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayStateChange.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgPlayStateChange :: Owner -> Ros2Aimdk_msgsMsgPlayStateChange -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgPlayStateChange = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/PlayStateChange message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgPlayStateChange.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgPlayStateChange :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgPlayStateChange)
pollRos2Aimdk_msgsMsgPlayStateChange = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/PlayStateType message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayStateType.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgPlayStateType :: Owner -> Ros2Aimdk_msgsMsgPlayStateType -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgPlayStateType = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/PlayStateType message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgPlayStateType.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgPlayStateType :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgPlayStateType)
pollRos2Aimdk_msgsMsgPlayStateType = Typed.pollValue
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
-- | \@brief Publish one complete aimdk_msgs/msg/PmuLedState message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPmuLedState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgPmuLedState :: Owner -> Ros2Aimdk_msgsMsgPmuLedState -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgPmuLedState = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/PmuLedState message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgPmuLedState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgPmuLedState :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgPmuLedState)
pollRos2Aimdk_msgsMsgPmuLedState = Typed.pollValue
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
-- | \@brief Publish one complete aimdk_msgs/msg/PncTaskRequest message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPncTaskRequest.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgPncTaskRequest :: Owner -> Ros2Aimdk_msgsMsgPncTaskRequest -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgPncTaskRequest = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/PncTaskRequest message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgPncTaskRequest.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgPncTaskRequest :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgPncTaskRequest)
pollRos2Aimdk_msgsMsgPncTaskRequest = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/PncTaskResponse message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPncTaskResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgPncTaskResponse :: Owner -> Ros2Aimdk_msgsMsgPncTaskResponse -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgPncTaskResponse = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/PncTaskResponse message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgPncTaskResponse.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgPncTaskResponse :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgPncTaskResponse)
pollRos2Aimdk_msgsMsgPncTaskResponse = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/PostProcSig message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPostProcSig.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgPostProcSig :: Owner -> Ros2Aimdk_msgsMsgPostProcSig -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgPostProcSig = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/PostProcSig message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgPostProcSig.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgPostProcSig :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgPostProcSig)
pollRos2Aimdk_msgsMsgPostProcSig = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/PostProcSigArray message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPostProcSigArray.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgPostProcSigArray :: Owner -> Ros2Aimdk_msgsMsgPostProcSigArray -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgPostProcSigArray = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/PostProcSigArray message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgPostProcSigArray.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgPostProcSigArray :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgPostProcSigArray)
pollRos2Aimdk_msgsMsgPostProcSigArray = Typed.pollValue
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
-- | \@brief Publish one complete aimdk_msgs/msg/QRCode message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgQRCode.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgQRCode :: Owner -> Ros2Aimdk_msgsMsgQRCode -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgQRCode = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/QRCode message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgQRCode.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgQRCode :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgQRCode)
pollRos2Aimdk_msgsMsgQRCode = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/QRPoint message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgQRPoint.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgQRPoint :: Owner -> Ros2Aimdk_msgsMsgQRPoint -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgQRPoint = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/QRPoint message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgQRPoint.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgQRPoint :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgQRPoint)
pollRos2Aimdk_msgsMsgQRPoint = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/Region message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgRegion.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgRegion :: Owner -> Ros2Aimdk_msgsMsgRegion -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgRegion = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/Region message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgRegion.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgRegion :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgRegion)
pollRos2Aimdk_msgsMsgRegion = Typed.pollValue
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
-- | \@brief Publish one complete aimdk_msgs/msg/RobotResource message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgRobotResource.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgRobotResource :: Owner -> Ros2Aimdk_msgsMsgRobotResource -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgRobotResource = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/RobotResource message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgRobotResource.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgRobotResource :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgRobotResource)
pollRos2Aimdk_msgsMsgRobotResource = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/SigSet message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSigSet.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgSigSet :: Owner -> Ros2Aimdk_msgsMsgSigSet -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgSigSet = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/SigSet message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgSigSet.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgSigSet :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgSigSet)
pollRos2Aimdk_msgsMsgSigSet = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/SlaveDevice message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSlaveDevice.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgSlaveDevice :: Owner -> Ros2Aimdk_msgsMsgSlaveDevice -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgSlaveDevice = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/SlaveDevice message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgSlaveDevice.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgSlaveDevice :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgSlaveDevice)
pollRos2Aimdk_msgsMsgSlaveDevice = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/SmSystemState message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSmSystemState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgSmSystemState :: Owner -> Ros2Aimdk_msgsMsgSmSystemState -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgSmSystemState = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/SmSystemState message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgSmSystemState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgSmSystemState :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgSmSystemState)
pollRos2Aimdk_msgsMsgSmSystemState = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/SystemStatus message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSystemStatus.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgSystemStatus :: Owner -> Ros2Aimdk_msgsMsgSystemStatus -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgSystemStatus = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/SystemStatus message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgSystemStatus.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgSystemStatus :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgSystemStatus)
pollRos2Aimdk_msgsMsgSystemStatus = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/TaskMasterState message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgTaskMasterState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgTaskMasterState :: Owner -> Ros2Aimdk_msgsMsgTaskMasterState -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgTaskMasterState = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/TaskMasterState message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgTaskMasterState.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgTaskMasterState :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgTaskMasterState)
pollRos2Aimdk_msgsMsgTaskMasterState = Typed.pollValue
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
-- | \@brief Publish one complete aimdk_msgs/msg/UpperBodyCommandArray message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components:
-- message=Ros2Aimdk_msgsMsgUpperBodyCommandArray.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgUpperBodyCommandArray :: Owner -> Ros2Aimdk_msgsMsgUpperBodyCommandArray -> IO (Either
    RosError ())
publishRos2Aimdk_msgsMsgUpperBodyCommandArray = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/UpperBodyCommandArray message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgUpperBodyCommandArray.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgUpperBodyCommandArray :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgUpperBodyCommandArray)
pollRos2Aimdk_msgsMsgUpperBodyCommandArray = Typed.pollValue
-- | \@brief Call the selected aimdk_msgs/srv/AbandonAudioFocus service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvAbandonAudioFocus_Request, response=Ros2Aimdk_msgsSrvAbandonAudioFocus_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos2Aimdk_msgsSrvAbandonAudioFocus :: Owner -> Ros2Aimdk_msgsSrvAbandonAudioFocus_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvAbandonAudioFocus_Response)
callRos2Aimdk_msgsSrvAbandonAudioFocus = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/AbandonAudioFocus service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvAbandonAudioFocus_Request, response=Ros2Aimdk_msgsSrvAbandonAudioFocus_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos2Aimdk_msgsSrvAbandonAudioFocus :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvAbandonAudioFocus_Request))
incomingRos2Aimdk_msgsSrvAbandonAudioFocus = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/AbandonAudioFocus service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvAbandonAudioFocus_Request,
-- response=Ros2Aimdk_msgsSrvAbandonAudioFocus_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos2Aimdk_msgsSrvAbandonAudioFocus :: Owner -> Word64 -> Ros2Aimdk_msgsSrvAbandonAudioFocus_Response -> IO
    (Either RosError ())
respondRos2Aimdk_msgsSrvAbandonAudioFocus = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/ExecuteActionResource service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvExecuteActionResource_Request, response=Ros2Aimdk_msgsSrvExecuteActionResource_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos2Aimdk_msgsSrvExecuteActionResource :: Owner -> Ros2Aimdk_msgsSrvExecuteActionResource_Request -> IO (Either
    RosError Ros2Aimdk_msgsSrvExecuteActionResource_Response)
callRos2Aimdk_msgsSrvExecuteActionResource = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/ExecuteActionResource service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvExecuteActionResource_Request, response=Ros2Aimdk_msgsSrvExecuteActionResource_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos2Aimdk_msgsSrvExecuteActionResource :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvExecuteActionResource_Request))
incomingRos2Aimdk_msgsSrvExecuteActionResource = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/ExecuteActionResource service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvExecuteActionResource_Request,
-- response=Ros2Aimdk_msgsSrvExecuteActionResource_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos2Aimdk_msgsSrvExecuteActionResource :: Owner -> Word64 -> Ros2Aimdk_msgsSrvExecuteActionResource_Response
    -> IO (Either RosError ())
respondRos2Aimdk_msgsSrvExecuteActionResource = Typed.respondValue
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
-- | \@brief Call the selected aimdk_msgs/srv/GetHdsEventHistory service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvGetHdsEventHistory_Request, response=Ros2Aimdk_msgsSrvGetHdsEventHistory_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos2Aimdk_msgsSrvGetHdsEventHistory :: Owner -> Ros2Aimdk_msgsSrvGetHdsEventHistory_Request -> IO (Either
    RosError Ros2Aimdk_msgsSrvGetHdsEventHistory_Response)
callRos2Aimdk_msgsSrvGetHdsEventHistory = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/GetHdsEventHistory service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvGetHdsEventHistory_Request, response=Ros2Aimdk_msgsSrvGetHdsEventHistory_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos2Aimdk_msgsSrvGetHdsEventHistory :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvGetHdsEventHistory_Request))
incomingRos2Aimdk_msgsSrvGetHdsEventHistory = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/GetHdsEventHistory service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetHdsEventHistory_Request,
-- response=Ros2Aimdk_msgsSrvGetHdsEventHistory_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos2Aimdk_msgsSrvGetHdsEventHistory :: Owner -> Word64 -> Ros2Aimdk_msgsSrvGetHdsEventHistory_Response -> IO
    (Either RosError ())
respondRos2Aimdk_msgsSrvGetHdsEventHistory = Typed.respondValue
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
-- | \@brief Call the selected aimdk_msgs/srv/GetMcLocomotionSpeedStatus service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request,
-- response=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus :: Owner -> Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request ->
    IO (Either RosError Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response)
callRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/GetMcLocomotionSpeedStatus service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request,
-- response=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request))
incomingRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/GetMcLocomotionSpeedStatus service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request,
-- response=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus :: Owner -> Word64 ->
    Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response -> IO (Either RosError ())
respondRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/GetMcPresetMotionState service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request,
-- response=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos2Aimdk_msgsSrvGetMcPresetMotionState :: Owner -> Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request -> IO
    (Either RosError Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response)
callRos2Aimdk_msgsSrvGetMcPresetMotionState = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/GetMcPresetMotionState service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request,
-- response=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos2Aimdk_msgsSrvGetMcPresetMotionState :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request))
incomingRos2Aimdk_msgsSrvGetMcPresetMotionState = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/GetMcPresetMotionState service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components:
-- request=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request,
-- response=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos2Aimdk_msgsSrvGetMcPresetMotionState :: Owner -> Word64 ->
    Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response -> IO (Either RosError ())
respondRos2Aimdk_msgsSrvGetMcPresetMotionState = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/GetMicSourceRequest service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvGetMicSourceRequest_Request, response=Ros2Aimdk_msgsSrvGetMicSourceRequest_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos2Aimdk_msgsSrvGetMicSourceRequest :: Owner -> Ros2Aimdk_msgsSrvGetMicSourceRequest_Request -> IO (Either
    RosError Ros2Aimdk_msgsSrvGetMicSourceRequest_Response)
callRos2Aimdk_msgsSrvGetMicSourceRequest = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/GetMicSourceRequest service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvGetMicSourceRequest_Request, response=Ros2Aimdk_msgsSrvGetMicSourceRequest_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos2Aimdk_msgsSrvGetMicSourceRequest :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvGetMicSourceRequest_Request))
incomingRos2Aimdk_msgsSrvGetMicSourceRequest = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/GetMicSourceRequest service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetMicSourceRequest_Request,
-- response=Ros2Aimdk_msgsSrvGetMicSourceRequest_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos2Aimdk_msgsSrvGetMicSourceRequest :: Owner -> Word64 -> Ros2Aimdk_msgsSrvGetMicSourceRequest_Response ->
    IO (Either RosError ())
respondRos2Aimdk_msgsSrvGetMicSourceRequest = Typed.respondValue
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
-- | \@brief Call the selected aimdk_msgs/srv/GetRobotResources service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvGetRobotResources_Request, response=Ros2Aimdk_msgsSrvGetRobotResources_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos2Aimdk_msgsSrvGetRobotResources :: Owner -> Ros2Aimdk_msgsSrvGetRobotResources_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvGetRobotResources_Response)
callRos2Aimdk_msgsSrvGetRobotResources = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/GetRobotResources service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvGetRobotResources_Request, response=Ros2Aimdk_msgsSrvGetRobotResources_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos2Aimdk_msgsSrvGetRobotResources :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvGetRobotResources_Request))
incomingRos2Aimdk_msgsSrvGetRobotResources = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/GetRobotResources service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetRobotResources_Request,
-- response=Ros2Aimdk_msgsSrvGetRobotResources_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos2Aimdk_msgsSrvGetRobotResources :: Owner -> Word64 -> Ros2Aimdk_msgsSrvGetRobotResources_Response -> IO
    (Either RosError ())
respondRos2Aimdk_msgsSrvGetRobotResources = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/GetStoredMapByName service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvGetStoredMapByName_Request, response=Ros2Aimdk_msgsSrvGetStoredMapByName_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos2Aimdk_msgsSrvGetStoredMapByName :: Owner -> Ros2Aimdk_msgsSrvGetStoredMapByName_Request -> IO (Either
    RosError Ros2Aimdk_msgsSrvGetStoredMapByName_Response)
callRos2Aimdk_msgsSrvGetStoredMapByName = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/GetStoredMapByName service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvGetStoredMapByName_Request, response=Ros2Aimdk_msgsSrvGetStoredMapByName_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos2Aimdk_msgsSrvGetStoredMapByName :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvGetStoredMapByName_Request))
incomingRos2Aimdk_msgsSrvGetStoredMapByName = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/GetStoredMapByName service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetStoredMapByName_Request,
-- response=Ros2Aimdk_msgsSrvGetStoredMapByName_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos2Aimdk_msgsSrvGetStoredMapByName :: Owner -> Word64 -> Ros2Aimdk_msgsSrvGetStoredMapByName_Response -> IO
    (Either RosError ())
respondRos2Aimdk_msgsSrvGetStoredMapByName = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/GetSystemState service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvGetSystemState_Request, response=Ros2Aimdk_msgsSrvGetSystemState_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos2Aimdk_msgsSrvGetSystemState :: Owner -> Ros2Aimdk_msgsSrvGetSystemState_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvGetSystemState_Response)
callRos2Aimdk_msgsSrvGetSystemState = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/GetSystemState service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvGetSystemState_Request, response=Ros2Aimdk_msgsSrvGetSystemState_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos2Aimdk_msgsSrvGetSystemState :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvGetSystemState_Request))
incomingRos2Aimdk_msgsSrvGetSystemState = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/GetSystemState service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetSystemState_Request,
-- response=Ros2Aimdk_msgsSrvGetSystemState_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos2Aimdk_msgsSrvGetSystemState :: Owner -> Word64 -> Ros2Aimdk_msgsSrvGetSystemState_Response -> IO (Either
    RosError ())
respondRos2Aimdk_msgsSrvGetSystemState = Typed.respondValue
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
-- | \@brief Call the selected aimdk_msgs/srv/GroupControlTimeSync service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvGroupControlTimeSync_Request, response=Ros2Aimdk_msgsSrvGroupControlTimeSync_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos2Aimdk_msgsSrvGroupControlTimeSync :: Owner -> Ros2Aimdk_msgsSrvGroupControlTimeSync_Request -> IO (Either
    RosError Ros2Aimdk_msgsSrvGroupControlTimeSync_Response)
callRos2Aimdk_msgsSrvGroupControlTimeSync = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/GroupControlTimeSync service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvGroupControlTimeSync_Request, response=Ros2Aimdk_msgsSrvGroupControlTimeSync_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos2Aimdk_msgsSrvGroupControlTimeSync :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvGroupControlTimeSync_Request))
incomingRos2Aimdk_msgsSrvGroupControlTimeSync = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/GroupControlTimeSync service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGroupControlTimeSync_Request,
-- response=Ros2Aimdk_msgsSrvGroupControlTimeSync_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos2Aimdk_msgsSrvGroupControlTimeSync :: Owner -> Word64 -> Ros2Aimdk_msgsSrvGroupControlTimeSync_Response ->
    IO (Either RosError ())
respondRos2Aimdk_msgsSrvGroupControlTimeSync = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/MigrateSystemState service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvMigrateSystemState_Request, response=Ros2Aimdk_msgsSrvMigrateSystemState_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos2Aimdk_msgsSrvMigrateSystemState :: Owner -> Ros2Aimdk_msgsSrvMigrateSystemState_Request -> IO (Either
    RosError Ros2Aimdk_msgsSrvMigrateSystemState_Response)
callRos2Aimdk_msgsSrvMigrateSystemState = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/MigrateSystemState service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvMigrateSystemState_Request, response=Ros2Aimdk_msgsSrvMigrateSystemState_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos2Aimdk_msgsSrvMigrateSystemState :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvMigrateSystemState_Request))
incomingRos2Aimdk_msgsSrvMigrateSystemState = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/MigrateSystemState service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvMigrateSystemState_Request,
-- response=Ros2Aimdk_msgsSrvMigrateSystemState_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos2Aimdk_msgsSrvMigrateSystemState :: Owner -> Word64 -> Ros2Aimdk_msgsSrvMigrateSystemState_Response -> IO
    (Either RosError ())
respondRos2Aimdk_msgsSrvMigrateSystemState = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/PlayAudioFile service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvPlayAudioFile_Request, response=Ros2Aimdk_msgsSrvPlayAudioFile_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos2Aimdk_msgsSrvPlayAudioFile :: Owner -> Ros2Aimdk_msgsSrvPlayAudioFile_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvPlayAudioFile_Response)
callRos2Aimdk_msgsSrvPlayAudioFile = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/PlayAudioFile service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvPlayAudioFile_Request, response=Ros2Aimdk_msgsSrvPlayAudioFile_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos2Aimdk_msgsSrvPlayAudioFile :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvPlayAudioFile_Request))
incomingRos2Aimdk_msgsSrvPlayAudioFile = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/PlayAudioFile service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvPlayAudioFile_Request,
-- response=Ros2Aimdk_msgsSrvPlayAudioFile_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos2Aimdk_msgsSrvPlayAudioFile :: Owner -> Word64 -> Ros2Aimdk_msgsSrvPlayAudioFile_Response -> IO (Either
    RosError ())
respondRos2Aimdk_msgsSrvPlayAudioFile = Typed.respondValue
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
-- | \@brief Call the selected aimdk_msgs/srv/PlayEmojiGroup service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvPlayEmojiGroup_Request, response=Ros2Aimdk_msgsSrvPlayEmojiGroup_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos2Aimdk_msgsSrvPlayEmojiGroup :: Owner -> Ros2Aimdk_msgsSrvPlayEmojiGroup_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvPlayEmojiGroup_Response)
callRos2Aimdk_msgsSrvPlayEmojiGroup = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/PlayEmojiGroup service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvPlayEmojiGroup_Request, response=Ros2Aimdk_msgsSrvPlayEmojiGroup_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos2Aimdk_msgsSrvPlayEmojiGroup :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvPlayEmojiGroup_Request))
incomingRos2Aimdk_msgsSrvPlayEmojiGroup = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/PlayEmojiGroup service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvPlayEmojiGroup_Request,
-- response=Ros2Aimdk_msgsSrvPlayEmojiGroup_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos2Aimdk_msgsSrvPlayEmojiGroup :: Owner -> Word64 -> Ros2Aimdk_msgsSrvPlayEmojiGroup_Response -> IO (Either
    RosError ())
respondRos2Aimdk_msgsSrvPlayEmojiGroup = Typed.respondValue
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
-- | \@brief Call the selected aimdk_msgs/srv/PlayVideoGroup service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvPlayVideoGroup_Request, response=Ros2Aimdk_msgsSrvPlayVideoGroup_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos2Aimdk_msgsSrvPlayVideoGroup :: Owner -> Ros2Aimdk_msgsSrvPlayVideoGroup_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvPlayVideoGroup_Response)
callRos2Aimdk_msgsSrvPlayVideoGroup = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/PlayVideoGroup service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvPlayVideoGroup_Request, response=Ros2Aimdk_msgsSrvPlayVideoGroup_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos2Aimdk_msgsSrvPlayVideoGroup :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvPlayVideoGroup_Request))
incomingRos2Aimdk_msgsSrvPlayVideoGroup = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/PlayVideoGroup service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvPlayVideoGroup_Request,
-- response=Ros2Aimdk_msgsSrvPlayVideoGroup_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos2Aimdk_msgsSrvPlayVideoGroup :: Owner -> Word64 -> Ros2Aimdk_msgsSrvPlayVideoGroup_Response -> IO (Either
    RosError ())
respondRos2Aimdk_msgsSrvPlayVideoGroup = Typed.respondValue
-- | \@brief Call the selected aimdk_msgs/srv/RequestAudioFocus service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvRequestAudioFocus_Request, response=Ros2Aimdk_msgsSrvRequestAudioFocus_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos2Aimdk_msgsSrvRequestAudioFocus :: Owner -> Ros2Aimdk_msgsSrvRequestAudioFocus_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvRequestAudioFocus_Response)
callRos2Aimdk_msgsSrvRequestAudioFocus = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/RequestAudioFocus service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvRequestAudioFocus_Request, response=Ros2Aimdk_msgsSrvRequestAudioFocus_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos2Aimdk_msgsSrvRequestAudioFocus :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvRequestAudioFocus_Request))
incomingRos2Aimdk_msgsSrvRequestAudioFocus = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/RequestAudioFocus service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvRequestAudioFocus_Request,
-- response=Ros2Aimdk_msgsSrvRequestAudioFocus_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos2Aimdk_msgsSrvRequestAudioFocus :: Owner -> Word64 -> Ros2Aimdk_msgsSrvRequestAudioFocus_Response -> IO
    (Either RosError ())
respondRos2Aimdk_msgsSrvRequestAudioFocus = Typed.respondValue
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
-- | \@brief Call the selected aimdk_msgs/srv/SetMicSourceRequest service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvSetMicSourceRequest_Request, response=Ros2Aimdk_msgsSrvSetMicSourceRequest_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos2Aimdk_msgsSrvSetMicSourceRequest :: Owner -> Ros2Aimdk_msgsSrvSetMicSourceRequest_Request -> IO (Either
    RosError Ros2Aimdk_msgsSrvSetMicSourceRequest_Response)
callRos2Aimdk_msgsSrvSetMicSourceRequest = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/SetMicSourceRequest service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvSetMicSourceRequest_Request, response=Ros2Aimdk_msgsSrvSetMicSourceRequest_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos2Aimdk_msgsSrvSetMicSourceRequest :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvSetMicSourceRequest_Request))
incomingRos2Aimdk_msgsSrvSetMicSourceRequest = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/SetMicSourceRequest service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvSetMicSourceRequest_Request,
-- response=Ros2Aimdk_msgsSrvSetMicSourceRequest_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos2Aimdk_msgsSrvSetMicSourceRequest :: Owner -> Word64 -> Ros2Aimdk_msgsSrvSetMicSourceRequest_Response ->
    IO (Either RosError ())
respondRos2Aimdk_msgsSrvSetMicSourceRequest = Typed.respondValue
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
-- | \@brief Call the selected aimdk_msgs/srv/SetPmuLed service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvSetPmuLed_Request, response=Ros2Aimdk_msgsSrvSetPmuLed_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos2Aimdk_msgsSrvSetPmuLed :: Owner -> Ros2Aimdk_msgsSrvSetPmuLed_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvSetPmuLed_Response)
callRos2Aimdk_msgsSrvSetPmuLed = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/SetPmuLed service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvSetPmuLed_Request, response=Ros2Aimdk_msgsSrvSetPmuLed_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos2Aimdk_msgsSrvSetPmuLed :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvSetPmuLed_Request))
incomingRos2Aimdk_msgsSrvSetPmuLed = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/SetPmuLed service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvSetPmuLed_Request,
-- response=Ros2Aimdk_msgsSrvSetPmuLed_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos2Aimdk_msgsSrvSetPmuLed :: Owner -> Word64 -> Ros2Aimdk_msgsSrvSetPmuLed_Response -> IO (Either RosError
    ())
respondRos2Aimdk_msgsSrvSetPmuLed = Typed.respondValue
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
-- | \@brief Call the selected aimdk_msgs/srv/StopAudioPlay service.
-- \@details Encode the exact request and decode the complete response using the separately granted legacy
-- service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
-- request=Ros2Aimdk_msgsSrvStopAudioPlay_Request, response=Ros2Aimdk_msgsSrvStopAudioPlay_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
callRos2Aimdk_msgsSrvStopAudioPlay :: Owner -> Ros2Aimdk_msgsSrvStopAudioPlay_Request -> IO (Either RosError
    Ros2Aimdk_msgsSrvStopAudioPlay_Response)
callRos2Aimdk_msgsSrvStopAudioPlay = Typed.callValue
-- | \@brief Receive an actually delivered aimdk_msgs/srv/StopAudioPlay service request.
-- \@details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
-- separate; receipt grants no authority over other requests. Components:
-- request=Ros2Aimdk_msgsSrvStopAudioPlay_Request, response=Ros2Aimdk_msgsSrvStopAudioPlay_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
incomingRos2Aimdk_msgsSrvStopAudioPlay :: Owner -> IO (Either RosError (Typed.Incoming
    Ros2Aimdk_msgsSrvStopAudioPlay_Request))
incomingRos2Aimdk_msgsSrvStopAudioPlay = Typed.incoming
-- | \@brief Respond once to a delivered aimdk_msgs/srv/StopAudioPlay service request.
-- \@details Prefix the complete selected response with its owned request ID. This legacy response path is not the
-- separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvStopAudioPlay_Request,
-- response=Ros2Aimdk_msgsSrvStopAudioPlay_Response.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
respondRos2Aimdk_msgsSrvStopAudioPlay :: Owner -> Word64 -> Ros2Aimdk_msgsSrvStopAudioPlay_Response -> IO (Either
    RosError ())
respondRos2Aimdk_msgsSrvStopAudioPlay = Typed.respondValue
