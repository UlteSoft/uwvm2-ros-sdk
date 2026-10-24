# @file interfaces.nim
# @brief Full agibot nim codecs and original record metadata.
# @details Complete agibot ros2_sdk_v1_1_0_rl values in nim. 19 original records retain 71 fields and 19 interface
# descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions. Encoding
# is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API manual under
# document/platform/agibot/en_US/catalog/.
# Generated typed interfaces; no implicit grants.
import roswasm
import roswasm/typed
import records
proc publishRos2Aimdk_msgsMsgCommonRequest*(o:Owner;value:Ros2Aimdk_msgsMsgCommonRequest) =
  ## ``@brief Publish one complete aimdk_msgs/msg/CommonRequest message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgCommonRequest.``
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
proc pollRos2Aimdk_msgsMsgCommonRequest*(o:Owner):Ros2Aimdk_msgsMsgCommonRequest =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/CommonRequest message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgCommonRequest.``
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
  decodeRos2Aimdk_msgsMsgCommonRequest(poll(o,8))
proc publishRos2Aimdk_msgsMsgCommonResponse*(o:Owner;value:Ros2Aimdk_msgsMsgCommonResponse) =
  ## ``@brief Publish one complete aimdk_msgs/msg/CommonResponse message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgCommonResponse.``
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
proc pollRos2Aimdk_msgsMsgCommonResponse*(o:Owner):Ros2Aimdk_msgsMsgCommonResponse =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/CommonResponse message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgCommonResponse.``
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
  decodeRos2Aimdk_msgsMsgCommonResponse(poll(o,152))
proc publishRos2Aimdk_msgsMsgCommonState*(o:Owner;value:Ros2Aimdk_msgsMsgCommonState) =
  ## ``@brief Publish one complete aimdk_msgs/msg/CommonState message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgCommonState.``
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
proc pollRos2Aimdk_msgsMsgCommonState*(o:Owner):Ros2Aimdk_msgsMsgCommonState =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/CommonState message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgCommonState.``
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
  decodeRos2Aimdk_msgsMsgCommonState(poll(o,4))
proc publishRos2Aimdk_msgsMsgCommonTaskResponse*(o:Owner;value:Ros2Aimdk_msgsMsgCommonTaskResponse) =
  ## ``@brief Publish one complete aimdk_msgs/msg/CommonTaskResponse message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgCommonTaskResponse.``
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
proc pollRos2Aimdk_msgsMsgCommonTaskResponse*(o:Owner):Ros2Aimdk_msgsMsgCommonTaskResponse =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/CommonTaskResponse message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgCommonTaskResponse.``
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
  decodeRos2Aimdk_msgsMsgCommonTaskResponse(poll(o,28))
proc publishRos2Aimdk_msgsMsgDomainErrorState*(o:Owner;value:Ros2Aimdk_msgsMsgDomainErrorState) =
  ## ``@brief Publish one complete aimdk_msgs/msg/DomainErrorState message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgDomainErrorState.``
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
proc pollRos2Aimdk_msgsMsgDomainErrorState*(o:Owner):Ros2Aimdk_msgsMsgDomainErrorState =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/DomainErrorState message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgDomainErrorState.``
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
  decodeRos2Aimdk_msgsMsgDomainErrorState(poll(o,1))
proc publishRos2Aimdk_msgsMsgJointCommand*(o:Owner;value:Ros2Aimdk_msgsMsgJointCommand) =
  ## ``@brief Publish one complete aimdk_msgs/msg/JointCommand message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgJointCommand.``
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
proc pollRos2Aimdk_msgsMsgJointCommand*(o:Owner):Ros2Aimdk_msgsMsgJointCommand =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/JointCommand message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgJointCommand.``
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
  decodeRos2Aimdk_msgsMsgJointCommand(poll(o,172))
proc publishRos2Aimdk_msgsMsgJointCommandArray*(o:Owner;value:Ros2Aimdk_msgsMsgJointCommandArray) =
  ## ``@brief Publish one complete aimdk_msgs/msg/JointCommandArray message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgJointCommandArray.``
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
proc pollRos2Aimdk_msgsMsgJointCommandArray*(o:Owner):Ros2Aimdk_msgsMsgJointCommandArray =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/JointCommandArray message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgJointCommandArray.``
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
  decodeRos2Aimdk_msgsMsgJointCommandArray(poll(o,11164))
proc publishRos2Aimdk_msgsMsgJointState*(o:Owner;value:Ros2Aimdk_msgsMsgJointState) =
  ## ``@brief Publish one complete aimdk_msgs/msg/JointState message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgJointState.``
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
proc pollRos2Aimdk_msgsMsgJointState*(o:Owner):Ros2Aimdk_msgsMsgJointState =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/JointState message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgJointState.``
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
  decodeRos2Aimdk_msgsMsgJointState(poll(o,158))
proc publishRos2Aimdk_msgsMsgJointStateArray*(o:Owner;value:Ros2Aimdk_msgsMsgJointStateArray) =
  ## ``@brief Publish one complete aimdk_msgs/msg/JointStateArray message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgJointStateArray.``
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
proc pollRos2Aimdk_msgsMsgJointStateArray*(o:Owner):Ros2Aimdk_msgsMsgJointStateArray =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/JointStateArray message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgJointStateArray.``
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
  decodeRos2Aimdk_msgsMsgJointStateArray(poll(o,10269))
proc publishRos2Aimdk_msgsMsgMessageHeader*(o:Owner;value:Ros2Aimdk_msgsMsgMessageHeader) =
  ## ``@brief Publish one complete aimdk_msgs/msg/MessageHeader message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMessageHeader.``
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
proc pollRos2Aimdk_msgsMsgMessageHeader*(o:Owner):Ros2Aimdk_msgsMsgMessageHeader =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/MessageHeader message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMessageHeader.``
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
  decodeRos2Aimdk_msgsMsgMessageHeader(poll(o,152))
proc publishRos2Aimdk_msgsMsgModuleChannelInfo*(o:Owner;value:Ros2Aimdk_msgsMsgModuleChannelInfo) =
  ## ``@brief Publish one complete aimdk_msgs/msg/ModuleChannelInfo message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgModuleChannelInfo.``
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
proc pollRos2Aimdk_msgsMsgModuleChannelInfo*(o:Owner):Ros2Aimdk_msgsMsgModuleChannelInfo =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/ModuleChannelInfo message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgModuleChannelInfo.``
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
  decodeRos2Aimdk_msgsMsgModuleChannelInfo(poll(o,586))
proc publishRos2Aimdk_msgsMsgModuleResourceInfo*(o:Owner;value:Ros2Aimdk_msgsMsgModuleResourceInfo) =
  ## ``@brief Publish one complete aimdk_msgs/msg/ModuleResourceInfo message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgModuleResourceInfo.``
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
proc pollRos2Aimdk_msgsMsgModuleResourceInfo*(o:Owner):Ros2Aimdk_msgsMsgModuleResourceInfo =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/ModuleResourceInfo message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgModuleResourceInfo.``
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
  decodeRos2Aimdk_msgsMsgModuleResourceInfo(poll(o,5180))
proc publishRos2Aimdk_msgsMsgModuleRpcInfo*(o:Owner;value:Ros2Aimdk_msgsMsgModuleRpcInfo) =
  ## ``@brief Publish one complete aimdk_msgs/msg/ModuleRpcInfo message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgModuleRpcInfo.``
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
proc pollRos2Aimdk_msgsMsgModuleRpcInfo*(o:Owner):Ros2Aimdk_msgsMsgModuleRpcInfo =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/ModuleRpcInfo message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgModuleRpcInfo.``
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
  decodeRos2Aimdk_msgsMsgModuleRpcInfo(poll(o,672))
proc publishRos2Aimdk_msgsMsgProcessInfo*(o:Owner;value:Ros2Aimdk_msgsMsgProcessInfo) =
  ## ``@brief Publish one complete aimdk_msgs/msg/ProcessInfo message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgProcessInfo.``
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
proc pollRos2Aimdk_msgsMsgProcessInfo*(o:Owner):Ros2Aimdk_msgsMsgProcessInfo =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/ProcessInfo message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgProcessInfo.``
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
  decodeRos2Aimdk_msgsMsgProcessInfo(poll(o,12232))
proc publishRos2Aimdk_msgsMsgProcessResourceInfo*(o:Owner;value:Ros2Aimdk_msgsMsgProcessResourceInfo) =
  ## ``@brief Publish one complete aimdk_msgs/msg/ProcessResourceInfo message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgProcessResourceInfo.``
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
proc pollRos2Aimdk_msgsMsgProcessResourceInfo*(o:Owner):Ros2Aimdk_msgsMsgProcessResourceInfo =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/ProcessResourceInfo message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgProcessResourceInfo.``
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
  decodeRos2Aimdk_msgsMsgProcessResourceInfo(poll(o,1584))
proc publishRos2Aimdk_msgsMsgRequestHeader*(o:Owner;value:Ros2Aimdk_msgsMsgRequestHeader) =
  ## ``@brief Publish one complete aimdk_msgs/msg/RequestHeader message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgRequestHeader.``
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
proc pollRos2Aimdk_msgsMsgRequestHeader*(o:Owner):Ros2Aimdk_msgsMsgRequestHeader =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/RequestHeader message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgRequestHeader.``
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
  decodeRos2Aimdk_msgsMsgRequestHeader(poll(o,8))
proc publishRos2Aimdk_msgsMsgResponseHeader*(o:Owner;value:Ros2Aimdk_msgsMsgResponseHeader) =
  ## ``@brief Publish one complete aimdk_msgs/msg/ResponseHeader message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgResponseHeader.``
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
proc pollRos2Aimdk_msgsMsgResponseHeader*(o:Owner):Ros2Aimdk_msgsMsgResponseHeader =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/ResponseHeader message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgResponseHeader.``
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
  decodeRos2Aimdk_msgsMsgResponseHeader(poll(o,16))
proc publishRos2Aimdk_msgsMsgThreadResourceInfo*(o:Owner;value:Ros2Aimdk_msgsMsgThreadResourceInfo) =
  ## ``@brief Publish one complete aimdk_msgs/msg/ThreadResourceInfo message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgThreadResourceInfo.``
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
proc pollRos2Aimdk_msgsMsgThreadResourceInfo*(o:Owner):Ros2Aimdk_msgsMsgThreadResourceInfo =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/ThreadResourceInfo message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgThreadResourceInfo.``
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
  decodeRos2Aimdk_msgsMsgThreadResourceInfo(poll(o,352))
