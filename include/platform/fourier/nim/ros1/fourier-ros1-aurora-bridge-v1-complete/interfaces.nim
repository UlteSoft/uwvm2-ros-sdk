# @file interfaces.nim
# @brief Full fourier nim codecs and original record metadata.
# @details Complete fourier ros1_aurora_bridge_v1 values in nim. 51 original records retain 138 fields and 28
# interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
# definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
# profile API manual under document/platform/fourier/en_US/catalog/.
# Generated typed interfaces; no implicit grants.
import roswasm
import roswasm/typed
import records
proc callRos1Uwvm_fourier_bridgeExecuteMove*(o:Owner;value:Ros1Uwvm_fourier_bridgeExecuteMoveRequest):Ros1Uwvm_fourier_bridgeExecuteMoveResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/ExecuteMove service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros1Uwvm_fourier_bridgeExecuteMoveRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeExecuteMoveResponse.``
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
  callValue(o,value,136,decodeRos1Uwvm_fourier_bridgeExecuteMoveResponse)
proc callRos1Uwvm_fourier_bridgeGetBaseData*(o:Owner;value:Ros1Uwvm_fourier_bridgeGetBaseDataRequest):Ros1Uwvm_fourier_bridgeGetBaseDataResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/GetBaseData service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros1Uwvm_fourier_bridgeGetBaseDataRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeGetBaseDataResponse.``
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
  callValue(o,value,652,decodeRos1Uwvm_fourier_bridgeGetBaseDataResponse)
proc callRos1Uwvm_fourier_bridgeGetCartesianState*(o:Owner;value:Ros1Uwvm_fourier_bridgeGetCartesianStateRequest):Ros1Uwvm_fourier_bridgeGetCartesianStateResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/GetCartesianState service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros1Uwvm_fourier_bridgeGetCartesianStateRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeGetCartesianStateResponse.``
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
  callValue(o,value,652,decodeRos1Uwvm_fourier_bridgeGetCartesianStateResponse)
proc callRos1Uwvm_fourier_bridgeGetContactData*(o:Owner;value:Ros1Uwvm_fourier_bridgeGetContactDataRequest):Ros1Uwvm_fourier_bridgeGetContactDataResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/GetContactData service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros1Uwvm_fourier_bridgeGetContactDataRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeGetContactDataResponse.``
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
  callValue(o,value,652,decodeRos1Uwvm_fourier_bridgeGetContactDataResponse)
proc callRos1Uwvm_fourier_bridgeGetFsmName*(o:Owner;value:Ros1Uwvm_fourier_bridgeGetFsmNameRequest):Ros1Uwvm_fourier_bridgeGetFsmNameResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/GetFsmName service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros1Uwvm_fourier_bridgeGetFsmNameRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeGetFsmNameResponse.``
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
  callValue(o,value,268,decodeRos1Uwvm_fourier_bridgeGetFsmNameResponse)
proc callRos1Uwvm_fourier_bridgeGetFsmState*(o:Owner;value:Ros1Uwvm_fourier_bridgeGetFsmStateRequest):Ros1Uwvm_fourier_bridgeGetFsmStateResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/GetFsmState service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros1Uwvm_fourier_bridgeGetFsmStateRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeGetFsmStateResponse.``
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
  callValue(o,value,140,decodeRos1Uwvm_fourier_bridgeGetFsmStateResponse)
proc callRos1Uwvm_fourier_bridgeGetGroupMotionState*(o:Owner;value:Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest):Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/GetGroupMotionState service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse.``
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
  callValue(o,value,140,decodeRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse)
proc callRos1Uwvm_fourier_bridgeGetGroupMotorCfg*(o:Owner;value:Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest):Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/GetGroupMotorCfg service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse.``
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
  callValue(o,value,652,decodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse)
proc callRos1Uwvm_fourier_bridgeGetGroupState*(o:Owner;value:Ros1Uwvm_fourier_bridgeGetGroupStateRequest):Ros1Uwvm_fourier_bridgeGetGroupStateResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/GetGroupState service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros1Uwvm_fourier_bridgeGetGroupStateRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeGetGroupStateResponse.``
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
  callValue(o,value,652,decodeRos1Uwvm_fourier_bridgeGetGroupStateResponse)
proc callRos1Uwvm_fourier_bridgeGetSnapshot*(o:Owner;value:Ros1Uwvm_fourier_bridgeGetSnapshotRequest):Ros1Uwvm_fourier_bridgeGetSnapshotResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/GetSnapshot service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros1Uwvm_fourier_bridgeGetSnapshotRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeGetSnapshotResponse.``
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
  callValue(o,value,14536,decodeRos1Uwvm_fourier_bridgeGetSnapshotResponse)
proc callRos1Uwvm_fourier_bridgeGetStandPose*(o:Owner;value:Ros1Uwvm_fourier_bridgeGetStandPoseRequest):Ros1Uwvm_fourier_bridgeGetStandPoseResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/GetStandPose service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros1Uwvm_fourier_bridgeGetStandPoseRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeGetStandPoseResponse.``
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
  callValue(o,value,652,decodeRos1Uwvm_fourier_bridgeGetStandPoseResponse)
proc callRos1Uwvm_fourier_bridgeGetUpperFsmName*(o:Owner;value:Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest):Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/GetUpperFsmName service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse.``
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
  callValue(o,value,268,decodeRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse)
proc callRos1Uwvm_fourier_bridgeGetUpperFsmState*(o:Owner;value:Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest):Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/GetUpperFsmState service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse.``
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
  callValue(o,value,140,decodeRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse)
proc callRos1Uwvm_fourier_bridgeGetVelocitySource*(o:Owner;value:Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest):Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/GetVelocitySource service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse.``
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
  callValue(o,value,140,decodeRos1Uwvm_fourier_bridgeGetVelocitySourceResponse)
proc callRos1Uwvm_fourier_bridgeGetVelocitySourceName*(o:Owner;value:Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest):Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/GetVelocitySourceName service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse.``
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
  callValue(o,value,268,decodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse)
proc publishRos1Uwvm_fourier_bridgeGroupState*(o:Owner;value:Ros1Uwvm_fourier_bridgeGroupState) =
  ## ``@brief Publish one complete uwvm_fourier_bridge/GroupState message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros1Uwvm_fourier_bridgeGroupState.``
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
proc pollRos1Uwvm_fourier_bridgeGroupState*(o:Owner):Ros1Uwvm_fourier_bridgeGroupState =
  ## ``@brief Poll and decode one complete uwvm_fourier_bridge/GroupState message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros1Uwvm_fourier_bridgeGroupState.``
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
  decodeRos1Uwvm_fourier_bridgeGroupState(poll(o,1684))
proc publishRos1Uwvm_fourier_bridgeGroupValues*(o:Owner;value:Ros1Uwvm_fourier_bridgeGroupValues) =
  ## ``@brief Publish one complete uwvm_fourier_bridge/GroupValues message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros1Uwvm_fourier_bridgeGroupValues.``
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
proc pollRos1Uwvm_fourier_bridgeGroupValues*(o:Owner):Ros1Uwvm_fourier_bridgeGroupValues =
  ## ``@brief Poll and decode one complete uwvm_fourier_bridge/GroupValues message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros1Uwvm_fourier_bridgeGroupValues.``
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
  decodeRos1Uwvm_fourier_bridgeGroupValues(poll(o,648))
proc publishRos1Uwvm_fourier_bridgeMotionRecipe*(o:Owner;value:Ros1Uwvm_fourier_bridgeMotionRecipe) =
  ## ``@brief Publish one complete uwvm_fourier_bridge/MotionRecipe message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros1Uwvm_fourier_bridgeMotionRecipe.``
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
proc pollRos1Uwvm_fourier_bridgeMotionRecipe*(o:Owner):Ros1Uwvm_fourier_bridgeMotionRecipe =
  ## ``@brief Poll and decode one complete uwvm_fourier_bridge/MotionRecipe message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros1Uwvm_fourier_bridgeMotionRecipe.``
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
  decodeRos1Uwvm_fourier_bridgeMotionRecipe(poll(o,1170))
proc callRos1Uwvm_fourier_bridgeSetFsmState*(o:Owner;value:Ros1Uwvm_fourier_bridgeSetFsmStateRequest):Ros1Uwvm_fourier_bridgeSetFsmStateResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/SetFsmState service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros1Uwvm_fourier_bridgeSetFsmStateRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeSetFsmStateResponse.``
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
  callValue(o,value,136,decodeRos1Uwvm_fourier_bridgeSetFsmStateResponse)
proc callRos1Uwvm_fourier_bridgeSetGroupCommand*(o:Owner;value:Ros1Uwvm_fourier_bridgeSetGroupCommandRequest):Ros1Uwvm_fourier_bridgeSetGroupCommandResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/SetGroupCommand service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros1Uwvm_fourier_bridgeSetGroupCommandRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeSetGroupCommandResponse.``
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
  callValue(o,value,136,decodeRos1Uwvm_fourier_bridgeSetGroupCommandResponse)
proc callRos1Uwvm_fourier_bridgeSetMotorCfgPd*(o:Owner;value:Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest):Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/SetMotorCfgPd service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse.``
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
  callValue(o,value,136,decodeRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse)
proc callRos1Uwvm_fourier_bridgeSetStandPose*(o:Owner;value:Ros1Uwvm_fourier_bridgeSetStandPoseRequest):Ros1Uwvm_fourier_bridgeSetStandPoseResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/SetStandPose service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros1Uwvm_fourier_bridgeSetStandPoseRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeSetStandPoseResponse.``
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
  callValue(o,value,136,decodeRos1Uwvm_fourier_bridgeSetStandPoseResponse)
proc callRos1Uwvm_fourier_bridgeSetUpperFsmState*(o:Owner;value:Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest):Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/SetUpperFsmState service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse.``
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
  callValue(o,value,136,decodeRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse)
proc callRos1Uwvm_fourier_bridgeSetVelocity*(o:Owner;value:Ros1Uwvm_fourier_bridgeSetVelocityRequest):Ros1Uwvm_fourier_bridgeSetVelocityResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/SetVelocity service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components: request=Ros1Uwvm_fourier_bridgeSetVelocityRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeSetVelocityResponse.``
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
  callValue(o,value,136,decodeRos1Uwvm_fourier_bridgeSetVelocityResponse)
proc callRos1Uwvm_fourier_bridgeSetVelocitySource*(o:Owner;value:Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest):Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/SetVelocitySource service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse.``
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
  callValue(o,value,136,decodeRos1Uwvm_fourier_bridgeSetVelocitySourceResponse)
proc publishRos1Uwvm_fourier_bridgeStatus*(o:Owner;value:Ros1Uwvm_fourier_bridgeStatus) =
  ## ``@brief Publish one complete uwvm_fourier_bridge/Status message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros1Uwvm_fourier_bridgeStatus.``
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
proc pollRos1Uwvm_fourier_bridgeStatus*(o:Owner):Ros1Uwvm_fourier_bridgeStatus =
  ## ``@brief Poll and decode one complete uwvm_fourier_bridge/Status message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros1Uwvm_fourier_bridgeStatus.``
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
  decodeRos1Uwvm_fourier_bridgeStatus(poll(o,14400))
proc publishRos1Uwvm_fourier_bridgeVelocityCommand*(o:Owner;value:Ros1Uwvm_fourier_bridgeVelocityCommand) =
  ## ``@brief Publish one complete uwvm_fourier_bridge/VelocityCommand message.``
  ## ``@details Encode the complete message before the single effectful publish. A successful``
  ## ``return acknowledges transport admission, not physical controller completion. Components:``
  ## ``message=Ros1Uwvm_fourier_bridgeVelocityCommand.``
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
proc pollRos1Uwvm_fourier_bridgeVelocityCommand*(o:Owner):Ros1Uwvm_fourier_bridgeVelocityCommand =
  ## ``@brief Poll and decode one complete uwvm_fourier_bridge/VelocityCommand message.``
  ## ``@details Consume at most one legacy event and decode every field. Idle is an error/status,``
  ## ``not a default message; a capacity refusal may already have consumed the event. Components:``
  ## ``message=Ros1Uwvm_fourier_bridgeVelocityCommand.``
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
  decodeRos1Uwvm_fourier_bridgeVelocityCommand(poll(o,40))
proc callRos1Uwvm_fourier_bridgeWaitGroupsMotionComplete*(o:Owner;value:Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest):Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse =
  ## ``@brief Call the selected uwvm_fourier_bridge/WaitGroupsMotionComplete service.``
  ## ``@details Encode the exact request and decode the complete response using the separately``
  ## ``granted legacy service-call operation. Timeout means delivery/completion may be unknown;``
  ## ``never replay automatically. Components:``
  ## ``request=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest,``
  ## ``response=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse.``
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
  callValue(o,value,137,decodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse)
