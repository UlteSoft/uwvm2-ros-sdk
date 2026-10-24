// @file bounded_interfaces.go
// @brief Full leju go codecs and original record metadata.
// @details Complete leju ros1_main_platform values in go. 532 original records retain 1587 fields and 378 interface
// descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
// Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
// manual under document/platform/leju/en_US/catalog/.
// Generated typed interfaces; separately granted exact native aliases.
package customtypes

import ros "uwvm2.local/roswasmgo"

// @brief Publish one complete aruco_msgs/Marker message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Aruco_msgsMarker.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Aruco_msgsMarker(o *ros.Owner, v Ros1Aruco_msgsMarker) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete aruco_msgs/Marker message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Aruco_msgsMarker.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Aruco_msgsMarker(o *ros.Owner) (Ros1Aruco_msgsMarker, error) {
	return ros.PollValue(o, 628, DecodeRos1Aruco_msgsMarker)
}

// @brief Publish one complete aruco_msgs/MarkerArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Aruco_msgsMarkerArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Aruco_msgsMarkerArray(o *ros.Owner, v Ros1Aruco_msgsMarkerArray) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete aruco_msgs/MarkerArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Aruco_msgsMarkerArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Aruco_msgsMarkerArray(o *ros.Owner) (Ros1Aruco_msgsMarkerArray, error) {
	return ros.PollValue(o, 5300, DecodeRos1Aruco_msgsMarkerArray)
}

// @brief Call the selected easy_handeye_msgs/CheckStartingPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsCheckStartingPoseRequest, response=Ros1Easy_handeye_msgsCheckStartingPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Easy_handeye_msgsCheckStartingPose(o *ros.Owner, q Ros1Easy_handeye_msgsCheckStartingPoseRequest) (Ros1Easy_handeye_msgsCheckStartingPoseResponse, error) {
	return ros.CallValue(o, q, 2965, DecodeRos1Easy_handeye_msgsCheckStartingPoseResponse)
}

// @brief Call the selected easy_handeye_msgs/ComputeCalibration service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsComputeCalibrationRequest, response=Ros1Easy_handeye_msgsComputeCalibrationResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Easy_handeye_msgsComputeCalibration(o *ros.Owner, q Ros1Easy_handeye_msgsComputeCalibrationRequest) (Ros1Easy_handeye_msgsComputeCalibrationResponse, error) {
	return ros.CallValue(o, q, 590, DecodeRos1Easy_handeye_msgsComputeCalibrationResponse)
}

// @brief Call the selected easy_handeye_msgs/EnumerateTargetPoses service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsEnumerateTargetPosesRequest,
// response=Ros1Easy_handeye_msgsEnumerateTargetPosesResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Easy_handeye_msgsEnumerateTargetPoses(o *ros.Owner, q Ros1Easy_handeye_msgsEnumerateTargetPosesRequest) (Ros1Easy_handeye_msgsEnumerateTargetPosesResponse, error) {
	return ros.CallValue(o, q, 2964, DecodeRos1Easy_handeye_msgsEnumerateTargetPosesResponse)
}

// @brief Call the selected easy_handeye_msgs/ExecutePlan service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsExecutePlanRequest, response=Ros1Easy_handeye_msgsExecutePlanResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Easy_handeye_msgsExecutePlan(o *ros.Owner, q Ros1Easy_handeye_msgsExecutePlanRequest) (Ros1Easy_handeye_msgsExecutePlanResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Easy_handeye_msgsExecutePlanResponse)
}

// @brief Publish one complete easy_handeye_msgs/HandeyeCalibration message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Easy_handeye_msgsHandeyeCalibration.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Easy_handeye_msgsHandeyeCalibration(o *ros.Owner, v Ros1Easy_handeye_msgsHandeyeCalibration) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete easy_handeye_msgs/HandeyeCalibration message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Easy_handeye_msgsHandeyeCalibration.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Easy_handeye_msgsHandeyeCalibration(o *ros.Owner) (Ros1Easy_handeye_msgsHandeyeCalibration, error) {
	return ros.PollValue(o, 589, DecodeRos1Easy_handeye_msgsHandeyeCalibration)
}

// @brief Call the selected easy_handeye_msgs/ListAlgorithms service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsListAlgorithmsRequest, response=Ros1Easy_handeye_msgsListAlgorithmsResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Easy_handeye_msgsListAlgorithms(o *ros.Owner, q Ros1Easy_handeye_msgsListAlgorithmsRequest) (Ros1Easy_handeye_msgsListAlgorithmsResponse, error) {
	return ros.CallValue(o, q, 4424, DecodeRos1Easy_handeye_msgsListAlgorithmsResponse)
}

// @brief Call the selected easy_handeye_msgs/PlanToSelectedTargetPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest,
// response=Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Easy_handeye_msgsPlanToSelectedTargetPose(o *ros.Owner, q Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest) (Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Easy_handeye_msgsPlanToSelectedTargetPoseResponse)
}

// @brief Call the selected easy_handeye_msgs/RemoveSample service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsRemoveSampleRequest, response=Ros1Easy_handeye_msgsRemoveSampleResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Easy_handeye_msgsRemoveSample(o *ros.Owner, q Ros1Easy_handeye_msgsRemoveSampleRequest) (Ros1Easy_handeye_msgsRemoveSampleResponse, error) {
	return ros.CallValue(o, q, 904, DecodeRos1Easy_handeye_msgsRemoveSampleResponse)
}

// @brief Publish one complete easy_handeye_msgs/SampleList message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Easy_handeye_msgsSampleList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Easy_handeye_msgsSampleList(o *ros.Owner, v Ros1Easy_handeye_msgsSampleList) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete easy_handeye_msgs/SampleList message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Easy_handeye_msgsSampleList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Easy_handeye_msgsSampleList(o *ros.Owner) (Ros1Easy_handeye_msgsSampleList, error) {
	return ros.PollValue(o, 904, DecodeRos1Easy_handeye_msgsSampleList)
}

// @brief Call the selected easy_handeye_msgs/SelectTargetPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsSelectTargetPoseRequest, response=Ros1Easy_handeye_msgsSelectTargetPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Easy_handeye_msgsSelectTargetPose(o *ros.Owner, q Ros1Easy_handeye_msgsSelectTargetPoseRequest) (Ros1Easy_handeye_msgsSelectTargetPoseResponse, error) {
	return ros.CallValue(o, q, 2965, DecodeRos1Easy_handeye_msgsSelectTargetPoseResponse)
}

// @brief Call the selected easy_handeye_msgs/SetAlgorithm service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsSetAlgorithmRequest, response=Ros1Easy_handeye_msgsSetAlgorithmResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Easy_handeye_msgsSetAlgorithm(o *ros.Owner, q Ros1Easy_handeye_msgsSetAlgorithmRequest) (Ros1Easy_handeye_msgsSetAlgorithmResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Easy_handeye_msgsSetAlgorithmResponse)
}

// @brief Call the selected easy_handeye_msgs/TakeSample service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Easy_handeye_msgsTakeSampleRequest, response=Ros1Easy_handeye_msgsTakeSampleResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Easy_handeye_msgsTakeSample(o *ros.Owner, q Ros1Easy_handeye_msgsTakeSampleRequest) (Ros1Easy_handeye_msgsTakeSampleResponse, error) {
	return ros.CallValue(o, q, 904, DecodeRos1Easy_handeye_msgsTakeSampleResponse)
}

// @brief Publish one complete easy_handeye_msgs/TargetPoseList message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Easy_handeye_msgsTargetPoseList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Easy_handeye_msgsTargetPoseList(o *ros.Owner, v Ros1Easy_handeye_msgsTargetPoseList) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete easy_handeye_msgs/TargetPoseList message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Easy_handeye_msgsTargetPoseList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Easy_handeye_msgsTargetPoseList(o *ros.Owner) (Ros1Easy_handeye_msgsTargetPoseList, error) {
	return ros.PollValue(o, 2964, DecodeRos1Easy_handeye_msgsTargetPoseList)
}

// @brief Call the selected grid_map_msgs/GetGridMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Grid_map_msgsGetGridMapRequest, response=Ros1Grid_map_msgsGetGridMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Grid_map_msgsGetGridMap(o *ros.Owner, q Ros1Grid_map_msgsGetGridMapRequest) (Ros1Grid_map_msgsGetGridMapResponse, error) {
	return ros.CallValue(o, q, 11696, DecodeRos1Grid_map_msgsGetGridMapResponse)
}

// @brief Call the selected grid_map_msgs/GetGridMapInfo service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Grid_map_msgsGetGridMapInfoRequest, response=Ros1Grid_map_msgsGetGridMapInfoResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Grid_map_msgsGetGridMapInfo(o *ros.Owner, q Ros1Grid_map_msgsGetGridMapInfoRequest) (Ros1Grid_map_msgsGetGridMapInfoResponse, error) {
	return ros.CallValue(o, q, 352, DecodeRos1Grid_map_msgsGetGridMapInfoResponse)
}

// @brief Publish one complete grid_map_msgs/GridMap message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Grid_map_msgsGridMap.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Grid_map_msgsGridMap(o *ros.Owner, v Ros1Grid_map_msgsGridMap) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete grid_map_msgs/GridMap message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Grid_map_msgsGridMap.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Grid_map_msgsGridMap(o *ros.Owner) (Ros1Grid_map_msgsGridMap, error) {
	return ros.PollValue(o, 11696, DecodeRos1Grid_map_msgsGridMap)
}

// @brief Publish one complete grid_map_msgs/GridMapInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Grid_map_msgsGridMapInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Grid_map_msgsGridMapInfo(o *ros.Owner, v Ros1Grid_map_msgsGridMapInfo) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete grid_map_msgs/GridMapInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Grid_map_msgsGridMapInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Grid_map_msgsGridMapInfo(o *ros.Owner) (Ros1Grid_map_msgsGridMapInfo, error) {
	return ros.PollValue(o, 352, DecodeRos1Grid_map_msgsGridMapInfo)
}

// @brief Call the selected grid_map_msgs/ProcessFile service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Grid_map_msgsProcessFileRequest, response=Ros1Grid_map_msgsProcessFileResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Grid_map_msgsProcessFile(o *ros.Owner, q Ros1Grid_map_msgsProcessFileRequest) (Ros1Grid_map_msgsProcessFileResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Grid_map_msgsProcessFileResponse)
}

// @brief Call the selected grid_map_msgs/SetGridMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Grid_map_msgsSetGridMapRequest, response=Ros1Grid_map_msgsSetGridMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Grid_map_msgsSetGridMap(o *ros.Owner, q Ros1Grid_map_msgsSetGridMapRequest) (Ros1Grid_map_msgsSetGridMapResponse, error) {
	return ros.CallValue(o, q, 0, DecodeRos1Grid_map_msgsSetGridMapResponse)
}

// @brief Publish one complete h12pro_controller_node/ECJointMotordata message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1H12pro_controller_nodeECJointMotordata.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1H12pro_controller_nodeECJointMotordata(o *ros.Owner, v Ros1H12pro_controller_nodeECJointMotordata) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete h12pro_controller_node/ECJointMotordata message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1H12pro_controller_nodeECJointMotordata.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1H12pro_controller_nodeECJointMotordata(o *ros.Owner) (Ros1H12pro_controller_nodeECJointMotordata, error) {
	return ros.PollValue(o, 24, DecodeRos1H12pro_controller_nodeECJointMotordata)
}

// @brief Call the selected h12pro_controller_node/ExecuteArmAction service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1H12pro_controller_nodeExecuteArmActionRequest,
// response=Ros1H12pro_controller_nodeExecuteArmActionResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1H12pro_controller_nodeExecuteArmAction(o *ros.Owner, q Ros1H12pro_controller_nodeExecuteArmActionRequest) (Ros1H12pro_controller_nodeExecuteArmActionResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1H12pro_controller_nodeExecuteArmActionResponse)
}

// @brief Publish one complete h12pro_controller_node/RobotActionState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1H12pro_controller_nodeRobotActionState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1H12pro_controller_nodeRobotActionState(o *ros.Owner, v Ros1H12pro_controller_nodeRobotActionState) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete h12pro_controller_node/RobotActionState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1H12pro_controller_nodeRobotActionState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1H12pro_controller_nodeRobotActionState(o *ros.Owner) (Ros1H12pro_controller_nodeRobotActionState, error) {
	return ros.PollValue(o, 1, DecodeRos1H12pro_controller_nodeRobotActionState)
}

// @brief Publish one complete h12pro_controller_node/UpdateH12CustomizeConfig message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1H12pro_controller_nodeUpdateH12CustomizeConfig.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1H12pro_controller_nodeUpdateH12CustomizeConfig(o *ros.Owner, v Ros1H12pro_controller_nodeUpdateH12CustomizeConfig) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete h12pro_controller_node/UpdateH12CustomizeConfig message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1H12pro_controller_nodeUpdateH12CustomizeConfig.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1H12pro_controller_nodeUpdateH12CustomizeConfig(o *ros.Owner) (Ros1H12pro_controller_nodeUpdateH12CustomizeConfig, error) {
	return ros.PollValue(o, 260, DecodeRos1H12pro_controller_nodeUpdateH12CustomizeConfig)
}

// @brief Call the selected h12pro_controller_node/changeAMBACCtrlMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest,
// response=Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1H12pro_controller_nodeChangeAMBACCtrlMode(o *ros.Owner, q Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest) (Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1H12pro_controller_nodeChangeAMBACCtrlModeResponse)
}

// @brief Call the selected h12pro_controller_node/changeArmCtrlMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1H12pro_controller_nodeChangeArmCtrlModeRequest,
// response=Ros1H12pro_controller_nodeChangeArmCtrlModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1H12pro_controller_nodeChangeArmCtrlMode(o *ros.Owner, q Ros1H12pro_controller_nodeChangeArmCtrlModeRequest) (Ros1H12pro_controller_nodeChangeArmCtrlModeResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1H12pro_controller_nodeChangeArmCtrlModeResponse)
}

// @brief Call the selected h12pro_controller_node/changeHandArmPosesByConfigName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest,
// response=Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1H12pro_controller_nodeChangeHandArmPosesByConfigName(o *ros.Owner, q Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest) (Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse)
}

// @brief Publish one complete h12pro_controller_node/h12proRemoteControllerChannel message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1H12pro_controller_nodeH12proRemoteControllerChannel.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1H12pro_controller_nodeH12proRemoteControllerChannel(o *ros.Owner, v Ros1H12pro_controller_nodeH12proRemoteControllerChannel) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete h12pro_controller_node/h12proRemoteControllerChannel message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1H12pro_controller_nodeH12proRemoteControllerChannel.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1H12pro_controller_nodeH12proRemoteControllerChannel(o *ros.Owner) (Ros1H12pro_controller_nodeH12proRemoteControllerChannel, error) {
	return ros.PollValue(o, 37, DecodeRos1H12pro_controller_nodeH12proRemoteControllerChannel)
}

// @brief Call the selected h12pro_controller_node/playmusic service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1H12pro_controller_nodePlaymusicRequest, response=Ros1H12pro_controller_nodePlaymusicResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1H12pro_controller_nodePlaymusic(o *ros.Owner, q Ros1H12pro_controller_nodePlaymusicRequest) (Ros1H12pro_controller_nodePlaymusicResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1H12pro_controller_nodePlaymusicResponse)
}

// @brief Publish one complete h12pro_controller_node/robotPhase message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1H12pro_controller_nodeRobotPhase.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1H12pro_controller_nodeRobotPhase(o *ros.Owner, v Ros1H12pro_controller_nodeRobotPhase) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete h12pro_controller_node/robotPhase message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1H12pro_controller_nodeRobotPhase.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1H12pro_controller_nodeRobotPhase(o *ros.Owner) (Ros1H12pro_controller_nodeRobotPhase, error) {
	return ros.PollValue(o, 2, DecodeRos1H12pro_controller_nodeRobotPhase)
}

// @brief Publish one complete h12pro_controller_node/robotQVTau message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1H12pro_controller_nodeRobotQVTau.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1H12pro_controller_nodeRobotQVTau(o *ros.Owner, v Ros1H12pro_controller_nodeRobotQVTau) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete h12pro_controller_node/robotQVTau message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1H12pro_controller_nodeRobotQVTau.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1H12pro_controller_nodeRobotQVTau(o *ros.Owner) (Ros1H12pro_controller_nodeRobotQVTau, error) {
	return ros.PollValue(o, 1292, DecodeRos1H12pro_controller_nodeRobotQVTau)
}

// @brief Publish one complete h12pro_controller_node/robotTorsoState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1H12pro_controller_nodeRobotTorsoState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1H12pro_controller_nodeRobotTorsoState(o *ros.Owner, v Ros1H12pro_controller_nodeRobotTorsoState) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete h12pro_controller_node/robotTorsoState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1H12pro_controller_nodeRobotTorsoState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1H12pro_controller_nodeRobotTorsoState(o *ros.Owner) (Ros1H12pro_controller_nodeRobotTorsoState, error) {
	return ros.PollValue(o, 144, DecodeRos1H12pro_controller_nodeRobotTorsoState)
}

// @brief Call the selected h12pro_controller_node/srvChangePhases service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1H12pro_controller_nodeSrvChangePhasesRequest,
// response=Ros1H12pro_controller_nodeSrvChangePhasesResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1H12pro_controller_nodeSrvChangePhases(o *ros.Owner, q Ros1H12pro_controller_nodeSrvChangePhasesRequest) (Ros1H12pro_controller_nodeSrvChangePhasesResponse, error) {
	return ros.CallValue(o, q, 2, DecodeRos1H12pro_controller_nodeSrvChangePhasesResponse)
}

// @brief Call the selected h12pro_controller_node/srvClearPositionCMD service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1H12pro_controller_nodeSrvClearPositionCMDRequest,
// response=Ros1H12pro_controller_nodeSrvClearPositionCMDResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1H12pro_controller_nodeSrvClearPositionCMD(o *ros.Owner, q Ros1H12pro_controller_nodeSrvClearPositionCMDRequest) (Ros1H12pro_controller_nodeSrvClearPositionCMDResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1H12pro_controller_nodeSrvClearPositionCMDResponse)
}

// @brief Call the selected h12pro_controller_node/srvchangeCtlMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1H12pro_controller_nodeSrvchangeCtlModeRequest,
// response=Ros1H12pro_controller_nodeSrvchangeCtlModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1H12pro_controller_nodeSrvchangeCtlMode(o *ros.Owner, q Ros1H12pro_controller_nodeSrvchangeCtlModeRequest) (Ros1H12pro_controller_nodeSrvchangeCtlModeResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1H12pro_controller_nodeSrvchangeCtlModeResponse)
}

// @brief Publish one complete h12pro_controller_node/walkCommand message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1H12pro_controller_nodeWalkCommand.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1H12pro_controller_nodeWalkCommand(o *ros.Owner, v Ros1H12pro_controller_nodeWalkCommand) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete h12pro_controller_node/walkCommand message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1H12pro_controller_nodeWalkCommand.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1H12pro_controller_nodeWalkCommand(o *ros.Owner) (Ros1H12pro_controller_nodeWalkCommand, error) {
	return ros.PollValue(o, 133, DecodeRos1H12pro_controller_nodeWalkCommand)
}

// @brief Publish one complete handcontrollerdemorosnode/armPoseWithTimeStamp message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1HandcontrollerdemorosnodeArmPoseWithTimeStamp(o *ros.Owner, v Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete handcontrollerdemorosnode/armPoseWithTimeStamp message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1HandcontrollerdemorosnodeArmPoseWithTimeStamp(o *ros.Owner) (Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp, error) {
	return ros.PollValue(o, 268, DecodeRos1HandcontrollerdemorosnodeArmPoseWithTimeStamp)
}

// @brief Call the selected handcontrollerdemorosnode/changeHandTrackingMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest,
// response=Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1HandcontrollerdemorosnodeChangeHandTrackingMode(o *ros.Owner, q Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest) (Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1HandcontrollerdemorosnodeChangeHandTrackingModeResponse)
}

// @brief Call the selected handcontrollerdemorosnode/controlEndHand service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1HandcontrollerdemorosnodeControlEndHandRequest,
// response=Ros1HandcontrollerdemorosnodeControlEndHandResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1HandcontrollerdemorosnodeControlEndHand(o *ros.Owner, q Ros1HandcontrollerdemorosnodeControlEndHandRequest) (Ros1HandcontrollerdemorosnodeControlEndHandResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1HandcontrollerdemorosnodeControlEndHandResponse)
}

// @brief Publish one complete handcontrollerdemorosnode/handRotationEular message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1HandcontrollerdemorosnodeHandRotationEular.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1HandcontrollerdemorosnodeHandRotationEular(o *ros.Owner, v Ros1HandcontrollerdemorosnodeHandRotationEular) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete handcontrollerdemorosnode/handRotationEular message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1HandcontrollerdemorosnodeHandRotationEular.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1HandcontrollerdemorosnodeHandRotationEular(o *ros.Owner) (Ros1HandcontrollerdemorosnodeHandRotationEular, error) {
	return ros.PollValue(o, 196, DecodeRos1HandcontrollerdemorosnodeHandRotationEular)
}

// @brief Publish one complete handcontrollerdemorosnode/robotArmPose message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1HandcontrollerdemorosnodeRobotArmPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1HandcontrollerdemorosnodeRobotArmPose(o *ros.Owner, v Ros1HandcontrollerdemorosnodeRobotArmPose) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete handcontrollerdemorosnode/robotArmPose message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1HandcontrollerdemorosnodeRobotArmPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1HandcontrollerdemorosnodeRobotArmPose(o *ros.Owner) (Ros1HandcontrollerdemorosnodeRobotArmPose, error) {
	return ros.PollValue(o, 264, DecodeRos1HandcontrollerdemorosnodeRobotArmPose)
}

// @brief Publish one complete handcontrollerdemorosnode/robotHandPosition message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1HandcontrollerdemorosnodeRobotHandPosition.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1HandcontrollerdemorosnodeRobotHandPosition(o *ros.Owner, v Ros1HandcontrollerdemorosnodeRobotHandPosition) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete handcontrollerdemorosnode/robotHandPosition message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1HandcontrollerdemorosnodeRobotHandPosition.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1HandcontrollerdemorosnodeRobotHandPosition(o *ros.Owner) (Ros1HandcontrollerdemorosnodeRobotHandPosition, error) {
	return ros.PollValue(o, 792, DecodeRos1HandcontrollerdemorosnodeRobotHandPosition)
}

// @brief Call the selected handcontrollerdemorosnode/srvArmIK service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1HandcontrollerdemorosnodeSrvArmIKRequest, response=Ros1HandcontrollerdemorosnodeSrvArmIKResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1HandcontrollerdemorosnodeSrvArmIK(o *ros.Owner, q Ros1HandcontrollerdemorosnodeSrvArmIKRequest) (Ros1HandcontrollerdemorosnodeSrvArmIKResponse, error) {
	return ros.CallValue(o, q, 12064, DecodeRos1HandcontrollerdemorosnodeSrvArmIKResponse)
}

// @brief Publish one complete hardware_node/horizontalMotionByStep message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Hardware_nodeHorizontalMotionByStep.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Hardware_nodeHorizontalMotionByStep(o *ros.Owner, v Ros1Hardware_nodeHorizontalMotionByStep) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete hardware_node/horizontalMotionByStep message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Hardware_nodeHorizontalMotionByStep.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Hardware_nodeHorizontalMotionByStep(o *ros.Owner) (Ros1Hardware_nodeHorizontalMotionByStep, error) {
	return ros.PollValue(o, 4, DecodeRos1Hardware_nodeHorizontalMotionByStep)
}

// @brief Publish one complete hardware_node/robotHeadMotionData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Hardware_nodeRobotHeadMotionData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Hardware_nodeRobotHeadMotionData(o *ros.Owner, v Ros1Hardware_nodeRobotHeadMotionData) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete hardware_node/robotHeadMotionData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Hardware_nodeRobotHeadMotionData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Hardware_nodeRobotHeadMotionData(o *ros.Owner) (Ros1Hardware_nodeRobotHeadMotionData, error) {
	return ros.PollValue(o, 68, DecodeRos1Hardware_nodeRobotHeadMotionData)
}

// @brief Call the selected humanoid_arm_control/armControl service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Humanoid_arm_controlArmControlRequest, response=Ros1Humanoid_arm_controlArmControlResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Humanoid_arm_controlArmControl(o *ros.Owner, q Ros1Humanoid_arm_controlArmControlRequest) (Ros1Humanoid_arm_controlArmControlResponse, error) {
	return ros.CallValue(o, q, 16, DecodeRos1Humanoid_arm_controlArmControlResponse)
}

// @brief Call the selected humanoid_arm_control/handUpAndGrab service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Humanoid_arm_controlHandUpAndGrabRequest, response=Ros1Humanoid_arm_controlHandUpAndGrabResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Humanoid_arm_controlHandUpAndGrab(o *ros.Owner, q Ros1Humanoid_arm_controlHandUpAndGrabRequest) (Ros1Humanoid_arm_controlHandUpAndGrabResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Humanoid_arm_controlHandUpAndGrabResponse)
}

// @brief Call the selected humanoid_plan_arm_trajectory/ExecuteArmAction service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest,
// response=Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Humanoid_plan_arm_trajectoryExecuteArmAction(o *ros.Owner, q Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest) (Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Humanoid_plan_arm_trajectoryExecuteArmActionResponse)
}

// @brief Publish one complete humanoid_plan_arm_trajectory/RobotActionState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Humanoid_plan_arm_trajectoryRobotActionState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Humanoid_plan_arm_trajectoryRobotActionState(o *ros.Owner, v Ros1Humanoid_plan_arm_trajectoryRobotActionState) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete humanoid_plan_arm_trajectory/RobotActionState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Humanoid_plan_arm_trajectoryRobotActionState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Humanoid_plan_arm_trajectoryRobotActionState(o *ros.Owner) (Ros1Humanoid_plan_arm_trajectoryRobotActionState, error) {
	return ros.PollValue(o, 1, DecodeRos1Humanoid_plan_arm_trajectoryRobotActionState)
}

// @brief Publish one complete humanoid_plan_arm_trajectory/bezierCurveCubicPoint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint(o *ros.Owner, v Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete humanoid_plan_arm_trajectory/bezierCurveCubicPoint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint(o *ros.Owner) (Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint, error) {
	return ros.PollValue(o, 396, DecodeRos1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint)
}

// @brief Publish one complete humanoid_plan_arm_trajectory/jointBezierTrajectory message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Humanoid_plan_arm_trajectoryJointBezierTrajectory(o *ros.Owner, v Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete humanoid_plan_arm_trajectory/jointBezierTrajectory message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Humanoid_plan_arm_trajectoryJointBezierTrajectory(o *ros.Owner) (Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory, error) {
	return ros.PollValue(o, 3172, DecodeRos1Humanoid_plan_arm_trajectoryJointBezierTrajectory)
}

// @brief Publish one complete humanoid_plan_arm_trajectory/planArmState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Humanoid_plan_arm_trajectoryPlanArmState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Humanoid_plan_arm_trajectoryPlanArmState(o *ros.Owner, v Ros1Humanoid_plan_arm_trajectoryPlanArmState) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete humanoid_plan_arm_trajectory/planArmState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Humanoid_plan_arm_trajectoryPlanArmState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Humanoid_plan_arm_trajectoryPlanArmState(o *ros.Owner) (Ros1Humanoid_plan_arm_trajectoryPlanArmState, error) {
	return ros.PollValue(o, 5, DecodeRos1Humanoid_plan_arm_trajectoryPlanArmState)
}

// @brief Call the selected humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurve service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest,
// response=Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurve(o *ros.Owner, q Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest) (Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse)
}

// @brief Call the selected humanoid_plan_arm_trajectory/planArmTrajectoryCubicSpline service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest,
// response=Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSpline(o *ros.Owner, q Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest) (Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse)
}

// @brief Publish one complete kindr_msgs/VectorAtPosition message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kindr_msgsVectorAtPosition.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kindr_msgsVectorAtPosition(o *ros.Owner, v Ros1Kindr_msgsVectorAtPosition) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kindr_msgs/VectorAtPosition message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kindr_msgsVectorAtPosition.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kindr_msgsVectorAtPosition(o *ros.Owner) (Ros1Kindr_msgsVectorAtPosition, error) {
	return ros.PollValue(o, 841, DecodeRos1Kindr_msgsVectorAtPosition)
}

// @brief Call the selected kuavo_audio_player/audio_status service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_audio_playerAudio_statusRequest, response=Ros1Kuavo_audio_playerAudio_statusResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_audio_playerAudio_status(o *ros.Owner, q Ros1Kuavo_audio_playerAudio_statusRequest) (Ros1Kuavo_audio_playerAudio_statusResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Kuavo_audio_playerAudio_statusResponse)
}

// @brief Call the selected kuavo_audio_player/playmusic service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_audio_playerPlaymusicRequest, response=Ros1Kuavo_audio_playerPlaymusicResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_audio_playerPlaymusic(o *ros.Owner, q Ros1Kuavo_audio_playerPlaymusicRequest) (Ros1Kuavo_audio_playerPlaymusicResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Kuavo_audio_playerPlaymusicResponse)
}

// @brief Call the selected kuavo_mapping/DeleteMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingDeleteMapRequest, response=Ros1Kuavo_mappingDeleteMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_mappingDeleteMap(o *ros.Owner, q Ros1Kuavo_mappingDeleteMapRequest) (Ros1Kuavo_mappingDeleteMapResponse, error) {
	return ros.CallValue(o, q, 521, DecodeRos1Kuavo_mappingDeleteMapResponse)
}

// @brief Call the selected kuavo_mapping/EditMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingEditMapRequest, response=Ros1Kuavo_mappingEditMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_mappingEditMap(o *ros.Owner, q Ros1Kuavo_mappingEditMapRequest) (Ros1Kuavo_mappingEditMapResponse, error) {
	return ros.CallValue(o, q, 521, DecodeRos1Kuavo_mappingEditMapResponse)
}

// @brief Call the selected kuavo_mapping/GetAllMaps service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingGetAllMapsRequest, response=Ros1Kuavo_mappingGetAllMapsResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_mappingGetAllMaps(o *ros.Owner, q Ros1Kuavo_mappingGetAllMapsRequest) (Ros1Kuavo_mappingGetAllMapsResponse, error) {
	return ros.CallValue(o, q, 4164, DecodeRos1Kuavo_mappingGetAllMapsResponse)
}

// @brief Call the selected kuavo_mapping/GetCurrentMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingGetCurrentMapRequest, response=Ros1Kuavo_mappingGetCurrentMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_mappingGetCurrentMap(o *ros.Owner, q Ros1Kuavo_mappingGetCurrentMapRequest) (Ros1Kuavo_mappingGetCurrentMapResponse, error) {
	return ros.CallValue(o, q, 260, DecodeRos1Kuavo_mappingGetCurrentMapResponse)
}

// @brief Call the selected kuavo_mapping/InitialPoseWithTaskPoint service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingInitialPoseWithTaskPointRequest,
// response=Ros1Kuavo_mappingInitialPoseWithTaskPointResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_mappingInitialPoseWithTaskPoint(o *ros.Owner, q Ros1Kuavo_mappingInitialPoseWithTaskPointRequest) (Ros1Kuavo_mappingInitialPoseWithTaskPointResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_mappingInitialPoseWithTaskPointResponse)
}

// @brief Call the selected kuavo_mapping/LoadMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingLoadMapRequest, response=Ros1Kuavo_mappingLoadMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_mappingLoadMap(o *ros.Owner, q Ros1Kuavo_mappingLoadMapRequest) (Ros1Kuavo_mappingLoadMapResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_mappingLoadMapResponse)
}

// @brief Call the selected kuavo_mapping/NavigateToTaskPoint service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingNavigateToTaskPointRequest, response=Ros1Kuavo_mappingNavigateToTaskPointResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_mappingNavigateToTaskPoint(o *ros.Owner, q Ros1Kuavo_mappingNavigateToTaskPointRequest) (Ros1Kuavo_mappingNavigateToTaskPointResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_mappingNavigateToTaskPointResponse)
}

// @brief Call the selected kuavo_mapping/RenameMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingRenameMapRequest, response=Ros1Kuavo_mappingRenameMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_mappingRenameMap(o *ros.Owner, q Ros1Kuavo_mappingRenameMapRequest) (Ros1Kuavo_mappingRenameMapResponse, error) {
	return ros.CallValue(o, q, 781, DecodeRos1Kuavo_mappingRenameMapResponse)
}

// @brief Call the selected kuavo_mapping/SaveMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingSaveMapRequest, response=Ros1Kuavo_mappingSaveMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_mappingSaveMap(o *ros.Owner, q Ros1Kuavo_mappingSaveMapRequest) (Ros1Kuavo_mappingSaveMapResponse, error) {
	return ros.CallValue(o, q, 1301, DecodeRos1Kuavo_mappingSaveMapResponse)
}

// @brief Call the selected kuavo_mapping/SetInitialPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingSetInitialPoseRequest, response=Ros1Kuavo_mappingSetInitialPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_mappingSetInitialPose(o *ros.Owner, q Ros1Kuavo_mappingSetInitialPoseRequest) (Ros1Kuavo_mappingSetInitialPoseResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_mappingSetInitialPoseResponse)
}

// @brief Call the selected kuavo_mapping/StartMapping service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingStartMappingRequest, response=Ros1Kuavo_mappingStartMappingResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_mappingStartMapping(o *ros.Owner, q Ros1Kuavo_mappingStartMappingRequest) (Ros1Kuavo_mappingStartMappingResponse, error) {
	return ros.CallValue(o, q, 521, DecodeRos1Kuavo_mappingStartMappingResponse)
}

// @brief Call the selected kuavo_mapping/StopMapping service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingStopMappingRequest, response=Ros1Kuavo_mappingStopMappingResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_mappingStopMapping(o *ros.Owner, q Ros1Kuavo_mappingStopMappingRequest) (Ros1Kuavo_mappingStopMappingResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_mappingStopMappingResponse)
}

// @brief Publish one complete kuavo_mapping/TaskPoint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_mappingTaskPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_mappingTaskPoint(o *ros.Owner, v Ros1Kuavo_mappingTaskPoint) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_mapping/TaskPoint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_mappingTaskPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_mappingTaskPoint(o *ros.Owner) (Ros1Kuavo_mappingTaskPoint, error) {
	return ros.PollValue(o, 316, DecodeRos1Kuavo_mappingTaskPoint)
}

// @brief Call the selected kuavo_mapping/TaskPointOperation service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_mappingTaskPointOperationRequest, response=Ros1Kuavo_mappingTaskPointOperationResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_mappingTaskPointOperation(o *ros.Owner, q Ros1Kuavo_mappingTaskPointOperationRequest) (Ros1Kuavo_mappingTaskPointOperationResponse, error) {
	return ros.CallValue(o, q, 2793, DecodeRos1Kuavo_mappingTaskPointOperationResponse)
}

// @brief Publish one complete kuavo_msgs/AprilTagDetection message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsAprilTagDetection.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsAprilTagDetection(o *ros.Owner, v Ros1Kuavo_msgsAprilTagDetection) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/AprilTagDetection message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsAprilTagDetection.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsAprilTagDetection(o *ros.Owner) (Ros1Kuavo_msgsAprilTagDetection, error) {
	return ros.PollValue(o, 816, DecodeRos1Kuavo_msgsAprilTagDetection)
}

// @brief Publish one complete kuavo_msgs/AprilTagDetectionArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_msgsAprilTagDetectionArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsAprilTagDetectionArray(o *ros.Owner, v Ros1Kuavo_msgsAprilTagDetectionArray) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/AprilTagDetectionArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsAprilTagDetectionArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsAprilTagDetectionArray(o *ros.Owner) (Ros1Kuavo_msgsAprilTagDetectionArray, error) {
	return ros.PollValue(o, 6804, DecodeRos1Kuavo_msgsAprilTagDetectionArray)
}

// @brief Publish one complete kuavo_msgs/AudioPlaybackStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsAudioPlaybackStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsAudioPlaybackStatus(o *ros.Owner, v Ros1Kuavo_msgsAudioPlaybackStatus) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/AudioPlaybackStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsAudioPlaybackStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsAudioPlaybackStatus(o *ros.Owner) (Ros1Kuavo_msgsAudioPlaybackStatus, error) {
	return ros.PollValue(o, 537, DecodeRos1Kuavo_msgsAudioPlaybackStatus)
}

// @brief Publish one complete kuavo_msgs/AudioReceiverData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsAudioReceiverData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsAudioReceiverData(o *ros.Owner, v Ros1Kuavo_msgsAudioReceiverData) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/AudioReceiverData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsAudioReceiverData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsAudioReceiverData(o *ros.Owner) (Ros1Kuavo_msgsAudioReceiverData, error) {
	return ros.PollValue(o, 260, DecodeRos1Kuavo_msgsAudioReceiverData)
}

// @brief Publish one complete kuavo_msgs/BatteryInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsBatteryInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsBatteryInfo(o *ros.Owner, v Ros1Kuavo_msgsBatteryInfo) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/BatteryInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsBatteryInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsBatteryInfo(o *ros.Owner) (Ros1Kuavo_msgsBatteryInfo, error) {
	return ros.PollValue(o, 44, DecodeRos1Kuavo_msgsBatteryInfo)
}

// @brief Publish one complete kuavo_msgs/Color message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsColor.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsColor(o *ros.Owner, v Ros1Kuavo_msgsColor) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/Color message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsColor.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsColor(o *ros.Owner) (Ros1Kuavo_msgsColor, error) {
	return ros.PollValue(o, 3, DecodeRos1Kuavo_msgsColor)
}

// @brief Publish one complete kuavo_msgs/ControllerSwitchEvent message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsControllerSwitchEvent.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsControllerSwitchEvent(o *ros.Owner, v Ros1Kuavo_msgsControllerSwitchEvent) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/ControllerSwitchEvent message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsControllerSwitchEvent.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsControllerSwitchEvent(o *ros.Owner) (Ros1Kuavo_msgsControllerSwitchEvent, error) {
	return ros.PollValue(o, 792, DecodeRos1Kuavo_msgsControllerSwitchEvent)
}

// @brief Call the selected kuavo_msgs/CreatePath service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsCreatePathRequest, response=Ros1Kuavo_msgsCreatePathResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsCreatePath(o *ros.Owner, q Ros1Kuavo_msgsCreatePathRequest) (Ros1Kuavo_msgsCreatePathResponse, error) {
	return ros.CallValue(o, q, 3161, DecodeRos1Kuavo_msgsCreatePathResponse)
}

// @brief Publish one complete kuavo_msgs/DanceTrajectoryState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsDanceTrajectoryState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsDanceTrajectoryState(o *ros.Owner, v Ros1Kuavo_msgsDanceTrajectoryState) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/DanceTrajectoryState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsDanceTrajectoryState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsDanceTrajectoryState(o *ros.Owner) (Ros1Kuavo_msgsDanceTrajectoryState, error) {
	return ros.PollValue(o, 804, DecodeRos1Kuavo_msgsDanceTrajectoryState)
}

// @brief Call the selected kuavo_msgs/ExecuteArmAction service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsExecuteArmActionRequest, response=Ros1Kuavo_msgsExecuteArmActionResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsExecuteArmAction(o *ros.Owner, q Ros1Kuavo_msgsExecuteArmActionRequest) (Ros1Kuavo_msgsExecuteArmActionResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsExecuteArmActionResponse)
}

// @brief Publish one complete kuavo_msgs/FTsensorData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFTsensorData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsFTsensorData(o *ros.Owner, v Ros1Kuavo_msgsFTsensorData) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/FTsensorData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsFTsensorData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsFTsensorData(o *ros.Owner) (Ros1Kuavo_msgsFTsensorData, error) {
	return ros.PollValue(o, 792, DecodeRos1Kuavo_msgsFTsensorData)
}

// @brief Publish one complete kuavo_msgs/FaceBoundingBox message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFaceBoundingBox.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsFaceBoundingBox(o *ros.Owner, v Ros1Kuavo_msgsFaceBoundingBox) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/FaceBoundingBox message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsFaceBoundingBox.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsFaceBoundingBox(o *ros.Owner) (Ros1Kuavo_msgsFaceBoundingBox, error) {
	return ros.PollValue(o, 292, DecodeRos1Kuavo_msgsFaceBoundingBox)
}

// @brief Call the selected kuavo_msgs/FallStandCommand service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsFallStandCommandRequest, response=Ros1Kuavo_msgsFallStandCommandResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsFallStandCommand(o *ros.Owner, q Ros1Kuavo_msgsFallStandCommandRequest) (Ros1Kuavo_msgsFallStandCommandResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsFallStandCommandResponse)
}

// @brief Publish one complete kuavo_msgs/Float32MultiArrayStamped message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_msgsFloat32MultiArrayStamped.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsFloat32MultiArrayStamped(o *ros.Owner, v Ros1Kuavo_msgsFloat32MultiArrayStamped) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/Float32MultiArrayStamped message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_msgsFloat32MultiArrayStamped.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsFloat32MultiArrayStamped(o *ros.Owner) (Ros1Kuavo_msgsFloat32MultiArrayStamped, error) {
	return ros.PollValue(o, 1024, DecodeRos1Kuavo_msgsFloat32MultiArrayStamped)
}

// @brief Call the selected kuavo_msgs/GetAllMaps service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetAllMapsRequest, response=Ros1Kuavo_msgsGetAllMapsResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsGetAllMaps(o *ros.Owner, q Ros1Kuavo_msgsGetAllMapsRequest) (Ros1Kuavo_msgsGetAllMapsResponse, error) {
	return ros.CallValue(o, q, 4164, DecodeRos1Kuavo_msgsGetAllMapsResponse)
}

// @brief Call the selected kuavo_msgs/GetBatteryInfo service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetBatteryInfoRequest, response=Ros1Kuavo_msgsGetBatteryInfoResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsGetBatteryInfo(o *ros.Owner, q Ros1Kuavo_msgsGetBatteryInfoRequest) (Ros1Kuavo_msgsGetBatteryInfoResponse, error) {
	return ros.CallValue(o, q, 297, DecodeRos1Kuavo_msgsGetBatteryInfoResponse)
}

// @brief Call the selected kuavo_msgs/GetCurrentMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetCurrentMapRequest, response=Ros1Kuavo_msgsGetCurrentMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsGetCurrentMap(o *ros.Owner, q Ros1Kuavo_msgsGetCurrentMapRequest) (Ros1Kuavo_msgsGetCurrentMapResponse, error) {
	return ros.CallValue(o, q, 260, DecodeRos1Kuavo_msgsGetCurrentMapResponse)
}

// @brief Call the selected kuavo_msgs/GetPowerBoardStatus service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetPowerBoardStatusRequest, response=Ros1Kuavo_msgsGetPowerBoardStatusResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsGetPowerBoardStatus(o *ros.Owner, q Ros1Kuavo_msgsGetPowerBoardStatusRequest) (Ros1Kuavo_msgsGetPowerBoardStatusResponse, error) {
	return ros.CallValue(o, q, 298, DecodeRos1Kuavo_msgsGetPowerBoardStatusResponse)
}

// @brief Call the selected kuavo_msgs/GetStringList service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetStringListRequest, response=Ros1Kuavo_msgsGetStringListResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsGetStringList(o *ros.Owner, q Ros1Kuavo_msgsGetStringListRequest) (Ros1Kuavo_msgsGetStringListResponse, error) {
	return ros.CallValue(o, q, 4425, DecodeRos1Kuavo_msgsGetStringListResponse)
}

// @brief Call the selected kuavo_msgs/GetTargetPartPoseInCamera service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest, response=Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsGetTargetPartPoseInCamera(o *ros.Owner, q Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest) (Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse, error) {
	return ros.CallValue(o, q, 317, DecodeRos1Kuavo_msgsGetTargetPartPoseInCameraResponse)
}

// @brief Call the selected kuavo_msgs/InitialPoseWithTaskPoint service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsInitialPoseWithTaskPointRequest, response=Ros1Kuavo_msgsInitialPoseWithTaskPointResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsInitialPoseWithTaskPoint(o *ros.Owner, q Ros1Kuavo_msgsInitialPoseWithTaskPointRequest) (Ros1Kuavo_msgsInitialPoseWithTaskPointResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsInitialPoseWithTaskPointResponse)
}

// @brief Publish one complete kuavo_msgs/JoySticks message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsJoySticks.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsJoySticks(o *ros.Owner, v Ros1Kuavo_msgsJoySticks) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/JoySticks message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsJoySticks.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsJoySticks(o *ros.Owner) (Ros1Kuavo_msgsJoySticks, error) {
	return ros.PollValue(o, 40, DecodeRos1Kuavo_msgsJoySticks)
}

// @brief Call the selected kuavo_msgs/LoadMap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsLoadMapRequest, response=Ros1Kuavo_msgsLoadMapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsLoadMap(o *ros.Owner, q Ros1Kuavo_msgsLoadMapRequest) (Ros1Kuavo_msgsLoadMapResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsLoadMapResponse)
}

// @brief Publish one complete kuavo_msgs/Metadata message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMetadata.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsMetadata(o *ros.Owner, v Ros1Kuavo_msgsMetadata) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/Metadata message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsMetadata.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsMetadata(o *ros.Owner) (Ros1Kuavo_msgsMetadata, error) {
	return ros.PollValue(o, 532, DecodeRos1Kuavo_msgsMetadata)
}

// @brief Publish one complete kuavo_msgs/MmDetectionMsg message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMmDetectionMsg.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsMmDetectionMsg(o *ros.Owner, v Ros1Kuavo_msgsMmDetectionMsg) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/MmDetectionMsg message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsMmDetectionMsg.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsMmDetectionMsg(o *ros.Owner) (Ros1Kuavo_msgsMmDetectionMsg, error) {
	return ros.PollValue(o, 327, DecodeRos1Kuavo_msgsMmDetectionMsg)
}

// @brief Publish one complete kuavo_msgs/MocapPoseRetarget message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMocapPoseRetarget.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsMocapPoseRetarget(o *ros.Owner, v Ros1Kuavo_msgsMocapPoseRetarget) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/MocapPoseRetarget message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsMocapPoseRetarget.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsMocapPoseRetarget(o *ros.Owner) (Ros1Kuavo_msgsMocapPoseRetarget, error) {
	return ros.PollValue(o, 904, DecodeRos1Kuavo_msgsMocapPoseRetarget)
}

// @brief Call the selected kuavo_msgs/NavigateToTaskPoint service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsNavigateToTaskPointRequest, response=Ros1Kuavo_msgsNavigateToTaskPointResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsNavigateToTaskPoint(o *ros.Owner, q Ros1Kuavo_msgsNavigateToTaskPointRequest) (Ros1Kuavo_msgsNavigateToTaskPointResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsNavigateToTaskPointResponse)
}

// @brief Call the selected kuavo_msgs/PlayMusicImmediate service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsPlayMusicImmediateRequest, response=Ros1Kuavo_msgsPlayMusicImmediateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsPlayMusicImmediate(o *ros.Owner, q Ros1Kuavo_msgsPlayMusicImmediateRequest) (Ros1Kuavo_msgsPlayMusicImmediateResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Kuavo_msgsPlayMusicImmediateResponse)
}

// @brief Publish one complete kuavo_msgs/PowerBoardStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPowerBoardStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsPowerBoardStatus(o *ros.Owner, v Ros1Kuavo_msgsPowerBoardStatus) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/PowerBoardStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsPowerBoardStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsPowerBoardStatus(o *ros.Owner) (Ros1Kuavo_msgsPowerBoardStatus, error) {
	return ros.PollValue(o, 37, DecodeRos1Kuavo_msgsPowerBoardStatus)
}

// @brief Call the selected kuavo_msgs/RelaySelectChannel service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsRelaySelectChannelRequest, response=Ros1Kuavo_msgsRelaySelectChannelResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsRelaySelectChannel(o *ros.Owner, q Ros1Kuavo_msgsRelaySelectChannelRequest) (Ros1Kuavo_msgsRelaySelectChannelResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsRelaySelectChannelResponse)
}

// @brief Call the selected kuavo_msgs/RepublishTFs service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsRepublishTFsRequest, response=Ros1Kuavo_msgsRepublishTFsResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsRepublishTFs(o *ros.Owner, q Ros1Kuavo_msgsRepublishTFsRequest) (Ros1Kuavo_msgsRepublishTFsResponse, error) {
	return ros.CallValue(o, q, 264, DecodeRos1Kuavo_msgsRepublishTFsResponse)
}

// @brief Publish one complete kuavo_msgs/RigidBodyDescription message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRigidBodyDescription.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsRigidBodyDescription(o *ros.Owner, v Ros1Kuavo_msgsRigidBodyDescription) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/RigidBodyDescription message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRigidBodyDescription.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsRigidBodyDescription(o *ros.Owner) (Ros1Kuavo_msgsRigidBodyDescription, error) {
	return ros.PollValue(o, 4768, DecodeRos1Kuavo_msgsRigidBodyDescription)
}

// @brief Publish one complete kuavo_msgs/RigidBodyFrame message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRigidBodyFrame.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsRigidBodyFrame(o *ros.Owner, v Ros1Kuavo_msgsRigidBodyFrame) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/RigidBodyFrame message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRigidBodyFrame.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsRigidBodyFrame(o *ros.Owner) (Ros1Kuavo_msgsRigidBodyFrame, error) {
	return ros.PollValue(o, 316, DecodeRos1Kuavo_msgsRigidBodyFrame)
}

// @brief Publish one complete kuavo_msgs/RobotActionState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotActionState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsRobotActionState(o *ros.Owner, v Ros1Kuavo_msgsRobotActionState) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/RobotActionState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRobotActionState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsRobotActionState(o *ros.Owner) (Ros1Kuavo_msgsRobotActionState, error) {
	return ros.PollValue(o, 1, DecodeRos1Kuavo_msgsRobotActionState)
}

// @brief Call the selected kuavo_msgs/SetHeadControlMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetHeadControlModeRequest, response=Ros1Kuavo_msgsSetHeadControlModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsSetHeadControlMode(o *ros.Owner, q Ros1Kuavo_msgsSetHeadControlModeRequest) (Ros1Kuavo_msgsSetHeadControlModeResponse, error) {
	return ros.CallValue(o, q, 521, DecodeRos1Kuavo_msgsSetHeadControlModeResponse)
}

// @brief Call the selected kuavo_msgs/SetIncrementalArmTrajLink service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest, response=Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsSetIncrementalArmTrajLink(o *ros.Owner, q Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest) (Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsSetIncrementalArmTrajLinkResponse)
}

// @brief Call the selected kuavo_msgs/SetInitialPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetInitialPoseRequest, response=Ros1Kuavo_msgsSetInitialPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsSetInitialPose(o *ros.Owner, q Ros1Kuavo_msgsSetInitialPoseRequest) (Ros1Kuavo_msgsSetInitialPoseResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsSetInitialPoseResponse)
}

// @brief Call the selected kuavo_msgs/SetJoyTopic service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetJoyTopicRequest, response=Ros1Kuavo_msgsSetJoyTopicResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsSetJoyTopic(o *ros.Owner, q Ros1Kuavo_msgsSetJoyTopicRequest) (Ros1Kuavo_msgsSetJoyTopicResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsSetJoyTopicResponse)
}

// @brief Call the selected kuavo_msgs/SetLEDMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetLEDModeRequest, response=Ros1Kuavo_msgsSetLEDModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsSetLEDMode(o *ros.Owner, q Ros1Kuavo_msgsSetLEDModeRequest) (Ros1Kuavo_msgsSetLEDModeResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Kuavo_msgsSetLEDModeResponse)
}

// @brief Call the selected kuavo_msgs/SetLEDMode_free service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetLEDMode_freeRequest, response=Ros1Kuavo_msgsSetLEDMode_freeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsSetLEDMode_free(o *ros.Owner, q Ros1Kuavo_msgsSetLEDMode_freeRequest) (Ros1Kuavo_msgsSetLEDMode_freeResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Kuavo_msgsSetLEDMode_freeResponse)
}

// @brief Call the selected kuavo_msgs/SetString service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetStringRequest, response=Ros1Kuavo_msgsSetStringResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsSetString(o *ros.Owner, q Ros1Kuavo_msgsSetStringRequest) (Ros1Kuavo_msgsSetStringResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsSetStringResponse)
}

// @brief Publish one complete kuavo_msgs/SkeletonFrame message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsSkeletonFrame.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsSkeletonFrame(o *ros.Owner, v Ros1Kuavo_msgsSkeletonFrame) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/SkeletonFrame message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsSkeletonFrame.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsSkeletonFrame(o *ros.Owner) (Ros1Kuavo_msgsSkeletonFrame, error) {
	return ros.PollValue(o, 2804, DecodeRos1Kuavo_msgsSkeletonFrame)
}

// @brief Call the selected kuavo_msgs/SpeechSynthesis service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSpeechSynthesisRequest, response=Ros1Kuavo_msgsSpeechSynthesisResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsSpeechSynthesis(o *ros.Owner, q Ros1Kuavo_msgsSpeechSynthesisRequest) (Ros1Kuavo_msgsSpeechSynthesisResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Kuavo_msgsSpeechSynthesisResponse)
}

// @brief Publish one complete kuavo_msgs/TFArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTFArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsTFArray(o *ros.Owner, v Ros1Kuavo_msgsTFArray) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/TFArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTFArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsTFArray(o *ros.Owner) (Ros1Kuavo_msgsTFArray, error) {
	return ros.PollValue(o, 4708, DecodeRos1Kuavo_msgsTFArray)
}

// @brief Publish one complete kuavo_msgs/TaskPoint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTaskPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsTaskPoint(o *ros.Owner, v Ros1Kuavo_msgsTaskPoint) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/TaskPoint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTaskPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsTaskPoint(o *ros.Owner) (Ros1Kuavo_msgsTaskPoint, error) {
	return ros.PollValue(o, 316, DecodeRos1Kuavo_msgsTaskPoint)
}

// @brief Call the selected kuavo_msgs/TaskPointOperation service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsTaskPointOperationRequest, response=Ros1Kuavo_msgsTaskPointOperationResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsTaskPointOperation(o *ros.Owner, q Ros1Kuavo_msgsTaskPointOperationRequest) (Ros1Kuavo_msgsTaskPointOperationResponse, error) {
	return ros.CallValue(o, q, 2793, DecodeRos1Kuavo_msgsTaskPointOperationResponse)
}

// @brief Call the selected kuavo_msgs/TransportModeCommand service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsTransportModeCommandRequest, response=Ros1Kuavo_msgsTransportModeCommandResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsTransportModeCommand(o *ros.Owner, q Ros1Kuavo_msgsTransportModeCommandRequest) (Ros1Kuavo_msgsTransportModeCommandResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsTransportModeCommandResponse)
}

// @brief Publish one complete kuavo_msgs/VMPTrajectoryState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsVMPTrajectoryState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsVMPTrajectoryState(o *ros.Owner, v Ros1Kuavo_msgsVMPTrajectoryState) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/VMPTrajectoryState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsVMPTrajectoryState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsVMPTrajectoryState(o *ros.Owner) (Ros1Kuavo_msgsVMPTrajectoryState, error) {
	return ros.PollValue(o, 549, DecodeRos1Kuavo_msgsVMPTrajectoryState)
}

// @brief Call the selected kuavo_msgs/accessIkSolve service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsAccessIkSolveRequest, response=Ros1Kuavo_msgsAccessIkSolveResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsAccessIkSolve(o *ros.Owner, q Ros1Kuavo_msgsAccessIkSolveRequest) (Ros1Kuavo_msgsAccessIkSolveResponse, error) {
	return ros.CallValue(o, q, 298, DecodeRos1Kuavo_msgsAccessIkSolveResponse)
}

// @brief Call the selected kuavo_msgs/adjustZeroPoint service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsAdjustZeroPointRequest, response=Ros1Kuavo_msgsAdjustZeroPointResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsAdjustZeroPoint(o *ros.Owner, q Ros1Kuavo_msgsAdjustZeroPointRequest) (Ros1Kuavo_msgsAdjustZeroPointResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsAdjustZeroPointResponse)
}

// @brief Publish one complete kuavo_msgs/armCollisionCheckInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsArmCollisionCheckInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsArmCollisionCheckInfo(o *ros.Owner, v Ros1Kuavo_msgsArmCollisionCheckInfo) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/armCollisionCheckInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsArmCollisionCheckInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsArmCollisionCheckInfo(o *ros.Owner) (Ros1Kuavo_msgsArmCollisionCheckInfo, error) {
	return ros.PollValue(o, 520, DecodeRos1Kuavo_msgsArmCollisionCheckInfo)
}

// @brief Publish one complete kuavo_msgs/armHandPose message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsArmHandPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsArmHandPose(o *ros.Owner, v Ros1Kuavo_msgsArmHandPose) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/armHandPose message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsArmHandPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsArmHandPose(o *ros.Owner) (Ros1Kuavo_msgsArmHandPose, error) {
	return ros.PollValue(o, 136, DecodeRos1Kuavo_msgsArmHandPose)
}

// @brief Publish one complete kuavo_msgs/armHandPoseFree message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsArmHandPoseFree.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsArmHandPoseFree(o *ros.Owner, v Ros1Kuavo_msgsArmHandPoseFree) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/armHandPoseFree message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsArmHandPoseFree.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsArmHandPoseFree(o *ros.Owner) (Ros1Kuavo_msgsArmHandPoseFree, error) {
	return ros.PollValue(o, 212, DecodeRos1Kuavo_msgsArmHandPoseFree)
}

// @brief Publish one complete kuavo_msgs/armPoseWithTimeStamp message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsArmPoseWithTimeStamp.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsArmPoseWithTimeStamp(o *ros.Owner, v Ros1Kuavo_msgsArmPoseWithTimeStamp) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/armPoseWithTimeStamp message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsArmPoseWithTimeStamp.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsArmPoseWithTimeStamp(o *ros.Owner) (Ros1Kuavo_msgsArmPoseWithTimeStamp, error) {
	return ros.PollValue(o, 268, DecodeRos1Kuavo_msgsArmPoseWithTimeStamp)
}

// @brief Publish one complete kuavo_msgs/armTargetPoses message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsArmTargetPoses.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsArmTargetPoses(o *ros.Owner, v Ros1Kuavo_msgsArmTargetPoses) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/armTargetPoses message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsArmTargetPoses.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsArmTargetPoses(o *ros.Owner) (Ros1Kuavo_msgsArmTargetPoses, error) {
	return ros.PollValue(o, 268, DecodeRos1Kuavo_msgsArmTargetPoses)
}

// @brief Publish one complete kuavo_msgs/bezierCurveCubicPoint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsBezierCurveCubicPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsBezierCurveCubicPoint(o *ros.Owner, v Ros1Kuavo_msgsBezierCurveCubicPoint) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/bezierCurveCubicPoint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsBezierCurveCubicPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsBezierCurveCubicPoint(o *ros.Owner) (Ros1Kuavo_msgsBezierCurveCubicPoint, error) {
	return ros.PollValue(o, 396, DecodeRos1Kuavo_msgsBezierCurveCubicPoint)
}

// @brief Call the selected kuavo_msgs/changeArmCtrlMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsChangeArmCtrlModeRequest, response=Ros1Kuavo_msgsChangeArmCtrlModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsChangeArmCtrlMode(o *ros.Owner, q Ros1Kuavo_msgsChangeArmCtrlModeRequest) (Ros1Kuavo_msgsChangeArmCtrlModeResponse, error) {
	return ros.CallValue(o, q, 265, DecodeRos1Kuavo_msgsChangeArmCtrlModeResponse)
}

// @brief Call the selected kuavo_msgs/changeArmCtrlModeKuavo service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest, response=Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsChangeArmCtrlModeKuavo(o *ros.Owner, q Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest) (Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Kuavo_msgsChangeArmCtrlModeKuavoResponse)
}

// @brief Call the selected kuavo_msgs/changeLbMpcObsUpdateModeSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest,
// response=Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrv(o *ros.Owner, q Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest) (Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse)
}

// @brief Call the selected kuavo_msgs/changeLbQuickModeSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsChangeLbQuickModeSrvRequest, response=Ros1Kuavo_msgsChangeLbQuickModeSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsChangeLbQuickModeSrv(o *ros.Owner, q Ros1Kuavo_msgsChangeLbQuickModeSrvRequest) (Ros1Kuavo_msgsChangeLbQuickModeSrvResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsChangeLbQuickModeSrvResponse)
}

// @brief Call the selected kuavo_msgs/changeMotorParam service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsChangeMotorParamRequest, response=Ros1Kuavo_msgsChangeMotorParamResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsChangeMotorParam(o *ros.Owner, q Ros1Kuavo_msgsChangeMotorParamRequest) (Ros1Kuavo_msgsChangeMotorParamResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsChangeMotorParamResponse)
}

// @brief Call the selected kuavo_msgs/changeTorsoCtrlMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsChangeTorsoCtrlModeRequest, response=Ros1Kuavo_msgsChangeTorsoCtrlModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsChangeTorsoCtrlMode(o *ros.Owner, q Ros1Kuavo_msgsChangeTorsoCtrlModeRequest) (Ros1Kuavo_msgsChangeTorsoCtrlModeResponse, error) {
	return ros.CallValue(o, q, 265, DecodeRos1Kuavo_msgsChangeTorsoCtrlModeResponse)
}

// @brief Call the selected kuavo_msgs/changeWaistCtrlMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsChangeWaistCtrlModeRequest, response=Ros1Kuavo_msgsChangeWaistCtrlModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsChangeWaistCtrlMode(o *ros.Owner, q Ros1Kuavo_msgsChangeWaistCtrlModeRequest) (Ros1Kuavo_msgsChangeWaistCtrlModeResponse, error) {
	return ros.CallValue(o, q, 265, DecodeRos1Kuavo_msgsChangeWaistCtrlModeResponse)
}

// @brief Call the selected kuavo_msgs/chassisPoseCmdSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsChassisPoseCmdSrvRequest, response=Ros1Kuavo_msgsChassisPoseCmdSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsChassisPoseCmdSrv(o *ros.Owner, q Ros1Kuavo_msgsChassisPoseCmdSrvRequest) (Ros1Kuavo_msgsChassisPoseCmdSrvResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Kuavo_msgsChassisPoseCmdSrvResponse)
}

// @brief Call the selected kuavo_msgs/controlLejuClaw service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsControlLejuClawRequest, response=Ros1Kuavo_msgsControlLejuClawResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsControlLejuClaw(o *ros.Owner, q Ros1Kuavo_msgsControlLejuClawRequest) (Ros1Kuavo_msgsControlLejuClawResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsControlLejuClawResponse)
}

// @brief Publish one complete kuavo_msgs/dexhandCommand message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsDexhandCommand.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsDexhandCommand(o *ros.Owner, v Ros1Kuavo_msgsDexhandCommand) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/dexhandCommand message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsDexhandCommand.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsDexhandCommand(o *ros.Owner) (Ros1Kuavo_msgsDexhandCommand, error) {
	return ros.PollValue(o, 309, DecodeRos1Kuavo_msgsDexhandCommand)
}

// @brief Publish one complete kuavo_msgs/dexhandTouchState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsDexhandTouchState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsDexhandTouchState(o *ros.Owner, v Ros1Kuavo_msgsDexhandTouchState) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/dexhandTouchState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsDexhandTouchState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsDexhandTouchState(o *ros.Owner) (Ros1Kuavo_msgsDexhandTouchState, error) {
	return ros.PollValue(o, 592, DecodeRos1Kuavo_msgsDexhandTouchState)
}

// @brief Call the selected kuavo_msgs/eePoseReachError service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsEePoseReachErrorRequest, response=Ros1Kuavo_msgsEePoseReachErrorResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsEePoseReachError(o *ros.Owner, q Ros1Kuavo_msgsEePoseReachErrorRequest) (Ros1Kuavo_msgsEePoseReachErrorResponse, error) {
	return ros.CallValue(o, q, 133, DecodeRos1Kuavo_msgsEePoseReachErrorResponse)
}

// @brief Call the selected kuavo_msgs/enableHandTouchSensor service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsEnableHandTouchSensorRequest, response=Ros1Kuavo_msgsEnableHandTouchSensorResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsEnableHandTouchSensor(o *ros.Owner, q Ros1Kuavo_msgsEnableHandTouchSensorRequest) (Ros1Kuavo_msgsEnableHandTouchSensorResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsEnableHandTouchSensorResponse)
}

// @brief Publish one complete kuavo_msgs/endEffectorData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsEndEffectorData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsEndEffectorData(o *ros.Owner, v Ros1Kuavo_msgsEndEffectorData) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/endEffectorData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsEndEffectorData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsEndEffectorData(o *ros.Owner) (Ros1Kuavo_msgsEndEffectorData, error) {
	return ros.PollValue(o, 4560, DecodeRos1Kuavo_msgsEndEffectorData)
}

// @brief Call the selected kuavo_msgs/fkSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsFkSrvRequest, response=Ros1Kuavo_msgsFkSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsFkSrv(o *ros.Owner, q Ros1Kuavo_msgsFkSrvRequest) (Ros1Kuavo_msgsFkSrvResponse, error) {
	return ros.CallValue(o, q, 545, DecodeRos1Kuavo_msgsFkSrvResponse)
}

// @brief Call the selected kuavo_msgs/fkSrvWithReferFrame service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsFkSrvWithReferFrameRequest, response=Ros1Kuavo_msgsFkSrvWithReferFrameResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsFkSrvWithReferFrame(o *ros.Owner, q Ros1Kuavo_msgsFkSrvWithReferFrameRequest) (Ros1Kuavo_msgsFkSrvWithReferFrameResponse, error) {
	return ros.CallValue(o, q, 805, DecodeRos1Kuavo_msgsFkSrvWithReferFrameResponse)
}

// @brief Publish one complete kuavo_msgs/footPose message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsFootPose(o *ros.Owner, v Ros1Kuavo_msgsFootPose) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/footPose message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsFootPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsFootPose(o *ros.Owner) (Ros1Kuavo_msgsFootPose, error) {
	return ros.PollValue(o, 64, DecodeRos1Kuavo_msgsFootPose)
}

// @brief Publish one complete kuavo_msgs/footPose6D message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPose6D.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsFootPose6D(o *ros.Owner, v Ros1Kuavo_msgsFootPose6D) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/footPose6D message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsFootPose6D.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsFootPose6D(o *ros.Owner) (Ros1Kuavo_msgsFootPose6D, error) {
	return ros.PollValue(o, 96, DecodeRos1Kuavo_msgsFootPose6D)
}

// @brief Publish one complete kuavo_msgs/footPose6DTargetTrajectories message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_msgsFootPose6DTargetTrajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsFootPose6DTargetTrajectories(o *ros.Owner, v Ros1Kuavo_msgsFootPose6DTargetTrajectories) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/footPose6DTargetTrajectories message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_msgsFootPose6DTargetTrajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsFootPose6DTargetTrajectories(o *ros.Owner) (Ros1Kuavo_msgsFootPose6DTargetTrajectories, error) {
	return ros.PollValue(o, 7292, DecodeRos1Kuavo_msgsFootPose6DTargetTrajectories)
}

// @brief Call the selected kuavo_msgs/footPose6DTargetTrajectoriesSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest,
// response=Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrv(o *ros.Owner, q Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest) (Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse)
}

// @brief Publish one complete kuavo_msgs/footPoseTargetTrajectories message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_msgsFootPoseTargetTrajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsFootPoseTargetTrajectories(o *ros.Owner, v Ros1Kuavo_msgsFootPoseTargetTrajectories) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/footPoseTargetTrajectories message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_msgsFootPoseTargetTrajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsFootPoseTargetTrajectories(o *ros.Owner) (Ros1Kuavo_msgsFootPoseTargetTrajectories, error) {
	return ros.PollValue(o, 4980, DecodeRos1Kuavo_msgsFootPoseTargetTrajectories)
}

// @brief Call the selected kuavo_msgs/footPoseTargetTrajectoriesSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest,
// response=Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsFootPoseTargetTrajectoriesSrv(o *ros.Owner, q Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest) (Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse)
}

// @brief Publish one complete kuavo_msgs/footPoseWithVision message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPoseWithVision.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsFootPoseWithVision(o *ros.Owner, v Ros1Kuavo_msgsFootPoseWithVision) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/footPoseWithVision message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsFootPoseWithVision.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsFootPoseWithVision(o *ros.Owner) (Ros1Kuavo_msgsFootPoseWithVision, error) {
	return ros.PollValue(o, 40, DecodeRos1Kuavo_msgsFootPoseWithVision)
}

// @brief Publish one complete kuavo_msgs/footPoseWithVisionArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_msgsFootPoseWithVisionArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsFootPoseWithVisionArray(o *ros.Owner, v Ros1Kuavo_msgsFootPoseWithVisionArray) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/footPoseWithVisionArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_msgsFootPoseWithVisionArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsFootPoseWithVisionArray(o *ros.Owner) (Ros1Kuavo_msgsFootPoseWithVisionArray, error) {
	return ros.PollValue(o, 596, DecodeRos1Kuavo_msgsFootPoseWithVisionArray)
}

// @brief Publish one complete kuavo_msgs/footPoses message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPoses.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsFootPoses(o *ros.Owner, v Ros1Kuavo_msgsFootPoses) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/footPoses message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsFootPoses.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsFootPoses(o *ros.Owner) (Ros1Kuavo_msgsFootPoses, error) {
	return ros.PollValue(o, 516, DecodeRos1Kuavo_msgsFootPoses)
}

// @brief Publish one complete kuavo_msgs/footPoses6D message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPoses6D.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsFootPoses6D(o *ros.Owner, v Ros1Kuavo_msgsFootPoses6D) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/footPoses6D message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsFootPoses6D.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsFootPoses6D(o *ros.Owner) (Ros1Kuavo_msgsFootPoses6D, error) {
	return ros.PollValue(o, 772, DecodeRos1Kuavo_msgsFootPoses6D)
}

// @brief Publish one complete kuavo_msgs/fullBodyTargetTrajectories message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_msgsFullBodyTargetTrajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsFullBodyTargetTrajectories(o *ros.Owner, v Ros1Kuavo_msgsFullBodyTargetTrajectories) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/fullBodyTargetTrajectories message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_msgsFullBodyTargetTrajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsFullBodyTargetTrajectories(o *ros.Owner) (Ros1Kuavo_msgsFullBodyTargetTrajectories, error) {
	return ros.PollValue(o, 2320, DecodeRos1Kuavo_msgsFullBodyTargetTrajectories)
}

// @brief Publish one complete kuavo_msgs/gaitTimeName message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsGaitTimeName.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsGaitTimeName(o *ros.Owner, v Ros1Kuavo_msgsGaitTimeName) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/gaitTimeName message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsGaitTimeName.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsGaitTimeName(o *ros.Owner) (Ros1Kuavo_msgsGaitTimeName, error) {
	return ros.PollValue(o, 264, DecodeRos1Kuavo_msgsGaitTimeName)
}

// @brief Call the selected kuavo_msgs/gestureExecute service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGestureExecuteRequest, response=Ros1Kuavo_msgsGestureExecuteResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsGestureExecute(o *ros.Owner, q Ros1Kuavo_msgsGestureExecuteRequest) (Ros1Kuavo_msgsGestureExecuteResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsGestureExecuteResponse)
}

// @brief Call the selected kuavo_msgs/gestureExecuteState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGestureExecuteStateRequest, response=Ros1Kuavo_msgsGestureExecuteStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsGestureExecuteState(o *ros.Owner, q Ros1Kuavo_msgsGestureExecuteStateRequest) (Ros1Kuavo_msgsGestureExecuteStateResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsGestureExecuteStateResponse)
}

// @brief Publish one complete kuavo_msgs/gestureInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsGestureInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsGestureInfo(o *ros.Owner, v Ros1Kuavo_msgsGestureInfo) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/gestureInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsGestureInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsGestureInfo(o *ros.Owner) (Ros1Kuavo_msgsGestureInfo, error) {
	return ros.PollValue(o, 1612, DecodeRos1Kuavo_msgsGestureInfo)
}

// @brief Call the selected kuavo_msgs/gestureList service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGestureListRequest, response=Ros1Kuavo_msgsGestureListResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsGestureList(o *ros.Owner, q Ros1Kuavo_msgsGestureListRequest) (Ros1Kuavo_msgsGestureListResponse, error) {
	return ros.CallValue(o, q, 13165, DecodeRos1Kuavo_msgsGestureListResponse)
}

// @brief Publish one complete kuavo_msgs/gestureTask message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsGestureTask.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsGestureTask(o *ros.Owner, v Ros1Kuavo_msgsGestureTask) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/gestureTask message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsGestureTask.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsGestureTask(o *ros.Owner) (Ros1Kuavo_msgsGestureTask, error) {
	return ros.PollValue(o, 261, DecodeRos1Kuavo_msgsGestureTask)
}

// @brief Call the selected kuavo_msgs/getControllerList service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetControllerListRequest, response=Ros1Kuavo_msgsGetControllerListResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsGetControllerList(o *ros.Owner, q Ros1Kuavo_msgsGetControllerListRequest) (Ros1Kuavo_msgsGetControllerListResponse, error) {
	return ros.CallValue(o, q, 4693, DecodeRos1Kuavo_msgsGetControllerListResponse)
}

// @brief Call the selected kuavo_msgs/getCurrentGaitName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetCurrentGaitNameRequest, response=Ros1Kuavo_msgsGetCurrentGaitNameResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsGetCurrentGaitName(o *ros.Owner, q Ros1Kuavo_msgsGetCurrentGaitNameRequest) (Ros1Kuavo_msgsGetCurrentGaitNameResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsGetCurrentGaitNameResponse)
}

// @brief Call the selected kuavo_msgs/getLbTorsoInitialPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest, response=Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsGetLbTorsoInitialPose(o *ros.Owner, q Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest) (Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse, error) {
	return ros.CallValue(o, q, 309, DecodeRos1Kuavo_msgsGetLbTorsoInitialPoseResponse)
}

// @brief Call the selected kuavo_msgs/getMotorParam service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetMotorParamRequest, response=Ros1Kuavo_msgsGetMotorParamResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsGetMotorParam(o *ros.Owner, q Ros1Kuavo_msgsGetMotorParamRequest) (Ros1Kuavo_msgsGetMotorParamResponse, error) {
	return ros.CallValue(o, q, 345, DecodeRos1Kuavo_msgsGetMotorParamResponse)
}

// @brief Call the selected kuavo_msgs/getMotorZeroPoints service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGetMotorZeroPointsRequest, response=Ros1Kuavo_msgsGetMotorZeroPointsResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsGetMotorZeroPoints(o *ros.Owner, q Ros1Kuavo_msgsGetMotorZeroPointsRequest) (Ros1Kuavo_msgsGetMotorZeroPointsResponse, error) {
	return ros.CallValue(o, q, 393, DecodeRos1Kuavo_msgsGetMotorZeroPointsResponse)
}

// @brief Call the selected kuavo_msgs/goToZeroPoint service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsGoToZeroPointRequest, response=Ros1Kuavo_msgsGoToZeroPointResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsGoToZeroPoint(o *ros.Owner, q Ros1Kuavo_msgsGoToZeroPointRequest) (Ros1Kuavo_msgsGoToZeroPointResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsGoToZeroPointResponse)
}

// @brief Call the selected kuavo_msgs/handForceLevel service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsHandForceLevelRequest, response=Ros1Kuavo_msgsHandForceLevelResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsHandForceLevel(o *ros.Owner, q Ros1Kuavo_msgsHandForceLevelRequest) (Ros1Kuavo_msgsHandForceLevelResponse, error) {
	return ros.CallValue(o, q, 281, DecodeRos1Kuavo_msgsHandForceLevelResponse)
}

// @brief Publish one complete kuavo_msgs/handPose message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsHandPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsHandPose(o *ros.Owner, v Ros1Kuavo_msgsHandPose) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/handPose message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsHandPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsHandPose(o *ros.Owner) (Ros1Kuavo_msgsHandPose, error) {
	return ros.PollValue(o, 48, DecodeRos1Kuavo_msgsHandPose)
}

// @brief Publish one complete kuavo_msgs/headBodyPose message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsHeadBodyPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsHeadBodyPose(o *ros.Owner, v Ros1Kuavo_msgsHeadBodyPose) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/headBodyPose message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsHeadBodyPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsHeadBodyPose(o *ros.Owner) (Ros1Kuavo_msgsHeadBodyPose, error) {
	return ros.PollValue(o, 64, DecodeRos1Kuavo_msgsHeadBodyPose)
}

// @brief Publish one complete kuavo_msgs/headCtrlMode message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsHeadCtrlMode.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsHeadCtrlMode(o *ros.Owner, v Ros1Kuavo_msgsHeadCtrlMode) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/headCtrlMode message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsHeadCtrlMode.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsHeadCtrlMode(o *ros.Owner) (Ros1Kuavo_msgsHeadCtrlMode, error) {
	return ros.PollValue(o, 520, DecodeRos1Kuavo_msgsHeadCtrlMode)
}

// @brief Publish one complete kuavo_msgs/ikSolveError message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsIkSolveError.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsIkSolveError(o *ros.Owner, v Ros1Kuavo_msgsIkSolveError) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/ikSolveError message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsIkSolveError.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsIkSolveError(o *ros.Owner) (Ros1Kuavo_msgsIkSolveError, error) {
	return ros.PollValue(o, 356, DecodeRos1Kuavo_msgsIkSolveError)
}

// @brief Publish one complete kuavo_msgs/ikSolveParam message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsIkSolveParam.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsIkSolveParam(o *ros.Owner, v Ros1Kuavo_msgsIkSolveParam) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/ikSolveParam message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsIkSolveParam.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsIkSolveParam(o *ros.Owner) (Ros1Kuavo_msgsIkSolveParam, error) {
	return ros.PollValue(o, 65, DecodeRos1Kuavo_msgsIkSolveParam)
}

// @brief Publish one complete kuavo_msgs/imuData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsImuData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsImuData(o *ros.Owner, v Ros1Kuavo_msgsImuData) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/imuData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsImuData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsImuData(o *ros.Owner) (Ros1Kuavo_msgsImuData, error) {
	return ros.PollValue(o, 104, DecodeRos1Kuavo_msgsImuData)
}

// @brief Publish one complete kuavo_msgs/jointBezierTrajectory message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsJointBezierTrajectory.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsJointBezierTrajectory(o *ros.Owner, v Ros1Kuavo_msgsJointBezierTrajectory) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/jointBezierTrajectory message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsJointBezierTrajectory.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsJointBezierTrajectory(o *ros.Owner) (Ros1Kuavo_msgsJointBezierTrajectory, error) {
	return ros.PollValue(o, 3172, DecodeRos1Kuavo_msgsJointBezierTrajectory)
}

// @brief Publish one complete kuavo_msgs/jointCmd message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsJointCmd.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsJointCmd(o *ros.Owner, v Ros1Kuavo_msgsJointCmd) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/jointCmd message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsJointCmd.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsJointCmd(o *ros.Owner) (Ros1Kuavo_msgsJointCmd, error) {
	return ros.PollValue(o, 7984, DecodeRos1Kuavo_msgsJointCmd)
}

// @brief Publish one complete kuavo_msgs/jointData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsJointData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsJointData(o *ros.Owner, v Ros1Kuavo_msgsJointData) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/jointData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsJointData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsJointData(o *ros.Owner) (Ros1Kuavo_msgsJointData, error) {
	return ros.PollValue(o, 4112, DecodeRos1Kuavo_msgsJointData)
}

// @brief Call the selected kuavo_msgs/jointMoveTo service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsJointMoveToRequest, response=Ros1Kuavo_msgsJointMoveToResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsJointMoveTo(o *ros.Owner, q Ros1Kuavo_msgsJointMoveToRequest) (Ros1Kuavo_msgsJointMoveToResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsJointMoveToResponse)
}

// @brief Publish one complete kuavo_msgs/kuavoModeSchedule message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsKuavoModeSchedule.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsKuavoModeSchedule(o *ros.Owner, v Ros1Kuavo_msgsKuavoModeSchedule) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/kuavoModeSchedule message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsKuavoModeSchedule.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsKuavoModeSchedule(o *ros.Owner) (Ros1Kuavo_msgsKuavoModeSchedule, error) {
	return ros.PollValue(o, 1044, DecodeRos1Kuavo_msgsKuavoModeSchedule)
}

// @brief Call the selected kuavo_msgs/lbBaseLinkPoseCmdSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest, response=Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsLbBaseLinkPoseCmdSrv(o *ros.Owner, q Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest) (Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse, error) {
	return ros.CallValue(o, q, 41, DecodeRos1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse)
}

// @brief Call the selected kuavo_msgs/lbLegControlSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsLbLegControlSrvRequest, response=Ros1Kuavo_msgsLbLegControlSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsLbLegControlSrv(o *ros.Owner, q Ros1Kuavo_msgsLbLegControlSrvRequest) (Ros1Kuavo_msgsLbLegControlSrvResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Kuavo_msgsLbLegControlSrvResponse)
}

// @brief Call the selected kuavo_msgs/lbMultiTimedOfflineTraj service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest, response=Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsLbMultiTimedOfflineTraj(o *ros.Owner, q Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest) (Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsLbMultiTimedOfflineTrajResponse)
}

// @brief Call the selected kuavo_msgs/lbMultiTimedPosCmd service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsLbMultiTimedPosCmdRequest, response=Ros1Kuavo_msgsLbMultiTimedPosCmdResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsLbMultiTimedPosCmd(o *ros.Owner, q Ros1Kuavo_msgsLbMultiTimedPosCmdRequest) (Ros1Kuavo_msgsLbMultiTimedPosCmdResponse, error) {
	return ros.CallValue(o, q, 265, DecodeRos1Kuavo_msgsLbMultiTimedPosCmdResponse)
}

// @brief Publish one complete kuavo_msgs/lbTimedOfflineTraj message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsLbTimedOfflineTraj.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsLbTimedOfflineTraj(o *ros.Owner, v Ros1Kuavo_msgsLbTimedOfflineTraj) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/lbTimedOfflineTraj message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsLbTimedOfflineTraj.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsLbTimedOfflineTraj(o *ros.Owner) (Ros1Kuavo_msgsLbTimedOfflineTraj, error) {
	return ros.PollValue(o, 1094, DecodeRos1Kuavo_msgsLbTimedOfflineTraj)
}

// @brief Call the selected kuavo_msgs/lbTimedPosCmd service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsLbTimedPosCmdRequest, response=Ros1Kuavo_msgsLbTimedPosCmdResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsLbTimedPosCmd(o *ros.Owner, q Ros1Kuavo_msgsLbTimedPosCmdRequest) (Ros1Kuavo_msgsLbTimedPosCmdResponse, error) {
	return ros.CallValue(o, q, 265, DecodeRos1Kuavo_msgsLbTimedPosCmdResponse)
}

// @brief Publish one complete kuavo_msgs/lejuClawCommand message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsLejuClawCommand.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsLejuClawCommand(o *ros.Owner, v Ros1Kuavo_msgsLejuClawCommand) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/lejuClawCommand message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsLejuClawCommand.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsLejuClawCommand(o *ros.Owner) (Ros1Kuavo_msgsLejuClawCommand, error) {
	return ros.PollValue(o, 4832, DecodeRos1Kuavo_msgsLejuClawCommand)
}

// @brief Call the selected kuavo_msgs/lejuClawRecovery service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsLejuClawRecoveryRequest, response=Ros1Kuavo_msgsLejuClawRecoveryResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsLejuClawRecovery(o *ros.Owner, q Ros1Kuavo_msgsLejuClawRecoveryRequest) (Ros1Kuavo_msgsLejuClawRecoveryResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsLejuClawRecoveryResponse)
}

// @brief Publish one complete kuavo_msgs/lejuClawState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsLejuClawState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsLejuClawState(o *ros.Owner, v Ros1Kuavo_msgsLejuClawState) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/lejuClawState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsLejuClawState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsLejuClawState(o *ros.Owner) (Ros1Kuavo_msgsLejuClawState, error) {
	return ros.PollValue(o, 4853, DecodeRos1Kuavo_msgsLejuClawState)
}

// @brief Publish one complete kuavo_msgs/lejuClawTarget message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsLejuClawTarget.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsLejuClawTarget(o *ros.Owner, v Ros1Kuavo_msgsLejuClawTarget) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/lejuClawTarget message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsLejuClawTarget.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsLejuClawTarget(o *ros.Owner) (Ros1Kuavo_msgsLejuClawTarget, error) {
	return ros.PollValue(o, 4969, DecodeRos1Kuavo_msgsLejuClawTarget)
}

// @brief Publish one complete kuavo_msgs/motorParam message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMotorParam.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsMotorParam(o *ros.Owner, v Ros1Kuavo_msgsMotorParam) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/motorParam message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsMotorParam.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsMotorParam(o *ros.Owner) (Ros1Kuavo_msgsMotorParam, error) {
	return ros.PollValue(o, 10, DecodeRos1Kuavo_msgsMotorParam)
}

// @brief Publish one complete kuavo_msgs/mpc_input message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMpc_input.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsMpc_input(o *ros.Owner, v Ros1Kuavo_msgsMpc_input) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/mpc_input message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsMpc_input.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsMpc_input(o *ros.Owner) (Ros1Kuavo_msgsMpc_input, error) {
	return ros.PollValue(o, 516, DecodeRos1Kuavo_msgsMpc_input)
}

// @brief Publish one complete kuavo_msgs/mpc_state message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMpc_state.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsMpc_state(o *ros.Owner, v Ros1Kuavo_msgsMpc_state) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/mpc_state message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsMpc_state.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsMpc_state(o *ros.Owner) (Ros1Kuavo_msgsMpc_state, error) {
	return ros.PollValue(o, 516, DecodeRos1Kuavo_msgsMpc_state)
}

// @brief Publish one complete kuavo_msgs/mpc_target_trajectories message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_msgsMpc_target_trajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsMpc_target_trajectories(o *ros.Owner, v Ros1Kuavo_msgsMpc_target_trajectories) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/mpc_target_trajectories message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_msgsMpc_target_trajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsMpc_target_trajectories(o *ros.Owner) (Ros1Kuavo_msgsMpc_target_trajectories, error) {
	return ros.PollValue(o, 8396, DecodeRos1Kuavo_msgsMpc_target_trajectories)
}

// @brief Publish one complete kuavo_msgs/picoPoseInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPicoPoseInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsPicoPoseInfo(o *ros.Owner, v Ros1Kuavo_msgsPicoPoseInfo) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/picoPoseInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsPicoPoseInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsPicoPoseInfo(o *ros.Owner) (Ros1Kuavo_msgsPicoPoseInfo, error) {
	return ros.PollValue(o, 56, DecodeRos1Kuavo_msgsPicoPoseInfo)
}

// @brief Publish one complete kuavo_msgs/picoPoseInfoList message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPicoPoseInfoList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsPicoPoseInfoList(o *ros.Owner, v Ros1Kuavo_msgsPicoPoseInfoList) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/picoPoseInfoList message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsPicoPoseInfoList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsPicoPoseInfoList(o *ros.Owner) (Ros1Kuavo_msgsPicoPoseInfoList, error) {
	return ros.PollValue(o, 462, DecodeRos1Kuavo_msgsPicoPoseInfoList)
}

// @brief Publish one complete kuavo_msgs/picoPoseRetarget message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPicoPoseRetarget.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsPicoPoseRetarget(o *ros.Owner, v Ros1Kuavo_msgsPicoPoseRetarget) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/picoPoseRetarget message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsPicoPoseRetarget.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsPicoPoseRetarget(o *ros.Owner) (Ros1Kuavo_msgsPicoPoseRetarget, error) {
	return ros.PollValue(o, 904, DecodeRos1Kuavo_msgsPicoPoseRetarget)
}

// @brief Publish one complete kuavo_msgs/planArmState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPlanArmState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsPlanArmState(o *ros.Owner, v Ros1Kuavo_msgsPlanArmState) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/planArmState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsPlanArmState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsPlanArmState(o *ros.Owner) (Ros1Kuavo_msgsPlanArmState, error) {
	return ros.PollValue(o, 5, DecodeRos1Kuavo_msgsPlanArmState)
}

// @brief Call the selected kuavo_msgs/planArmTrajectoryBezierCurve service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest,
// response=Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsPlanArmTrajectoryBezierCurve(o *ros.Owner, q Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest) (Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse)
}

// @brief Call the selected kuavo_msgs/planArmTrajectoryCubicSpline service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest,
// response=Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsPlanArmTrajectoryCubicSpline(o *ros.Owner, q Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest) (Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse)
}

// @brief Call the selected kuavo_msgs/playmusic service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsPlaymusicRequest, response=Ros1Kuavo_msgsPlaymusicResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsPlaymusic(o *ros.Owner, q Ros1Kuavo_msgsPlaymusicRequest) (Ros1Kuavo_msgsPlaymusicResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Kuavo_msgsPlaymusicResponse)
}

// @brief Publish one complete kuavo_msgs/qv message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsQv.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsQv(o *ros.Owner, v Ros1Kuavo_msgsQv) error { return ros.PublishValue(o, v) }

// @brief Poll and decode one complete kuavo_msgs/qv message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsQv.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsQv(o *ros.Owner) (Ros1Kuavo_msgsQv, error) {
	return ros.PollValue(o, 132, DecodeRos1Kuavo_msgsQv)
}

// @brief Publish one complete kuavo_msgs/recordArmHandPose message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRecordArmHandPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsRecordArmHandPose(o *ros.Owner, v Ros1Kuavo_msgsRecordArmHandPose) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/recordArmHandPose message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRecordArmHandPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsRecordArmHandPose(o *ros.Owner) (Ros1Kuavo_msgsRecordArmHandPose, error) {
	return ros.PollValue(o, 272, DecodeRos1Kuavo_msgsRecordArmHandPose)
}

// @brief Call the selected kuavo_msgs/recordmusic service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsRecordmusicRequest, response=Ros1Kuavo_msgsRecordmusicResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsRecordmusic(o *ros.Owner, q Ros1Kuavo_msgsRecordmusicRequest) (Ros1Kuavo_msgsRecordmusicResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Kuavo_msgsRecordmusicResponse)
}

// @brief Publish one complete kuavo_msgs/robotArmQVVD message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotArmQVVD.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsRobotArmQVVD(o *ros.Owner, v Ros1Kuavo_msgsRobotArmQVVD) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/robotArmQVVD message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRobotArmQVVD.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsRobotArmQVVD(o *ros.Owner) (Ros1Kuavo_msgsRobotArmQVVD, error) {
	return ros.PollValue(o, 396, DecodeRos1Kuavo_msgsRobotArmQVVD)
}

// @brief Publish one complete kuavo_msgs/robotBodyMatrices message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotBodyMatrices.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsRobotBodyMatrices(o *ros.Owner, v Ros1Kuavo_msgsRobotBodyMatrices) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/robotBodyMatrices message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRobotBodyMatrices.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsRobotBodyMatrices(o *ros.Owner) (Ros1Kuavo_msgsRobotBodyMatrices, error) {
	return ros.PollValue(o, 4840, DecodeRos1Kuavo_msgsRobotBodyMatrices)
}

// @brief Publish one complete kuavo_msgs/robotHandPosition message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotHandPosition.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsRobotHandPosition(o *ros.Owner, v Ros1Kuavo_msgsRobotHandPosition) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/robotHandPosition message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRobotHandPosition.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsRobotHandPosition(o *ros.Owner) (Ros1Kuavo_msgsRobotHandPosition, error) {
	return ros.PollValue(o, 792, DecodeRos1Kuavo_msgsRobotHandPosition)
}

// @brief Publish one complete kuavo_msgs/robotHeadMotionData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotHeadMotionData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsRobotHeadMotionData(o *ros.Owner, v Ros1Kuavo_msgsRobotHeadMotionData) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/robotHeadMotionData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRobotHeadMotionData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsRobotHeadMotionData(o *ros.Owner) (Ros1Kuavo_msgsRobotHeadMotionData, error) {
	return ros.PollValue(o, 132, DecodeRos1Kuavo_msgsRobotHeadMotionData)
}

// @brief Publish one complete kuavo_msgs/robotState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsRobotState(o *ros.Owner, v Ros1Kuavo_msgsRobotState) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/robotState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRobotState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsRobotState(o *ros.Owner) (Ros1Kuavo_msgsRobotState, error) {
	return ros.PollValue(o, 536, DecodeRos1Kuavo_msgsRobotState)
}

// @brief Call the selected kuavo_msgs/robotSwitchPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsRobotSwitchPoseRequest, response=Ros1Kuavo_msgsRobotSwitchPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsRobotSwitchPose(o *ros.Owner, q Ros1Kuavo_msgsRobotSwitchPoseRequest) (Ros1Kuavo_msgsRobotSwitchPoseResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsRobotSwitchPoseResponse)
}

// @brief Publish one complete kuavo_msgs/robotWaistControl message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotWaistControl.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsRobotWaistControl(o *ros.Owner, v Ros1Kuavo_msgsRobotWaistControl) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/robotWaistControl message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRobotWaistControl.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsRobotWaistControl(o *ros.Owner) (Ros1Kuavo_msgsRobotWaistControl, error) {
	return ros.PollValue(o, 1536, DecodeRos1Kuavo_msgsRobotWaistControl)
}

// @brief Publish one complete kuavo_msgs/sensorsData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsSensorsData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsSensorsData(o *ros.Owner, v Ros1Kuavo_msgsSensorsData) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/sensorsData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsSensorsData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsSensorsData(o *ros.Owner) (Ros1Kuavo_msgsSensorsData, error) {
	return ros.PollValue(o, 9848, DecodeRos1Kuavo_msgsSensorsData)
}

// @brief Call the selected kuavo_msgs/setContactForceInterpParams service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetContactForceInterpParamsRequest,
// response=Ros1Kuavo_msgsSetContactForceInterpParamsResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsSetContactForceInterpParams(o *ros.Owner, q Ros1Kuavo_msgsSetContactForceInterpParamsRequest) (Ros1Kuavo_msgsSetContactForceInterpParamsResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsSetContactForceInterpParamsResponse)
}

// @brief Call the selected kuavo_msgs/setHwIntialState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetHwIntialStateRequest, response=Ros1Kuavo_msgsSetHwIntialStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsSetHwIntialState(o *ros.Owner, q Ros1Kuavo_msgsSetHwIntialStateRequest) (Ros1Kuavo_msgsSetHwIntialStateResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsSetHwIntialStateResponse)
}

// @brief Call the selected kuavo_msgs/setMmCtrlFrame service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetMmCtrlFrameRequest, response=Ros1Kuavo_msgsSetMmCtrlFrameResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsSetMmCtrlFrame(o *ros.Owner, q Ros1Kuavo_msgsSetMmCtrlFrameRequest) (Ros1Kuavo_msgsSetMmCtrlFrameResponse, error) {
	return ros.CallValue(o, q, 265, DecodeRos1Kuavo_msgsSetMmCtrlFrameResponse)
}

// @brief Call the selected kuavo_msgs/setMotorEncoderRoundService service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest,
// response=Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsSetMotorEncoderRoundService(o *ros.Owner, q Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest) (Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsSetMotorEncoderRoundServiceResponse)
}

// @brief Call the selected kuavo_msgs/setRuckigPlannerParams service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetRuckigPlannerParamsRequest, response=Ros1Kuavo_msgsSetRuckigPlannerParamsResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsSetRuckigPlannerParams(o *ros.Owner, q Ros1Kuavo_msgsSetRuckigPlannerParamsRequest) (Ros1Kuavo_msgsSetRuckigPlannerParamsResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsSetRuckigPlannerParamsResponse)
}

// @brief Call the selected kuavo_msgs/setTagId service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSetTagIdRequest, response=Ros1Kuavo_msgsSetTagIdResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsSetTagId(o *ros.Owner, q Ros1Kuavo_msgsSetTagIdRequest) (Ros1Kuavo_msgsSetTagIdResponse, error) {
	return ros.CallValue(o, q, 265, DecodeRos1Kuavo_msgsSetTagIdResponse)
}

// @brief Call the selected kuavo_msgs/singleStepControl service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSingleStepControlRequest, response=Ros1Kuavo_msgsSingleStepControlResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsSingleStepControl(o *ros.Owner, q Ros1Kuavo_msgsSingleStepControlRequest) (Ros1Kuavo_msgsSingleStepControlResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsSingleStepControlResponse)
}

// @brief Call the selected kuavo_msgs/stairAlignmentSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsStairAlignmentSrvRequest, response=Ros1Kuavo_msgsStairAlignmentSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsStairAlignmentSrv(o *ros.Owner, q Ros1Kuavo_msgsStairAlignmentSrvRequest) (Ros1Kuavo_msgsStairAlignmentSrvResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsStairAlignmentSrvResponse)
}

// @brief Call the selected kuavo_msgs/switchController service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSwitchControllerRequest, response=Ros1Kuavo_msgsSwitchControllerResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsSwitchController(o *ros.Owner, q Ros1Kuavo_msgsSwitchControllerRequest) (Ros1Kuavo_msgsSwitchControllerResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Kuavo_msgsSwitchControllerResponse)
}

// @brief Publish one complete kuavo_msgs/switchGaitByName message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsSwitchGaitByName.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsSwitchGaitByName(o *ros.Owner, v Ros1Kuavo_msgsSwitchGaitByName) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/switchGaitByName message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsSwitchGaitByName.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsSwitchGaitByName(o *ros.Owner) (Ros1Kuavo_msgsSwitchGaitByName, error) {
	return ros.PollValue(o, 532, DecodeRos1Kuavo_msgsSwitchGaitByName)
}

// @brief Call the selected kuavo_msgs/switchToNextController service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsSwitchToNextControllerRequest, response=Ros1Kuavo_msgsSwitchToNextControllerResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsSwitchToNextController(o *ros.Owner, q Ros1Kuavo_msgsSwitchToNextControllerRequest) (Ros1Kuavo_msgsSwitchToNextControllerResponse, error) {
	return ros.CallValue(o, q, 789, DecodeRos1Kuavo_msgsSwitchToNextControllerResponse)
}

// @brief Publish one complete kuavo_msgs/tagDataArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTagDataArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsTagDataArray(o *ros.Owner, v Ros1Kuavo_msgsTagDataArray) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/tagDataArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTagDataArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsTagDataArray(o *ros.Owner) (Ros1Kuavo_msgsTagDataArray, error) {
	return ros.PollValue(o, 520, DecodeRos1Kuavo_msgsTagDataArray)
}

// @brief Publish one complete kuavo_msgs/timedPoint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTimedPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsTimedPoint(o *ros.Owner, v Ros1Kuavo_msgsTimedPoint) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/timedPoint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTimedPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsTimedPoint(o *ros.Owner) (Ros1Kuavo_msgsTimedPoint, error) {
	return ros.PollValue(o, 136, DecodeRos1Kuavo_msgsTimedPoint)
}

// @brief Publish one complete kuavo_msgs/timedSingleCmd message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTimedSingleCmd.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsTimedSingleCmd(o *ros.Owner, v Ros1Kuavo_msgsTimedSingleCmd) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/timedSingleCmd message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTimedSingleCmd.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsTimedSingleCmd(o *ros.Owner) (Ros1Kuavo_msgsTimedSingleCmd, error) {
	return ros.PollValue(o, 137, DecodeRos1Kuavo_msgsTimedSingleCmd)
}

// @brief Publish one complete kuavo_msgs/touchSensorStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTouchSensorStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsTouchSensorStatus(o *ros.Owner, v Ros1Kuavo_msgsTouchSensorStatus) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/touchSensorStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTouchSensorStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsTouchSensorStatus(o *ros.Owner) (Ros1Kuavo_msgsTouchSensorStatus, error) {
	return ros.PollValue(o, 32, DecodeRos1Kuavo_msgsTouchSensorStatus)
}

// @brief Publish one complete kuavo_msgs/twoArmHandPose message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTwoArmHandPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsTwoArmHandPose(o *ros.Owner, v Ros1Kuavo_msgsTwoArmHandPose) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/twoArmHandPose message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTwoArmHandPose.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsTwoArmHandPose(o *ros.Owner) (Ros1Kuavo_msgsTwoArmHandPose, error) {
	return ros.PollValue(o, 544, DecodeRos1Kuavo_msgsTwoArmHandPose)
}

// @brief Publish one complete kuavo_msgs/twoArmHandPoseCmd message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTwoArmHandPoseCmd.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsTwoArmHandPoseCmd(o *ros.Owner, v Ros1Kuavo_msgsTwoArmHandPoseCmd) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/twoArmHandPoseCmd message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTwoArmHandPoseCmd.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsTwoArmHandPoseCmd(o *ros.Owner) (Ros1Kuavo_msgsTwoArmHandPoseCmd, error) {
	return ros.PollValue(o, 615, DecodeRos1Kuavo_msgsTwoArmHandPoseCmd)
}

// @brief Publish one complete kuavo_msgs/twoArmHandPoseCmdFree message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTwoArmHandPoseCmdFree.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsTwoArmHandPoseCmdFree(o *ros.Owner, v Ros1Kuavo_msgsTwoArmHandPoseCmdFree) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/twoArmHandPoseCmdFree message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTwoArmHandPoseCmdFree.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsTwoArmHandPoseCmdFree(o *ros.Owner) (Ros1Kuavo_msgsTwoArmHandPoseCmdFree, error) {
	return ros.PollValue(o, 763, DecodeRos1Kuavo_msgsTwoArmHandPoseCmdFree)
}

// @brief Call the selected kuavo_msgs/twoArmHandPoseCmdFreeSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest, response=Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrv(o *ros.Owner, q Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest) (Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse, error) {
	return ros.CallValue(o, q, 970, DecodeRos1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse)
}

// @brief Call the selected kuavo_msgs/twoArmHandPoseCmdSrv service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest, response=Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_msgsTwoArmHandPoseCmdSrv(o *ros.Owner, q Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest) (Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse, error) {
	return ros.CallValue(o, q, 1078, DecodeRos1Kuavo_msgsTwoArmHandPoseCmdSrvResponse)
}

// @brief Publish one complete kuavo_msgs/twoArmHandPoseFree message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTwoArmHandPoseFree.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsTwoArmHandPoseFree(o *ros.Owner, v Ros1Kuavo_msgsTwoArmHandPoseFree) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/twoArmHandPoseFree message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTwoArmHandPoseFree.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsTwoArmHandPoseFree(o *ros.Owner) (Ros1Kuavo_msgsTwoArmHandPoseFree, error) {
	return ros.PollValue(o, 696, DecodeRos1Kuavo_msgsTwoArmHandPoseFree)
}

// @brief Publish one complete kuavo_msgs/xsensePoseInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsXsensePoseInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsXsensePoseInfo(o *ros.Owner, v Ros1Kuavo_msgsXsensePoseInfo) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/xsensePoseInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsXsensePoseInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsXsensePoseInfo(o *ros.Owner) (Ros1Kuavo_msgsXsensePoseInfo, error) {
	return ros.PollValue(o, 320, DecodeRos1Kuavo_msgsXsensePoseInfo)
}

// @brief Publish one complete kuavo_msgs/xsensePoseInfoList message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsXsensePoseInfoList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsXsensePoseInfoList(o *ros.Owner, v Ros1Kuavo_msgsXsensePoseInfoList) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/xsensePoseInfoList message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsXsensePoseInfoList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsXsensePoseInfoList(o *ros.Owner) (Ros1Kuavo_msgsXsensePoseInfoList, error) {
	return ros.PollValue(o, 2836, DecodeRos1Kuavo_msgsXsensePoseInfoList)
}

// @brief Publish one complete kuavo_msgs/xsensePoseRetarget message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsXsensePoseRetarget.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsXsensePoseRetarget(o *ros.Owner, v Ros1Kuavo_msgsXsensePoseRetarget) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/xsensePoseRetarget message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsXsensePoseRetarget.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsXsensePoseRetarget(o *ros.Owner) (Ros1Kuavo_msgsXsensePoseRetarget, error) {
	return ros.PollValue(o, 904, DecodeRos1Kuavo_msgsXsensePoseRetarget)
}

// @brief Publish one complete kuavo_msgs/yoloDetection message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsYoloDetection.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsYoloDetection(o *ros.Owner, v Ros1Kuavo_msgsYoloDetection) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/yoloDetection message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsYoloDetection.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsYoloDetection(o *ros.Owner) (Ros1Kuavo_msgsYoloDetection, error) {
	return ros.PollValue(o, 2580, DecodeRos1Kuavo_msgsYoloDetection)
}

// @brief Publish one complete kuavo_msgs/yoloOutputData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsYoloOutputData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_msgsYoloOutputData(o *ros.Owner, v Ros1Kuavo_msgsYoloOutputData) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_msgs/yoloOutputData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsYoloOutputData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_msgsYoloOutputData(o *ros.Owner) (Ros1Kuavo_msgsYoloOutputData, error) {
	return ros.PollValue(o, 288, DecodeRos1Kuavo_msgsYoloOutputData)
}

// @brief Call the selected kuavo_pico_gmr/AmpJoyRoute service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_pico_gmrAmpJoyRouteRequest, response=Ros1Kuavo_pico_gmrAmpJoyRouteResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_pico_gmrAmpJoyRoute(o *ros.Owner, q Ros1Kuavo_pico_gmrAmpJoyRouteRequest) (Ros1Kuavo_pico_gmrAmpJoyRouteResponse, error) {
	return ros.CallValue(o, q, 533, DecodeRos1Kuavo_pico_gmrAmpJoyRouteResponse)
}

// @brief Publish one complete kuavo_ros_interfaces/armTargetPoses message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_ros_interfacesArmTargetPoses.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_ros_interfacesArmTargetPoses(o *ros.Owner, v Ros1Kuavo_ros_interfacesArmTargetPoses) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_ros_interfaces/armTargetPoses message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_ros_interfacesArmTargetPoses.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_ros_interfacesArmTargetPoses(o *ros.Owner) (Ros1Kuavo_ros_interfacesArmTargetPoses, error) {
	return ros.PollValue(o, 264, DecodeRos1Kuavo_ros_interfacesArmTargetPoses)
}

// @brief Publish one complete kuavo_ros_interfaces/bezierCurveCubicPoint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_ros_interfacesBezierCurveCubicPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_ros_interfacesBezierCurveCubicPoint(o *ros.Owner, v Ros1Kuavo_ros_interfacesBezierCurveCubicPoint) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_ros_interfaces/bezierCurveCubicPoint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_ros_interfacesBezierCurveCubicPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_ros_interfacesBezierCurveCubicPoint(o *ros.Owner) (Ros1Kuavo_ros_interfacesBezierCurveCubicPoint, error) {
	return ros.PollValue(o, 396, DecodeRos1Kuavo_ros_interfacesBezierCurveCubicPoint)
}

// @brief Publish one complete kuavo_ros_interfaces/jointBezierTrajectory message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_ros_interfacesJointBezierTrajectory.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_ros_interfacesJointBezierTrajectory(o *ros.Owner, v Ros1Kuavo_ros_interfacesJointBezierTrajectory) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_ros_interfaces/jointBezierTrajectory message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_ros_interfacesJointBezierTrajectory.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_ros_interfacesJointBezierTrajectory(o *ros.Owner) (Ros1Kuavo_ros_interfacesJointBezierTrajectory, error) {
	return ros.PollValue(o, 3172, DecodeRos1Kuavo_ros_interfacesJointBezierTrajectory)
}

// @brief Call the selected kuavo_ros_interfaces/ocs2ChangeArmCtrlMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest,
// response=Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlMode(o *ros.Owner, q Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest) (Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse, error) {
	return ros.CallValue(o, q, 265, DecodeRos1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse)
}

// @brief Publish one complete kuavo_ros_interfaces/planArmState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_ros_interfacesPlanArmState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_ros_interfacesPlanArmState(o *ros.Owner, v Ros1Kuavo_ros_interfacesPlanArmState) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_ros_interfaces/planArmState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_ros_interfacesPlanArmState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_ros_interfacesPlanArmState(o *ros.Owner) (Ros1Kuavo_ros_interfacesPlanArmState, error) {
	return ros.PollValue(o, 5, DecodeRos1Kuavo_ros_interfacesPlanArmState)
}

// @brief Call the selected kuavo_ros_interfaces/planArmTrajectoryBezierCurve service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest,
// response=Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurve(o *ros.Owner, q Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest) (Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse)
}

// @brief Publish one complete kuavo_ros_interfaces/robotHandPosition message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_ros_interfacesRobotHandPosition.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_ros_interfacesRobotHandPosition(o *ros.Owner, v Ros1Kuavo_ros_interfacesRobotHandPosition) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_ros_interfaces/robotHandPosition message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_ros_interfacesRobotHandPosition.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_ros_interfacesRobotHandPosition(o *ros.Owner) (Ros1Kuavo_ros_interfacesRobotHandPosition, error) {
	return ros.PollValue(o, 792, DecodeRos1Kuavo_ros_interfacesRobotHandPosition)
}

// @brief Publish one complete kuavo_ros_interfaces/robotHeadMotionData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Kuavo_ros_interfacesRobotHeadMotionData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Kuavo_ros_interfacesRobotHeadMotionData(o *ros.Owner, v Ros1Kuavo_ros_interfacesRobotHeadMotionData) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete kuavo_ros_interfaces/robotHeadMotionData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Kuavo_ros_interfacesRobotHeadMotionData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Kuavo_ros_interfacesRobotHeadMotionData(o *ros.Owner) (Ros1Kuavo_ros_interfacesRobotHeadMotionData, error) {
	return ros.PollValue(o, 132, DecodeRos1Kuavo_ros_interfacesRobotHeadMotionData)
}

// @brief Call the selected kuavo_ros_interfaces/stopPlanArmTrajectory service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest,
// response=Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Kuavo_ros_interfacesStopPlanArmTrajectory(o *ros.Owner, q Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest) (Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse)
}

// @brief Publish one complete leju_mobile_base_msgs/BMS message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Leju_mobile_base_msgsBMS.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsBMS(o *ros.Owner, v Ros1Leju_mobile_base_msgsBMS) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/BMS message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Leju_mobile_base_msgsBMS.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsBMS(o *ros.Owner) (Ros1Leju_mobile_base_msgsBMS, error) {
	return ros.PollValue(o, 453, DecodeRos1Leju_mobile_base_msgsBMS)
}

// @brief Publish one complete leju_mobile_base_msgs/BaseCmdVelStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsBaseCmdVelStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsBaseCmdVelStatus(o *ros.Owner, v Ros1Leju_mobile_base_msgsBaseCmdVelStatus) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/BaseCmdVelStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsBaseCmdVelStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsBaseCmdVelStatus(o *ros.Owner) (Ros1Leju_mobile_base_msgsBaseCmdVelStatus, error) {
	return ros.PollValue(o, 534, DecodeRos1Leju_mobile_base_msgsBaseCmdVelStatus)
}

// @brief Call the selected leju_mobile_base_msgs/BaseMove service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsBaseMoveRequest, response=Ros1Leju_mobile_base_msgsBaseMoveResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsBaseMove(o *ros.Owner, q Ros1Leju_mobile_base_msgsBaseMoveRequest) (Ros1Leju_mobile_base_msgsBaseMoveResponse, error) {
	return ros.CallValue(o, q, 521, DecodeRos1Leju_mobile_base_msgsBaseMoveResponse)
}

// @brief Publish one complete leju_mobile_base_msgs/Battery message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Leju_mobile_base_msgsBattery.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsBattery(o *ros.Owner, v Ros1Leju_mobile_base_msgsBattery) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/Battery message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Leju_mobile_base_msgsBattery.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsBattery(o *ros.Owner) (Ros1Leju_mobile_base_msgsBattery, error) {
	return ros.PollValue(o, 294, DecodeRos1Leju_mobile_base_msgsBattery)
}

// @brief Call the selected leju_mobile_base_msgs/CheckArrived service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsCheckArrivedRequest, response=Ros1Leju_mobile_base_msgsCheckArrivedResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsCheckArrived(o *ros.Owner, q Ros1Leju_mobile_base_msgsCheckArrivedRequest) (Ros1Leju_mobile_base_msgsCheckArrivedResponse, error) {
	return ros.CallValue(o, q, 266, DecodeRos1Leju_mobile_base_msgsCheckArrivedResponse)
}

// @brief Call the selected leju_mobile_base_msgs/ControlLaserScan service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsControlLaserScanRequest,
// response=Ros1Leju_mobile_base_msgsControlLaserScanResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsControlLaserScan(o *ros.Owner, q Ros1Leju_mobile_base_msgsControlLaserScanRequest) (Ros1Leju_mobile_base_msgsControlLaserScanResponse, error) {
	return ros.CallValue(o, q, 4449, DecodeRos1Leju_mobile_base_msgsControlLaserScanResponse)
}

// @brief Call the selected leju_mobile_base_msgs/DispatchMove service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsDispatchMoveRequest, response=Ros1Leju_mobile_base_msgsDispatchMoveResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsDispatchMove(o *ros.Owner, q Ros1Leju_mobile_base_msgsDispatchMoveRequest) (Ros1Leju_mobile_base_msgsDispatchMoveResponse, error) {
	return ros.CallValue(o, q, 521, DecodeRos1Leju_mobile_base_msgsDispatchMoveResponse)
}

// @brief Call the selected leju_mobile_base_msgs/ExecTask service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsExecTaskRequest, response=Ros1Leju_mobile_base_msgsExecTaskResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsExecTask(o *ros.Owner, q Ros1Leju_mobile_base_msgsExecTaskRequest) (Ros1Leju_mobile_base_msgsExecTaskResponse, error) {
	return ros.CallValue(o, q, 525, DecodeRos1Leju_mobile_base_msgsExecTaskResponse)
}

// @brief Call the selected leju_mobile_base_msgs/GetGlobalOdometer service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest,
// response=Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsGetGlobalOdometer(o *ros.Owner, q Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest) (Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse, error) {
	return ros.CallValue(o, q, 24, DecodeRos1Leju_mobile_base_msgsGetGlobalOdometerResponse)
}

// @brief Call the selected leju_mobile_base_msgs/GetLaserScanList service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsGetLaserScanListRequest,
// response=Ros1Leju_mobile_base_msgsGetLaserScanListResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsGetLaserScanList(o *ros.Owner, q Ros1Leju_mobile_base_msgsGetLaserScanListRequest) (Ros1Leju_mobile_base_msgsGetLaserScanListResponse, error) {
	return ros.CallValue(o, q, 4449, DecodeRos1Leju_mobile_base_msgsGetLaserScanListResponse)
}

// @brief Publish one complete leju_mobile_base_msgs/HardwareStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsHardwareStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsHardwareStatus(o *ros.Owner, v Ros1Leju_mobile_base_msgsHardwareStatus) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/HardwareStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsHardwareStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsHardwareStatus(o *ros.Owner) (Ros1Leju_mobile_base_msgsHardwareStatus, error) {
	return ros.PollValue(o, 19543, DecodeRos1Leju_mobile_base_msgsHardwareStatus)
}

// @brief Publish one complete leju_mobile_base_msgs/Information message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsInformation.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsInformation(o *ros.Owner, v Ros1Leju_mobile_base_msgsInformation) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/Information message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Leju_mobile_base_msgsInformation.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsInformation(o *ros.Owner) (Ros1Leju_mobile_base_msgsInformation, error) {
	return ros.PollValue(o, 9900, DecodeRos1Leju_mobile_base_msgsInformation)
}

// @brief Publish one complete leju_mobile_base_msgs/LED message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Leju_mobile_base_msgsLED.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsLED(o *ros.Owner, v Ros1Leju_mobile_base_msgsLED) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/LED message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Leju_mobile_base_msgsLED.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsLED(o *ros.Owner) (Ros1Leju_mobile_base_msgsLED, error) {
	return ros.PollValue(o, 10, DecodeRos1Leju_mobile_base_msgsLED)
}

// @brief Publish one complete leju_mobile_base_msgs/LiftControl3Feedback message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsLiftControl3Feedback.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsLiftControl3Feedback(o *ros.Owner, v Ros1Leju_mobile_base_msgsLiftControl3Feedback) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/LiftControl3Feedback message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsLiftControl3Feedback.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsLiftControl3Feedback(o *ros.Owner) (Ros1Leju_mobile_base_msgsLiftControl3Feedback, error) {
	return ros.PollValue(o, 18, DecodeRos1Leju_mobile_base_msgsLiftControl3Feedback)
}

// @brief Publish one complete leju_mobile_base_msgs/LiftControl3Goal message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsLiftControl3Goal.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsLiftControl3Goal(o *ros.Owner, v Ros1Leju_mobile_base_msgsLiftControl3Goal) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/LiftControl3Goal message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsLiftControl3Goal.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsLiftControl3Goal(o *ros.Owner) (Ros1Leju_mobile_base_msgsLiftControl3Goal, error) {
	return ros.PollValue(o, 25, DecodeRos1Leju_mobile_base_msgsLiftControl3Goal)
}

// @brief Publish one complete leju_mobile_base_msgs/LiftControl3Result message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsLiftControl3Result.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsLiftControl3Result(o *ros.Owner, v Ros1Leju_mobile_base_msgsLiftControl3Result) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/LiftControl3Result message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsLiftControl3Result.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsLiftControl3Result(o *ros.Owner) (Ros1Leju_mobile_base_msgsLiftControl3Result, error) {
	return ros.PollValue(o, 273, DecodeRos1Leju_mobile_base_msgsLiftControl3Result)
}

// @brief Publish one complete leju_mobile_base_msgs/LiftStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Leju_mobile_base_msgsLiftStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsLiftStatus(o *ros.Owner, v Ros1Leju_mobile_base_msgsLiftStatus) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/LiftStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Leju_mobile_base_msgsLiftStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsLiftStatus(o *ros.Owner) (Ros1Leju_mobile_base_msgsLiftStatus, error) {
	return ros.PollValue(o, 559, DecodeRos1Leju_mobile_base_msgsLiftStatus)
}

// @brief Publish one complete leju_mobile_base_msgs/MoveBaseActionGoal message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsMoveBaseActionGoal.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsMoveBaseActionGoal(o *ros.Owner, v Ros1Leju_mobile_base_msgsMoveBaseActionGoal) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/MoveBaseActionGoal message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsMoveBaseActionGoal.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsMoveBaseActionGoal(o *ros.Owner) (Ros1Leju_mobile_base_msgsMoveBaseActionGoal, error) {
	return ros.PollValue(o, 882, DecodeRos1Leju_mobile_base_msgsMoveBaseActionGoal)
}

// @brief Call the selected leju_mobile_base_msgs/MoveToTarget service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsMoveToTargetRequest, response=Ros1Leju_mobile_base_msgsMoveToTargetResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsMoveToTarget(o *ros.Owner, q Ros1Leju_mobile_base_msgsMoveToTargetRequest) (Ros1Leju_mobile_base_msgsMoveToTargetResponse, error) {
	return ros.CallValue(o, q, 521, DecodeRos1Leju_mobile_base_msgsMoveToTargetResponse)
}

// @brief Publish one complete leju_mobile_base_msgs/MoveToTargetOptions message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsMoveToTargetOptions.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsMoveToTargetOptions(o *ros.Owner, v Ros1Leju_mobile_base_msgsMoveToTargetOptions) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/MoveToTargetOptions message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsMoveToTargetOptions.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsMoveToTargetOptions(o *ros.Owner) (Ros1Leju_mobile_base_msgsMoveToTargetOptions, error) {
	return ros.PollValue(o, 22, DecodeRos1Leju_mobile_base_msgsMoveToTargetOptions)
}

// @brief Publish one complete leju_mobile_base_msgs/NavigationModeGoal message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsNavigationModeGoal.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsNavigationModeGoal(o *ros.Owner, v Ros1Leju_mobile_base_msgsNavigationModeGoal) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/NavigationModeGoal message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsNavigationModeGoal.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsNavigationModeGoal(o *ros.Owner) (Ros1Leju_mobile_base_msgsNavigationModeGoal, error) {
	return ros.PollValue(o, 3, DecodeRos1Leju_mobile_base_msgsNavigationModeGoal)
}

// @brief Publish one complete leju_mobile_base_msgs/Parameter message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Leju_mobile_base_msgsParameter.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsParameter(o *ros.Owner, v Ros1Leju_mobile_base_msgsParameter) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/Parameter message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Leju_mobile_base_msgsParameter.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsParameter(o *ros.Owner) (Ros1Leju_mobile_base_msgsParameter, error) {
	return ros.PollValue(o, 401, DecodeRos1Leju_mobile_base_msgsParameter)
}

// @brief Call the selected leju_mobile_base_msgs/ResetTemporaryOdometer service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest,
// response=Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsResetTemporaryOdometer(o *ros.Owner, q Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest) (Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse, error) {
	return ros.CallValue(o, q, 277, DecodeRos1Leju_mobile_base_msgsResetTemporaryOdometerResponse)
}

// @brief Publish one complete leju_mobile_base_msgs/RobotStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsRobotStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsRobotStatus(o *ros.Owner, v Ros1Leju_mobile_base_msgsRobotStatus) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/RobotStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Leju_mobile_base_msgsRobotStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsRobotStatus(o *ros.Owner) (Ros1Leju_mobile_base_msgsRobotStatus, error) {
	return ros.PollValue(o, 799, DecodeRos1Leju_mobile_base_msgsRobotStatus)
}

// @brief Call the selected leju_mobile_base_msgs/SetDispatchMode service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsSetDispatchModeRequest,
// response=Ros1Leju_mobile_base_msgsSetDispatchModeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsSetDispatchMode(o *ros.Owner, q Ros1Leju_mobile_base_msgsSetDispatchModeRequest) (Ros1Leju_mobile_base_msgsSetDispatchModeResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Leju_mobile_base_msgsSetDispatchModeResponse)
}

// @brief Call the selected leju_mobile_base_msgs/SetMapServer service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsSetMapServerRequest, response=Ros1Leju_mobile_base_msgsSetMapServerResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsSetMapServer(o *ros.Owner, q Ros1Leju_mobile_base_msgsSetMapServerRequest) (Ros1Leju_mobile_base_msgsSetMapServerResponse, error) {
	return ros.CallValue(o, q, 853, DecodeRos1Leju_mobile_base_msgsSetMapServerResponse)
}

// @brief Call the selected leju_mobile_base_msgs/StartLocalization service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsStartLocalizationRequest,
// response=Ros1Leju_mobile_base_msgsStartLocalizationResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsStartLocalization(o *ros.Owner, q Ros1Leju_mobile_base_msgsStartLocalizationRequest) (Ros1Leju_mobile_base_msgsStartLocalizationResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Leju_mobile_base_msgsStartLocalizationResponse)
}

// @brief Publish one complete leju_mobile_base_msgs/StepControlGoal message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsStepControlGoal.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsStepControlGoal(o *ros.Owner, v Ros1Leju_mobile_base_msgsStepControlGoal) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/StepControlGoal message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsStepControlGoal.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsStepControlGoal(o *ros.Owner) (Ros1Leju_mobile_base_msgsStepControlGoal, error) {
	return ros.PollValue(o, 70, DecodeRos1Leju_mobile_base_msgsStepControlGoal)
}

// @brief Call the selected leju_mobile_base_msgs/SyncCostmap service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Leju_mobile_base_msgsSyncCostmapRequest, response=Ros1Leju_mobile_base_msgsSyncCostmapResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Leju_mobile_base_msgsSyncCostmap(o *ros.Owner, q Ros1Leju_mobile_base_msgsSyncCostmapRequest) (Ros1Leju_mobile_base_msgsSyncCostmapResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Leju_mobile_base_msgsSyncCostmapResponse)
}

// @brief Publish one complete leju_mobile_base_msgs/TaskDetailStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Leju_mobile_base_msgsTaskDetailStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Leju_mobile_base_msgsTaskDetailStatus(o *ros.Owner, v Ros1Leju_mobile_base_msgsTaskDetailStatus) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete leju_mobile_base_msgs/TaskDetailStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Leju_mobile_base_msgsTaskDetailStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Leju_mobile_base_msgsTaskDetailStatus(o *ros.Owner) (Ros1Leju_mobile_base_msgsTaskDetailStatus, error) {
	return ros.PollValue(o, 881, DecodeRos1Leju_mobile_base_msgsTaskDetailStatus)
}

// @brief Publish one complete motioncapture/ForcePlateData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1MotioncaptureForcePlateData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1MotioncaptureForcePlateData(o *ros.Owner, v Ros1MotioncaptureForcePlateData) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete motioncapture/ForcePlateData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1MotioncaptureForcePlateData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1MotioncaptureForcePlateData(o *ros.Owner) (Ros1MotioncaptureForcePlateData, error) {
	return ros.PollValue(o, 280, DecodeRos1MotioncaptureForcePlateData)
}

// @brief Call the selected network_monitor/NetworkPing service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Network_monitorNetworkPingRequest, response=Ros1Network_monitorNetworkPingResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Network_monitorNetworkPing(o *ros.Owner, q Ros1Network_monitorNetworkPingRequest) (Ros1Network_monitorNetworkPingResponse, error) {
	return ros.CallValue(o, q, 269, DecodeRos1Network_monitorNetworkPingResponse)
}

// @brief Publish one complete network_monitor/NetworkPingMsg message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Network_monitorNetworkPingMsg.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Network_monitorNetworkPingMsg(o *ros.Owner, v Ros1Network_monitorNetworkPingMsg) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete network_monitor/NetworkPingMsg message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Network_monitorNetworkPingMsg.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Network_monitorNetworkPingMsg(o *ros.Owner) (Ros1Network_monitorNetworkPingMsg, error) {
	return ros.PollValue(o, 273, DecodeRos1Network_monitorNetworkPingMsg)
}

// @brief Publish one complete nimservos_controller/motor_cmd message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nimservos_controllerMotor_cmd.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nimservos_controllerMotor_cmd(o *ros.Owner, v Ros1Nimservos_controllerMotor_cmd) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nimservos_controller/motor_cmd message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nimservos_controllerMotor_cmd.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nimservos_controllerMotor_cmd(o *ros.Owner) (Ros1Nimservos_controllerMotor_cmd, error) {
	return ros.PollValue(o, 16, DecodeRos1Nimservos_controllerMotor_cmd)
}

// @brief Publish one complete nimservos_controller/motor_state message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nimservos_controllerMotor_state.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nimservos_controllerMotor_state(o *ros.Owner, v Ros1Nimservos_controllerMotor_state) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nimservos_controller/motor_state message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nimservos_controllerMotor_state.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nimservos_controllerMotor_state(o *ros.Owner) (Ros1Nimservos_controllerMotor_state, error) {
	return ros.PollValue(o, 538, DecodeRos1Nimservos_controllerMotor_state)
}

// @brief Publish one complete nlink_parser/IotFrame0 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserIotFrame0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserIotFrame0(o *ros.Owner, v Ros1Nlink_parserIotFrame0) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/IotFrame0 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserIotFrame0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserIotFrame0(o *ros.Owner) (Ros1Nlink_parserIotFrame0, error) {
	return ros.PollValue(o, 2285, DecodeRos1Nlink_parserIotFrame0)
}

// @brief Publish one complete nlink_parser/IotFrame0Node message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserIotFrame0Node.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserIotFrame0Node(o *ros.Owner, v Ros1Nlink_parserIotFrame0Node) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/IotFrame0Node message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserIotFrame0Node.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserIotFrame0Node(o *ros.Owner) (Ros1Nlink_parserIotFrame0Node, error) {
	return ros.PollValue(o, 284, DecodeRos1Nlink_parserIotFrame0Node)
}

// @brief Publish one complete nlink_parser/LinktrackAnchorframe0 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Nlink_parserLinktrackAnchorframe0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackAnchorframe0(o *ros.Owner, v Ros1Nlink_parserLinktrackAnchorframe0) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/LinktrackAnchorframe0 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Nlink_parserLinktrackAnchorframe0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackAnchorframe0(o *ros.Owner) (Ros1Nlink_parserLinktrackAnchorframe0, error) {
	return ros.PollValue(o, 386, DecodeRos1Nlink_parserLinktrackAnchorframe0)
}

// @brief Publish one complete nlink_parser/LinktrackAoaNode0 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackAoaNode0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackAoaNode0(o *ros.Owner, v Ros1Nlink_parserLinktrackAoaNode0) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/LinktrackAoaNode0 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackAoaNode0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackAoaNode0(o *ros.Owner) (Ros1Nlink_parserLinktrackAoaNode0, error) {
	return ros.PollValue(o, 18, DecodeRos1Nlink_parserLinktrackAoaNode0)
}

// @brief Publish one complete nlink_parser/LinktrackAoaNodeframe0 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Nlink_parserLinktrackAoaNodeframe0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackAoaNodeframe0(o *ros.Owner, v Ros1Nlink_parserLinktrackAoaNodeframe0) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/LinktrackAoaNodeframe0 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Nlink_parserLinktrackAoaNodeframe0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackAoaNodeframe0(o *ros.Owner) (Ros1Nlink_parserLinktrackAoaNodeframe0, error) {
	return ros.PollValue(o, 162, DecodeRos1Nlink_parserLinktrackAoaNodeframe0)
}

// @brief Publish one complete nlink_parser/LinktrackNode0 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNode0(o *ros.Owner, v Ros1Nlink_parserLinktrackNode0) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNode0 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNode0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNode0(o *ros.Owner) (Ros1Nlink_parserLinktrackNode0, error) {
	return ros.PollValue(o, 262, DecodeRos1Nlink_parserLinktrackNode0)
}

// @brief Publish one complete nlink_parser/LinktrackNode1 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode1.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNode1(o *ros.Owner, v Ros1Nlink_parserLinktrackNode1) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNode1 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNode1.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNode1(o *ros.Owner) (Ros1Nlink_parserLinktrackNode1, error) {
	return ros.PollValue(o, 14, DecodeRos1Nlink_parserLinktrackNode1)
}

// @brief Publish one complete nlink_parser/LinktrackNode2 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode2.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNode2(o *ros.Owner, v Ros1Nlink_parserLinktrackNode2) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNode2 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNode2.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNode2(o *ros.Owner) (Ros1Nlink_parserLinktrackNode2, error) {
	return ros.PollValue(o, 14, DecodeRos1Nlink_parserLinktrackNode2)
}

// @brief Publish one complete nlink_parser/LinktrackNode4Anchor message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Nlink_parserLinktrackNode4Anchor.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNode4Anchor(o *ros.Owner, v Ros1Nlink_parserLinktrackNode4Anchor) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNode4Anchor message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNode4Anchor.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNode4Anchor(o *ros.Owner) (Ros1Nlink_parserLinktrackNode4Anchor, error) {
	return ros.PollValue(o, 5, DecodeRos1Nlink_parserLinktrackNode4Anchor)
}

// @brief Publish one complete nlink_parser/LinktrackNode4Tag message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode4Tag.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNode4Tag(o *ros.Owner, v Ros1Nlink_parserLinktrackNode4Tag) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNode4Tag message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNode4Tag.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNode4Tag(o *ros.Owner) (Ros1Nlink_parserLinktrackNode4Tag, error) {
	return ros.PollValue(o, 49, DecodeRos1Nlink_parserLinktrackNode4Tag)
}

// @brief Publish one complete nlink_parser/LinktrackNode5 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode5.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNode5(o *ros.Owner, v Ros1Nlink_parserLinktrackNode5) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNode5 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNode5.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNode5(o *ros.Owner) (Ros1Nlink_parserLinktrackNode5, error) {
	return ros.PollValue(o, 17, DecodeRos1Nlink_parserLinktrackNode5)
}

// @brief Publish one complete nlink_parser/LinktrackNode6 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode6.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNode6(o *ros.Owner, v Ros1Nlink_parserLinktrackNode6) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNode6 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNode6.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNode6(o *ros.Owner) (Ros1Nlink_parserLinktrackNode6, error) {
	return ros.PollValue(o, 265, DecodeRos1Nlink_parserLinktrackNode6)
}

// @brief Publish one complete nlink_parser/LinktrackNodeframe0 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNodeframe0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNodeframe0(o *ros.Owner, v Ros1Nlink_parserLinktrackNodeframe0) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe0 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNodeframe0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNodeframe0(o *ros.Owner) (Ros1Nlink_parserLinktrackNodeframe0, error) {
	return ros.PollValue(o, 2102, DecodeRos1Nlink_parserLinktrackNodeframe0)
}

// @brief Publish one complete nlink_parser/LinktrackNodeframe1 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNodeframe1.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNodeframe1(o *ros.Owner, v Ros1Nlink_parserLinktrackNodeframe1) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe1 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNodeframe1.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNodeframe1(o *ros.Owner) (Ros1Nlink_parserLinktrackNodeframe1, error) {
	return ros.PollValue(o, 130, DecodeRos1Nlink_parserLinktrackNodeframe1)
}

// @brief Publish one complete nlink_parser/LinktrackNodeframe2 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNodeframe2.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNodeframe2(o *ros.Owner, v Ros1Nlink_parserLinktrackNodeframe2) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe2 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNodeframe2.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNodeframe2(o *ros.Owner) (Ros1Nlink_parserLinktrackNodeframe2, error) {
	return ros.PollValue(o, 218, DecodeRos1Nlink_parserLinktrackNodeframe2)
}

// @brief Publish one complete nlink_parser/LinktrackNodeframe3 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNodeframe3.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNodeframe3(o *ros.Owner, v Ros1Nlink_parserLinktrackNodeframe3) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe3 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNodeframe3.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNodeframe3(o *ros.Owner) (Ros1Nlink_parserLinktrackNodeframe3, error) {
	return ros.PollValue(o, 130, DecodeRos1Nlink_parserLinktrackNodeframe3)
}

// @brief Publish one complete nlink_parser/LinktrackNodeframe4 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNodeframe4.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNodeframe4(o *ros.Owner, v Ros1Nlink_parserLinktrackNodeframe4) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe4 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNodeframe4.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNodeframe4(o *ros.Owner) (Ros1Nlink_parserLinktrackNodeframe4, error) {
	return ros.PollValue(o, 410, DecodeRos1Nlink_parserLinktrackNodeframe4)
}

// @brief Publish one complete nlink_parser/LinktrackNodeframe5 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNodeframe5.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNodeframe5(o *ros.Owner, v Ros1Nlink_parserLinktrackNodeframe5) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe5 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNodeframe5.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNodeframe5(o *ros.Owner) (Ros1Nlink_parserLinktrackNodeframe5, error) {
	return ros.PollValue(o, 157, DecodeRos1Nlink_parserLinktrackNodeframe5)
}

// @brief Publish one complete nlink_parser/LinktrackNodeframe6 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNodeframe6.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackNodeframe6(o *ros.Owner, v Ros1Nlink_parserLinktrackNodeframe6) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe6 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackNodeframe6.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackNodeframe6(o *ros.Owner) (Ros1Nlink_parserLinktrackNodeframe6, error) {
	return ros.PollValue(o, 2129, DecodeRos1Nlink_parserLinktrackNodeframe6)
}

// @brief Publish one complete nlink_parser/LinktrackTag message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackTag.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackTag(o *ros.Owner, v Ros1Nlink_parserLinktrackTag) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/LinktrackTag message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackTag.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackTag(o *ros.Owner) (Ros1Nlink_parserLinktrackTag, error) {
	return ros.PollValue(o, 46, DecodeRos1Nlink_parserLinktrackTag)
}

// @brief Publish one complete nlink_parser/LinktrackTagframe0 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackTagframe0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserLinktrackTagframe0(o *ros.Owner, v Ros1Nlink_parserLinktrackTagframe0) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/LinktrackTagframe0 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserLinktrackTagframe0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserLinktrackTagframe0(o *ros.Owner) (Ros1Nlink_parserLinktrackTagframe0, error) {
	return ros.PollValue(o, 134, DecodeRos1Nlink_parserLinktrackTagframe0)
}

// @brief Publish one complete nlink_parser/TofsenseCascade message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserTofsenseCascade.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserTofsenseCascade(o *ros.Owner, v Ros1Nlink_parserTofsenseCascade) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/TofsenseCascade message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserTofsenseCascade.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserTofsenseCascade(o *ros.Owner) (Ros1Nlink_parserTofsenseCascade, error) {
	return ros.PollValue(o, 108, DecodeRos1Nlink_parserTofsenseCascade)
}

// @brief Publish one complete nlink_parser/TofsenseFrame0 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserTofsenseFrame0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserTofsenseFrame0(o *ros.Owner, v Ros1Nlink_parserTofsenseFrame0) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/TofsenseFrame0 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserTofsenseFrame0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserTofsenseFrame0(o *ros.Owner) (Ros1Nlink_parserTofsenseFrame0, error) {
	return ros.PollValue(o, 13, DecodeRos1Nlink_parserTofsenseFrame0)
}

// @brief Publish one complete nlink_parser/TofsenseMFrame0 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserTofsenseMFrame0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserTofsenseMFrame0(o *ros.Owner, v Ros1Nlink_parserTofsenseMFrame0) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/TofsenseMFrame0 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserTofsenseMFrame0.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserTofsenseMFrame0(o *ros.Owner) (Ros1Nlink_parserTofsenseMFrame0, error) {
	return ros.PollValue(o, 66, DecodeRos1Nlink_parserTofsenseMFrame0)
}

// @brief Publish one complete nlink_parser/TofsenseMFrame0Pixel message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Nlink_parserTofsenseMFrame0Pixel.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Nlink_parserTofsenseMFrame0Pixel(o *ros.Owner, v Ros1Nlink_parserTofsenseMFrame0Pixel) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete nlink_parser/TofsenseMFrame0Pixel message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserTofsenseMFrame0Pixel.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Nlink_parserTofsenseMFrame0Pixel(o *ros.Owner) (Ros1Nlink_parserTofsenseMFrame0Pixel, error) {
	return ros.PollValue(o, 7, DecodeRos1Nlink_parserTofsenseMFrame0Pixel)
}

// @brief Publish one complete noitom_hi5_hand_udp_python/JoySticks message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonJoySticks.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Noitom_hi5_hand_udp_pythonJoySticks(o *ros.Owner, v Ros1Noitom_hi5_hand_udp_pythonJoySticks) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete noitom_hi5_hand_udp_python/JoySticks message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonJoySticks.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Noitom_hi5_hand_udp_pythonJoySticks(o *ros.Owner) (Ros1Noitom_hi5_hand_udp_pythonJoySticks, error) {
	return ros.PollValue(o, 40, DecodeRos1Noitom_hi5_hand_udp_pythonJoySticks)
}

// @brief Publish one complete noitom_hi5_hand_udp_python/PoseInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonPoseInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Noitom_hi5_hand_udp_pythonPoseInfo(o *ros.Owner, v Ros1Noitom_hi5_hand_udp_pythonPoseInfo) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete noitom_hi5_hand_udp_python/PoseInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonPoseInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Noitom_hi5_hand_udp_pythonPoseInfo(o *ros.Owner) (Ros1Noitom_hi5_hand_udp_pythonPoseInfo, error) {
	return ros.PollValue(o, 56, DecodeRos1Noitom_hi5_hand_udp_pythonPoseInfo)
}

// @brief Publish one complete noitom_hi5_hand_udp_python/PoseInfoList message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonPoseInfoList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Noitom_hi5_hand_udp_pythonPoseInfoList(o *ros.Owner, v Ros1Noitom_hi5_hand_udp_pythonPoseInfoList) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete noitom_hi5_hand_udp_python/PoseInfoList message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonPoseInfoList.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Noitom_hi5_hand_udp_pythonPoseInfoList(o *ros.Owner) (Ros1Noitom_hi5_hand_udp_pythonPoseInfoList, error) {
	return ros.PollValue(o, 462, DecodeRos1Noitom_hi5_hand_udp_pythonPoseInfoList)
}

// @brief Publish one complete noitom_hi5_hand_udp_python/QuaternionArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonQuaternionArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Noitom_hi5_hand_udp_pythonQuaternionArray(o *ros.Owner, v Ros1Noitom_hi5_hand_udp_pythonQuaternionArray) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete noitom_hi5_hand_udp_python/QuaternionArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonQuaternionArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Noitom_hi5_hand_udp_pythonQuaternionArray(o *ros.Owner) (Ros1Noitom_hi5_hand_udp_pythonQuaternionArray, error) {
	return ros.PollValue(o, 260, DecodeRos1Noitom_hi5_hand_udp_pythonQuaternionArray)
}

// @brief Publish one complete noitom_hi5_hand_udp_python/Vector4 message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonVector4.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Noitom_hi5_hand_udp_pythonVector4(o *ros.Owner, v Ros1Noitom_hi5_hand_udp_pythonVector4) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete noitom_hi5_hand_udp_python/Vector4 message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonVector4.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Noitom_hi5_hand_udp_pythonVector4(o *ros.Owner) (Ros1Noitom_hi5_hand_udp_pythonVector4, error) {
	return ros.PollValue(o, 16, DecodeRos1Noitom_hi5_hand_udp_pythonVector4)
}

// @brief Publish one complete noitom_hi5_hand_udp_python/handRotation message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonHandRotation.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Noitom_hi5_hand_udp_pythonHandRotation(o *ros.Owner, v Ros1Noitom_hi5_hand_udp_pythonHandRotation) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete noitom_hi5_hand_udp_python/handRotation message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonHandRotation.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Noitom_hi5_hand_udp_pythonHandRotation(o *ros.Owner) (Ros1Noitom_hi5_hand_udp_pythonHandRotation, error) {
	return ros.PollValue(o, 260, DecodeRos1Noitom_hi5_hand_udp_pythonHandRotation)
}

// @brief Publish one complete noitom_hi5_hand_udp_python/handRotationEular message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonHandRotationEular.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Noitom_hi5_hand_udp_pythonHandRotationEular(o *ros.Owner, v Ros1Noitom_hi5_hand_udp_pythonHandRotationEular) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete noitom_hi5_hand_udp_python/handRotationEular message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Noitom_hi5_hand_udp_pythonHandRotationEular.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Noitom_hi5_hand_udp_pythonHandRotationEular(o *ros.Owner) (Ros1Noitom_hi5_hand_udp_pythonHandRotationEular, error) {
	return ros.PollValue(o, 132, DecodeRos1Noitom_hi5_hand_udp_pythonHandRotationEular)
}

// @brief Publish one complete ocs2_msgs/constraint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsConstraint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Ocs2_msgsConstraint(o *ros.Owner, v Ros1Ocs2_msgsConstraint) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete ocs2_msgs/constraint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsConstraint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Ocs2_msgsConstraint(o *ros.Owner) (Ros1Ocs2_msgsConstraint, error) {
	return ros.PollValue(o, 72, DecodeRos1Ocs2_msgsConstraint)
}

// @brief Publish one complete ocs2_msgs/controller_data message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsController_data.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Ocs2_msgsController_data(o *ros.Owner, v Ros1Ocs2_msgsController_data) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete ocs2_msgs/controller_data message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsController_data.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Ocs2_msgsController_data(o *ros.Owner) (Ros1Ocs2_msgsController_data, error) {
	return ros.PollValue(o, 68, DecodeRos1Ocs2_msgsController_data)
}

// @brief Publish one complete ocs2_msgs/lagrangian_metrics message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsLagrangian_metrics.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Ocs2_msgsLagrangian_metrics(o *ros.Owner, v Ros1Ocs2_msgsLagrangian_metrics) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete ocs2_msgs/lagrangian_metrics message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsLagrangian_metrics.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Ocs2_msgsLagrangian_metrics(o *ros.Owner) (Ros1Ocs2_msgsLagrangian_metrics, error) {
	return ros.PollValue(o, 76, DecodeRos1Ocs2_msgsLagrangian_metrics)
}

// @brief Publish one complete ocs2_msgs/mode_schedule message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMode_schedule.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Ocs2_msgsMode_schedule(o *ros.Owner, v Ros1Ocs2_msgsMode_schedule) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete ocs2_msgs/mode_schedule message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMode_schedule.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Ocs2_msgsMode_schedule(o *ros.Owner) (Ros1Ocs2_msgsMode_schedule, error) {
	return ros.PollValue(o, 152, DecodeRos1Ocs2_msgsMode_schedule)
}

// @brief Publish one complete ocs2_msgs/mpc_flattened_controller message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Ocs2_msgsMpc_flattened_controller.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Ocs2_msgsMpc_flattened_controller(o *ros.Owner, v Ros1Ocs2_msgsMpc_flattened_controller) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete ocs2_msgs/mpc_flattened_controller message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Ocs2_msgsMpc_flattened_controller.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Ocs2_msgsMpc_flattened_controller(o *ros.Owner) (Ros1Ocs2_msgsMpc_flattened_controller, error) {
	return ros.PollValue(o, 10070, DecodeRos1Ocs2_msgsMpc_flattened_controller)
}

// @brief Publish one complete ocs2_msgs/mpc_input message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMpc_input.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Ocs2_msgsMpc_input(o *ros.Owner, v Ros1Ocs2_msgsMpc_input) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete ocs2_msgs/mpc_input message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMpc_input.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Ocs2_msgsMpc_input(o *ros.Owner) (Ros1Ocs2_msgsMpc_input, error) {
	return ros.PollValue(o, 516, DecodeRos1Ocs2_msgsMpc_input)
}

// @brief Publish one complete ocs2_msgs/mpc_observation message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMpc_observation.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Ocs2_msgsMpc_observation(o *ros.Owner, v Ros1Ocs2_msgsMpc_observation) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete ocs2_msgs/mpc_observation message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMpc_observation.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Ocs2_msgsMpc_observation(o *ros.Owner) (Ros1Ocs2_msgsMpc_observation, error) {
	return ros.PollValue(o, 1041, DecodeRos1Ocs2_msgsMpc_observation)
}

// @brief Publish one complete ocs2_msgs/mpc_performance_indices message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Ocs2_msgsMpc_performance_indices.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Ocs2_msgsMpc_performance_indices(o *ros.Owner, v Ros1Ocs2_msgsMpc_performance_indices) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete ocs2_msgs/mpc_performance_indices message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMpc_performance_indices.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Ocs2_msgsMpc_performance_indices(o *ros.Owner) (Ros1Ocs2_msgsMpc_performance_indices, error) {
	return ros.PollValue(o, 28, DecodeRos1Ocs2_msgsMpc_performance_indices)
}

// @brief Publish one complete ocs2_msgs/mpc_solver_data message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMpc_solver_data.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Ocs2_msgsMpc_solver_data(o *ros.Owner, v Ros1Ocs2_msgsMpc_solver_data) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete ocs2_msgs/mpc_solver_data message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMpc_solver_data.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Ocs2_msgsMpc_solver_data(o *ros.Owner) (Ros1Ocs2_msgsMpc_solver_data, error) {
	return ros.PollValue(o, 14770, DecodeRos1Ocs2_msgsMpc_solver_data)
}

// @brief Publish one complete ocs2_msgs/mpc_state message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMpc_state.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Ocs2_msgsMpc_state(o *ros.Owner, v Ros1Ocs2_msgsMpc_state) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete ocs2_msgs/mpc_state message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMpc_state.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Ocs2_msgsMpc_state(o *ros.Owner) (Ros1Ocs2_msgsMpc_state, error) {
	return ros.PollValue(o, 516, DecodeRos1Ocs2_msgsMpc_state)
}

// @brief Publish one complete ocs2_msgs/mpc_target_trajectories message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Ocs2_msgsMpc_target_trajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Ocs2_msgsMpc_target_trajectories(o *ros.Owner, v Ros1Ocs2_msgsMpc_target_trajectories) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete ocs2_msgs/mpc_target_trajectories message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMpc_target_trajectories.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Ocs2_msgsMpc_target_trajectories(o *ros.Owner) (Ros1Ocs2_msgsMpc_target_trajectories, error) {
	return ros.PollValue(o, 4268, DecodeRos1Ocs2_msgsMpc_target_trajectories)
}

// @brief Publish one complete ocs2_msgs/multiplier message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMultiplier.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Ocs2_msgsMultiplier(o *ros.Owner, v Ros1Ocs2_msgsMultiplier) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete ocs2_msgs/multiplier message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMultiplier.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Ocs2_msgsMultiplier(o *ros.Owner) (Ros1Ocs2_msgsMultiplier, error) {
	return ros.PollValue(o, 76, DecodeRos1Ocs2_msgsMultiplier)
}

// @brief Call the selected ocs2_msgs/pause_resume service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Ocs2_msgsPause_resumeRequest, response=Ros1Ocs2_msgsPause_resumeResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Ocs2_msgsPause_resume(o *ros.Owner, q Ros1Ocs2_msgsPause_resumeRequest) (Ros1Ocs2_msgsPause_resumeResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Ocs2_msgsPause_resumeResponse)
}

// @brief Call the selected ocs2_msgs/reset service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Ocs2_msgsResetRequest, response=Ros1Ocs2_msgsResetResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Ocs2_msgsReset(o *ros.Owner, q Ros1Ocs2_msgsResetRequest) (Ros1Ocs2_msgsResetResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Ocs2_msgsResetResponse)
}

// @brief Publish one complete ocs2_switched_model_msgs/gait message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Ocs2_switched_model_msgsGait.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Ocs2_switched_model_msgsGait(o *ros.Owner, v Ros1Ocs2_switched_model_msgsGait) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete ocs2_switched_model_msgs/gait message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_switched_model_msgsGait.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Ocs2_switched_model_msgsGait(o *ros.Owner) (Ros1Ocs2_switched_model_msgsGait, error) {
	return ros.PollValue(o, 92, DecodeRos1Ocs2_switched_model_msgsGait)
}

// @brief Publish one complete ocs2_switched_model_msgs/gait_sequence message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Ocs2_switched_model_msgsGait_sequence.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Ocs2_switched_model_msgsGait_sequence(o *ros.Owner, v Ros1Ocs2_switched_model_msgsGait_sequence) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete ocs2_switched_model_msgs/gait_sequence message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Ocs2_switched_model_msgsGait_sequence.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Ocs2_switched_model_msgsGait_sequence(o *ros.Owner) (Ros1Ocs2_switched_model_msgsGait_sequence, error) {
	return ros.PollValue(o, 740, DecodeRos1Ocs2_switched_model_msgsGait_sequence)
}

// @brief Publish one complete ocs2_switched_model_msgs/scheduled_gait_sequence message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Ocs2_switched_model_msgsScheduled_gait_sequence.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Ocs2_switched_model_msgsScheduled_gait_sequence(o *ros.Owner, v Ros1Ocs2_switched_model_msgsScheduled_gait_sequence) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete ocs2_switched_model_msgs/scheduled_gait_sequence message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Ocs2_switched_model_msgsScheduled_gait_sequence.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Ocs2_switched_model_msgsScheduled_gait_sequence(o *ros.Owner) (Ros1Ocs2_switched_model_msgsScheduled_gait_sequence, error) {
	return ros.PollValue(o, 744, DecodeRos1Ocs2_switched_model_msgsScheduled_gait_sequence)
}

// @brief Call the selected ocs2_switched_model_msgs/trajectory_request service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Ocs2_switched_model_msgsTrajectory_requestRequest,
// response=Ros1Ocs2_switched_model_msgsTrajectory_requestResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Ocs2_switched_model_msgsTrajectory_request(o *ros.Owner, q Ros1Ocs2_switched_model_msgsTrajectory_requestRequest) (Ros1Ocs2_switched_model_msgsTrajectory_requestResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Ocs2_switched_model_msgsTrajectory_requestResponse)
}

// @brief Publish one complete robot_calibration_msgs/CalibrationData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Robot_calibration_msgsCalibrationData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Robot_calibration_msgsCalibrationData(o *ros.Owner, v Ros1Robot_calibration_msgsCalibrationData) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete robot_calibration_msgs/CalibrationData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Robot_calibration_msgsCalibrationData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Robot_calibration_msgsCalibrationData(o *ros.Owner) (Ros1Robot_calibration_msgsCalibrationData, error) {
	return ros.PollValue(o, 28976, DecodeRos1Robot_calibration_msgsCalibrationData)
}

// @brief Publish one complete robot_calibration_msgs/CameraParameter message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Robot_calibration_msgsCameraParameter.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Robot_calibration_msgsCameraParameter(o *ros.Owner, v Ros1Robot_calibration_msgsCameraParameter) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete robot_calibration_msgs/CameraParameter message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Robot_calibration_msgsCameraParameter.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Robot_calibration_msgsCameraParameter(o *ros.Owner) (Ros1Robot_calibration_msgsCameraParameter, error) {
	return ros.PollValue(o, 268, DecodeRos1Robot_calibration_msgsCameraParameter)
}

// @brief Publish one complete robot_calibration_msgs/CaptureConfig message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Robot_calibration_msgsCaptureConfig.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Robot_calibration_msgsCaptureConfig(o *ros.Owner, v Ros1Robot_calibration_msgsCaptureConfig) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete robot_calibration_msgs/CaptureConfig message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Robot_calibration_msgsCaptureConfig.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Robot_calibration_msgsCaptureConfig(o *ros.Owner) (Ros1Robot_calibration_msgsCaptureConfig, error) {
	return ros.PollValue(o, 16228, DecodeRos1Robot_calibration_msgsCaptureConfig)
}

// @brief Publish one complete robot_calibration_msgs/ExtendedCameraInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Robot_calibration_msgsExtendedCameraInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Robot_calibration_msgsExtendedCameraInfo(o *ros.Owner, v Ros1Robot_calibration_msgsExtendedCameraInfo) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete robot_calibration_msgs/ExtendedCameraInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Robot_calibration_msgsExtendedCameraInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Robot_calibration_msgsExtendedCameraInfo(o *ros.Owner) (Ros1Robot_calibration_msgsExtendedCameraInfo, error) {
	return ros.PollValue(o, 3085, DecodeRos1Robot_calibration_msgsExtendedCameraInfo)
}

// @brief Submit a complete robot_calibration_msgs/GripperLedCommand Action goal.
// @details Validate and encode the entire goal before admission. Return its exact nonzero u64 ownership ID;
// admission is distinct from acceptance, feedback, cancellation and terminal completion. Components:
// goal=Ros1Robot_calibration_msgsGripperLedCommandGoal, result=Ros1Robot_calibration_msgsGripperLedCommandResult,
// feedback=Ros1Robot_calibration_msgsGripperLedCommandFeedback.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func SendRos1Robot_calibration_msgsGripperLedCommand(o *ros.Owner, q Ros1Robot_calibration_msgsGripperLedCommandGoal) (uint64, error) {
	return ros.SendGoalValue(o, q)
}

// @brief Receive typed feedback for an owned robot_calibration_msgs/GripperLedCommand goal.
// @details Require the exact nonzero u64 goal ID and matching feedback prefix before decoding. Idle does not retire
// ownership and is not an all-zero feedback value. Components:
// goal=Ros1Robot_calibration_msgsGripperLedCommandGoal, result=Ros1Robot_calibration_msgsGripperLedCommandResult,
// feedback=Ros1Robot_calibration_msgsGripperLedCommandFeedback.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] id Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func FeedbackRos1Robot_calibration_msgsGripperLedCommand(o *ros.Owner, id uint64) (Ros1Robot_calibration_msgsGripperLedCommandFeedback, error) {
	return ros.FeedbackValue(o, id, 8, DecodeRos1Robot_calibration_msgsGripperLedCommandFeedback)
}

// @brief Consume the terminal result for an owned robot_calibration_msgs/GripperLedCommand goal.
// @details Check the exact goal-ID prefix and terminal outcome together with every result field. Successful
// terminal consumption retires that goal; cancellation acknowledgement alone does not. Components:
// goal=Ros1Robot_calibration_msgsGripperLedCommandGoal, result=Ros1Robot_calibration_msgsGripperLedCommandResult,
// feedback=Ros1Robot_calibration_msgsGripperLedCommandFeedback.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] id Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func ResultRos1Robot_calibration_msgsGripperLedCommand(o *ros.Owner, id uint64) (ros.Terminal[Ros1Robot_calibration_msgsGripperLedCommandResult], error) {
	return ros.ResultValue(o, id, 9, DecodeRos1Robot_calibration_msgsGripperLedCommandResult)
}

// @brief Publish one complete robot_calibration_msgs/Observation message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Robot_calibration_msgsObservation.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1Robot_calibration_msgsObservation(o *ros.Owner, v Ros1Robot_calibration_msgsObservation) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete robot_calibration_msgs/Observation message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Robot_calibration_msgsObservation.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1Robot_calibration_msgsObservation(o *ros.Owner) (Ros1Robot_calibration_msgsObservation, error) {
	return ros.PollValue(o, 16908, DecodeRos1Robot_calibration_msgsObservation)
}

// @brief Call the selected robot_localization/FromLL service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Robot_localizationFromLLRequest, response=Ros1Robot_localizationFromLLResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Robot_localizationFromLL(o *ros.Owner, q Ros1Robot_localizationFromLLRequest) (Ros1Robot_localizationFromLLResponse, error) {
	return ros.CallValue(o, q, 24, DecodeRos1Robot_localizationFromLLResponse)
}

// @brief Call the selected robot_localization/GetState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Robot_localizationGetStateRequest, response=Ros1Robot_localizationGetStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Robot_localizationGetState(o *ros.Owner, q Ros1Robot_localizationGetStateRequest) (Ros1Robot_localizationGetStateResponse, error) {
	return ros.CallValue(o, q, 1920, DecodeRos1Robot_localizationGetStateResponse)
}

// @brief Call the selected robot_localization/SetDatum service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Robot_localizationSetDatumRequest, response=Ros1Robot_localizationSetDatumResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Robot_localizationSetDatum(o *ros.Owner, q Ros1Robot_localizationSetDatumRequest) (Ros1Robot_localizationSetDatumResponse, error) {
	return ros.CallValue(o, q, 0, DecodeRos1Robot_localizationSetDatumResponse)
}

// @brief Call the selected robot_localization/SetPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Robot_localizationSetPoseRequest, response=Ros1Robot_localizationSetPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Robot_localizationSetPose(o *ros.Owner, q Ros1Robot_localizationSetPoseRequest) (Ros1Robot_localizationSetPoseResponse, error) {
	return ros.CallValue(o, q, 0, DecodeRos1Robot_localizationSetPoseResponse)
}

// @brief Call the selected robot_localization/SetUTMZone service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Robot_localizationSetUTMZoneRequest, response=Ros1Robot_localizationSetUTMZoneResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Robot_localizationSetUTMZone(o *ros.Owner, q Ros1Robot_localizationSetUTMZoneRequest) (Ros1Robot_localizationSetUTMZoneResponse, error) {
	return ros.CallValue(o, q, 0, DecodeRos1Robot_localizationSetUTMZoneResponse)
}

// @brief Call the selected robot_localization/ToLL service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Robot_localizationToLLRequest, response=Ros1Robot_localizationToLLResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Robot_localizationToLL(o *ros.Owner, q Ros1Robot_localizationToLLRequest) (Ros1Robot_localizationToLLResponse, error) {
	return ros.CallValue(o, q, 24, DecodeRos1Robot_localizationToLLResponse)
}

// @brief Call the selected robot_localization/ToggleFilterProcessing service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Robot_localizationToggleFilterProcessingRequest,
// response=Ros1Robot_localizationToggleFilterProcessingResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Robot_localizationToggleFilterProcessing(o *ros.Owner, q Ros1Robot_localizationToggleFilterProcessingRequest) (Ros1Robot_localizationToggleFilterProcessingResponse, error) {
	return ros.CallValue(o, q, 1, DecodeRos1Robot_localizationToggleFilterProcessingResponse)
}

// @brief Call the selected taiji_trigger_node/PerformTaiji service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Taiji_trigger_nodePerformTaijiRequest, response=Ros1Taiji_trigger_nodePerformTaijiResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func CallRos1Taiji_trigger_nodePerformTaiji(o *ros.Owner, q Ros1Taiji_trigger_nodePerformTaijiRequest) (Ros1Taiji_trigger_nodePerformTaijiResponse, error) {
	return ros.CallValue(o, q, 261, DecodeRos1Taiji_trigger_nodePerformTaijiResponse)
}

// @brief Publish one complete user_pkg/piddebug message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1User_pkgPiddebug.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1User_pkgPiddebug(o *ros.Owner, v Ros1User_pkgPiddebug) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete user_pkg/piddebug message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1User_pkgPiddebug.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1User_pkgPiddebug(o *ros.Owner) (Ros1User_pkgPiddebug, error) {
	return ros.PollValue(o, 296, DecodeRos1User_pkgPiddebug)
}

// @brief Publish one complete user_pkg/uwbdebug message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1User_pkgUwbdebug.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1User_pkgUwbdebug(o *ros.Owner, v Ros1User_pkgUwbdebug) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete user_pkg/uwbdebug message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1User_pkgUwbdebug.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1User_pkgUwbdebug(o *ros.Owner) (Ros1User_pkgUwbdebug, error) {
	return ros.PollValue(o, 48, DecodeRos1User_pkgUwbdebug)
}

// @brief Publish one complete wiimote/IrSourceInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1WiimoteIrSourceInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1WiimoteIrSourceInfo(o *ros.Owner, v Ros1WiimoteIrSourceInfo) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete wiimote/IrSourceInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1WiimoteIrSourceInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1WiimoteIrSourceInfo(o *ros.Owner) (Ros1WiimoteIrSourceInfo, error) {
	return ros.PollValue(o, 24, DecodeRos1WiimoteIrSourceInfo)
}

// @brief Publish one complete wiimote/State message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1WiimoteState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1WiimoteState(o *ros.Owner, v Ros1WiimoteState) error { return ros.PublishValue(o, v) }

// @brief Poll and decode one complete wiimote/State message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1WiimoteState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1WiimoteState(o *ros.Owner) (Ros1WiimoteState, error) {
	return ros.PollValue(o, 814, DecodeRos1WiimoteState)
}

// @brief Publish one complete wiimote/TimedSwitch message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1WiimoteTimedSwitch.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PublishRos1WiimoteTimedSwitch(o *ros.Owner, v Ros1WiimoteTimedSwitch) error {
	return ros.PublishValue(o, v)
}

// @brief Poll and decode one complete wiimote/TimedSwitch message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1WiimoteTimedSwitch.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/go/API-CONTRACT.md
func PollRos1WiimoteTimedSwitch(o *ros.Owner) (Ros1WiimoteTimedSwitch, error) {
	return ros.PollValue(o, 73, DecodeRos1WiimoteTimedSwitch)
}
