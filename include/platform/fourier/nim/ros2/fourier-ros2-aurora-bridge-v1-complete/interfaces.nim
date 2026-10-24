# @file interfaces.nim
# @brief Full fourier nim codecs and original record metadata.
# @details Complete fourier ros2_aurora_bridge_v1 values in nim. 51 original records retain 138 fields and 28
# interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
# definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
# profile API manual under document/platform/fourier/en_US/catalog/.
# Generated typed interfaces; no implicit grants.
import roswasm
import roswasm/typed
import records
proc publishRos2Uwvm_fourier_bridgeMsgGroupState*(o:Owner;value:Ros2Uwvm_fourier_bridgeMsgGroupState) =
  ## ``@brief Publish one complete uwvm_fourier_bridge/msg/GroupState message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Uwvm_fourier_bridgeMsgGroupState.``
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
proc pollRos2Uwvm_fourier_bridgeMsgGroupState*(o:Owner):Ros2Uwvm_fourier_bridgeMsgGroupState =
  ## ``@brief Poll and decode one complete uwvm_fourier_bridge/msg/GroupState message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Uwvm_fourier_bridgeMsgGroupState.``
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
  decodeRos2Uwvm_fourier_bridgeMsgGroupState(poll(o,1684))
proc publishRos2Uwvm_fourier_bridgeMsgGroupValues*(o:Owner;value:Ros2Uwvm_fourier_bridgeMsgGroupValues) =
  ## ``@brief Publish one complete uwvm_fourier_bridge/msg/GroupValues message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Uwvm_fourier_bridgeMsgGroupValues.``
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
proc pollRos2Uwvm_fourier_bridgeMsgGroupValues*(o:Owner):Ros2Uwvm_fourier_bridgeMsgGroupValues =
  ## ``@brief Poll and decode one complete uwvm_fourier_bridge/msg/GroupValues message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Uwvm_fourier_bridgeMsgGroupValues.``
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
  decodeRos2Uwvm_fourier_bridgeMsgGroupValues(poll(o,648))
proc publishRos2Uwvm_fourier_bridgeMsgMotionRecipe*(o:Owner;value:Ros2Uwvm_fourier_bridgeMsgMotionRecipe) =
  ## ``@brief Publish one complete uwvm_fourier_bridge/msg/MotionRecipe message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Uwvm_fourier_bridgeMsgMotionRecipe.``
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
proc pollRos2Uwvm_fourier_bridgeMsgMotionRecipe*(o:Owner):Ros2Uwvm_fourier_bridgeMsgMotionRecipe =
  ## ``@brief Poll and decode one complete uwvm_fourier_bridge/msg/MotionRecipe message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Uwvm_fourier_bridgeMsgMotionRecipe.``
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
  decodeRos2Uwvm_fourier_bridgeMsgMotionRecipe(poll(o,1170))
proc publishRos2Uwvm_fourier_bridgeMsgStatus*(o:Owner;value:Ros2Uwvm_fourier_bridgeMsgStatus) =
  ## ``@brief Publish one complete uwvm_fourier_bridge/msg/Status message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Uwvm_fourier_bridgeMsgStatus.``
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
proc pollRos2Uwvm_fourier_bridgeMsgStatus*(o:Owner):Ros2Uwvm_fourier_bridgeMsgStatus =
  ## ``@brief Poll and decode one complete uwvm_fourier_bridge/msg/Status message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Uwvm_fourier_bridgeMsgStatus.``
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
  decodeRos2Uwvm_fourier_bridgeMsgStatus(poll(o,14400))
proc publishRos2Uwvm_fourier_bridgeMsgVelocityCommand*(o:Owner;value:Ros2Uwvm_fourier_bridgeMsgVelocityCommand) =
  ## ``@brief Publish one complete uwvm_fourier_bridge/msg/VelocityCommand message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros2Uwvm_fourier_bridgeMsgVelocityCommand.``
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
proc pollRos2Uwvm_fourier_bridgeMsgVelocityCommand*(o:Owner):Ros2Uwvm_fourier_bridgeMsgVelocityCommand =
  ## ``@brief Poll and decode one complete uwvm_fourier_bridge/msg/VelocityCommand message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros2Uwvm_fourier_bridgeMsgVelocityCommand.``
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
  decodeRos2Uwvm_fourier_bridgeMsgVelocityCommand(poll(o,40))
proc callRos2Uwvm_fourier_bridgeSrvExecuteMove*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request):Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/ExecuteMove service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response.``
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
  callValue(o,value,136,decodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Response)
proc callRos2Uwvm_fourier_bridgeSrvGetBaseData*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request):Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/GetBaseData service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response.``
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
  callValue(o,value,652,decodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Response)
proc callRos2Uwvm_fourier_bridgeSrvGetCartesianState*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request):Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/GetCartesianState service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response.``
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
  callValue(o,value,652,decodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response)
proc callRos2Uwvm_fourier_bridgeSrvGetContactData*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvGetContactData_Request):Ros2Uwvm_fourier_bridgeSrvGetContactData_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/GetContactData service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvGetContactData_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvGetContactData_Response.``
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
  callValue(o,value,652,decodeRos2Uwvm_fourier_bridgeSrvGetContactData_Response)
proc callRos2Uwvm_fourier_bridgeSrvGetFsmName*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request):Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/GetFsmName service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response.``
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
  callValue(o,value,268,decodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Response)
proc callRos2Uwvm_fourier_bridgeSrvGetFsmState*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request):Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/GetFsmState service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response.``
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
  callValue(o,value,140,decodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Response)
proc callRos2Uwvm_fourier_bridgeSrvGetGroupMotionState*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request):Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/GetGroupMotionState service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response.``
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
  callValue(o,value,140,decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response)
proc callRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request):Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/GetGroupMotorCfg service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response.``
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
  callValue(o,value,652,decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response)
proc callRos2Uwvm_fourier_bridgeSrvGetGroupState*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request):Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/GetGroupState service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response.``
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
  callValue(o,value,652,decodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Response)
proc callRos2Uwvm_fourier_bridgeSrvGetSnapshot*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request):Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/GetSnapshot service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response.``
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
  callValue(o,value,14536,decodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response)
proc callRos2Uwvm_fourier_bridgeSrvGetStandPose*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request):Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/GetStandPose service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response.``
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
  callValue(o,value,652,decodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Response)
proc callRos2Uwvm_fourier_bridgeSrvGetUpperFsmName*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request):Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/GetUpperFsmName service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response.``
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
  callValue(o,value,268,decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response)
proc callRos2Uwvm_fourier_bridgeSrvGetUpperFsmState*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request):Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/GetUpperFsmState service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response.``
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
  callValue(o,value,140,decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response)
proc callRos2Uwvm_fourier_bridgeSrvGetVelocitySource*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request):Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/GetVelocitySource service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response.``
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
  callValue(o,value,140,decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response)
proc callRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request):Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/GetVelocitySourceName service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response.``
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
  callValue(o,value,268,decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response)
proc callRos2Uwvm_fourier_bridgeSrvSetFsmState*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request):Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/SetFsmState service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response.``
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
  callValue(o,value,136,decodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Response)
proc callRos2Uwvm_fourier_bridgeSrvSetGroupCommand*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request):Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/SetGroupCommand service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response.``
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
  callValue(o,value,136,decodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response)
proc callRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request):Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/SetMotorCfgPd service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response.``
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
  callValue(o,value,136,decodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response)
proc callRos2Uwvm_fourier_bridgeSrvSetStandPose*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request):Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/SetStandPose service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response.``
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
  callValue(o,value,136,decodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Response)
proc callRos2Uwvm_fourier_bridgeSrvSetUpperFsmState*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request):Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/SetUpperFsmState service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response.``
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
  callValue(o,value,136,decodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response)
proc callRos2Uwvm_fourier_bridgeSrvSetVelocity*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request):Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/SetVelocity service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response.``
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
  callValue(o,value,136,decodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Response)
proc callRos2Uwvm_fourier_bridgeSrvSetVelocitySource*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request):Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/SetVelocitySource service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response.``
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
  callValue(o,value,136,decodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response)
proc callRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete*(o:Owner;value:Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request):Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response =
  ## ``@brief Call the selected uwvm_fourier_bridge/srv/WaitGroupsMotionComplete service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request,``
  ## ``response=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response.``
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
  callValue(o,value,137,decodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response)
