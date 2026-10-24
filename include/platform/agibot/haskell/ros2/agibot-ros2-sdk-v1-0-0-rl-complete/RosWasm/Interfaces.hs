-- @file Interfaces.hs
-- @brief Full agibot haskell codecs and original record metadata.
-- @details Complete agibot ros2_sdk_v1_0_0_rl values in haskell. 19 original records retain 71 fields and 19
-- interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
-- definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
-- profile API manual under document/platform/agibot/en_US/catalog/.
module RosWasm.Interfaces where
import Data.Word
import RosWasm
import RosWasm.Records
import qualified RosWasm.Typed as Typed
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
-- | \@brief Publish one complete aimdk_msgs/msg/ModuleChannelInfo message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgModuleChannelInfo.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgModuleChannelInfo :: Owner -> Ros2Aimdk_msgsMsgModuleChannelInfo -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgModuleChannelInfo = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/ModuleChannelInfo message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgModuleChannelInfo.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgModuleChannelInfo :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgModuleChannelInfo)
pollRos2Aimdk_msgsMsgModuleChannelInfo = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/ModuleResourceInfo message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgModuleResourceInfo.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgModuleResourceInfo :: Owner -> Ros2Aimdk_msgsMsgModuleResourceInfo -> IO (Either RosError
    ())
publishRos2Aimdk_msgsMsgModuleResourceInfo = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/ModuleResourceInfo message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgModuleResourceInfo.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgModuleResourceInfo :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgModuleResourceInfo)
pollRos2Aimdk_msgsMsgModuleResourceInfo = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/ModuleRpcInfo message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgModuleRpcInfo.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgModuleRpcInfo :: Owner -> Ros2Aimdk_msgsMsgModuleRpcInfo -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgModuleRpcInfo = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/ModuleRpcInfo message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgModuleRpcInfo.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgModuleRpcInfo :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgModuleRpcInfo)
pollRos2Aimdk_msgsMsgModuleRpcInfo = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/ProcessInfo message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgProcessInfo.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgProcessInfo :: Owner -> Ros2Aimdk_msgsMsgProcessInfo -> IO (Either RosError ())
publishRos2Aimdk_msgsMsgProcessInfo = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/ProcessInfo message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgProcessInfo.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgProcessInfo :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgProcessInfo)
pollRos2Aimdk_msgsMsgProcessInfo = Typed.pollValue
-- | \@brief Publish one complete aimdk_msgs/msg/ProcessResourceInfo message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components:
-- message=Ros2Aimdk_msgsMsgProcessResourceInfo.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgProcessResourceInfo :: Owner -> Ros2Aimdk_msgsMsgProcessResourceInfo -> IO (Either RosError
    ())
publishRos2Aimdk_msgsMsgProcessResourceInfo = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/ProcessResourceInfo message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgProcessResourceInfo.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgProcessResourceInfo :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgProcessResourceInfo)
pollRos2Aimdk_msgsMsgProcessResourceInfo = Typed.pollValue
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
-- | \@brief Publish one complete aimdk_msgs/msg/ThreadResourceInfo message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgThreadResourceInfo.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Aimdk_msgsMsgThreadResourceInfo :: Owner -> Ros2Aimdk_msgsMsgThreadResourceInfo -> IO (Either RosError
    ())
publishRos2Aimdk_msgsMsgThreadResourceInfo = Typed.publishValue
-- | \@brief Poll and decode one complete aimdk_msgs/msg/ThreadResourceInfo message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Aimdk_msgsMsgThreadResourceInfo.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Aimdk_msgsMsgThreadResourceInfo :: Owner -> IO (Either RosError Ros2Aimdk_msgsMsgThreadResourceInfo)
pollRos2Aimdk_msgsMsgThreadResourceInfo = Typed.pollValue
