# @file interfaces.nim
# @brief Full ubtech nim codecs and original record metadata.
# @details Complete ubtech ros2_main values in nim. 8 original records retain 24 fields and 8 interface
# descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions. Encoding
# is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API manual under
# document/platform/ubtech/en_US/catalog/.
# Generated typed interfaces; no implicit grants.
import roswasm
import roswasm/typed
import records
proc publishRos2Grab_demo_msgsMsgGraspCandidate*(o:Owner;value:Ros2Grab_demo_msgsMsgGraspCandidate) =
  ## ``@brief Publish one complete grab_demo_msgs/msg/GraspCandidate message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Grab_demo_msgsMsgGraspCandidate.``
  ## ``@return The typed operation result on success; language error/status on refusal.``
  ## ``@param[in] o Live separately granted exact-interface owner; borrow through synchronous``
  ## ``return.``
  ## ``@param[in] value Complete selected message/request/goal/reply value; keep all backing``
  ## ``storage stable during encoding.``
  ## ``@permissions The live same-Instance/backend owner must already carry this exact interface,``
  ## ``operation, direction, quota and trusted deadline grant. Source generation grants none.``
  ## ``@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and``
  ## ``unknown timeout errors; publish no successful typed value after a failed decode.``
  ## ``@lifetime Borrow owners, input values and caller buffers until synchronous return.``
  ## ``Arena-backed returned values additionally borrow the documented decode storage.``
  ## ``@thread Call on the admitted Guest executor thread; no callback or background executor is``
  ## ``started.``
  ## ``@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  publishValue(o,value)
proc pollRos2Grab_demo_msgsMsgGraspCandidate*(o:Owner):Ros2Grab_demo_msgsMsgGraspCandidate =
  ## ``@brief Poll and decode one complete grab_demo_msgs/msg/GraspCandidate message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Grab_demo_msgsMsgGraspCandidate.``
  ## ``@return The typed operation result on success; language error/status on refusal.``
  ## ``@param[in] o Live separately granted exact-interface owner; borrow through synchronous``
  ## ``return.``
  ## ``@permissions The live same-Instance/backend owner must already carry this exact interface,``
  ## ``operation, direction, quota and trusted deadline grant. Source generation grants none.``
  ## ``@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and``
  ## ``unknown timeout errors; publish no successful typed value after a failed decode.``
  ## ``@lifetime Borrow owners, input values and caller buffers until synchronous return.``
  ## ``Arena-backed returned values additionally borrow the documented decode storage.``
  ## ``@thread Call on the admitted Guest executor thread; no callback or background executor is``
  ## ``started.``
  ## ``@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  decodeRos2Grab_demo_msgsMsgGraspCandidate(poll(o,604))
proc publishRos2Grab_demo_msgsMsgIKRequest*(o:Owner;value:Ros2Grab_demo_msgsMsgIKRequest) =
  ## ``@brief Publish one complete grab_demo_msgs/msg/IKRequest message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Grab_demo_msgsMsgIKRequest.``
  ## ``@return The typed operation result on success; language error/status on refusal.``
  ## ``@param[in] o Live separately granted exact-interface owner; borrow through synchronous``
  ## ``return.``
  ## ``@param[in] value Complete selected message/request/goal/reply value; keep all backing``
  ## ``storage stable during encoding.``
  ## ``@permissions The live same-Instance/backend owner must already carry this exact interface,``
  ## ``operation, direction, quota and trusted deadline grant. Source generation grants none.``
  ## ``@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and``
  ## ``unknown timeout errors; publish no successful typed value after a failed decode.``
  ## ``@lifetime Borrow owners, input values and caller buffers until synchronous return.``
  ## ``Arena-backed returned values additionally borrow the documented decode storage.``
  ## ``@thread Call on the admitted Guest executor thread; no callback or background executor is``
  ## ``started.``
  ## ``@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  publishValue(o,value)
proc pollRos2Grab_demo_msgsMsgIKRequest*(o:Owner):Ros2Grab_demo_msgsMsgIKRequest =
  ## ``@brief Poll and decode one complete grab_demo_msgs/msg/IKRequest message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Grab_demo_msgsMsgIKRequest.``
  ## ``@return The typed operation result on success; language error/status on refusal.``
  ## ``@param[in] o Live separately granted exact-interface owner; borrow through synchronous``
  ## ``return.``
  ## ``@permissions The live same-Instance/backend owner must already carry this exact interface,``
  ## ``operation, direction, quota and trusted deadline grant. Source generation grants none.``
  ## ``@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and``
  ## ``unknown timeout errors; publish no successful typed value after a failed decode.``
  ## ``@lifetime Borrow owners, input values and caller buffers until synchronous return.``
  ## ``Arena-backed returned values additionally borrow the documented decode storage.``
  ## ``@thread Call on the admitted Guest executor thread; no callback or background executor is``
  ## ``started.``
  ## ``@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  decodeRos2Grab_demo_msgsMsgIKRequest(poll(o,320))
