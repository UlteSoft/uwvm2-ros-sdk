-- @file Interfaces.hs
-- @brief Full ubtech haskell codecs and original record metadata.
-- @details Complete ubtech ros2_main values in haskell. 8 original records retain 24 fields and 8 interface
-- descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
-- Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
-- manual under document/platform/ubtech/en_US/catalog/.
module RosWasm.Interfaces where
import Data.Word
import RosWasm
import RosWasm.Records
import qualified RosWasm.Typed as Typed
-- | \@brief Publish one complete grab_demo_msgs/msg/GraspCandidate message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Grab_demo_msgsMsgGraspCandidate.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Grab_demo_msgsMsgGraspCandidate :: Owner -> Ros2Grab_demo_msgsMsgGraspCandidate -> IO (Either RosError
    ())
publishRos2Grab_demo_msgsMsgGraspCandidate = Typed.publishValue
-- | \@brief Poll and decode one complete grab_demo_msgs/msg/GraspCandidate message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Grab_demo_msgsMsgGraspCandidate.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Grab_demo_msgsMsgGraspCandidate :: Owner -> IO (Either RosError Ros2Grab_demo_msgsMsgGraspCandidate)
pollRos2Grab_demo_msgsMsgGraspCandidate = Typed.pollValue
-- | \@brief Publish one complete grab_demo_msgs/msg/IKRequest message.
-- \@details Encode the complete message before the single effectful publish. A successful return acknowledges
-- transport admission, not physical controller completion. Components: message=Ros2Grab_demo_msgsMsgIKRequest.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
publishRos2Grab_demo_msgsMsgIKRequest :: Owner -> Ros2Grab_demo_msgsMsgIKRequest -> IO (Either RosError ())
publishRos2Grab_demo_msgsMsgIKRequest = Typed.publishValue
-- | \@brief Poll and decode one complete grab_demo_msgs/msg/IKRequest message.
-- \@details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
-- message; a capacity refusal may already have consumed the event. Components:
-- message=Ros2Grab_demo_msgsMsgIKRequest.
-- \@return The typed operation result on success; language error/status on refusal.
-- \@permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
-- quota and trusted deadline grant. Source generation grants none.
-- \@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
-- errors; publish no successful typed value after a failed decode.
-- \@lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
-- additionally borrow the documented decode storage.
-- \@thread Call on the admitted Guest executor thread; no callback or background executor is started.
-- \@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
-- \@see share/platform/ros/haskell/API-CONTRACT.md
pollRos2Grab_demo_msgsMsgIKRequest :: Owner -> IO (Either RosError Ros2Grab_demo_msgsMsgIKRequest)
pollRos2Grab_demo_msgsMsgIKRequest = Typed.pollValue
