# @file interfaces.nim
# @brief Full agibot nim codecs and original record metadata.
# @details Complete agibot ros2_sdk_v0_8_1_main values in nim. 72 original records retain 227 fields and 55
# interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
# definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
# profile API manual under document/platform/agibot/en_US/catalog/.
# Generated typed interfaces; no implicit grants.
import roswasm
import roswasm/typed
import records
proc publishRos2Aimdk_msgsMsgAgentProperties*(o:Owner;value:Ros2Aimdk_msgsMsgAgentProperties) =
  ## ``@brief Publish one complete aimdk_msgs/msg/AgentProperties message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgAgentProperties.``
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
proc pollRos2Aimdk_msgsMsgAgentProperties*(o:Owner):Ros2Aimdk_msgsMsgAgentProperties =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/AgentProperties message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgAgentProperties.``
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
  decodeRos2Aimdk_msgsMsgAgentProperties(poll(o,536))
proc publishRos2Aimdk_msgsMsgAgentPropertiesValue*(o:Owner;value:Ros2Aimdk_msgsMsgAgentPropertiesValue) =
  ## ``@brief Publish one complete aimdk_msgs/msg/AgentPropertiesValue message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgAgentPropertiesValue.``
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
proc pollRos2Aimdk_msgsMsgAgentPropertiesValue*(o:Owner):Ros2Aimdk_msgsMsgAgentPropertiesValue =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/AgentPropertiesValue message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgAgentPropertiesValue.``
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
  decodeRos2Aimdk_msgsMsgAgentPropertiesValue(poll(o,133))
proc publishRos2Aimdk_msgsMsgAgentPropertyIdType*(o:Owner;value:Ros2Aimdk_msgsMsgAgentPropertyIdType) =
  ## ``@brief Publish one complete aimdk_msgs/msg/AgentPropertyIdType message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgAgentPropertyIdType.``
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
proc pollRos2Aimdk_msgsMsgAgentPropertyIdType*(o:Owner):Ros2Aimdk_msgsMsgAgentPropertyIdType =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/AgentPropertyIdType message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgAgentPropertyIdType.``
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
  decodeRos2Aimdk_msgsMsgAgentPropertyIdType(poll(o,1))
proc publishRos2Aimdk_msgsMsgAudioVadStateType*(o:Owner;value:Ros2Aimdk_msgsMsgAudioVadStateType) =
  ## ``@brief Publish one complete aimdk_msgs/msg/AudioVadStateType message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgAudioVadStateType.``
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
proc pollRos2Aimdk_msgsMsgAudioVadStateType*(o:Owner):Ros2Aimdk_msgsMsgAudioVadStateType =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/AudioVadStateType message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgAudioVadStateType.``
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
  decodeRos2Aimdk_msgsMsgAudioVadStateType(poll(o,1))
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
proc publishRos2Aimdk_msgsMsgFaceEmojiStatus*(o:Owner;value:Ros2Aimdk_msgsMsgFaceEmojiStatus) =
  ## ``@brief Publish one complete aimdk_msgs/msg/FaceEmojiStatus message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgFaceEmojiStatus.``
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
proc pollRos2Aimdk_msgsMsgFaceEmojiStatus*(o:Owner):Ros2Aimdk_msgsMsgFaceEmojiStatus =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/FaceEmojiStatus message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgFaceEmojiStatus.``
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
  decodeRos2Aimdk_msgsMsgFaceEmojiStatus(poll(o,2415))
proc publishRos2Aimdk_msgsMsgHandCommand*(o:Owner;value:Ros2Aimdk_msgsMsgHandCommand) =
  ## ``@brief Publish one complete aimdk_msgs/msg/HandCommand message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgHandCommand.``
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
proc pollRos2Aimdk_msgsMsgHandCommand*(o:Owner):Ros2Aimdk_msgsMsgHandCommand =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/HandCommand message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgHandCommand.``
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
  decodeRos2Aimdk_msgsMsgHandCommand(poll(o,172))
proc publishRos2Aimdk_msgsMsgHandCommandArray*(o:Owner;value:Ros2Aimdk_msgsMsgHandCommandArray) =
  ## ``@brief Publish one complete aimdk_msgs/msg/HandCommandArray message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgHandCommandArray.``
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
proc pollRos2Aimdk_msgsMsgHandCommandArray*(o:Owner):Ros2Aimdk_msgsMsgHandCommandArray =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/HandCommandArray message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgHandCommandArray.``
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
  decodeRos2Aimdk_msgsMsgHandCommandArray(poll(o,1538))
proc publishRos2Aimdk_msgsMsgHandState*(o:Owner;value:Ros2Aimdk_msgsMsgHandState) =
  ## ``@brief Publish one complete aimdk_msgs/msg/HandState message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgHandState.``
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
proc pollRos2Aimdk_msgsMsgHandState*(o:Owner):Ros2Aimdk_msgsMsgHandState =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/HandState message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgHandState.``
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
  decodeRos2Aimdk_msgsMsgHandState(poll(o,164))
proc publishRos2Aimdk_msgsMsgHandStateArray*(o:Owner;value:Ros2Aimdk_msgsMsgHandStateArray) =
  ## ``@brief Publish one complete aimdk_msgs/msg/HandStateArray message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgHandStateArray.``
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
proc pollRos2Aimdk_msgsMsgHandStateArray*(o:Owner):Ros2Aimdk_msgsMsgHandStateArray =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/HandStateArray message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgHandStateArray.``
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
  decodeRos2Aimdk_msgsMsgHandStateArray(poll(o,1474))
proc publishRos2Aimdk_msgsMsgHandType*(o:Owner;value:Ros2Aimdk_msgsMsgHandType) =
  ## ``@brief Publish one complete aimdk_msgs/msg/HandType message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgHandType.``
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
proc pollRos2Aimdk_msgsMsgHandType*(o:Owner):Ros2Aimdk_msgsMsgHandType =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/HandType message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgHandType.``
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
  decodeRos2Aimdk_msgsMsgHandType(poll(o,1))
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
  decodeRos2Aimdk_msgsMsgJointState(poll(o,159))
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
  decodeRos2Aimdk_msgsMsgJointStateArray(poll(o,10332))
proc publishRos2Aimdk_msgsMsgMcAction*(o:Owner;value:Ros2Aimdk_msgsMsgMcAction) =
  ## ``@brief Publish one complete aimdk_msgs/msg/McAction message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMcAction.``
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
proc pollRos2Aimdk_msgsMsgMcAction*(o:Owner):Ros2Aimdk_msgsMsgMcAction =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/McAction message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMcAction.``
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
  decodeRos2Aimdk_msgsMsgMcAction(poll(o,4))
proc publishRos2Aimdk_msgsMsgMcActionCommand*(o:Owner;value:Ros2Aimdk_msgsMsgMcActionCommand) =
  ## ``@brief Publish one complete aimdk_msgs/msg/McActionCommand message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMcActionCommand.``
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
proc pollRos2Aimdk_msgsMsgMcActionCommand*(o:Owner):Ros2Aimdk_msgsMsgMcActionCommand =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/McActionCommand message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMcActionCommand.``
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
  decodeRos2Aimdk_msgsMsgMcActionCommand(poll(o,136))
proc publishRos2Aimdk_msgsMsgMcActionInfo*(o:Owner;value:Ros2Aimdk_msgsMsgMcActionInfo) =
  ## ``@brief Publish one complete aimdk_msgs/msg/McActionInfo message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMcActionInfo.``
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
proc pollRos2Aimdk_msgsMsgMcActionInfo*(o:Owner):Ros2Aimdk_msgsMsgMcActionInfo =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/McActionInfo message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMcActionInfo.``
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
  decodeRos2Aimdk_msgsMsgMcActionInfo(poll(o,140))
proc publishRos2Aimdk_msgsMsgMcActionStatus*(o:Owner;value:Ros2Aimdk_msgsMsgMcActionStatus) =
  ## ``@brief Publish one complete aimdk_msgs/msg/McActionStatus message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMcActionStatus.``
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
proc pollRos2Aimdk_msgsMsgMcActionStatus*(o:Owner):Ros2Aimdk_msgsMsgMcActionStatus =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/McActionStatus message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMcActionStatus.``
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
  decodeRos2Aimdk_msgsMsgMcActionStatus(poll(o,4))
proc publishRos2Aimdk_msgsMsgMcControlArea*(o:Owner;value:Ros2Aimdk_msgsMsgMcControlArea) =
  ## ``@brief Publish one complete aimdk_msgs/msg/McControlArea message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMcControlArea.``
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
proc pollRos2Aimdk_msgsMsgMcControlArea*(o:Owner):Ros2Aimdk_msgsMsgMcControlArea =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/McControlArea message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMcControlArea.``
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
  decodeRos2Aimdk_msgsMsgMcControlArea(poll(o,4))
proc publishRos2Aimdk_msgsMsgMcInputAction*(o:Owner;value:Ros2Aimdk_msgsMsgMcInputAction) =
  ## ``@brief Publish one complete aimdk_msgs/msg/McInputAction message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMcInputAction.``
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
proc pollRos2Aimdk_msgsMsgMcInputAction*(o:Owner):Ros2Aimdk_msgsMsgMcInputAction =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/McInputAction message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMcInputAction.``
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
  decodeRos2Aimdk_msgsMsgMcInputAction(poll(o,4))
proc publishRos2Aimdk_msgsMsgMcInputSource*(o:Owner;value:Ros2Aimdk_msgsMsgMcInputSource) =
  ## ``@brief Publish one complete aimdk_msgs/msg/McInputSource message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMcInputSource.``
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
proc pollRos2Aimdk_msgsMsgMcInputSource*(o:Owner):Ros2Aimdk_msgsMsgMcInputSource =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/McInputSource message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMcInputSource.``
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
  decodeRos2Aimdk_msgsMsgMcInputSource(poll(o,140))
proc publishRos2Aimdk_msgsMsgMcLocomotionVelocity*(o:Owner;value:Ros2Aimdk_msgsMsgMcLocomotionVelocity) =
  ## ``@brief Publish one complete aimdk_msgs/msg/McLocomotionVelocity message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMcLocomotionVelocity.``
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
proc pollRos2Aimdk_msgsMsgMcLocomotionVelocity*(o:Owner):Ros2Aimdk_msgsMsgMcLocomotionVelocity =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/McLocomotionVelocity message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMcLocomotionVelocity.``
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
  decodeRos2Aimdk_msgsMsgMcLocomotionVelocity(poll(o,308))
proc publishRos2Aimdk_msgsMsgMcPresetMotion*(o:Owner;value:Ros2Aimdk_msgsMsgMcPresetMotion) =
  ## ``@brief Publish one complete aimdk_msgs/msg/McPresetMotion message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMcPresetMotion.``
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
proc pollRos2Aimdk_msgsMsgMcPresetMotion*(o:Owner):Ros2Aimdk_msgsMsgMcPresetMotion =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/McPresetMotion message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgMcPresetMotion.``
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
  decodeRos2Aimdk_msgsMsgMcPresetMotion(poll(o,4))
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
proc publishRos2Aimdk_msgsMsgPlayMediaFileRequest*(o:Owner;value:Ros2Aimdk_msgsMsgPlayMediaFileRequest) =
  ## ``@brief Publish one complete aimdk_msgs/msg/PlayMediaFileRequest message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgPlayMediaFileRequest.``
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
proc pollRos2Aimdk_msgsMsgPlayMediaFileRequest*(o:Owner):Ros2Aimdk_msgsMsgPlayMediaFileRequest =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/PlayMediaFileRequest message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgPlayMediaFileRequest.``
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
  decodeRos2Aimdk_msgsMsgPlayMediaFileRequest(poll(o,406))
proc publishRos2Aimdk_msgsMsgPlayTtsRequest*(o:Owner;value:Ros2Aimdk_msgsMsgPlayTtsRequest) =
  ## ``@brief Publish one complete aimdk_msgs/msg/PlayTtsRequest message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgPlayTtsRequest.``
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
proc pollRos2Aimdk_msgsMsgPlayTtsRequest*(o:Owner):Ros2Aimdk_msgsMsgPlayTtsRequest =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/PlayTtsRequest message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgPlayTtsRequest.``
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
  decodeRos2Aimdk_msgsMsgPlayTtsRequest(poll(o,402))
proc publishRos2Aimdk_msgsMsgPlayTtsResponse*(o:Owner;value:Ros2Aimdk_msgsMsgPlayTtsResponse) =
  ## ``@brief Publish one complete aimdk_msgs/msg/PlayTtsResponse message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgPlayTtsResponse.``
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
proc pollRos2Aimdk_msgsMsgPlayTtsResponse*(o:Owner):Ros2Aimdk_msgsMsgPlayTtsResponse =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/PlayTtsResponse message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgPlayTtsResponse.``
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
  decodeRos2Aimdk_msgsMsgPlayTtsResponse(poll(o,538))
proc publishRos2Aimdk_msgsMsgPmuState*(o:Owner;value:Ros2Aimdk_msgsMsgPmuState) =
  ## ``@brief Publish one complete aimdk_msgs/msg/PmuState message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgPmuState.``
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
proc pollRos2Aimdk_msgsMsgPmuState*(o:Owner):Ros2Aimdk_msgsMsgPmuState =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/PmuState message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgPmuState.``
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
  decodeRos2Aimdk_msgsMsgPmuState(poll(o,1097))
proc publishRos2Aimdk_msgsMsgProcessedAudioOutput*(o:Owner;value:Ros2Aimdk_msgsMsgProcessedAudioOutput) =
  ## ``@brief Publish one complete aimdk_msgs/msg/ProcessedAudioOutput message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgProcessedAudioOutput.``
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
proc pollRos2Aimdk_msgsMsgProcessedAudioOutput*(o:Owner):Ros2Aimdk_msgsMsgProcessedAudioOutput =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/ProcessedAudioOutput message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgProcessedAudioOutput.``
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
  decodeRos2Aimdk_msgsMsgProcessedAudioOutput(poll(o,417))
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
proc publishRos2Aimdk_msgsMsgTouchState*(o:Owner;value:Ros2Aimdk_msgsMsgTouchState) =
  ## ``@brief Publish one complete aimdk_msgs/msg/TouchState message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgTouchState.``
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
proc pollRos2Aimdk_msgsMsgTouchState*(o:Owner):Ros2Aimdk_msgsMsgTouchState =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/TouchState message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgTouchState.``
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
  decodeRos2Aimdk_msgsMsgTouchState(poll(o,225))
proc publishRos2Aimdk_msgsMsgTtsPriorityLevel*(o:Owner;value:Ros2Aimdk_msgsMsgTtsPriorityLevel) =
  ## ``@brief Publish one complete aimdk_msgs/msg/TtsPriorityLevel message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Aimdk_msgsMsgTtsPriorityLevel.``
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
proc pollRos2Aimdk_msgsMsgTtsPriorityLevel*(o:Owner):Ros2Aimdk_msgsMsgTtsPriorityLevel =
  ## ``@brief Poll and decode one complete aimdk_msgs/msg/TtsPriorityLevel message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Aimdk_msgsMsgTtsPriorityLevel.``
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
  decodeRos2Aimdk_msgsMsgTtsPriorityLevel(poll(o,1))
proc callRos2Aimdk_msgsSrvGetAllJointState*(o:Owner;value:Ros2Aimdk_msgsSrvGetAllJointState_Request):Ros2Aimdk_msgsSrvGetAllJointState_Response =
  ## ``@brief Call the selected aimdk_msgs/srv/GetAllJointState service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros2Aimdk_msgsSrvGetAllJointState_Request,``
  ## ``response=Ros2Aimdk_msgsSrvGetAllJointState_Response.``
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
  callValue(o,value,2712,decodeRos2Aimdk_msgsSrvGetAllJointState_Response)
proc callRos2Aimdk_msgsSrvGetCurrentInputSource*(o:Owner;value:Ros2Aimdk_msgsSrvGetCurrentInputSource_Request):Ros2Aimdk_msgsSrvGetCurrentInputSource_Response =
  ## ``@brief Call the selected aimdk_msgs/srv/GetCurrentInputSource service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Aimdk_msgsSrvGetCurrentInputSource_Request,``
  ## ``response=Ros2Aimdk_msgsSrvGetCurrentInputSource_Response.``
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
  callValue(o,value,168,decodeRos2Aimdk_msgsSrvGetCurrentInputSource_Response)
proc callRos2Aimdk_msgsSrvGetHandType*(o:Owner;value:Ros2Aimdk_msgsSrvGetHandType_Request):Ros2Aimdk_msgsSrvGetHandType_Response =
  ## ``@brief Call the selected aimdk_msgs/srv/GetHandType service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros2Aimdk_msgsSrvGetHandType_Request,``
  ## ``response=Ros2Aimdk_msgsSrvGetHandType_Response.``
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
  callValue(o,value,154,decodeRos2Aimdk_msgsSrvGetHandType_Response)
proc callRos2Aimdk_msgsSrvGetMcAction*(o:Owner;value:Ros2Aimdk_msgsSrvGetMcAction_Request):Ros2Aimdk_msgsSrvGetMcAction_Response =
  ## ``@brief Call the selected aimdk_msgs/srv/GetMcAction service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros2Aimdk_msgsSrvGetMcAction_Request,``
  ## ``response=Ros2Aimdk_msgsSrvGetMcAction_Response.``
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
  callValue(o,value,156,decodeRos2Aimdk_msgsSrvGetMcAction_Response)
proc callRos2Aimdk_msgsSrvGetMute*(o:Owner;value:Ros2Aimdk_msgsSrvGetMute_Request):Ros2Aimdk_msgsSrvGetMute_Response =
  ## ``@brief Call the selected aimdk_msgs/srv/GetMute service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros2Aimdk_msgsSrvGetMute_Request,``
  ## ``response=Ros2Aimdk_msgsSrvGetMute_Response.``
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
  callValue(o,value,153,decodeRos2Aimdk_msgsSrvGetMute_Response)
proc callRos2Aimdk_msgsSrvGetVolume*(o:Owner;value:Ros2Aimdk_msgsSrvGetVolume_Request):Ros2Aimdk_msgsSrvGetVolume_Response =
  ## ``@brief Call the selected aimdk_msgs/srv/GetVolume service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros2Aimdk_msgsSrvGetVolume_Request,``
  ## ``response=Ros2Aimdk_msgsSrvGetVolume_Response.``
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
  callValue(o,value,156,decodeRos2Aimdk_msgsSrvGetVolume_Response)
proc callRos2Aimdk_msgsSrvLedStripCommand*(o:Owner;value:Ros2Aimdk_msgsSrvLedStripCommand_Request):Ros2Aimdk_msgsSrvLedStripCommand_Response =
  ## ``@brief Call the selected aimdk_msgs/srv/LedStripCommand service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros2Aimdk_msgsSrvLedStripCommand_Request,``
  ## ``response=Ros2Aimdk_msgsSrvLedStripCommand_Response.``
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
  callValue(o,value,18,decodeRos2Aimdk_msgsSrvLedStripCommand_Response)
proc callRos2Aimdk_msgsSrvPlayEmoji*(o:Owner;value:Ros2Aimdk_msgsSrvPlayEmoji_Request):Ros2Aimdk_msgsSrvPlayEmoji_Response =
  ## ``@brief Call the selected aimdk_msgs/srv/PlayEmoji service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros2Aimdk_msgsSrvPlayEmoji_Request,``
  ## ``response=Ros2Aimdk_msgsSrvPlayEmoji_Response.``
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
  callValue(o,value,285,decodeRos2Aimdk_msgsSrvPlayEmoji_Response)
proc callRos2Aimdk_msgsSrvPlayMediaFile*(o:Owner;value:Ros2Aimdk_msgsSrvPlayMediaFile_Request):Ros2Aimdk_msgsSrvPlayMediaFile_Response =
  ## ``@brief Call the selected aimdk_msgs/srv/PlayMediaFile service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros2Aimdk_msgsSrvPlayMediaFile_Request,``
  ## ``response=Ros2Aimdk_msgsSrvPlayMediaFile_Response.``
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
  callValue(o,value,690,decodeRos2Aimdk_msgsSrvPlayMediaFile_Response)
proc callRos2Aimdk_msgsSrvPlayTts*(o:Owner;value:Ros2Aimdk_msgsSrvPlayTts_Request):Ros2Aimdk_msgsSrvPlayTts_Response =
  ## ``@brief Call the selected aimdk_msgs/srv/PlayTts service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros2Aimdk_msgsSrvPlayTts_Request,``
  ## ``response=Ros2Aimdk_msgsSrvPlayTts_Response.``
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
  callValue(o,value,690,decodeRos2Aimdk_msgsSrvPlayTts_Response)
proc callRos2Aimdk_msgsSrvPlayVideo*(o:Owner;value:Ros2Aimdk_msgsSrvPlayVideo_Request):Ros2Aimdk_msgsSrvPlayVideo_Response =
  ## ``@brief Call the selected aimdk_msgs/srv/PlayVideo service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros2Aimdk_msgsSrvPlayVideo_Request,``
  ## ``response=Ros2Aimdk_msgsSrvPlayVideo_Response.``
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
  callValue(o,value,285,decodeRos2Aimdk_msgsSrvPlayVideo_Response)
proc callRos2Aimdk_msgsSrvSetAgentPropertiesRequest*(o:Owner;value:Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request):Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response =
  ## ``@brief Call the selected aimdk_msgs/srv/SetAgentPropertiesRequest service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request,``
  ## ``response=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response.``
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
  callValue(o,value,152,decodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response)
proc callRos2Aimdk_msgsSrvSetMcAction*(o:Owner;value:Ros2Aimdk_msgsSrvSetMcAction_Request):Ros2Aimdk_msgsSrvSetMcAction_Response =
  ## ``@brief Call the selected aimdk_msgs/srv/SetMcAction service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros2Aimdk_msgsSrvSetMcAction_Request,``
  ## ``response=Ros2Aimdk_msgsSrvSetMcAction_Response.``
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
  callValue(o,value,152,decodeRos2Aimdk_msgsSrvSetMcAction_Response)
proc callRos2Aimdk_msgsSrvSetMcInputSource*(o:Owner;value:Ros2Aimdk_msgsSrvSetMcInputSource_Request):Ros2Aimdk_msgsSrvSetMcInputSource_Response =
  ## ``@brief Call the selected aimdk_msgs/srv/SetMcInputSource service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros2Aimdk_msgsSrvSetMcInputSource_Request,``
  ## ``response=Ros2Aimdk_msgsSrvSetMcInputSource_Response.``
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
  callValue(o,value,28,decodeRos2Aimdk_msgsSrvSetMcInputSource_Response)
proc callRos2Aimdk_msgsSrvSetMcPresetMotion*(o:Owner;value:Ros2Aimdk_msgsSrvSetMcPresetMotion_Request):Ros2Aimdk_msgsSrvSetMcPresetMotion_Response =
  ## ``@brief Call the selected aimdk_msgs/srv/SetMcPresetMotion service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros2Aimdk_msgsSrvSetMcPresetMotion_Request,``
  ## ``response=Ros2Aimdk_msgsSrvSetMcPresetMotion_Response.``
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
  callValue(o,value,28,decodeRos2Aimdk_msgsSrvSetMcPresetMotion_Response)
proc callRos2Aimdk_msgsSrvSetMute*(o:Owner;value:Ros2Aimdk_msgsSrvSetMute_Request):Ros2Aimdk_msgsSrvSetMute_Response =
  ## ``@brief Call the selected aimdk_msgs/srv/SetMute service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros2Aimdk_msgsSrvSetMute_Request,``
  ## ``response=Ros2Aimdk_msgsSrvSetMute_Response.``
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
  callValue(o,value,153,decodeRos2Aimdk_msgsSrvSetMute_Response)
proc callRos2Aimdk_msgsSrvSetVolume*(o:Owner;value:Ros2Aimdk_msgsSrvSetVolume_Request):Ros2Aimdk_msgsSrvSetVolume_Response =
  ## ``@brief Call the selected aimdk_msgs/srv/SetVolume service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros2Aimdk_msgsSrvSetVolume_Request,``
  ## ``response=Ros2Aimdk_msgsSrvSetVolume_Response.``
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
  callValue(o,value,156,decodeRos2Aimdk_msgsSrvSetVolume_Response)
