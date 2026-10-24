// @file bounded_interfaces.ts
// @brief Full leju as codecs and original record metadata.
// @details Complete leju ros1_beta_platform values in as. 532 original records retain 1587 fields and 378 interface
// descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
// Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
// manual under document/platform/leju/en_US/catalog/.
/**
 * Generated custom RPC facades. Keep beside bounded_records.ts; select the
 * real ros1/ros2 NativeApi and explicit CLI-provisioned aliases. No factory
 * creates a grant, thread, clock, retry or native callback. A Wasm abort/trap
 * cannot promise cleanup; every normal caller-driven pass releases its lease.
 */
import {Api, Operation, Status} from 'ros/as/api';
import {Capability, Reply} from 'ros/as/roswasm';
import {Codec, validUnicode} from 'ros/as/codecs';
import {decodeUnifiedEvent, UnifiedEvent, EventKind} from 'ros/as/events';
import {
    Ros1Easy_handeye_msgsCheckStartingPoseRequest,
    Ros1Easy_handeye_msgsCheckStartingPoseRequestCodec,
    Ros1Easy_handeye_msgsCheckStartingPoseResponse,
    Ros1Easy_handeye_msgsCheckStartingPoseResponseCodec,
    Ros1Easy_handeye_msgsComputeCalibrationRequest,
    Ros1Easy_handeye_msgsComputeCalibrationRequestCodec,
    Ros1Easy_handeye_msgsComputeCalibrationResponse,
    Ros1Easy_handeye_msgsComputeCalibrationResponseCodec,
    Ros1Easy_handeye_msgsEnumerateTargetPosesRequest,
    Ros1Easy_handeye_msgsEnumerateTargetPosesRequestCodec,
    Ros1Easy_handeye_msgsEnumerateTargetPosesResponse,
    Ros1Easy_handeye_msgsEnumerateTargetPosesResponseCodec,
    Ros1Easy_handeye_msgsExecutePlanRequest,
    Ros1Easy_handeye_msgsExecutePlanRequestCodec,
    Ros1Easy_handeye_msgsExecutePlanResponse,
    Ros1Easy_handeye_msgsExecutePlanResponseCodec,
    Ros1Easy_handeye_msgsListAlgorithmsRequest,
    Ros1Easy_handeye_msgsListAlgorithmsRequestCodec,
    Ros1Easy_handeye_msgsListAlgorithmsResponse,
    Ros1Easy_handeye_msgsListAlgorithmsResponseCodec,
    Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest,
    Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequestCodec,
    Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse,
    Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponseCodec,
    Ros1Easy_handeye_msgsRemoveSampleRequest,
    Ros1Easy_handeye_msgsRemoveSampleRequestCodec,
    Ros1Easy_handeye_msgsRemoveSampleResponse,
    Ros1Easy_handeye_msgsRemoveSampleResponseCodec,
    Ros1Easy_handeye_msgsSelectTargetPoseRequest,
    Ros1Easy_handeye_msgsSelectTargetPoseRequestCodec,
    Ros1Easy_handeye_msgsSelectTargetPoseResponse,
    Ros1Easy_handeye_msgsSelectTargetPoseResponseCodec,
    Ros1Easy_handeye_msgsSetAlgorithmRequest,
    Ros1Easy_handeye_msgsSetAlgorithmRequestCodec,
    Ros1Easy_handeye_msgsSetAlgorithmResponse,
    Ros1Easy_handeye_msgsSetAlgorithmResponseCodec,
    Ros1Easy_handeye_msgsTakeSampleRequest,
    Ros1Easy_handeye_msgsTakeSampleRequestCodec,
    Ros1Easy_handeye_msgsTakeSampleResponse,
    Ros1Easy_handeye_msgsTakeSampleResponseCodec,
    Ros1Grid_map_msgsGetGridMapRequest,
    Ros1Grid_map_msgsGetGridMapRequestCodec,
    Ros1Grid_map_msgsGetGridMapResponse,
    Ros1Grid_map_msgsGetGridMapResponseCodec,
    Ros1Grid_map_msgsGetGridMapInfoRequest,
    Ros1Grid_map_msgsGetGridMapInfoRequestCodec,
    Ros1Grid_map_msgsGetGridMapInfoResponse,
    Ros1Grid_map_msgsGetGridMapInfoResponseCodec,
    Ros1Grid_map_msgsProcessFileRequest,
    Ros1Grid_map_msgsProcessFileRequestCodec,
    Ros1Grid_map_msgsProcessFileResponse,
    Ros1Grid_map_msgsProcessFileResponseCodec,
    Ros1Grid_map_msgsSetGridMapRequest,
    Ros1Grid_map_msgsSetGridMapRequestCodec,
    Ros1Grid_map_msgsSetGridMapResponse,
    Ros1Grid_map_msgsSetGridMapResponseCodec,
    Ros1H12pro_controller_nodeExecuteArmActionRequest,
    Ros1H12pro_controller_nodeExecuteArmActionRequestCodec,
    Ros1H12pro_controller_nodeExecuteArmActionResponse,
    Ros1H12pro_controller_nodeExecuteArmActionResponseCodec,
    Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest,
    Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequestCodec,
    Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse,
    Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponseCodec,
    Ros1H12pro_controller_nodeChangeArmCtrlModeRequest,
    Ros1H12pro_controller_nodeChangeArmCtrlModeRequestCodec,
    Ros1H12pro_controller_nodeChangeArmCtrlModeResponse,
    Ros1H12pro_controller_nodeChangeArmCtrlModeResponseCodec,
    Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest,
    Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequestCodec,
    Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse,
    Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponseCodec,
    Ros1H12pro_controller_nodePlaymusicRequest,
    Ros1H12pro_controller_nodePlaymusicRequestCodec,
    Ros1H12pro_controller_nodePlaymusicResponse,
    Ros1H12pro_controller_nodePlaymusicResponseCodec,
    Ros1H12pro_controller_nodeSrvChangePhasesRequest,
    Ros1H12pro_controller_nodeSrvChangePhasesRequestCodec,
    Ros1H12pro_controller_nodeSrvChangePhasesResponse,
    Ros1H12pro_controller_nodeSrvChangePhasesResponseCodec,
    Ros1H12pro_controller_nodeSrvClearPositionCMDRequest,
    Ros1H12pro_controller_nodeSrvClearPositionCMDRequestCodec,
    Ros1H12pro_controller_nodeSrvClearPositionCMDResponse,
    Ros1H12pro_controller_nodeSrvClearPositionCMDResponseCodec,
    Ros1H12pro_controller_nodeSrvchangeCtlModeRequest,
    Ros1H12pro_controller_nodeSrvchangeCtlModeRequestCodec,
    Ros1H12pro_controller_nodeSrvchangeCtlModeResponse,
    Ros1H12pro_controller_nodeSrvchangeCtlModeResponseCodec,
    Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest,
    Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequestCodec,
    Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse,
    Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponseCodec,
    Ros1HandcontrollerdemorosnodeControlEndHandRequest,
    Ros1HandcontrollerdemorosnodeControlEndHandRequestCodec,
    Ros1HandcontrollerdemorosnodeControlEndHandResponse,
    Ros1HandcontrollerdemorosnodeControlEndHandResponseCodec,
    Ros1HandcontrollerdemorosnodeSrvArmIKRequest,
    Ros1HandcontrollerdemorosnodeSrvArmIKRequestCodec,
    Ros1HandcontrollerdemorosnodeSrvArmIKResponse,
    Ros1HandcontrollerdemorosnodeSrvArmIKResponseCodec,
    Ros1Humanoid_arm_controlArmControlRequest,
    Ros1Humanoid_arm_controlArmControlRequestCodec,
    Ros1Humanoid_arm_controlArmControlResponse,
    Ros1Humanoid_arm_controlArmControlResponseCodec,
    Ros1Humanoid_arm_controlHandUpAndGrabRequest,
    Ros1Humanoid_arm_controlHandUpAndGrabRequestCodec,
    Ros1Humanoid_arm_controlHandUpAndGrabResponse,
    Ros1Humanoid_arm_controlHandUpAndGrabResponseCodec,
    Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest,
    Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequestCodec,
    Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse,
    Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponseCodec,
    Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest,
    Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequestCodec,
    Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse,
    Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponseCodec,
    Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest,
    Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequestCodec,
    Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse,
    Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponseCodec,
    Ros1Kuavo_audio_playerAudio_statusRequest,
    Ros1Kuavo_audio_playerAudio_statusRequestCodec,
    Ros1Kuavo_audio_playerAudio_statusResponse,
    Ros1Kuavo_audio_playerAudio_statusResponseCodec,
    Ros1Kuavo_audio_playerPlaymusicRequest,
    Ros1Kuavo_audio_playerPlaymusicRequestCodec,
    Ros1Kuavo_audio_playerPlaymusicResponse,
    Ros1Kuavo_audio_playerPlaymusicResponseCodec,
    Ros1Kuavo_mappingDeleteMapRequest,
    Ros1Kuavo_mappingDeleteMapRequestCodec,
    Ros1Kuavo_mappingDeleteMapResponse,
    Ros1Kuavo_mappingDeleteMapResponseCodec,
    Ros1Kuavo_mappingEditMapRequest,
    Ros1Kuavo_mappingEditMapRequestCodec,
    Ros1Kuavo_mappingEditMapResponse,
    Ros1Kuavo_mappingEditMapResponseCodec,
    Ros1Kuavo_mappingGetAllMapsRequest,
    Ros1Kuavo_mappingGetAllMapsRequestCodec,
    Ros1Kuavo_mappingGetAllMapsResponse,
    Ros1Kuavo_mappingGetAllMapsResponseCodec,
    Ros1Kuavo_mappingGetCurrentMapRequest,
    Ros1Kuavo_mappingGetCurrentMapRequestCodec,
    Ros1Kuavo_mappingGetCurrentMapResponse,
    Ros1Kuavo_mappingGetCurrentMapResponseCodec,
    Ros1Kuavo_mappingInitialPoseWithTaskPointRequest,
    Ros1Kuavo_mappingInitialPoseWithTaskPointRequestCodec,
    Ros1Kuavo_mappingInitialPoseWithTaskPointResponse,
    Ros1Kuavo_mappingInitialPoseWithTaskPointResponseCodec,
    Ros1Kuavo_mappingLoadMapRequest,
    Ros1Kuavo_mappingLoadMapRequestCodec,
    Ros1Kuavo_mappingLoadMapResponse,
    Ros1Kuavo_mappingLoadMapResponseCodec,
    Ros1Kuavo_mappingNavigateToTaskPointRequest,
    Ros1Kuavo_mappingNavigateToTaskPointRequestCodec,
    Ros1Kuavo_mappingNavigateToTaskPointResponse,
    Ros1Kuavo_mappingNavigateToTaskPointResponseCodec,
    Ros1Kuavo_mappingRenameMapRequest,
    Ros1Kuavo_mappingRenameMapRequestCodec,
    Ros1Kuavo_mappingRenameMapResponse,
    Ros1Kuavo_mappingRenameMapResponseCodec,
    Ros1Kuavo_mappingSaveMapRequest,
    Ros1Kuavo_mappingSaveMapRequestCodec,
    Ros1Kuavo_mappingSaveMapResponse,
    Ros1Kuavo_mappingSaveMapResponseCodec,
    Ros1Kuavo_mappingSetInitialPoseRequest,
    Ros1Kuavo_mappingSetInitialPoseRequestCodec,
    Ros1Kuavo_mappingSetInitialPoseResponse,
    Ros1Kuavo_mappingSetInitialPoseResponseCodec,
    Ros1Kuavo_mappingStartMappingRequest,
    Ros1Kuavo_mappingStartMappingRequestCodec,
    Ros1Kuavo_mappingStartMappingResponse,
    Ros1Kuavo_mappingStartMappingResponseCodec,
    Ros1Kuavo_mappingStopMappingRequest,
    Ros1Kuavo_mappingStopMappingRequestCodec,
    Ros1Kuavo_mappingStopMappingResponse,
    Ros1Kuavo_mappingStopMappingResponseCodec,
    Ros1Kuavo_mappingTaskPointOperationRequest,
    Ros1Kuavo_mappingTaskPointOperationRequestCodec,
    Ros1Kuavo_mappingTaskPointOperationResponse,
    Ros1Kuavo_mappingTaskPointOperationResponseCodec,
    Ros1Kuavo_msgsCreatePathRequest,
    Ros1Kuavo_msgsCreatePathRequestCodec,
    Ros1Kuavo_msgsCreatePathResponse,
    Ros1Kuavo_msgsCreatePathResponseCodec,
    Ros1Kuavo_msgsExecuteArmActionRequest,
    Ros1Kuavo_msgsExecuteArmActionRequestCodec,
    Ros1Kuavo_msgsExecuteArmActionResponse,
    Ros1Kuavo_msgsExecuteArmActionResponseCodec,
    Ros1Kuavo_msgsFallStandCommandRequest,
    Ros1Kuavo_msgsFallStandCommandRequestCodec,
    Ros1Kuavo_msgsFallStandCommandResponse,
    Ros1Kuavo_msgsFallStandCommandResponseCodec,
    Ros1Kuavo_msgsGetAllMapsRequest,
    Ros1Kuavo_msgsGetAllMapsRequestCodec,
    Ros1Kuavo_msgsGetAllMapsResponse,
    Ros1Kuavo_msgsGetAllMapsResponseCodec,
    Ros1Kuavo_msgsGetBatteryInfoRequest,
    Ros1Kuavo_msgsGetBatteryInfoRequestCodec,
    Ros1Kuavo_msgsGetBatteryInfoResponse,
    Ros1Kuavo_msgsGetBatteryInfoResponseCodec,
    Ros1Kuavo_msgsGetCurrentMapRequest,
    Ros1Kuavo_msgsGetCurrentMapRequestCodec,
    Ros1Kuavo_msgsGetCurrentMapResponse,
    Ros1Kuavo_msgsGetCurrentMapResponseCodec,
    Ros1Kuavo_msgsGetPowerBoardStatusRequest,
    Ros1Kuavo_msgsGetPowerBoardStatusRequestCodec,
    Ros1Kuavo_msgsGetPowerBoardStatusResponse,
    Ros1Kuavo_msgsGetPowerBoardStatusResponseCodec,
    Ros1Kuavo_msgsGetStringListRequest,
    Ros1Kuavo_msgsGetStringListRequestCodec,
    Ros1Kuavo_msgsGetStringListResponse,
    Ros1Kuavo_msgsGetStringListResponseCodec,
    Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest,
    Ros1Kuavo_msgsGetTargetPartPoseInCameraRequestCodec,
    Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse,
    Ros1Kuavo_msgsGetTargetPartPoseInCameraResponseCodec,
    Ros1Kuavo_msgsInitialPoseWithTaskPointRequest,
    Ros1Kuavo_msgsInitialPoseWithTaskPointRequestCodec,
    Ros1Kuavo_msgsInitialPoseWithTaskPointResponse,
    Ros1Kuavo_msgsInitialPoseWithTaskPointResponseCodec,
    Ros1Kuavo_msgsLoadMapRequest,
    Ros1Kuavo_msgsLoadMapRequestCodec,
    Ros1Kuavo_msgsLoadMapResponse,
    Ros1Kuavo_msgsLoadMapResponseCodec,
    Ros1Kuavo_msgsNavigateToTaskPointRequest,
    Ros1Kuavo_msgsNavigateToTaskPointRequestCodec,
    Ros1Kuavo_msgsNavigateToTaskPointResponse,
    Ros1Kuavo_msgsNavigateToTaskPointResponseCodec,
    Ros1Kuavo_msgsPlayMusicImmediateRequest,
    Ros1Kuavo_msgsPlayMusicImmediateRequestCodec,
    Ros1Kuavo_msgsPlayMusicImmediateResponse,
    Ros1Kuavo_msgsPlayMusicImmediateResponseCodec,
    Ros1Kuavo_msgsRelaySelectChannelRequest,
    Ros1Kuavo_msgsRelaySelectChannelRequestCodec,
    Ros1Kuavo_msgsRelaySelectChannelResponse,
    Ros1Kuavo_msgsRelaySelectChannelResponseCodec,
    Ros1Kuavo_msgsRepublishTFsRequest,
    Ros1Kuavo_msgsRepublishTFsRequestCodec,
    Ros1Kuavo_msgsRepublishTFsResponse,
    Ros1Kuavo_msgsRepublishTFsResponseCodec,
    Ros1Kuavo_msgsSetHeadControlModeRequest,
    Ros1Kuavo_msgsSetHeadControlModeRequestCodec,
    Ros1Kuavo_msgsSetHeadControlModeResponse,
    Ros1Kuavo_msgsSetHeadControlModeResponseCodec,
    Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest,
    Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequestCodec,
    Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse,
    Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponseCodec,
    Ros1Kuavo_msgsSetInitialPoseRequest,
    Ros1Kuavo_msgsSetInitialPoseRequestCodec,
    Ros1Kuavo_msgsSetInitialPoseResponse,
    Ros1Kuavo_msgsSetInitialPoseResponseCodec,
    Ros1Kuavo_msgsSetJoyTopicRequest,
    Ros1Kuavo_msgsSetJoyTopicRequestCodec,
    Ros1Kuavo_msgsSetJoyTopicResponse,
    Ros1Kuavo_msgsSetJoyTopicResponseCodec,
    Ros1Kuavo_msgsSetLEDModeRequest,
    Ros1Kuavo_msgsSetLEDModeRequestCodec,
    Ros1Kuavo_msgsSetLEDModeResponse,
    Ros1Kuavo_msgsSetLEDModeResponseCodec,
    Ros1Kuavo_msgsSetLEDMode_freeRequest,
    Ros1Kuavo_msgsSetLEDMode_freeRequestCodec,
    Ros1Kuavo_msgsSetLEDMode_freeResponse,
    Ros1Kuavo_msgsSetLEDMode_freeResponseCodec,
    Ros1Kuavo_msgsSetStringRequest,
    Ros1Kuavo_msgsSetStringRequestCodec,
    Ros1Kuavo_msgsSetStringResponse,
    Ros1Kuavo_msgsSetStringResponseCodec,
    Ros1Kuavo_msgsSpeechSynthesisRequest,
    Ros1Kuavo_msgsSpeechSynthesisRequestCodec,
    Ros1Kuavo_msgsSpeechSynthesisResponse,
    Ros1Kuavo_msgsSpeechSynthesisResponseCodec,
    Ros1Kuavo_msgsTaskPointOperationRequest,
    Ros1Kuavo_msgsTaskPointOperationRequestCodec,
    Ros1Kuavo_msgsTaskPointOperationResponse,
    Ros1Kuavo_msgsTaskPointOperationResponseCodec,
    Ros1Kuavo_msgsTransportModeCommandRequest,
    Ros1Kuavo_msgsTransportModeCommandRequestCodec,
    Ros1Kuavo_msgsTransportModeCommandResponse,
    Ros1Kuavo_msgsTransportModeCommandResponseCodec,
    Ros1Kuavo_msgsAccessIkSolveRequest,
    Ros1Kuavo_msgsAccessIkSolveRequestCodec,
    Ros1Kuavo_msgsAccessIkSolveResponse,
    Ros1Kuavo_msgsAccessIkSolveResponseCodec,
    Ros1Kuavo_msgsAdjustZeroPointRequest,
    Ros1Kuavo_msgsAdjustZeroPointRequestCodec,
    Ros1Kuavo_msgsAdjustZeroPointResponse,
    Ros1Kuavo_msgsAdjustZeroPointResponseCodec,
    Ros1Kuavo_msgsChangeArmCtrlModeRequest,
    Ros1Kuavo_msgsChangeArmCtrlModeRequestCodec,
    Ros1Kuavo_msgsChangeArmCtrlModeResponse,
    Ros1Kuavo_msgsChangeArmCtrlModeResponseCodec,
    Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest,
    Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequestCodec,
    Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse,
    Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponseCodec,
    Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest,
    Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequestCodec,
    Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse,
    Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponseCodec,
    Ros1Kuavo_msgsChangeLbQuickModeSrvRequest,
    Ros1Kuavo_msgsChangeLbQuickModeSrvRequestCodec,
    Ros1Kuavo_msgsChangeLbQuickModeSrvResponse,
    Ros1Kuavo_msgsChangeLbQuickModeSrvResponseCodec,
    Ros1Kuavo_msgsChangeMotorParamRequest,
    Ros1Kuavo_msgsChangeMotorParamRequestCodec,
    Ros1Kuavo_msgsChangeMotorParamResponse,
    Ros1Kuavo_msgsChangeMotorParamResponseCodec,
    Ros1Kuavo_msgsChangeTorsoCtrlModeRequest,
    Ros1Kuavo_msgsChangeTorsoCtrlModeRequestCodec,
    Ros1Kuavo_msgsChangeTorsoCtrlModeResponse,
    Ros1Kuavo_msgsChangeTorsoCtrlModeResponseCodec,
    Ros1Kuavo_msgsChangeWaistCtrlModeRequest,
    Ros1Kuavo_msgsChangeWaistCtrlModeRequestCodec,
    Ros1Kuavo_msgsChangeWaistCtrlModeResponse,
    Ros1Kuavo_msgsChangeWaistCtrlModeResponseCodec,
    Ros1Kuavo_msgsChassisPoseCmdSrvRequest,
    Ros1Kuavo_msgsChassisPoseCmdSrvRequestCodec,
    Ros1Kuavo_msgsChassisPoseCmdSrvResponse,
    Ros1Kuavo_msgsChassisPoseCmdSrvResponseCodec,
    Ros1Kuavo_msgsControlLejuClawRequest,
    Ros1Kuavo_msgsControlLejuClawRequestCodec,
    Ros1Kuavo_msgsControlLejuClawResponse,
    Ros1Kuavo_msgsControlLejuClawResponseCodec,
    Ros1Kuavo_msgsEePoseReachErrorRequest,
    Ros1Kuavo_msgsEePoseReachErrorRequestCodec,
    Ros1Kuavo_msgsEePoseReachErrorResponse,
    Ros1Kuavo_msgsEePoseReachErrorResponseCodec,
    Ros1Kuavo_msgsEnableHandTouchSensorRequest,
    Ros1Kuavo_msgsEnableHandTouchSensorRequestCodec,
    Ros1Kuavo_msgsEnableHandTouchSensorResponse,
    Ros1Kuavo_msgsEnableHandTouchSensorResponseCodec,
    Ros1Kuavo_msgsFkSrvRequest,
    Ros1Kuavo_msgsFkSrvRequestCodec,
    Ros1Kuavo_msgsFkSrvResponse,
    Ros1Kuavo_msgsFkSrvResponseCodec,
    Ros1Kuavo_msgsFkSrvWithReferFrameRequest,
    Ros1Kuavo_msgsFkSrvWithReferFrameRequestCodec,
    Ros1Kuavo_msgsFkSrvWithReferFrameResponse,
    Ros1Kuavo_msgsFkSrvWithReferFrameResponseCodec,
    Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest,
    Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequestCodec,
    Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse,
    Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponseCodec,
    Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest,
    Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequestCodec,
    Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse,
    Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponseCodec,
    Ros1Kuavo_msgsGestureExecuteRequest,
    Ros1Kuavo_msgsGestureExecuteRequestCodec,
    Ros1Kuavo_msgsGestureExecuteResponse,
    Ros1Kuavo_msgsGestureExecuteResponseCodec,
    Ros1Kuavo_msgsGestureExecuteStateRequest,
    Ros1Kuavo_msgsGestureExecuteStateRequestCodec,
    Ros1Kuavo_msgsGestureExecuteStateResponse,
    Ros1Kuavo_msgsGestureExecuteStateResponseCodec,
    Ros1Kuavo_msgsGestureListRequest,
    Ros1Kuavo_msgsGestureListRequestCodec,
    Ros1Kuavo_msgsGestureListResponse,
    Ros1Kuavo_msgsGestureListResponseCodec,
    Ros1Kuavo_msgsGetControllerListRequest,
    Ros1Kuavo_msgsGetControllerListRequestCodec,
    Ros1Kuavo_msgsGetControllerListResponse,
    Ros1Kuavo_msgsGetControllerListResponseCodec,
    Ros1Kuavo_msgsGetCurrentGaitNameRequest,
    Ros1Kuavo_msgsGetCurrentGaitNameRequestCodec,
    Ros1Kuavo_msgsGetCurrentGaitNameResponse,
    Ros1Kuavo_msgsGetCurrentGaitNameResponseCodec,
    Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest,
    Ros1Kuavo_msgsGetLbTorsoInitialPoseRequestCodec,
    Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse,
    Ros1Kuavo_msgsGetLbTorsoInitialPoseResponseCodec,
    Ros1Kuavo_msgsGetMotorParamRequest,
    Ros1Kuavo_msgsGetMotorParamRequestCodec,
    Ros1Kuavo_msgsGetMotorParamResponse,
    Ros1Kuavo_msgsGetMotorParamResponseCodec,
    Ros1Kuavo_msgsGetMotorZeroPointsRequest,
    Ros1Kuavo_msgsGetMotorZeroPointsRequestCodec,
    Ros1Kuavo_msgsGetMotorZeroPointsResponse,
    Ros1Kuavo_msgsGetMotorZeroPointsResponseCodec,
    Ros1Kuavo_msgsGoToZeroPointRequest,
    Ros1Kuavo_msgsGoToZeroPointRequestCodec,
    Ros1Kuavo_msgsGoToZeroPointResponse,
    Ros1Kuavo_msgsGoToZeroPointResponseCodec,
    Ros1Kuavo_msgsHandForceLevelRequest,
    Ros1Kuavo_msgsHandForceLevelRequestCodec,
    Ros1Kuavo_msgsHandForceLevelResponse,
    Ros1Kuavo_msgsHandForceLevelResponseCodec,
    Ros1Kuavo_msgsJointMoveToRequest,
    Ros1Kuavo_msgsJointMoveToRequestCodec,
    Ros1Kuavo_msgsJointMoveToResponse,
    Ros1Kuavo_msgsJointMoveToResponseCodec,
    Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest,
    Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequestCodec,
    Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse,
    Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponseCodec,
    Ros1Kuavo_msgsLbLegControlSrvRequest,
    Ros1Kuavo_msgsLbLegControlSrvRequestCodec,
    Ros1Kuavo_msgsLbLegControlSrvResponse,
    Ros1Kuavo_msgsLbLegControlSrvResponseCodec,
    Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest,
    Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequestCodec,
    Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse,
    Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponseCodec,
    Ros1Kuavo_msgsLbMultiTimedPosCmdRequest,
    Ros1Kuavo_msgsLbMultiTimedPosCmdRequestCodec,
    Ros1Kuavo_msgsLbMultiTimedPosCmdResponse,
    Ros1Kuavo_msgsLbMultiTimedPosCmdResponseCodec,
    Ros1Kuavo_msgsLbTimedPosCmdRequest,
    Ros1Kuavo_msgsLbTimedPosCmdRequestCodec,
    Ros1Kuavo_msgsLbTimedPosCmdResponse,
    Ros1Kuavo_msgsLbTimedPosCmdResponseCodec,
    Ros1Kuavo_msgsLejuClawRecoveryRequest,
    Ros1Kuavo_msgsLejuClawRecoveryRequestCodec,
    Ros1Kuavo_msgsLejuClawRecoveryResponse,
    Ros1Kuavo_msgsLejuClawRecoveryResponseCodec,
    Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest,
    Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequestCodec,
    Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse,
    Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponseCodec,
    Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest,
    Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequestCodec,
    Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse,
    Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponseCodec,
    Ros1Kuavo_msgsPlaymusicRequest,
    Ros1Kuavo_msgsPlaymusicRequestCodec,
    Ros1Kuavo_msgsPlaymusicResponse,
    Ros1Kuavo_msgsPlaymusicResponseCodec,
    Ros1Kuavo_msgsRecordmusicRequest,
    Ros1Kuavo_msgsRecordmusicRequestCodec,
    Ros1Kuavo_msgsRecordmusicResponse,
    Ros1Kuavo_msgsRecordmusicResponseCodec,
    Ros1Kuavo_msgsRobotSwitchPoseRequest,
    Ros1Kuavo_msgsRobotSwitchPoseRequestCodec,
    Ros1Kuavo_msgsRobotSwitchPoseResponse,
    Ros1Kuavo_msgsRobotSwitchPoseResponseCodec,
    Ros1Kuavo_msgsSetContactForceInterpParamsRequest,
    Ros1Kuavo_msgsSetContactForceInterpParamsRequestCodec,
    Ros1Kuavo_msgsSetContactForceInterpParamsResponse,
    Ros1Kuavo_msgsSetContactForceInterpParamsResponseCodec,
    Ros1Kuavo_msgsSetHwIntialStateRequest,
    Ros1Kuavo_msgsSetHwIntialStateRequestCodec,
    Ros1Kuavo_msgsSetHwIntialStateResponse,
    Ros1Kuavo_msgsSetHwIntialStateResponseCodec,
    Ros1Kuavo_msgsSetMmCtrlFrameRequest,
    Ros1Kuavo_msgsSetMmCtrlFrameRequestCodec,
    Ros1Kuavo_msgsSetMmCtrlFrameResponse,
    Ros1Kuavo_msgsSetMmCtrlFrameResponseCodec,
    Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest,
    Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequestCodec,
    Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse,
    Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponseCodec,
    Ros1Kuavo_msgsSetRuckigPlannerParamsRequest,
    Ros1Kuavo_msgsSetRuckigPlannerParamsRequestCodec,
    Ros1Kuavo_msgsSetRuckigPlannerParamsResponse,
    Ros1Kuavo_msgsSetRuckigPlannerParamsResponseCodec,
    Ros1Kuavo_msgsSetTagIdRequest,
    Ros1Kuavo_msgsSetTagIdRequestCodec,
    Ros1Kuavo_msgsSetTagIdResponse,
    Ros1Kuavo_msgsSetTagIdResponseCodec,
    Ros1Kuavo_msgsSingleStepControlRequest,
    Ros1Kuavo_msgsSingleStepControlRequestCodec,
    Ros1Kuavo_msgsSingleStepControlResponse,
    Ros1Kuavo_msgsSingleStepControlResponseCodec,
    Ros1Kuavo_msgsStairAlignmentSrvRequest,
    Ros1Kuavo_msgsStairAlignmentSrvRequestCodec,
    Ros1Kuavo_msgsStairAlignmentSrvResponse,
    Ros1Kuavo_msgsStairAlignmentSrvResponseCodec,
    Ros1Kuavo_msgsSwitchControllerRequest,
    Ros1Kuavo_msgsSwitchControllerRequestCodec,
    Ros1Kuavo_msgsSwitchControllerResponse,
    Ros1Kuavo_msgsSwitchControllerResponseCodec,
    Ros1Kuavo_msgsSwitchToNextControllerRequest,
    Ros1Kuavo_msgsSwitchToNextControllerRequestCodec,
    Ros1Kuavo_msgsSwitchToNextControllerResponse,
    Ros1Kuavo_msgsSwitchToNextControllerResponseCodec,
    Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest,
    Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequestCodec,
    Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse,
    Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponseCodec,
    Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest,
    Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequestCodec,
    Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse,
    Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponseCodec,
    Ros1Kuavo_pico_gmrAmpJoyRouteRequest,
    Ros1Kuavo_pico_gmrAmpJoyRouteRequestCodec,
    Ros1Kuavo_pico_gmrAmpJoyRouteResponse,
    Ros1Kuavo_pico_gmrAmpJoyRouteResponseCodec,
    Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest,
    Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequestCodec,
    Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse,
    Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponseCodec,
    Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest,
    Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequestCodec,
    Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse,
    Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponseCodec,
    Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest,
    Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequestCodec,
    Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse,
    Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponseCodec,
    Ros1Leju_mobile_base_msgsBaseMoveRequest,
    Ros1Leju_mobile_base_msgsBaseMoveRequestCodec,
    Ros1Leju_mobile_base_msgsBaseMoveResponse,
    Ros1Leju_mobile_base_msgsBaseMoveResponseCodec,
    Ros1Leju_mobile_base_msgsCheckArrivedRequest,
    Ros1Leju_mobile_base_msgsCheckArrivedRequestCodec,
    Ros1Leju_mobile_base_msgsCheckArrivedResponse,
    Ros1Leju_mobile_base_msgsCheckArrivedResponseCodec,
    Ros1Leju_mobile_base_msgsControlLaserScanRequest,
    Ros1Leju_mobile_base_msgsControlLaserScanRequestCodec,
    Ros1Leju_mobile_base_msgsControlLaserScanResponse,
    Ros1Leju_mobile_base_msgsControlLaserScanResponseCodec,
    Ros1Leju_mobile_base_msgsDispatchMoveRequest,
    Ros1Leju_mobile_base_msgsDispatchMoveRequestCodec,
    Ros1Leju_mobile_base_msgsDispatchMoveResponse,
    Ros1Leju_mobile_base_msgsDispatchMoveResponseCodec,
    Ros1Leju_mobile_base_msgsExecTaskRequest,
    Ros1Leju_mobile_base_msgsExecTaskRequestCodec,
    Ros1Leju_mobile_base_msgsExecTaskResponse,
    Ros1Leju_mobile_base_msgsExecTaskResponseCodec,
    Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest,
    Ros1Leju_mobile_base_msgsGetGlobalOdometerRequestCodec,
    Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse,
    Ros1Leju_mobile_base_msgsGetGlobalOdometerResponseCodec,
    Ros1Leju_mobile_base_msgsGetLaserScanListRequest,
    Ros1Leju_mobile_base_msgsGetLaserScanListRequestCodec,
    Ros1Leju_mobile_base_msgsGetLaserScanListResponse,
    Ros1Leju_mobile_base_msgsGetLaserScanListResponseCodec,
    Ros1Leju_mobile_base_msgsMoveToTargetRequest,
    Ros1Leju_mobile_base_msgsMoveToTargetRequestCodec,
    Ros1Leju_mobile_base_msgsMoveToTargetResponse,
    Ros1Leju_mobile_base_msgsMoveToTargetResponseCodec,
    Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest,
    Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequestCodec,
    Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse,
    Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponseCodec,
    Ros1Leju_mobile_base_msgsSetDispatchModeRequest,
    Ros1Leju_mobile_base_msgsSetDispatchModeRequestCodec,
    Ros1Leju_mobile_base_msgsSetDispatchModeResponse,
    Ros1Leju_mobile_base_msgsSetDispatchModeResponseCodec,
    Ros1Leju_mobile_base_msgsSetMapServerRequest,
    Ros1Leju_mobile_base_msgsSetMapServerRequestCodec,
    Ros1Leju_mobile_base_msgsSetMapServerResponse,
    Ros1Leju_mobile_base_msgsSetMapServerResponseCodec,
    Ros1Leju_mobile_base_msgsStartLocalizationRequest,
    Ros1Leju_mobile_base_msgsStartLocalizationRequestCodec,
    Ros1Leju_mobile_base_msgsStartLocalizationResponse,
    Ros1Leju_mobile_base_msgsStartLocalizationResponseCodec,
    Ros1Leju_mobile_base_msgsSyncCostmapRequest,
    Ros1Leju_mobile_base_msgsSyncCostmapRequestCodec,
    Ros1Leju_mobile_base_msgsSyncCostmapResponse,
    Ros1Leju_mobile_base_msgsSyncCostmapResponseCodec,
    Ros1Network_monitorNetworkPingRequest,
    Ros1Network_monitorNetworkPingRequestCodec,
    Ros1Network_monitorNetworkPingResponse,
    Ros1Network_monitorNetworkPingResponseCodec,
    Ros1Ocs2_msgsPause_resumeRequest,
    Ros1Ocs2_msgsPause_resumeRequestCodec,
    Ros1Ocs2_msgsPause_resumeResponse,
    Ros1Ocs2_msgsPause_resumeResponseCodec,
    Ros1Ocs2_msgsResetRequest,
    Ros1Ocs2_msgsResetRequestCodec,
    Ros1Ocs2_msgsResetResponse,
    Ros1Ocs2_msgsResetResponseCodec,
    Ros1Ocs2_switched_model_msgsTrajectory_requestRequest,
    Ros1Ocs2_switched_model_msgsTrajectory_requestRequestCodec,
    Ros1Ocs2_switched_model_msgsTrajectory_requestResponse,
    Ros1Ocs2_switched_model_msgsTrajectory_requestResponseCodec,
    Ros1Robot_calibration_msgsGripperLedCommandGoal,
    Ros1Robot_calibration_msgsGripperLedCommandGoalCodec,
    Ros1Robot_calibration_msgsGripperLedCommandResult,
    Ros1Robot_calibration_msgsGripperLedCommandResultCodec,
    Ros1Robot_calibration_msgsGripperLedCommandFeedback,
    Ros1Robot_calibration_msgsGripperLedCommandFeedbackCodec,
    Ros1Robot_localizationFromLLRequest,
    Ros1Robot_localizationFromLLRequestCodec,
    Ros1Robot_localizationFromLLResponse,
    Ros1Robot_localizationFromLLResponseCodec,
    Ros1Robot_localizationGetStateRequest,
    Ros1Robot_localizationGetStateRequestCodec,
    Ros1Robot_localizationGetStateResponse,
    Ros1Robot_localizationGetStateResponseCodec,
    Ros1Robot_localizationSetDatumRequest,
    Ros1Robot_localizationSetDatumRequestCodec,
    Ros1Robot_localizationSetDatumResponse,
    Ros1Robot_localizationSetDatumResponseCodec,
    Ros1Robot_localizationSetPoseRequest,
    Ros1Robot_localizationSetPoseRequestCodec,
    Ros1Robot_localizationSetPoseResponse,
    Ros1Robot_localizationSetPoseResponseCodec,
    Ros1Robot_localizationSetUTMZoneRequest,
    Ros1Robot_localizationSetUTMZoneRequestCodec,
    Ros1Robot_localizationSetUTMZoneResponse,
    Ros1Robot_localizationSetUTMZoneResponseCodec,
    Ros1Robot_localizationToLLRequest,
    Ros1Robot_localizationToLLRequestCodec,
    Ros1Robot_localizationToLLResponse,
    Ros1Robot_localizationToLLResponseCodec,
    Ros1Robot_localizationToggleFilterProcessingRequest,
    Ros1Robot_localizationToggleFilterProcessingRequestCodec,
    Ros1Robot_localizationToggleFilterProcessingResponse,
    Ros1Robot_localizationToggleFilterProcessingResponseCodec,
    Ros1Taiji_trigger_nodePerformTaijiRequest,
    Ros1Taiji_trigger_nodePerformTaijiRequestCodec,
    Ros1Taiji_trigger_nodePerformTaijiResponse,
    Ros1Taiji_trigger_nodePerformTaijiResponseCodec,
} from './bounded_records';

/**
 * Complete typed result. Inspect status before value; required is retained
 * only when the actual SDK import reports its output-length sentinel written.
 */
export class RPCReply<T> extends Reply
{
    value: T|null = null;
    id: u64 = 0;
    kind: u8 = 0;
    event: UnifiedEvent|null = null;

    constructor(reply: Reply = new Reply())
    {
        super(reply.status, reply.bytes, reply.required, reply.requiredValid);
    }
}

/** Primary failure remains separate from every attempted retirement result. */
export class RPCCleanup
{
    constructor(
        public primary: u32,
        public statuses: Array<u32>,
    )
    {
    }
}

function rpcId(bytes: Uint8Array): u64
{
    return bytes.length < 8 ? 0 : load<u64>(bytes.dataStart);
}

function rpcFrame(id: u64, body: Uint8Array, kind: i32 = -1): Uint8Array
{
    const prefix = kind < 0 ? 8 : 9, out = new Uint8Array(prefix + body.length);
    store<u64>(out.dataStart, id);
    if(kind >= 0)
        out[8] = <u8>kind;
    out.set(body, prefix);
    return out;
}

function rpcRemove(values: Array<u64>, id: u64): void
{
    const at = values.indexOf(id);
    if(at >= 0)
    {
        values[at] = values[values.length - 1];
        values.pop();
    }
}

class RPCOwners
{
    private caps: Array<Capability> = [];
    busy: bool = false;
    status: u32 = 0;
    constructionCleanup: RPCCleanup = new RPCCleanup(0, []);

    constructor(
        api: Api,
        version: u32,
        aliases: Array<string>,
        public capacity: i32,
    )
    {
        if(api.backend != version || capacity < 1 || capacity > 1024 || !aliases.length)
            this.status = Status.Invalid;
        for(let i = 0; !this.status && i < aliases.length; ++i)
            if(!aliases[i].length || aliases[i].indexOf('\0') >= 0 || !validUnicode(aliases[i]) ||
               Uint8Array.wrap(String.UTF8.encode(aliases[i])).length > 255 || aliases.indexOf(aliases[i]) != i)
                this.status = Status.Invalid;
        for(let i = 0; !this.status && i < aliases.length; ++i)
        {
            const cap = new Capability(api);
            this.status = cap.open(aliases[i]);
            if(!this.status)
                this.caps.push(cap);
        }
        if(this.status)
            this.constructionCleanup = this.cleanup(this.status);
    }

    cap(index: i32): Capability
    {
        return this.caps[index];
    }

    check(): u32
    {
        if(this.busy)
            return Status.Conflict;
        if(this.status)
            return this.status;
        return this.caps.length && this.caps[0].isOpen() ? 0 : Status.BadHandle;
    }

    available(index: i32): bool
    {
        return index >= 0 && index < this.caps.length && this.caps[index].isOpen();
    }

    cleanup(primary: u32 = 0, revoke: bool = false): RPCCleanup
    {
        if(this.busy)
            return new RPCCleanup(primary, [ Status.Conflict ]);
        const out = new Array<u32>();
        for(let i = this.caps.length - 1; i >= 0; --i)
            if(this.caps[i].isOpen())
                out.push(revoke ? this.caps[i].revoke() : this.caps[i].close());
        return new RPCCleanup(primary, out);
    }

    zero(index: i32, op: Operation, wire: Uint8Array): u32
    {
        const r = this.cap(index).request(op, wire, 0);
        return r.status ? r.status : r.bytes.length ? Status.Invalid : 0;
    }
}

/**
 * Generic implementation instantiated only with the generated complete codecs.
 * Each validator runs before encoding, including zero-wire nested-empty values.
 */
export class BoundedServiceClient<Q, S>
{
    private owners: RPCOwners;
    private pending: Array<u64> = [];
    private sequence: u64 = 0;
    private instance: u64 = 0;
    private session: u64 = 0;

    constructor(
        api: Api,
        private version: u32,
        alias: string,
        private requestCodec: Codec<Q>,
        private responseCodec: Codec<S>,
        private requestValid: (value: Q) => bool,
        private responseMax: i32,
        observerAlias: string = '',
        capacity: i32 = 8,
    )
    {
        this.owners = new RPCOwners(api, version, observerAlias.length ? [ alias, observerAlias ] : [ alias ], capacity);
    }

    /** One synchronous call. No timeout/disconnect/TooLarge replay is attempted. */
    call(value: Q): RPCReply<S>
    {
        let status = this.owners.check();
        if(!status && !this.requestValid(value))
            status = Status.Invalid;
        if(status)
            return new RPCReply<S>(new Reply(status));
        const r = this.owners.cap(0).request(Operation.service_call, this.requestCodec.encode(value), this.responseMax), out = new RPCReply<S>(r);
        if(!r.status)
        {
            if(!this.responseCodec.valid(r.bytes))
                out.status = Status.Invalid;
            else
                out.value = this.responseCodec.decode(r.bytes);
        }
        return out;
    }

    /**
     * Real service_submit with the explicitly opened independent observer. The
     * returned id means admission only. Observer polling is exclusive to this owner.
     */
    submit(value: Q): RPCReply<S>
    {
        let status = this.owners.check();
        if(!status && !this.owners.available(1))
            status = Status.Denied;
        if(!status && this.pending.length == this.owners.capacity)
            status = Status.TooLarge;
        if(!status && !this.requestValid(value))
            status = Status.Invalid;
        const out = new RPCReply<S>(new Reply(status));
        if(status)
            return out;
        const admitted = this.owners.cap(0).submitService(this.owners.cap(1), this.requestCodec.encode(value));
        out.status = admitted.status;
        out.id = admitted.handle;
        if(!out.status)
        {
            if(!out.id || this.pending.indexOf(out.id) >= 0)
                out.status = Status.Invalid;
            else
                this.pending.push(out.id);
        }
        return out;
    }

    /**
     * Use the existing SDK envelope decoder before source/stream/correlation and
     * component checks. Source retirement leaves pending IDs until explicit close.
     */
    pollCompletion(): RPCReply<S>
    {
        let status = this.owners.check();
        if(!status && !this.owners.available(1))
            status = Status.Denied;
        if(status)
            return new RPCReply<S>(new Reply(status));
        const r = this.owners.cap(1).pollEventV1(64 + this.responseMax), out = new RPCReply<S>(r);
        if(r.status)
            return out;
        const event = decodeUnifiedEvent(r.bytes);
        if(event === null)
        {
            out.status = Status.Invalid;
            return out;
        }
        if(event.backend != this.version || event.source != this.owners.cap(0).handle || this.sequence == u64.MAX_VALUE ||
           event.sequence != this.sequence + 1 || (this.sequence && (event.instance != this.instance || event.session != this.session)))
        {
            out.status = Status.Invalid;
            return out;
        }
        this.sequence = event.sequence;
        this.instance = event.instance;
        this.session = event.session;
        out.event = event;
        out.id = event.correlation;
        if(event.kind == EventKind.ResourceClosed)
        {
            out.status = Status.BadHandle;
            return out;
        }
        if(this.pending.indexOf(event.correlation) < 0)
        {
            out.status = Status.Invalid;
            return out;
        }
        if(event.kind == EventKind.ResourceError)
        {
            out.status = event.error;
            rpcRemove(this.pending, event.correlation);
            return out;
        }
        if(event.kind != EventKind.ServiceResponse || !this.responseCodec.valid(event.body))
        {
            out.status = Status.Invalid;
            return out;
        }
        out.value = this.responseCodec.decode(event.body);
        rpcRemove(this.pending, event.correlation);
        return out;
    }

    /** Preserve all partial open cleanup facts independently of the primary status. */
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** Close each role once, preserving observer/source retirement errors. */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.pending.length = 0;
        return r;
    }

    /** Explicitly revoke only these already granted aliases. */
    revokeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary, true);
        if(!this.owners.busy)
            this.pending.length = 0;
        return r;
    }
}

/**
 * Incoming custom service implementation. Host still validates exact responder,
 * ticket principal, deadline and one-shot ownership; no ticket is a capability.
 */
export class BoundedServiceServer<Q, S>
{
    private owners: RPCOwners;
    private live: Array<u64> = [];

    constructor(
        api: Api,
        version: u32,
        advertise: string,
        respond: string,
        private input: Codec<Q>,
        private output: Codec<S>,
        private outputValid: (value: S) => bool,
        private inputMax: i32,
        capacity: i32 = 8,
    )
    {
        this.owners = new RPCOwners(api, version, [ advertise, respond ], capacity);
        if(!this.owners.status)
        {
            this.owners.status = this.owners.cap(0).advertiseService();
            if(this.owners.status)
                this.owners.constructionCleanup = this.owners.cleanup(this.owners.status);
        }
    }

    private pollInner(): RPCReply<Q>
    {
        if(this.live.length == this.owners.capacity)
            return new RPCReply<Q>(new Reply(Status.TooLarge));
        const r = this.owners.cap(0).poll(this.inputMax + 8), out = new RPCReply<Q>(r);
        if(!r.status)
        {
            out.id = rpcId(r.bytes);
            const body = r.bytes.slice(8);
            if(!out.id || this.live.indexOf(out.id) >= 0 || !this.input.valid(body))
                out.status = Status.Invalid;
            else
            {
                out.value = this.input.decode(body);
                this.live.push(out.id);
            }
        }
        return out;
    }

    /** Poll at most one complete request; all malformed values leave outputs absent. */
    pollOnce(): RPCReply<Q>
    {
        const status = this.owners.check();
        return status ? new RPCReply<Q>(new Reply(status)) : this.pollInner();
    }

    /** Respond once to a locally delivered ticket. Refusal retains local ownership. */
    respond(id: u64, value: S): u32
    {
        if(this.live.indexOf(id) < 0)
            return Status.BadHandle;
        if(!this.outputValid(value))
            return Status.Invalid;
        const status = this.owners.zero(1, Operation.service_respond, rpcFrame(id, this.output.encode(value)));
        if(!status)
            rpcRemove(this.live, id);
        return status;
    }

    /**
     * A normal callback may respond but cannot poll/close/revoke this owner.
     * Callback traps abort Wasm; normal error/decode/idle paths always release busy.
     */
    spinOnce(handler: (id: u64, value: Q) => S): u32
    {
        const status = this.owners.check();
        if(status)
            return status;
        this.owners.busy = true;
        const request = this.pollInner();
        let result = request.status;
        if(!result)
            result = this.respond(request.id, handler(request.id, changetype<Q>(request.value)));
        this.owners.busy = false;
        return result;
    }

    /** Inspect partial construction rollback separately. */
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** Close both roles only after callback preflight. */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.live.length = 0;
        return r;
    }

    /** Deliberately revoke both existing aliases. */
    revokeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary, true);
        if(!this.owners.busy)
            this.live.length = 0;
        return r;
    }
}

/** Custom action owner with four distinct required roles and optional cancel-any. */
export class BoundedActionClient<G, R, F>
{
    private owners: RPCOwners;
    private goals: Array<u64> = [];

    constructor(
        api: Api,
        version: u32,
        send: string,
        cancelOwn: string,
        feedback: string,
        result: string,
        private goal: Codec<G>,
        private resultCodec: Codec<R>,
        private feedbackCodec: Codec<F>,
        private goalValid: (value: G) => bool,
        private resultMax: i32,
        private feedbackMax: i32,
        cancelAny: string = '',
        capacity: i32 = 8,
    )
    {
        this.owners = new RPCOwners(
            api,
            version,
            cancelAny.length ? [ send, cancelOwn, feedback, result, cancelAny ] : [ send, cancelOwn, feedback, result ],
            capacity,
        );
    }

    /** Send a complete generated goal; capacity checked before any import. */
    sendGoal(value: G): RPCReply<R>
    {
        let status = this.owners.check();
        if(!status && this.goals.length == this.owners.capacity)
            status = Status.TooLarge;
        if(!status && !this.goalValid(value))
            status = Status.Invalid;
        const out = new RPCReply<R>(new Reply(status));
        if(status)
            return out;
        const r = this.owners.cap(0).request(Operation.action_send_goal, this.goal.encode(value), 8);
        out.status = r.status;
        if(!r.status)
        {
            out.id = rpcId(r.bytes);
            if(r.bytes.length != 8 || !out.id || this.goals.indexOf(out.id) >= 0)
                out.status = Status.Invalid;
            else
                this.goals.push(out.id);
        }
        return out;
    }

    private cancel(index: i32, operation: Operation, id: u64): RPCReply<R>
    {
        const r = this.owners.cap(index).request(operation, rpcFrame(id, new Uint8Array(0)), 1), out = new RPCReply<R>(r);
        out.id = id;
        if(!r.status && (r.bytes.length != 1 || r.bytes[0] > 1))
            out.status = Status.Invalid;
        return out;
    }

    /** Cancellation acknowledgement does not retire a local goal. */
    cancelOwn(id: u64): RPCReply<R>
    {
        let status = this.owners.check();
        if(!status && this.goals.indexOf(id) < 0)
            status = Status.BadHandle;
        return status ? new RPCReply<R>(new Reply(status)) : this.cancel(1, Operation.action_cancel_own_goal, id);
    }

    /** Zero means cancel-all and still requires the explicit fifth role. */
    cancelAny(id: u64): RPCReply<R>
    {
        let status = this.owners.check();
        if(!status && !this.owners.available(4))
            status = Status.Denied;
        return status ? new RPCReply<R>(new Reply(status)) : this.cancel(4, Operation.action_cancel_any_goal, id);
    }

    /** Explicit cancel-all preserves the independent fifth-role requirement. */
    cancelAll(): RPCReply<R>
    {
        return this.cancelAny(0);
    }

    /** Receive complete matching-ID feedback, retaining goal ownership on every refusal. */
    feedback(id: u64): RPCReply<F>
    {
        let status = this.owners.check();
        if(!status && this.goals.indexOf(id) < 0)
            status = Status.BadHandle;
        if(status)
            return new RPCReply<F>(new Reply(status));
        const r = this.owners.cap(2).request(Operation.action_receive_feedback, rpcFrame(id, new Uint8Array(0)), 8 + this.feedbackMax),
              out = new RPCReply<F>(r);
        out.id = id;
        if(!r.status)
        {
            const body = r.bytes.slice(8);
            if(rpcId(r.bytes) != id || !this.feedbackCodec.valid(body))
                out.status = Status.Invalid;
            else
                out.value = this.feedbackCodec.decode(body);
        }
        return out;
    }

    /** Only decoded terminal kinds2/3/4 remove one locally owned goal. */
    result(id: u64): RPCReply<R>
    {
        let status = this.owners.check();
        if(!status && this.goals.indexOf(id) < 0)
            status = Status.BadHandle;
        if(status)
            return new RPCReply<R>(new Reply(status));
        const r = this.owners.cap(3).request(Operation.action_receive_result, rpcFrame(id, new Uint8Array(0)), 9 + this.resultMax), out = new RPCReply<R>(r);
        out.id = id;
        if(!r.status)
        {
            const body = r.bytes.slice(9);
            if(r.bytes.length < 9 || rpcId(r.bytes) != id || r.bytes[8] < 2 || r.bytes[8] > 4 || !this.resultCodec.valid(body))
                out.status = Status.Invalid;
            else
            {
                out.kind = r.bytes[8];
                out.value = this.resultCodec.decode(body);
                rpcRemove(this.goals, id);
            }
        }
        return out;
    }

    /** Observe every acquisition rollback result. */
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** Close every role once. */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.goals.length = 0;
        return r;
    }

    /** Revoke only existing role aliases. */
    revokeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary, true);
        if(!this.owners.busy)
            this.goals.length = 0;
        return r;
    }
}

/** Incoming custom action: feedback1 retains; accepted terminal2/3/4 retires. */
export class BoundedActionServer<G, R, F>
{
    private owners: RPCOwners;
    private live: Array<u64> = [];

    constructor(
        api: Api,
        version: u32,
        advertise: string,
        respond: string,
        private goal: Codec<G>,
        private resultCodec: Codec<R>,
        private feedbackCodec: Codec<F>,
        private resultValid: (value: R) => bool,
        private feedbackValid: (value: F) => bool,
        private goalMax: i32,
        capacity: i32 = 8,
    )
    {
        this.owners = new RPCOwners(api, version, [ advertise, respond ], capacity);
        if(!this.owners.status)
        {
            this.owners.status = this.owners.zero(0, Operation.action_advertise, new Uint8Array(0));
            if(this.owners.status)
                this.owners.constructionCleanup = this.owners.cleanup(this.owners.status);
        }
    }

    private pollInner(): RPCReply<G>
    {
        if(this.live.length == this.owners.capacity)
            return new RPCReply<G>(new Reply(Status.TooLarge));
        const r = this.owners.cap(0).poll(8 + this.goalMax), out = new RPCReply<G>(r);
        if(!r.status)
        {
            out.id = rpcId(r.bytes);
            const body = r.bytes.slice(8);
            if(!out.id || this.live.indexOf(out.id) >= 0 || !this.goal.valid(body))
                out.status = Status.Invalid;
            else
            {
                out.value = this.goal.decode(body);
                this.live.push(out.id);
            }
        }
        return out;
    }

    /** Poll once; nested dispatch returns Conflict before dequeue. */
    pollOnce(): RPCReply<G>
    {
        const status = this.owners.check();
        return status ? new RPCReply<G>(new Reply(status)) : this.pollInner();
    }

    /** Respond only to a goal delivered to this owner. */
    respondFeedback(id: u64, value: F): u32
    {
        if(this.live.indexOf(id) < 0)
            return Status.BadHandle;
        if(!this.feedbackValid(value))
            return Status.Invalid;
        return this.owners.zero(1, Operation.action_respond, rpcFrame(id, this.feedbackCodec.encode(value), 1));
    }

    /** Validate terminal kind and component before any response import. */
    respondResult(id: u64, kind: u8, value: R): u32
    {
        if(this.live.indexOf(id) < 0)
            return Status.BadHandle;
        if(kind < 2 || kind > 4 || !this.resultValid(value))
            return Status.Invalid;
        const status = this.owners.zero(
            1,
            Operation.action_respond,
            rpcFrame(id, this.resultCodec.encode(value), kind),
        );
        if(!status)
            rpcRemove(this.live, id);
        return status;
    }

    /** Handler runs locally under a lease and explicitly chooses later responses. */
    spinOnce(handler: (id: u64, value: G) => void): u32
    {
        const status = this.owners.check();
        if(status)
            return status;
        this.owners.busy = true;
        const request = this.pollInner();
        if(!request.status)
            handler(request.id, changetype<G>(request.value));
        this.owners.busy = false;
        return request.status;
    }

    /** Inspect original partial construction cleanup. */
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** Close both roles, preserving primary and every cleanup status. */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.live.length = 0;
        return r;
    }

    /** Explicitly revoke the existing advertise/respond aliases. */
    revokeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary, true);
        if(!this.owners.busy)
            this.live.length = 0;
        return r;
    }
}

/** Complete easy_handeye_msgs/CheckStartingPose typed call and real-submit client. */
export class Ros1Easy_handeye_msgsCheckStartingPoseClient extends
    BoundedServiceClient<Ros1Easy_handeye_msgsCheckStartingPoseRequest, Ros1Easy_handeye_msgsCheckStartingPoseResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Easy_handeye_msgsCheckStartingPoseRequestCodec(),
            new Ros1Easy_handeye_msgsCheckStartingPoseResponseCodec(),
            (value: Ros1Easy_handeye_msgsCheckStartingPoseRequest): bool => value.validValue(),
            2965,
            observerAlias,
            capacity,
        );
    }
}

/** Complete easy_handeye_msgs/CheckStartingPose incoming request/response owner. */
export class Ros1Easy_handeye_msgsCheckStartingPoseServer extends
    BoundedServiceServer<Ros1Easy_handeye_msgsCheckStartingPoseRequest, Ros1Easy_handeye_msgsCheckStartingPoseResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Easy_handeye_msgsCheckStartingPoseRequestCodec(),
            new Ros1Easy_handeye_msgsCheckStartingPoseResponseCodec(),
            (value: Ros1Easy_handeye_msgsCheckStartingPoseResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete easy_handeye_msgs/ComputeCalibration typed call and real-submit client. */
export class Ros1Easy_handeye_msgsComputeCalibrationClient extends
    BoundedServiceClient<Ros1Easy_handeye_msgsComputeCalibrationRequest, Ros1Easy_handeye_msgsComputeCalibrationResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Easy_handeye_msgsComputeCalibrationRequestCodec(),
            new Ros1Easy_handeye_msgsComputeCalibrationResponseCodec(),
            (value: Ros1Easy_handeye_msgsComputeCalibrationRequest): bool => value.validValue(),
            590,
            observerAlias,
            capacity,
        );
    }
}

/** Complete easy_handeye_msgs/ComputeCalibration incoming request/response owner. */
export class Ros1Easy_handeye_msgsComputeCalibrationServer extends
    BoundedServiceServer<Ros1Easy_handeye_msgsComputeCalibrationRequest, Ros1Easy_handeye_msgsComputeCalibrationResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Easy_handeye_msgsComputeCalibrationRequestCodec(),
            new Ros1Easy_handeye_msgsComputeCalibrationResponseCodec(),
            (value: Ros1Easy_handeye_msgsComputeCalibrationResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete easy_handeye_msgs/EnumerateTargetPoses typed call and real-submit client. */
export class Ros1Easy_handeye_msgsEnumerateTargetPosesClient extends
    BoundedServiceClient<Ros1Easy_handeye_msgsEnumerateTargetPosesRequest, Ros1Easy_handeye_msgsEnumerateTargetPosesResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Easy_handeye_msgsEnumerateTargetPosesRequestCodec(),
            new Ros1Easy_handeye_msgsEnumerateTargetPosesResponseCodec(),
            (value: Ros1Easy_handeye_msgsEnumerateTargetPosesRequest): bool => value.validValue(),
            2964,
            observerAlias,
            capacity,
        );
    }
}

/** Complete easy_handeye_msgs/EnumerateTargetPoses incoming request/response owner. */
export class Ros1Easy_handeye_msgsEnumerateTargetPosesServer extends
    BoundedServiceServer<Ros1Easy_handeye_msgsEnumerateTargetPosesRequest, Ros1Easy_handeye_msgsEnumerateTargetPosesResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Easy_handeye_msgsEnumerateTargetPosesRequestCodec(),
            new Ros1Easy_handeye_msgsEnumerateTargetPosesResponseCodec(),
            (value: Ros1Easy_handeye_msgsEnumerateTargetPosesResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete easy_handeye_msgs/ExecutePlan typed call and real-submit client. */
export class Ros1Easy_handeye_msgsExecutePlanClient extends
    BoundedServiceClient<Ros1Easy_handeye_msgsExecutePlanRequest, Ros1Easy_handeye_msgsExecutePlanResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Easy_handeye_msgsExecutePlanRequestCodec(),
            new Ros1Easy_handeye_msgsExecutePlanResponseCodec(),
            (value: Ros1Easy_handeye_msgsExecutePlanRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete easy_handeye_msgs/ExecutePlan incoming request/response owner. */
export class Ros1Easy_handeye_msgsExecutePlanServer extends
    BoundedServiceServer<Ros1Easy_handeye_msgsExecutePlanRequest, Ros1Easy_handeye_msgsExecutePlanResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Easy_handeye_msgsExecutePlanRequestCodec(),
            new Ros1Easy_handeye_msgsExecutePlanResponseCodec(),
            (value: Ros1Easy_handeye_msgsExecutePlanResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete easy_handeye_msgs/ListAlgorithms typed call and real-submit client. */
export class Ros1Easy_handeye_msgsListAlgorithmsClient extends
    BoundedServiceClient<Ros1Easy_handeye_msgsListAlgorithmsRequest, Ros1Easy_handeye_msgsListAlgorithmsResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Easy_handeye_msgsListAlgorithmsRequestCodec(),
            new Ros1Easy_handeye_msgsListAlgorithmsResponseCodec(),
            (value: Ros1Easy_handeye_msgsListAlgorithmsRequest): bool => value.validValue(),
            4424,
            observerAlias,
            capacity,
        );
    }
}

/** Complete easy_handeye_msgs/ListAlgorithms incoming request/response owner. */
export class Ros1Easy_handeye_msgsListAlgorithmsServer extends
    BoundedServiceServer<Ros1Easy_handeye_msgsListAlgorithmsRequest, Ros1Easy_handeye_msgsListAlgorithmsResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Easy_handeye_msgsListAlgorithmsRequestCodec(),
            new Ros1Easy_handeye_msgsListAlgorithmsResponseCodec(),
            (value: Ros1Easy_handeye_msgsListAlgorithmsResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete easy_handeye_msgs/PlanToSelectedTargetPose typed call and real-submit client. */
export class Ros1Easy_handeye_msgsPlanToSelectedTargetPoseClient extends
    BoundedServiceClient<Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest, Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequestCodec(),
            new Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponseCodec(),
            (value: Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete easy_handeye_msgs/PlanToSelectedTargetPose incoming request/response owner. */
export class Ros1Easy_handeye_msgsPlanToSelectedTargetPoseServer extends
    BoundedServiceServer<Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest, Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequestCodec(),
            new Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponseCodec(),
            (value: Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete easy_handeye_msgs/RemoveSample typed call and real-submit client. */
export class Ros1Easy_handeye_msgsRemoveSampleClient extends
    BoundedServiceClient<Ros1Easy_handeye_msgsRemoveSampleRequest, Ros1Easy_handeye_msgsRemoveSampleResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Easy_handeye_msgsRemoveSampleRequestCodec(),
            new Ros1Easy_handeye_msgsRemoveSampleResponseCodec(),
            (value: Ros1Easy_handeye_msgsRemoveSampleRequest): bool => value.validValue(),
            904,
            observerAlias,
            capacity,
        );
    }
}

/** Complete easy_handeye_msgs/RemoveSample incoming request/response owner. */
export class Ros1Easy_handeye_msgsRemoveSampleServer extends
    BoundedServiceServer<Ros1Easy_handeye_msgsRemoveSampleRequest, Ros1Easy_handeye_msgsRemoveSampleResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Easy_handeye_msgsRemoveSampleRequestCodec(),
            new Ros1Easy_handeye_msgsRemoveSampleResponseCodec(),
            (value: Ros1Easy_handeye_msgsRemoveSampleResponse): bool => value.validValue(),
            1,
            capacity,
        );
    }
}

/** Complete easy_handeye_msgs/SelectTargetPose typed call and real-submit client. */
export class Ros1Easy_handeye_msgsSelectTargetPoseClient extends
    BoundedServiceClient<Ros1Easy_handeye_msgsSelectTargetPoseRequest, Ros1Easy_handeye_msgsSelectTargetPoseResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Easy_handeye_msgsSelectTargetPoseRequestCodec(),
            new Ros1Easy_handeye_msgsSelectTargetPoseResponseCodec(),
            (value: Ros1Easy_handeye_msgsSelectTargetPoseRequest): bool => value.validValue(),
            2965,
            observerAlias,
            capacity,
        );
    }
}

/** Complete easy_handeye_msgs/SelectTargetPose incoming request/response owner. */
export class Ros1Easy_handeye_msgsSelectTargetPoseServer extends
    BoundedServiceServer<Ros1Easy_handeye_msgsSelectTargetPoseRequest, Ros1Easy_handeye_msgsSelectTargetPoseResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Easy_handeye_msgsSelectTargetPoseRequestCodec(),
            new Ros1Easy_handeye_msgsSelectTargetPoseResponseCodec(),
            (value: Ros1Easy_handeye_msgsSelectTargetPoseResponse): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete easy_handeye_msgs/SetAlgorithm typed call and real-submit client. */
export class Ros1Easy_handeye_msgsSetAlgorithmClient extends
    BoundedServiceClient<Ros1Easy_handeye_msgsSetAlgorithmRequest, Ros1Easy_handeye_msgsSetAlgorithmResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Easy_handeye_msgsSetAlgorithmRequestCodec(),
            new Ros1Easy_handeye_msgsSetAlgorithmResponseCodec(),
            (value: Ros1Easy_handeye_msgsSetAlgorithmRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete easy_handeye_msgs/SetAlgorithm incoming request/response owner. */
export class Ros1Easy_handeye_msgsSetAlgorithmServer extends
    BoundedServiceServer<Ros1Easy_handeye_msgsSetAlgorithmRequest, Ros1Easy_handeye_msgsSetAlgorithmResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Easy_handeye_msgsSetAlgorithmRequestCodec(),
            new Ros1Easy_handeye_msgsSetAlgorithmResponseCodec(),
            (value: Ros1Easy_handeye_msgsSetAlgorithmResponse): bool => value.validValue(),
            260,
            capacity,
        );
    }
}

/** Complete easy_handeye_msgs/TakeSample typed call and real-submit client. */
export class Ros1Easy_handeye_msgsTakeSampleClient extends BoundedServiceClient<Ros1Easy_handeye_msgsTakeSampleRequest, Ros1Easy_handeye_msgsTakeSampleResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Easy_handeye_msgsTakeSampleRequestCodec(),
            new Ros1Easy_handeye_msgsTakeSampleResponseCodec(),
            (value: Ros1Easy_handeye_msgsTakeSampleRequest): bool => value.validValue(),
            904,
            observerAlias,
            capacity,
        );
    }
}

/** Complete easy_handeye_msgs/TakeSample incoming request/response owner. */
export class Ros1Easy_handeye_msgsTakeSampleServer extends BoundedServiceServer<Ros1Easy_handeye_msgsTakeSampleRequest, Ros1Easy_handeye_msgsTakeSampleResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Easy_handeye_msgsTakeSampleRequestCodec(),
            new Ros1Easy_handeye_msgsTakeSampleResponseCodec(),
            (value: Ros1Easy_handeye_msgsTakeSampleResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete grid_map_msgs/GetGridMap typed call and real-submit client. */
export class Ros1Grid_map_msgsGetGridMapClient extends BoundedServiceClient<Ros1Grid_map_msgsGetGridMapRequest, Ros1Grid_map_msgsGetGridMapResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Grid_map_msgsGetGridMapRequestCodec(),
            new Ros1Grid_map_msgsGetGridMapResponseCodec(),
            (value: Ros1Grid_map_msgsGetGridMapRequest): bool => value.validValue(),
            11696,
            observerAlias,
            capacity,
        );
    }
}

/** Complete grid_map_msgs/GetGridMap incoming request/response owner. */
export class Ros1Grid_map_msgsGetGridMapServer extends BoundedServiceServer<Ros1Grid_map_msgsGetGridMapRequest, Ros1Grid_map_msgsGetGridMapResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Grid_map_msgsGetGridMapRequestCodec(),
            new Ros1Grid_map_msgsGetGridMapResponseCodec(),
            (value: Ros1Grid_map_msgsGetGridMapResponse): bool => value.validValue(),
            4456,
            capacity,
        );
    }
}

/** Complete grid_map_msgs/GetGridMapInfo typed call and real-submit client. */
export class Ros1Grid_map_msgsGetGridMapInfoClient extends BoundedServiceClient<Ros1Grid_map_msgsGetGridMapInfoRequest, Ros1Grid_map_msgsGetGridMapInfoResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Grid_map_msgsGetGridMapInfoRequestCodec(),
            new Ros1Grid_map_msgsGetGridMapInfoResponseCodec(),
            (value: Ros1Grid_map_msgsGetGridMapInfoRequest): bool => value.validValue(),
            352,
            observerAlias,
            capacity,
        );
    }
}

/** Complete grid_map_msgs/GetGridMapInfo incoming request/response owner. */
export class Ros1Grid_map_msgsGetGridMapInfoServer extends BoundedServiceServer<Ros1Grid_map_msgsGetGridMapInfoRequest, Ros1Grid_map_msgsGetGridMapInfoResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Grid_map_msgsGetGridMapInfoRequestCodec(),
            new Ros1Grid_map_msgsGetGridMapInfoResponseCodec(),
            (value: Ros1Grid_map_msgsGetGridMapInfoResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete grid_map_msgs/ProcessFile typed call and real-submit client. */
export class Ros1Grid_map_msgsProcessFileClient extends BoundedServiceClient<Ros1Grid_map_msgsProcessFileRequest, Ros1Grid_map_msgsProcessFileResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Grid_map_msgsProcessFileRequestCodec(),
            new Ros1Grid_map_msgsProcessFileResponseCodec(),
            (value: Ros1Grid_map_msgsProcessFileRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete grid_map_msgs/ProcessFile incoming request/response owner. */
export class Ros1Grid_map_msgsProcessFileServer extends BoundedServiceServer<Ros1Grid_map_msgsProcessFileRequest, Ros1Grid_map_msgsProcessFileResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Grid_map_msgsProcessFileRequestCodec(),
            new Ros1Grid_map_msgsProcessFileResponseCodec(),
            (value: Ros1Grid_map_msgsProcessFileResponse): bool => value.validValue(),
            520,
            capacity,
        );
    }
}

/** Complete grid_map_msgs/SetGridMap typed call and real-submit client. */
export class Ros1Grid_map_msgsSetGridMapClient extends BoundedServiceClient<Ros1Grid_map_msgsSetGridMapRequest, Ros1Grid_map_msgsSetGridMapResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Grid_map_msgsSetGridMapRequestCodec(),
            new Ros1Grid_map_msgsSetGridMapResponseCodec(),
            (value: Ros1Grid_map_msgsSetGridMapRequest): bool => value.validValue(),
            0,
            observerAlias,
            capacity,
        );
    }
}

/** Complete grid_map_msgs/SetGridMap incoming request/response owner. */
export class Ros1Grid_map_msgsSetGridMapServer extends BoundedServiceServer<Ros1Grid_map_msgsSetGridMapRequest, Ros1Grid_map_msgsSetGridMapResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Grid_map_msgsSetGridMapRequestCodec(),
            new Ros1Grid_map_msgsSetGridMapResponseCodec(),
            (value: Ros1Grid_map_msgsSetGridMapResponse): bool => value.validValue(),
            11696,
            capacity,
        );
    }
}

/** Complete h12pro_controller_node/ExecuteArmAction typed call and real-submit client. */
export class Ros1H12pro_controller_nodeExecuteArmActionClient extends
    BoundedServiceClient<Ros1H12pro_controller_nodeExecuteArmActionRequest, Ros1H12pro_controller_nodeExecuteArmActionResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1H12pro_controller_nodeExecuteArmActionRequestCodec(),
            new Ros1H12pro_controller_nodeExecuteArmActionResponseCodec(),
            (value: Ros1H12pro_controller_nodeExecuteArmActionRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete h12pro_controller_node/ExecuteArmAction incoming request/response owner. */
export class Ros1H12pro_controller_nodeExecuteArmActionServer extends
    BoundedServiceServer<Ros1H12pro_controller_nodeExecuteArmActionRequest, Ros1H12pro_controller_nodeExecuteArmActionResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1H12pro_controller_nodeExecuteArmActionRequestCodec(),
            new Ros1H12pro_controller_nodeExecuteArmActionResponseCodec(),
            (value: Ros1H12pro_controller_nodeExecuteArmActionResponse): bool => value.validValue(),
            260,
            capacity,
        );
    }
}

/** Complete h12pro_controller_node/changeAMBACCtrlMode typed call and real-submit client. */
export class Ros1H12pro_controller_nodeChangeAMBACCtrlModeClient extends
    BoundedServiceClient<Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest, Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequestCodec(),
            new Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponseCodec(),
            (value: Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete h12pro_controller_node/changeAMBACCtrlMode incoming request/response owner. */
export class Ros1H12pro_controller_nodeChangeAMBACCtrlModeServer extends
    BoundedServiceServer<Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest, Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequestCodec(),
            new Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponseCodec(),
            (value: Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse): bool => value.validValue(),
            1,
            capacity,
        );
    }
}

/** Complete h12pro_controller_node/changeArmCtrlMode typed call and real-submit client. */
export class Ros1H12pro_controller_nodeChangeArmCtrlModeClient extends
    BoundedServiceClient<Ros1H12pro_controller_nodeChangeArmCtrlModeRequest, Ros1H12pro_controller_nodeChangeArmCtrlModeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1H12pro_controller_nodeChangeArmCtrlModeRequestCodec(),
            new Ros1H12pro_controller_nodeChangeArmCtrlModeResponseCodec(),
            (value: Ros1H12pro_controller_nodeChangeArmCtrlModeRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete h12pro_controller_node/changeArmCtrlMode incoming request/response owner. */
export class Ros1H12pro_controller_nodeChangeArmCtrlModeServer extends
    BoundedServiceServer<Ros1H12pro_controller_nodeChangeArmCtrlModeRequest, Ros1H12pro_controller_nodeChangeArmCtrlModeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1H12pro_controller_nodeChangeArmCtrlModeRequestCodec(),
            new Ros1H12pro_controller_nodeChangeArmCtrlModeResponseCodec(),
            (value: Ros1H12pro_controller_nodeChangeArmCtrlModeResponse): bool => value.validValue(),
            1,
            capacity,
        );
    }
}

/** Complete h12pro_controller_node/changeHandArmPosesByConfigName typed call and real-submit client. */
export class Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameClient extends
    BoundedServiceClient<Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest, Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequestCodec(),
            new Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponseCodec(),
            (value: Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete h12pro_controller_node/changeHandArmPosesByConfigName incoming request/response owner. */
export class Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameServer extends
    BoundedServiceServer<Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest, Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequestCodec(),
            new Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponseCodec(),
            (value: Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse): bool => value.validValue(),
            260,
            capacity,
        );
    }
}

/** Complete h12pro_controller_node/playmusic typed call and real-submit client. */
export class Ros1H12pro_controller_nodePlaymusicClient extends
    BoundedServiceClient<Ros1H12pro_controller_nodePlaymusicRequest, Ros1H12pro_controller_nodePlaymusicResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1H12pro_controller_nodePlaymusicRequestCodec(),
            new Ros1H12pro_controller_nodePlaymusicResponseCodec(),
            (value: Ros1H12pro_controller_nodePlaymusicRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete h12pro_controller_node/playmusic incoming request/response owner. */
export class Ros1H12pro_controller_nodePlaymusicServer extends
    BoundedServiceServer<Ros1H12pro_controller_nodePlaymusicRequest, Ros1H12pro_controller_nodePlaymusicResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1H12pro_controller_nodePlaymusicRequestCodec(),
            new Ros1H12pro_controller_nodePlaymusicResponseCodec(),
            (value: Ros1H12pro_controller_nodePlaymusicResponse): bool => value.validValue(),
            268,
            capacity,
        );
    }
}

/** Complete h12pro_controller_node/srvChangePhases typed call and real-submit client. */
export class Ros1H12pro_controller_nodeSrvChangePhasesClient extends
    BoundedServiceClient<Ros1H12pro_controller_nodeSrvChangePhasesRequest, Ros1H12pro_controller_nodeSrvChangePhasesResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1H12pro_controller_nodeSrvChangePhasesRequestCodec(),
            new Ros1H12pro_controller_nodeSrvChangePhasesResponseCodec(),
            (value: Ros1H12pro_controller_nodeSrvChangePhasesRequest): bool => value.validValue(),
            2,
            observerAlias,
            capacity,
        );
    }
}

/** Complete h12pro_controller_node/srvChangePhases incoming request/response owner. */
export class Ros1H12pro_controller_nodeSrvChangePhasesServer extends
    BoundedServiceServer<Ros1H12pro_controller_nodeSrvChangePhasesRequest, Ros1H12pro_controller_nodeSrvChangePhasesResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1H12pro_controller_nodeSrvChangePhasesRequestCodec(),
            new Ros1H12pro_controller_nodeSrvChangePhasesResponseCodec(),
            (value: Ros1H12pro_controller_nodeSrvChangePhasesResponse): bool => value.validValue(),
            521,
            capacity,
        );
    }
}

/** Complete h12pro_controller_node/srvClearPositionCMD typed call and real-submit client. */
export class Ros1H12pro_controller_nodeSrvClearPositionCMDClient extends
    BoundedServiceClient<Ros1H12pro_controller_nodeSrvClearPositionCMDRequest, Ros1H12pro_controller_nodeSrvClearPositionCMDResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1H12pro_controller_nodeSrvClearPositionCMDRequestCodec(),
            new Ros1H12pro_controller_nodeSrvClearPositionCMDResponseCodec(),
            (value: Ros1H12pro_controller_nodeSrvClearPositionCMDRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete h12pro_controller_node/srvClearPositionCMD incoming request/response owner. */
export class Ros1H12pro_controller_nodeSrvClearPositionCMDServer extends
    BoundedServiceServer<Ros1H12pro_controller_nodeSrvClearPositionCMDRequest, Ros1H12pro_controller_nodeSrvClearPositionCMDResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1H12pro_controller_nodeSrvClearPositionCMDRequestCodec(),
            new Ros1H12pro_controller_nodeSrvClearPositionCMDResponseCodec(),
            (value: Ros1H12pro_controller_nodeSrvClearPositionCMDResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete h12pro_controller_node/srvchangeCtlMode typed call and real-submit client. */
export class Ros1H12pro_controller_nodeSrvchangeCtlModeClient extends
    BoundedServiceClient<Ros1H12pro_controller_nodeSrvchangeCtlModeRequest, Ros1H12pro_controller_nodeSrvchangeCtlModeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1H12pro_controller_nodeSrvchangeCtlModeRequestCodec(),
            new Ros1H12pro_controller_nodeSrvchangeCtlModeResponseCodec(),
            (value: Ros1H12pro_controller_nodeSrvchangeCtlModeRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete h12pro_controller_node/srvchangeCtlMode incoming request/response owner. */
export class Ros1H12pro_controller_nodeSrvchangeCtlModeServer extends
    BoundedServiceServer<Ros1H12pro_controller_nodeSrvchangeCtlModeRequest, Ros1H12pro_controller_nodeSrvchangeCtlModeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1H12pro_controller_nodeSrvchangeCtlModeRequestCodec(),
            new Ros1H12pro_controller_nodeSrvchangeCtlModeResponseCodec(),
            (value: Ros1H12pro_controller_nodeSrvchangeCtlModeResponse): bool => value.validValue(),
            2,
            capacity,
        );
    }
}

/** Complete handcontrollerdemorosnode/changeHandTrackingMode typed call and real-submit client. */
export class Ros1HandcontrollerdemorosnodeChangeHandTrackingModeClient extends
    BoundedServiceClient<Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest, Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequestCodec(),
            new Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponseCodec(),
            (value: Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete handcontrollerdemorosnode/changeHandTrackingMode incoming request/response owner. */
export class Ros1HandcontrollerdemorosnodeChangeHandTrackingModeServer extends
    BoundedServiceServer<Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest, Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequestCodec(),
            new Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponseCodec(),
            (value: Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse): bool => value.validValue(),
            1,
            capacity,
        );
    }
}

/** Complete handcontrollerdemorosnode/controlEndHand typed call and real-submit client. */
export class Ros1HandcontrollerdemorosnodeControlEndHandClient extends
    BoundedServiceClient<Ros1HandcontrollerdemorosnodeControlEndHandRequest, Ros1HandcontrollerdemorosnodeControlEndHandResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1HandcontrollerdemorosnodeControlEndHandRequestCodec(),
            new Ros1HandcontrollerdemorosnodeControlEndHandResponseCodec(),
            (value: Ros1HandcontrollerdemorosnodeControlEndHandRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete handcontrollerdemorosnode/controlEndHand incoming request/response owner. */
export class Ros1HandcontrollerdemorosnodeControlEndHandServer extends
    BoundedServiceServer<Ros1HandcontrollerdemorosnodeControlEndHandRequest, Ros1HandcontrollerdemorosnodeControlEndHandResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1HandcontrollerdemorosnodeControlEndHandRequestCodec(),
            new Ros1HandcontrollerdemorosnodeControlEndHandResponseCodec(),
            (value: Ros1HandcontrollerdemorosnodeControlEndHandResponse): bool => value.validValue(),
            520,
            capacity,
        );
    }
}

/** Complete handcontrollerdemorosnode/srvArmIK typed call and real-submit client. */
export class Ros1HandcontrollerdemorosnodeSrvArmIKClient extends
    BoundedServiceClient<Ros1HandcontrollerdemorosnodeSrvArmIKRequest, Ros1HandcontrollerdemorosnodeSrvArmIKResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1HandcontrollerdemorosnodeSrvArmIKRequestCodec(),
            new Ros1HandcontrollerdemorosnodeSrvArmIKResponseCodec(),
            (value: Ros1HandcontrollerdemorosnodeSrvArmIKRequest): bool => value.validValue(),
            12064,
            observerAlias,
            capacity,
        );
    }
}

/** Complete handcontrollerdemorosnode/srvArmIK incoming request/response owner. */
export class Ros1HandcontrollerdemorosnodeSrvArmIKServer extends
    BoundedServiceServer<Ros1HandcontrollerdemorosnodeSrvArmIKRequest, Ros1HandcontrollerdemorosnodeSrvArmIKResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1HandcontrollerdemorosnodeSrvArmIKRequestCodec(),
            new Ros1HandcontrollerdemorosnodeSrvArmIKResponseCodec(),
            (value: Ros1HandcontrollerdemorosnodeSrvArmIKResponse): bool => value.validValue(),
            264,
            capacity,
        );
    }
}

/** Complete humanoid_arm_control/armControl typed call and real-submit client. */
export class Ros1Humanoid_arm_controlArmControlClient extends
    BoundedServiceClient<Ros1Humanoid_arm_controlArmControlRequest, Ros1Humanoid_arm_controlArmControlResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Humanoid_arm_controlArmControlRequestCodec(),
            new Ros1Humanoid_arm_controlArmControlResponseCodec(),
            (value: Ros1Humanoid_arm_controlArmControlRequest): bool => value.validValue(),
            16,
            observerAlias,
            capacity,
        );
    }
}

/** Complete humanoid_arm_control/armControl incoming request/response owner. */
export class Ros1Humanoid_arm_controlArmControlServer extends
    BoundedServiceServer<Ros1Humanoid_arm_controlArmControlRequest, Ros1Humanoid_arm_controlArmControlResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Humanoid_arm_controlArmControlRequestCodec(),
            new Ros1Humanoid_arm_controlArmControlResponseCodec(),
            (value: Ros1Humanoid_arm_controlArmControlResponse): bool => value.validValue(),
            16,
            capacity,
        );
    }
}

/** Complete humanoid_arm_control/handUpAndGrab typed call and real-submit client. */
export class Ros1Humanoid_arm_controlHandUpAndGrabClient extends
    BoundedServiceClient<Ros1Humanoid_arm_controlHandUpAndGrabRequest, Ros1Humanoid_arm_controlHandUpAndGrabResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Humanoid_arm_controlHandUpAndGrabRequestCodec(),
            new Ros1Humanoid_arm_controlHandUpAndGrabResponseCodec(),
            (value: Ros1Humanoid_arm_controlHandUpAndGrabRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete humanoid_arm_control/handUpAndGrab incoming request/response owner. */
export class Ros1Humanoid_arm_controlHandUpAndGrabServer extends
    BoundedServiceServer<Ros1Humanoid_arm_controlHandUpAndGrabRequest, Ros1Humanoid_arm_controlHandUpAndGrabResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Humanoid_arm_controlHandUpAndGrabRequestCodec(),
            new Ros1Humanoid_arm_controlHandUpAndGrabResponseCodec(),
            (value: Ros1Humanoid_arm_controlHandUpAndGrabResponse): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete humanoid_plan_arm_trajectory/ExecuteArmAction typed call and real-submit client. */
export class Ros1Humanoid_plan_arm_trajectoryExecuteArmActionClient extends
    BoundedServiceClient<Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest, Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequestCodec(),
            new Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponseCodec(),
            (value: Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete humanoid_plan_arm_trajectory/ExecuteArmAction incoming request/response owner. */
export class Ros1Humanoid_plan_arm_trajectoryExecuteArmActionServer extends
    BoundedServiceServer<Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest, Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequestCodec(),
            new Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponseCodec(),
            (value: Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse): bool => value.validValue(),
            260,
            capacity,
        );
    }
}

/** Complete humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurve typed call and real-submit client. */
export class Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveClient extends
    BoundedServiceClient<Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest,
                         Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequestCodec(),
            new Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponseCodec(),
            (value: Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurve incoming request/response owner. */
export class Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveServer extends
    BoundedServiceServer<Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest,
                         Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequestCodec(),
            new Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponseCodec(),
            (value: Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse): bool => value.validValue(),
            29560,
            capacity,
        );
    }
}

/** Complete humanoid_plan_arm_trajectory/planArmTrajectoryCubicSpline typed call and real-submit client. */
export class Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineClient extends
    BoundedServiceClient<Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest,
                         Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequestCodec(),
            new Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponseCodec(),
            (value: Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete humanoid_plan_arm_trajectory/planArmTrajectoryCubicSpline incoming request/response owner. */
export class Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineServer extends
    BoundedServiceServer<Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest,
                         Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequestCodec(),
            new Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponseCodec(),
            (value: Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse): bool => value.validValue(),
            8728,
            capacity,
        );
    }
}

/** Complete kuavo_audio_player/audio_status typed call and real-submit client. */
export class Ros1Kuavo_audio_playerAudio_statusClient extends
    BoundedServiceClient<Ros1Kuavo_audio_playerAudio_statusRequest, Ros1Kuavo_audio_playerAudio_statusResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_audio_playerAudio_statusRequestCodec(),
            new Ros1Kuavo_audio_playerAudio_statusResponseCodec(),
            (value: Ros1Kuavo_audio_playerAudio_statusRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_audio_player/audio_status incoming request/response owner. */
export class Ros1Kuavo_audio_playerAudio_statusServer extends
    BoundedServiceServer<Ros1Kuavo_audio_playerAudio_statusRequest, Ros1Kuavo_audio_playerAudio_statusResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_audio_playerAudio_statusRequestCodec(),
            new Ros1Kuavo_audio_playerAudio_statusResponseCodec(),
            (value: Ros1Kuavo_audio_playerAudio_statusResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete kuavo_audio_player/playmusic typed call and real-submit client. */
export class Ros1Kuavo_audio_playerPlaymusicClient extends BoundedServiceClient<Ros1Kuavo_audio_playerPlaymusicRequest, Ros1Kuavo_audio_playerPlaymusicResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_audio_playerPlaymusicRequestCodec(),
            new Ros1Kuavo_audio_playerPlaymusicResponseCodec(),
            (value: Ros1Kuavo_audio_playerPlaymusicRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_audio_player/playmusic incoming request/response owner. */
export class Ros1Kuavo_audio_playerPlaymusicServer extends BoundedServiceServer<Ros1Kuavo_audio_playerPlaymusicRequest, Ros1Kuavo_audio_playerPlaymusicResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_audio_playerPlaymusicRequestCodec(),
            new Ros1Kuavo_audio_playerPlaymusicResponseCodec(),
            (value: Ros1Kuavo_audio_playerPlaymusicResponse): bool => value.validValue(),
            268,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/DeleteMap typed call and real-submit client. */
export class Ros1Kuavo_mappingDeleteMapClient extends BoundedServiceClient<Ros1Kuavo_mappingDeleteMapRequest, Ros1Kuavo_mappingDeleteMapResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_mappingDeleteMapRequestCodec(),
            new Ros1Kuavo_mappingDeleteMapResponseCodec(),
            (value: Ros1Kuavo_mappingDeleteMapRequest): bool => value.validValue(),
            521,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/DeleteMap incoming request/response owner. */
export class Ros1Kuavo_mappingDeleteMapServer extends BoundedServiceServer<Ros1Kuavo_mappingDeleteMapRequest, Ros1Kuavo_mappingDeleteMapResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_mappingDeleteMapRequestCodec(),
            new Ros1Kuavo_mappingDeleteMapResponseCodec(),
            (value: Ros1Kuavo_mappingDeleteMapResponse): bool => value.validValue(),
            260,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/EditMap typed call and real-submit client. */
export class Ros1Kuavo_mappingEditMapClient extends BoundedServiceClient<Ros1Kuavo_mappingEditMapRequest, Ros1Kuavo_mappingEditMapResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_mappingEditMapRequestCodec(),
            new Ros1Kuavo_mappingEditMapResponseCodec(),
            (value: Ros1Kuavo_mappingEditMapRequest): bool => value.validValue(),
            521,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/EditMap incoming request/response owner. */
export class Ros1Kuavo_mappingEditMapServer extends BoundedServiceServer<Ros1Kuavo_mappingEditMapRequest, Ros1Kuavo_mappingEditMapResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_mappingEditMapRequestCodec(),
            new Ros1Kuavo_mappingEditMapResponseCodec(),
            (value: Ros1Kuavo_mappingEditMapResponse): bool => value.validValue(),
            652,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/GetAllMaps typed call and real-submit client. */
export class Ros1Kuavo_mappingGetAllMapsClient extends BoundedServiceClient<Ros1Kuavo_mappingGetAllMapsRequest, Ros1Kuavo_mappingGetAllMapsResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_mappingGetAllMapsRequestCodec(),
            new Ros1Kuavo_mappingGetAllMapsResponseCodec(),
            (value: Ros1Kuavo_mappingGetAllMapsRequest): bool => value.validValue(),
            4164,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/GetAllMaps incoming request/response owner. */
export class Ros1Kuavo_mappingGetAllMapsServer extends BoundedServiceServer<Ros1Kuavo_mappingGetAllMapsRequest, Ros1Kuavo_mappingGetAllMapsResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_mappingGetAllMapsRequestCodec(),
            new Ros1Kuavo_mappingGetAllMapsResponseCodec(),
            (value: Ros1Kuavo_mappingGetAllMapsResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/GetCurrentMap typed call and real-submit client. */
export class Ros1Kuavo_mappingGetCurrentMapClient extends BoundedServiceClient<Ros1Kuavo_mappingGetCurrentMapRequest, Ros1Kuavo_mappingGetCurrentMapResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_mappingGetCurrentMapRequestCodec(),
            new Ros1Kuavo_mappingGetCurrentMapResponseCodec(),
            (value: Ros1Kuavo_mappingGetCurrentMapRequest): bool => value.validValue(),
            260,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/GetCurrentMap incoming request/response owner. */
export class Ros1Kuavo_mappingGetCurrentMapServer extends BoundedServiceServer<Ros1Kuavo_mappingGetCurrentMapRequest, Ros1Kuavo_mappingGetCurrentMapResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_mappingGetCurrentMapRequestCodec(),
            new Ros1Kuavo_mappingGetCurrentMapResponseCodec(),
            (value: Ros1Kuavo_mappingGetCurrentMapResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/InitialPoseWithTaskPoint typed call and real-submit client. */
export class Ros1Kuavo_mappingInitialPoseWithTaskPointClient extends
    BoundedServiceClient<Ros1Kuavo_mappingInitialPoseWithTaskPointRequest, Ros1Kuavo_mappingInitialPoseWithTaskPointResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_mappingInitialPoseWithTaskPointRequestCodec(),
            new Ros1Kuavo_mappingInitialPoseWithTaskPointResponseCodec(),
            (value: Ros1Kuavo_mappingInitialPoseWithTaskPointRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/InitialPoseWithTaskPoint incoming request/response owner. */
export class Ros1Kuavo_mappingInitialPoseWithTaskPointServer extends
    BoundedServiceServer<Ros1Kuavo_mappingInitialPoseWithTaskPointRequest, Ros1Kuavo_mappingInitialPoseWithTaskPointResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_mappingInitialPoseWithTaskPointRequestCodec(),
            new Ros1Kuavo_mappingInitialPoseWithTaskPointResponseCodec(),
            (value: Ros1Kuavo_mappingInitialPoseWithTaskPointResponse): bool => value.validValue(),
            260,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/LoadMap typed call and real-submit client. */
export class Ros1Kuavo_mappingLoadMapClient extends BoundedServiceClient<Ros1Kuavo_mappingLoadMapRequest, Ros1Kuavo_mappingLoadMapResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_mappingLoadMapRequestCodec(),
            new Ros1Kuavo_mappingLoadMapResponseCodec(),
            (value: Ros1Kuavo_mappingLoadMapRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/LoadMap incoming request/response owner. */
export class Ros1Kuavo_mappingLoadMapServer extends BoundedServiceServer<Ros1Kuavo_mappingLoadMapRequest, Ros1Kuavo_mappingLoadMapResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_mappingLoadMapRequestCodec(),
            new Ros1Kuavo_mappingLoadMapResponseCodec(),
            (value: Ros1Kuavo_mappingLoadMapResponse): bool => value.validValue(),
            260,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/NavigateToTaskPoint typed call and real-submit client. */
export class Ros1Kuavo_mappingNavigateToTaskPointClient extends
    BoundedServiceClient<Ros1Kuavo_mappingNavigateToTaskPointRequest, Ros1Kuavo_mappingNavigateToTaskPointResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_mappingNavigateToTaskPointRequestCodec(),
            new Ros1Kuavo_mappingNavigateToTaskPointResponseCodec(),
            (value: Ros1Kuavo_mappingNavigateToTaskPointRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/NavigateToTaskPoint incoming request/response owner. */
export class Ros1Kuavo_mappingNavigateToTaskPointServer extends
    BoundedServiceServer<Ros1Kuavo_mappingNavigateToTaskPointRequest, Ros1Kuavo_mappingNavigateToTaskPointResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_mappingNavigateToTaskPointRequestCodec(),
            new Ros1Kuavo_mappingNavigateToTaskPointResponseCodec(),
            (value: Ros1Kuavo_mappingNavigateToTaskPointResponse): bool => value.validValue(),
            260,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/RenameMap typed call and real-submit client. */
export class Ros1Kuavo_mappingRenameMapClient extends BoundedServiceClient<Ros1Kuavo_mappingRenameMapRequest, Ros1Kuavo_mappingRenameMapResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_mappingRenameMapRequestCodec(),
            new Ros1Kuavo_mappingRenameMapResponseCodec(),
            (value: Ros1Kuavo_mappingRenameMapRequest): bool => value.validValue(),
            781,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/RenameMap incoming request/response owner. */
export class Ros1Kuavo_mappingRenameMapServer extends BoundedServiceServer<Ros1Kuavo_mappingRenameMapRequest, Ros1Kuavo_mappingRenameMapResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_mappingRenameMapRequestCodec(),
            new Ros1Kuavo_mappingRenameMapResponseCodec(),
            (value: Ros1Kuavo_mappingRenameMapResponse): bool => value.validValue(),
            520,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/SaveMap typed call and real-submit client. */
export class Ros1Kuavo_mappingSaveMapClient extends BoundedServiceClient<Ros1Kuavo_mappingSaveMapRequest, Ros1Kuavo_mappingSaveMapResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_mappingSaveMapRequestCodec(),
            new Ros1Kuavo_mappingSaveMapResponseCodec(),
            (value: Ros1Kuavo_mappingSaveMapRequest): bool => value.validValue(),
            1301,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/SaveMap incoming request/response owner. */
export class Ros1Kuavo_mappingSaveMapServer extends BoundedServiceServer<Ros1Kuavo_mappingSaveMapRequest, Ros1Kuavo_mappingSaveMapResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_mappingSaveMapRequestCodec(),
            new Ros1Kuavo_mappingSaveMapResponseCodec(),
            (value: Ros1Kuavo_mappingSaveMapResponse): bool => value.validValue(),
            260,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/SetInitialPose typed call and real-submit client. */
export class Ros1Kuavo_mappingSetInitialPoseClient extends BoundedServiceClient<Ros1Kuavo_mappingSetInitialPoseRequest, Ros1Kuavo_mappingSetInitialPoseResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_mappingSetInitialPoseRequestCodec(),
            new Ros1Kuavo_mappingSetInitialPoseResponseCodec(),
            (value: Ros1Kuavo_mappingSetInitialPoseRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/SetInitialPose incoming request/response owner. */
export class Ros1Kuavo_mappingSetInitialPoseServer extends BoundedServiceServer<Ros1Kuavo_mappingSetInitialPoseRequest, Ros1Kuavo_mappingSetInitialPoseResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_mappingSetInitialPoseRequestCodec(),
            new Ros1Kuavo_mappingSetInitialPoseResponseCodec(),
            (value: Ros1Kuavo_mappingSetInitialPoseResponse): bool => value.validValue(),
            616,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/StartMapping typed call and real-submit client. */
export class Ros1Kuavo_mappingStartMappingClient extends BoundedServiceClient<Ros1Kuavo_mappingStartMappingRequest, Ros1Kuavo_mappingStartMappingResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_mappingStartMappingRequestCodec(),
            new Ros1Kuavo_mappingStartMappingResponseCodec(),
            (value: Ros1Kuavo_mappingStartMappingRequest): bool => value.validValue(),
            521,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/StartMapping incoming request/response owner. */
export class Ros1Kuavo_mappingStartMappingServer extends BoundedServiceServer<Ros1Kuavo_mappingStartMappingRequest, Ros1Kuavo_mappingStartMappingResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_mappingStartMappingRequestCodec(),
            new Ros1Kuavo_mappingStartMappingResponseCodec(),
            (value: Ros1Kuavo_mappingStartMappingResponse): bool => value.validValue(),
            520,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/StopMapping typed call and real-submit client. */
export class Ros1Kuavo_mappingStopMappingClient extends BoundedServiceClient<Ros1Kuavo_mappingStopMappingRequest, Ros1Kuavo_mappingStopMappingResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_mappingStopMappingRequestCodec(),
            new Ros1Kuavo_mappingStopMappingResponseCodec(),
            (value: Ros1Kuavo_mappingStopMappingRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/StopMapping incoming request/response owner. */
export class Ros1Kuavo_mappingStopMappingServer extends BoundedServiceServer<Ros1Kuavo_mappingStopMappingRequest, Ros1Kuavo_mappingStopMappingResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_mappingStopMappingRequestCodec(),
            new Ros1Kuavo_mappingStopMappingResponseCodec(),
            (value: Ros1Kuavo_mappingStopMappingResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/TaskPointOperation typed call and real-submit client. */
export class Ros1Kuavo_mappingTaskPointOperationClient extends
    BoundedServiceClient<Ros1Kuavo_mappingTaskPointOperationRequest, Ros1Kuavo_mappingTaskPointOperationResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_mappingTaskPointOperationRequestCodec(),
            new Ros1Kuavo_mappingTaskPointOperationResponseCodec(),
            (value: Ros1Kuavo_mappingTaskPointOperationRequest): bool => value.validValue(),
            2793,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_mapping/TaskPointOperation incoming request/response owner. */
export class Ros1Kuavo_mappingTaskPointOperationServer extends
    BoundedServiceServer<Ros1Kuavo_mappingTaskPointOperationRequest, Ros1Kuavo_mappingTaskPointOperationResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_mappingTaskPointOperationRequestCodec(),
            new Ros1Kuavo_mappingTaskPointOperationResponseCodec(),
            (value: Ros1Kuavo_mappingTaskPointOperationResponse): bool => value.validValue(),
            578,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/CreatePath typed call and real-submit client. */
export class Ros1Kuavo_msgsCreatePathClient extends BoundedServiceClient<Ros1Kuavo_msgsCreatePathRequest, Ros1Kuavo_msgsCreatePathResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsCreatePathRequestCodec(),
            new Ros1Kuavo_msgsCreatePathResponseCodec(),
            (value: Ros1Kuavo_msgsCreatePathRequest): bool => value.validValue(),
            3161,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/CreatePath incoming request/response owner. */
export class Ros1Kuavo_msgsCreatePathServer extends BoundedServiceServer<Ros1Kuavo_msgsCreatePathRequest, Ros1Kuavo_msgsCreatePathResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsCreatePathRequestCodec(),
            new Ros1Kuavo_msgsCreatePathResponseCodec(),
            (value: Ros1Kuavo_msgsCreatePathResponse): bool => value.validValue(),
            301,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/ExecuteArmAction typed call and real-submit client. */
export class Ros1Kuavo_msgsExecuteArmActionClient extends BoundedServiceClient<Ros1Kuavo_msgsExecuteArmActionRequest, Ros1Kuavo_msgsExecuteArmActionResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsExecuteArmActionRequestCodec(),
            new Ros1Kuavo_msgsExecuteArmActionResponseCodec(),
            (value: Ros1Kuavo_msgsExecuteArmActionRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/ExecuteArmAction incoming request/response owner. */
export class Ros1Kuavo_msgsExecuteArmActionServer extends BoundedServiceServer<Ros1Kuavo_msgsExecuteArmActionRequest, Ros1Kuavo_msgsExecuteArmActionResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsExecuteArmActionRequestCodec(),
            new Ros1Kuavo_msgsExecuteArmActionResponseCodec(),
            (value: Ros1Kuavo_msgsExecuteArmActionResponse): bool => value.validValue(),
            260,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/FallStandCommand typed call and real-submit client. */
export class Ros1Kuavo_msgsFallStandCommandClient extends BoundedServiceClient<Ros1Kuavo_msgsFallStandCommandRequest, Ros1Kuavo_msgsFallStandCommandResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsFallStandCommandRequestCodec(),
            new Ros1Kuavo_msgsFallStandCommandResponseCodec(),
            (value: Ros1Kuavo_msgsFallStandCommandRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/FallStandCommand incoming request/response owner. */
export class Ros1Kuavo_msgsFallStandCommandServer extends BoundedServiceServer<Ros1Kuavo_msgsFallStandCommandRequest, Ros1Kuavo_msgsFallStandCommandResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsFallStandCommandRequestCodec(),
            new Ros1Kuavo_msgsFallStandCommandResponseCodec(),
            (value: Ros1Kuavo_msgsFallStandCommandResponse): bool => value.validValue(),
            1,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/GetAllMaps typed call and real-submit client. */
export class Ros1Kuavo_msgsGetAllMapsClient extends BoundedServiceClient<Ros1Kuavo_msgsGetAllMapsRequest, Ros1Kuavo_msgsGetAllMapsResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsGetAllMapsRequestCodec(),
            new Ros1Kuavo_msgsGetAllMapsResponseCodec(),
            (value: Ros1Kuavo_msgsGetAllMapsRequest): bool => value.validValue(),
            4164,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/GetAllMaps incoming request/response owner. */
export class Ros1Kuavo_msgsGetAllMapsServer extends BoundedServiceServer<Ros1Kuavo_msgsGetAllMapsRequest, Ros1Kuavo_msgsGetAllMapsResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsGetAllMapsRequestCodec(),
            new Ros1Kuavo_msgsGetAllMapsResponseCodec(),
            (value: Ros1Kuavo_msgsGetAllMapsResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/GetBatteryInfo typed call and real-submit client. */
export class Ros1Kuavo_msgsGetBatteryInfoClient extends BoundedServiceClient<Ros1Kuavo_msgsGetBatteryInfoRequest, Ros1Kuavo_msgsGetBatteryInfoResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsGetBatteryInfoRequestCodec(),
            new Ros1Kuavo_msgsGetBatteryInfoResponseCodec(),
            (value: Ros1Kuavo_msgsGetBatteryInfoRequest): bool => value.validValue(),
            297,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/GetBatteryInfo incoming request/response owner. */
export class Ros1Kuavo_msgsGetBatteryInfoServer extends BoundedServiceServer<Ros1Kuavo_msgsGetBatteryInfoRequest, Ros1Kuavo_msgsGetBatteryInfoResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsGetBatteryInfoRequestCodec(),
            new Ros1Kuavo_msgsGetBatteryInfoResponseCodec(),
            (value: Ros1Kuavo_msgsGetBatteryInfoResponse): bool => value.validValue(),
            1,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/GetCurrentMap typed call and real-submit client. */
export class Ros1Kuavo_msgsGetCurrentMapClient extends BoundedServiceClient<Ros1Kuavo_msgsGetCurrentMapRequest, Ros1Kuavo_msgsGetCurrentMapResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsGetCurrentMapRequestCodec(),
            new Ros1Kuavo_msgsGetCurrentMapResponseCodec(),
            (value: Ros1Kuavo_msgsGetCurrentMapRequest): bool => value.validValue(),
            260,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/GetCurrentMap incoming request/response owner. */
export class Ros1Kuavo_msgsGetCurrentMapServer extends BoundedServiceServer<Ros1Kuavo_msgsGetCurrentMapRequest, Ros1Kuavo_msgsGetCurrentMapResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsGetCurrentMapRequestCodec(),
            new Ros1Kuavo_msgsGetCurrentMapResponseCodec(),
            (value: Ros1Kuavo_msgsGetCurrentMapResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/GetPowerBoardStatus typed call and real-submit client. */
export class Ros1Kuavo_msgsGetPowerBoardStatusClient extends
    BoundedServiceClient<Ros1Kuavo_msgsGetPowerBoardStatusRequest, Ros1Kuavo_msgsGetPowerBoardStatusResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsGetPowerBoardStatusRequestCodec(),
            new Ros1Kuavo_msgsGetPowerBoardStatusResponseCodec(),
            (value: Ros1Kuavo_msgsGetPowerBoardStatusRequest): bool => value.validValue(),
            298,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/GetPowerBoardStatus incoming request/response owner. */
export class Ros1Kuavo_msgsGetPowerBoardStatusServer extends
    BoundedServiceServer<Ros1Kuavo_msgsGetPowerBoardStatusRequest, Ros1Kuavo_msgsGetPowerBoardStatusResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsGetPowerBoardStatusRequestCodec(),
            new Ros1Kuavo_msgsGetPowerBoardStatusResponseCodec(),
            (value: Ros1Kuavo_msgsGetPowerBoardStatusResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/GetStringList typed call and real-submit client. */
export class Ros1Kuavo_msgsGetStringListClient extends BoundedServiceClient<Ros1Kuavo_msgsGetStringListRequest, Ros1Kuavo_msgsGetStringListResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsGetStringListRequestCodec(),
            new Ros1Kuavo_msgsGetStringListResponseCodec(),
            (value: Ros1Kuavo_msgsGetStringListRequest): bool => value.validValue(),
            4425,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/GetStringList incoming request/response owner. */
export class Ros1Kuavo_msgsGetStringListServer extends BoundedServiceServer<Ros1Kuavo_msgsGetStringListRequest, Ros1Kuavo_msgsGetStringListResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsGetStringListRequestCodec(),
            new Ros1Kuavo_msgsGetStringListResponseCodec(),
            (value: Ros1Kuavo_msgsGetStringListResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/GetTargetPartPoseInCamera typed call and real-submit client. */
export class Ros1Kuavo_msgsGetTargetPartPoseInCameraClient extends
    BoundedServiceClient<Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest, Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsGetTargetPartPoseInCameraRequestCodec(),
            new Ros1Kuavo_msgsGetTargetPartPoseInCameraResponseCodec(),
            (value: Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest): bool => value.validValue(),
            317,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/GetTargetPartPoseInCamera incoming request/response owner. */
export class Ros1Kuavo_msgsGetTargetPartPoseInCameraServer extends
    BoundedServiceServer<Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest, Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsGetTargetPartPoseInCameraRequestCodec(),
            new Ros1Kuavo_msgsGetTargetPartPoseInCameraResponseCodec(),
            (value: Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/InitialPoseWithTaskPoint typed call and real-submit client. */
export class Ros1Kuavo_msgsInitialPoseWithTaskPointClient extends
    BoundedServiceClient<Ros1Kuavo_msgsInitialPoseWithTaskPointRequest, Ros1Kuavo_msgsInitialPoseWithTaskPointResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsInitialPoseWithTaskPointRequestCodec(),
            new Ros1Kuavo_msgsInitialPoseWithTaskPointResponseCodec(),
            (value: Ros1Kuavo_msgsInitialPoseWithTaskPointRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/InitialPoseWithTaskPoint incoming request/response owner. */
export class Ros1Kuavo_msgsInitialPoseWithTaskPointServer extends
    BoundedServiceServer<Ros1Kuavo_msgsInitialPoseWithTaskPointRequest, Ros1Kuavo_msgsInitialPoseWithTaskPointResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsInitialPoseWithTaskPointRequestCodec(),
            new Ros1Kuavo_msgsInitialPoseWithTaskPointResponseCodec(),
            (value: Ros1Kuavo_msgsInitialPoseWithTaskPointResponse): bool => value.validValue(),
            260,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/LoadMap typed call and real-submit client. */
export class Ros1Kuavo_msgsLoadMapClient extends BoundedServiceClient<Ros1Kuavo_msgsLoadMapRequest, Ros1Kuavo_msgsLoadMapResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsLoadMapRequestCodec(),
            new Ros1Kuavo_msgsLoadMapResponseCodec(),
            (value: Ros1Kuavo_msgsLoadMapRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/LoadMap incoming request/response owner. */
export class Ros1Kuavo_msgsLoadMapServer extends BoundedServiceServer<Ros1Kuavo_msgsLoadMapRequest, Ros1Kuavo_msgsLoadMapResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsLoadMapRequestCodec(),
            new Ros1Kuavo_msgsLoadMapResponseCodec(),
            (value: Ros1Kuavo_msgsLoadMapResponse): bool => value.validValue(),
            260,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/NavigateToTaskPoint typed call and real-submit client. */
export class Ros1Kuavo_msgsNavigateToTaskPointClient extends
    BoundedServiceClient<Ros1Kuavo_msgsNavigateToTaskPointRequest, Ros1Kuavo_msgsNavigateToTaskPointResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsNavigateToTaskPointRequestCodec(),
            new Ros1Kuavo_msgsNavigateToTaskPointResponseCodec(),
            (value: Ros1Kuavo_msgsNavigateToTaskPointRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/NavigateToTaskPoint incoming request/response owner. */
export class Ros1Kuavo_msgsNavigateToTaskPointServer extends
    BoundedServiceServer<Ros1Kuavo_msgsNavigateToTaskPointRequest, Ros1Kuavo_msgsNavigateToTaskPointResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsNavigateToTaskPointRequestCodec(),
            new Ros1Kuavo_msgsNavigateToTaskPointResponseCodec(),
            (value: Ros1Kuavo_msgsNavigateToTaskPointResponse): bool => value.validValue(),
            260,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/PlayMusicImmediate typed call and real-submit client. */
export class Ros1Kuavo_msgsPlayMusicImmediateClient extends
    BoundedServiceClient<Ros1Kuavo_msgsPlayMusicImmediateRequest, Ros1Kuavo_msgsPlayMusicImmediateResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsPlayMusicImmediateRequestCodec(),
            new Ros1Kuavo_msgsPlayMusicImmediateResponseCodec(),
            (value: Ros1Kuavo_msgsPlayMusicImmediateRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/PlayMusicImmediate incoming request/response owner. */
export class Ros1Kuavo_msgsPlayMusicImmediateServer extends
    BoundedServiceServer<Ros1Kuavo_msgsPlayMusicImmediateRequest, Ros1Kuavo_msgsPlayMusicImmediateResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsPlayMusicImmediateRequestCodec(),
            new Ros1Kuavo_msgsPlayMusicImmediateResponseCodec(),
            (value: Ros1Kuavo_msgsPlayMusicImmediateResponse): bool => value.validValue(),
            268,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/RelaySelectChannel typed call and real-submit client. */
export class Ros1Kuavo_msgsRelaySelectChannelClient extends
    BoundedServiceClient<Ros1Kuavo_msgsRelaySelectChannelRequest, Ros1Kuavo_msgsRelaySelectChannelResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsRelaySelectChannelRequestCodec(),
            new Ros1Kuavo_msgsRelaySelectChannelResponseCodec(),
            (value: Ros1Kuavo_msgsRelaySelectChannelRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/RelaySelectChannel incoming request/response owner. */
export class Ros1Kuavo_msgsRelaySelectChannelServer extends
    BoundedServiceServer<Ros1Kuavo_msgsRelaySelectChannelRequest, Ros1Kuavo_msgsRelaySelectChannelResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsRelaySelectChannelRequestCodec(),
            new Ros1Kuavo_msgsRelaySelectChannelResponseCodec(),
            (value: Ros1Kuavo_msgsRelaySelectChannelResponse): bool => value.validValue(),
            1,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/RepublishTFs typed call and real-submit client. */
export class Ros1Kuavo_msgsRepublishTFsClient extends BoundedServiceClient<Ros1Kuavo_msgsRepublishTFsRequest, Ros1Kuavo_msgsRepublishTFsResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsRepublishTFsRequestCodec(),
            new Ros1Kuavo_msgsRepublishTFsResponseCodec(),
            (value: Ros1Kuavo_msgsRepublishTFsRequest): bool => value.validValue(),
            264,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/RepublishTFs incoming request/response owner. */
export class Ros1Kuavo_msgsRepublishTFsServer extends BoundedServiceServer<Ros1Kuavo_msgsRepublishTFsRequest, Ros1Kuavo_msgsRepublishTFsResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsRepublishTFsRequestCodec(),
            new Ros1Kuavo_msgsRepublishTFsResponseCodec(),
            (value: Ros1Kuavo_msgsRepublishTFsResponse): bool => value.validValue(),
            4444,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/SetHeadControlMode typed call and real-submit client. */
export class Ros1Kuavo_msgsSetHeadControlModeClient extends
    BoundedServiceClient<Ros1Kuavo_msgsSetHeadControlModeRequest, Ros1Kuavo_msgsSetHeadControlModeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsSetHeadControlModeRequestCodec(),
            new Ros1Kuavo_msgsSetHeadControlModeResponseCodec(),
            (value: Ros1Kuavo_msgsSetHeadControlModeRequest): bool => value.validValue(),
            521,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/SetHeadControlMode incoming request/response owner. */
export class Ros1Kuavo_msgsSetHeadControlModeServer extends
    BoundedServiceServer<Ros1Kuavo_msgsSetHeadControlModeRequest, Ros1Kuavo_msgsSetHeadControlModeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsSetHeadControlModeRequestCodec(),
            new Ros1Kuavo_msgsSetHeadControlModeResponseCodec(),
            (value: Ros1Kuavo_msgsSetHeadControlModeResponse): bool => value.validValue(),
            520,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/SetIncrementalArmTrajLink typed call and real-submit client. */
export class Ros1Kuavo_msgsSetIncrementalArmTrajLinkClient extends
    BoundedServiceClient<Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest, Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequestCodec(),
            new Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponseCodec(),
            (value: Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/SetIncrementalArmTrajLink incoming request/response owner. */
export class Ros1Kuavo_msgsSetIncrementalArmTrajLinkServer extends
    BoundedServiceServer<Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest, Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequestCodec(),
            new Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponseCodec(),
            (value: Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse): bool => value.validValue(),
            1,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/SetInitialPose typed call and real-submit client. */
export class Ros1Kuavo_msgsSetInitialPoseClient extends BoundedServiceClient<Ros1Kuavo_msgsSetInitialPoseRequest, Ros1Kuavo_msgsSetInitialPoseResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsSetInitialPoseRequestCodec(),
            new Ros1Kuavo_msgsSetInitialPoseResponseCodec(),
            (value: Ros1Kuavo_msgsSetInitialPoseRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/SetInitialPose incoming request/response owner. */
export class Ros1Kuavo_msgsSetInitialPoseServer extends BoundedServiceServer<Ros1Kuavo_msgsSetInitialPoseRequest, Ros1Kuavo_msgsSetInitialPoseResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsSetInitialPoseRequestCodec(),
            new Ros1Kuavo_msgsSetInitialPoseResponseCodec(),
            (value: Ros1Kuavo_msgsSetInitialPoseResponse): bool => value.validValue(),
            616,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/SetJoyTopic typed call and real-submit client. */
export class Ros1Kuavo_msgsSetJoyTopicClient extends BoundedServiceClient<Ros1Kuavo_msgsSetJoyTopicRequest, Ros1Kuavo_msgsSetJoyTopicResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsSetJoyTopicRequestCodec(),
            new Ros1Kuavo_msgsSetJoyTopicResponseCodec(),
            (value: Ros1Kuavo_msgsSetJoyTopicRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/SetJoyTopic incoming request/response owner. */
export class Ros1Kuavo_msgsSetJoyTopicServer extends BoundedServiceServer<Ros1Kuavo_msgsSetJoyTopicRequest, Ros1Kuavo_msgsSetJoyTopicResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsSetJoyTopicRequestCodec(),
            new Ros1Kuavo_msgsSetJoyTopicResponseCodec(),
            (value: Ros1Kuavo_msgsSetJoyTopicResponse): bool => value.validValue(),
            260,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/SetLEDMode typed call and real-submit client. */
export class Ros1Kuavo_msgsSetLEDModeClient extends BoundedServiceClient<Ros1Kuavo_msgsSetLEDModeRequest, Ros1Kuavo_msgsSetLEDModeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsSetLEDModeRequestCodec(),
            new Ros1Kuavo_msgsSetLEDModeResponseCodec(),
            (value: Ros1Kuavo_msgsSetLEDModeRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/SetLEDMode incoming request/response owner. */
export class Ros1Kuavo_msgsSetLEDModeServer extends BoundedServiceServer<Ros1Kuavo_msgsSetLEDModeRequest, Ros1Kuavo_msgsSetLEDModeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsSetLEDModeRequestCodec(),
            new Ros1Kuavo_msgsSetLEDModeResponseCodec(),
            (value: Ros1Kuavo_msgsSetLEDModeResponse): bool => value.validValue(),
            31,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/SetLEDMode_free typed call and real-submit client. */
export class Ros1Kuavo_msgsSetLEDMode_freeClient extends BoundedServiceClient<Ros1Kuavo_msgsSetLEDMode_freeRequest, Ros1Kuavo_msgsSetLEDMode_freeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsSetLEDMode_freeRequestCodec(),
            new Ros1Kuavo_msgsSetLEDMode_freeResponseCodec(),
            (value: Ros1Kuavo_msgsSetLEDMode_freeRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/SetLEDMode_free incoming request/response owner. */
export class Ros1Kuavo_msgsSetLEDMode_freeServer extends BoundedServiceServer<Ros1Kuavo_msgsSetLEDMode_freeRequest, Ros1Kuavo_msgsSetLEDMode_freeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsSetLEDMode_freeRequestCodec(),
            new Ros1Kuavo_msgsSetLEDMode_freeResponseCodec(),
            (value: Ros1Kuavo_msgsSetLEDMode_freeResponse): bool => value.validValue(),
            29,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/SetString typed call and real-submit client. */
export class Ros1Kuavo_msgsSetStringClient extends BoundedServiceClient<Ros1Kuavo_msgsSetStringRequest, Ros1Kuavo_msgsSetStringResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsSetStringRequestCodec(),
            new Ros1Kuavo_msgsSetStringResponseCodec(),
            (value: Ros1Kuavo_msgsSetStringRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/SetString incoming request/response owner. */
export class Ros1Kuavo_msgsSetStringServer extends BoundedServiceServer<Ros1Kuavo_msgsSetStringRequest, Ros1Kuavo_msgsSetStringResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsSetStringRequestCodec(),
            new Ros1Kuavo_msgsSetStringResponseCodec(),
            (value: Ros1Kuavo_msgsSetStringResponse): bool => value.validValue(),
            260,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/SpeechSynthesis typed call and real-submit client. */
export class Ros1Kuavo_msgsSpeechSynthesisClient extends BoundedServiceClient<Ros1Kuavo_msgsSpeechSynthesisRequest, Ros1Kuavo_msgsSpeechSynthesisResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsSpeechSynthesisRequestCodec(),
            new Ros1Kuavo_msgsSpeechSynthesisResponseCodec(),
            (value: Ros1Kuavo_msgsSpeechSynthesisRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/SpeechSynthesis incoming request/response owner. */
export class Ros1Kuavo_msgsSpeechSynthesisServer extends BoundedServiceServer<Ros1Kuavo_msgsSpeechSynthesisRequest, Ros1Kuavo_msgsSpeechSynthesisResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsSpeechSynthesisRequestCodec(),
            new Ros1Kuavo_msgsSpeechSynthesisResponseCodec(),
            (value: Ros1Kuavo_msgsSpeechSynthesisResponse): bool => value.validValue(),
            264,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/TaskPointOperation typed call and real-submit client. */
export class Ros1Kuavo_msgsTaskPointOperationClient extends
    BoundedServiceClient<Ros1Kuavo_msgsTaskPointOperationRequest, Ros1Kuavo_msgsTaskPointOperationResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsTaskPointOperationRequestCodec(),
            new Ros1Kuavo_msgsTaskPointOperationResponseCodec(),
            (value: Ros1Kuavo_msgsTaskPointOperationRequest): bool => value.validValue(),
            2793,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/TaskPointOperation incoming request/response owner. */
export class Ros1Kuavo_msgsTaskPointOperationServer extends
    BoundedServiceServer<Ros1Kuavo_msgsTaskPointOperationRequest, Ros1Kuavo_msgsTaskPointOperationResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsTaskPointOperationRequestCodec(),
            new Ros1Kuavo_msgsTaskPointOperationResponseCodec(),
            (value: Ros1Kuavo_msgsTaskPointOperationResponse): bool => value.validValue(),
            578,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/TransportModeCommand typed call and real-submit client. */
export class Ros1Kuavo_msgsTransportModeCommandClient extends
    BoundedServiceClient<Ros1Kuavo_msgsTransportModeCommandRequest, Ros1Kuavo_msgsTransportModeCommandResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsTransportModeCommandRequestCodec(),
            new Ros1Kuavo_msgsTransportModeCommandResponseCodec(),
            (value: Ros1Kuavo_msgsTransportModeCommandRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/TransportModeCommand incoming request/response owner. */
export class Ros1Kuavo_msgsTransportModeCommandServer extends
    BoundedServiceServer<Ros1Kuavo_msgsTransportModeCommandRequest, Ros1Kuavo_msgsTransportModeCommandResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsTransportModeCommandRequestCodec(),
            new Ros1Kuavo_msgsTransportModeCommandResponseCodec(),
            (value: Ros1Kuavo_msgsTransportModeCommandResponse): bool => value.validValue(),
            1,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/accessIkSolve typed call and real-submit client. */
export class Ros1Kuavo_msgsAccessIkSolveClient extends BoundedServiceClient<Ros1Kuavo_msgsAccessIkSolveRequest, Ros1Kuavo_msgsAccessIkSolveResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsAccessIkSolveRequestCodec(),
            new Ros1Kuavo_msgsAccessIkSolveResponseCodec(),
            (value: Ros1Kuavo_msgsAccessIkSolveRequest): bool => value.validValue(),
            298,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/accessIkSolve incoming request/response owner. */
export class Ros1Kuavo_msgsAccessIkSolveServer extends BoundedServiceServer<Ros1Kuavo_msgsAccessIkSolveRequest, Ros1Kuavo_msgsAccessIkSolveResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsAccessIkSolveRequestCodec(),
            new Ros1Kuavo_msgsAccessIkSolveResponseCodec(),
            (value: Ros1Kuavo_msgsAccessIkSolveResponse): bool => value.validValue(),
            79,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/adjustZeroPoint typed call and real-submit client. */
export class Ros1Kuavo_msgsAdjustZeroPointClient extends BoundedServiceClient<Ros1Kuavo_msgsAdjustZeroPointRequest, Ros1Kuavo_msgsAdjustZeroPointResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsAdjustZeroPointRequestCodec(),
            new Ros1Kuavo_msgsAdjustZeroPointResponseCodec(),
            (value: Ros1Kuavo_msgsAdjustZeroPointRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/adjustZeroPoint incoming request/response owner. */
export class Ros1Kuavo_msgsAdjustZeroPointServer extends BoundedServiceServer<Ros1Kuavo_msgsAdjustZeroPointRequest, Ros1Kuavo_msgsAdjustZeroPointResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsAdjustZeroPointRequestCodec(),
            new Ros1Kuavo_msgsAdjustZeroPointResponseCodec(),
            (value: Ros1Kuavo_msgsAdjustZeroPointResponse): bool => value.validValue(),
            12,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/changeArmCtrlMode typed call and real-submit client. */
export class Ros1Kuavo_msgsChangeArmCtrlModeClient extends BoundedServiceClient<Ros1Kuavo_msgsChangeArmCtrlModeRequest, Ros1Kuavo_msgsChangeArmCtrlModeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsChangeArmCtrlModeRequestCodec(),
            new Ros1Kuavo_msgsChangeArmCtrlModeResponseCodec(),
            (value: Ros1Kuavo_msgsChangeArmCtrlModeRequest): bool => value.validValue(),
            265,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/changeArmCtrlMode incoming request/response owner. */
export class Ros1Kuavo_msgsChangeArmCtrlModeServer extends BoundedServiceServer<Ros1Kuavo_msgsChangeArmCtrlModeRequest, Ros1Kuavo_msgsChangeArmCtrlModeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsChangeArmCtrlModeRequestCodec(),
            new Ros1Kuavo_msgsChangeArmCtrlModeResponseCodec(),
            (value: Ros1Kuavo_msgsChangeArmCtrlModeResponse): bool => value.validValue(),
            4,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/changeArmCtrlModeKuavo typed call and real-submit client. */
export class Ros1Kuavo_msgsChangeArmCtrlModeKuavoClient extends
    BoundedServiceClient<Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest, Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequestCodec(),
            new Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponseCodec(),
            (value: Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/changeArmCtrlModeKuavo incoming request/response owner. */
export class Ros1Kuavo_msgsChangeArmCtrlModeKuavoServer extends
    BoundedServiceServer<Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest, Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequestCodec(),
            new Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponseCodec(),
            (value: Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse): bool => value.validValue(),
            1,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/changeLbMpcObsUpdateModeSrv typed call and real-submit client. */
export class Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvClient extends
    BoundedServiceClient<Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest, Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequestCodec(),
            new Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponseCodec(),
            (value: Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/changeLbMpcObsUpdateModeSrv incoming request/response owner. */
export class Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvServer extends
    BoundedServiceServer<Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest, Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequestCodec(),
            new Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponseCodec(),
            (value: Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse): bool => value.validValue(),
            1,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/changeLbQuickModeSrv typed call and real-submit client. */
export class Ros1Kuavo_msgsChangeLbQuickModeSrvClient extends
    BoundedServiceClient<Ros1Kuavo_msgsChangeLbQuickModeSrvRequest, Ros1Kuavo_msgsChangeLbQuickModeSrvResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsChangeLbQuickModeSrvRequestCodec(),
            new Ros1Kuavo_msgsChangeLbQuickModeSrvResponseCodec(),
            (value: Ros1Kuavo_msgsChangeLbQuickModeSrvRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/changeLbQuickModeSrv incoming request/response owner. */
export class Ros1Kuavo_msgsChangeLbQuickModeSrvServer extends
    BoundedServiceServer<Ros1Kuavo_msgsChangeLbQuickModeSrvRequest, Ros1Kuavo_msgsChangeLbQuickModeSrvResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsChangeLbQuickModeSrvRequestCodec(),
            new Ros1Kuavo_msgsChangeLbQuickModeSrvResponseCodec(),
            (value: Ros1Kuavo_msgsChangeLbQuickModeSrvResponse): bool => value.validValue(),
            1,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/changeMotorParam typed call and real-submit client. */
export class Ros1Kuavo_msgsChangeMotorParamClient extends BoundedServiceClient<Ros1Kuavo_msgsChangeMotorParamRequest, Ros1Kuavo_msgsChangeMotorParamResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsChangeMotorParamRequestCodec(),
            new Ros1Kuavo_msgsChangeMotorParamResponseCodec(),
            (value: Ros1Kuavo_msgsChangeMotorParamRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/changeMotorParam incoming request/response owner. */
export class Ros1Kuavo_msgsChangeMotorParamServer extends BoundedServiceServer<Ros1Kuavo_msgsChangeMotorParamRequest, Ros1Kuavo_msgsChangeMotorParamResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsChangeMotorParamRequestCodec(),
            new Ros1Kuavo_msgsChangeMotorParamResponseCodec(),
            (value: Ros1Kuavo_msgsChangeMotorParamResponse): bool => value.validValue(),
            84,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/changeTorsoCtrlMode typed call and real-submit client. */
export class Ros1Kuavo_msgsChangeTorsoCtrlModeClient extends
    BoundedServiceClient<Ros1Kuavo_msgsChangeTorsoCtrlModeRequest, Ros1Kuavo_msgsChangeTorsoCtrlModeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsChangeTorsoCtrlModeRequestCodec(),
            new Ros1Kuavo_msgsChangeTorsoCtrlModeResponseCodec(),
            (value: Ros1Kuavo_msgsChangeTorsoCtrlModeRequest): bool => value.validValue(),
            265,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/changeTorsoCtrlMode incoming request/response owner. */
export class Ros1Kuavo_msgsChangeTorsoCtrlModeServer extends
    BoundedServiceServer<Ros1Kuavo_msgsChangeTorsoCtrlModeRequest, Ros1Kuavo_msgsChangeTorsoCtrlModeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsChangeTorsoCtrlModeRequestCodec(),
            new Ros1Kuavo_msgsChangeTorsoCtrlModeResponseCodec(),
            (value: Ros1Kuavo_msgsChangeTorsoCtrlModeResponse): bool => value.validValue(),
            4,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/changeWaistCtrlMode typed call and real-submit client. */
export class Ros1Kuavo_msgsChangeWaistCtrlModeClient extends
    BoundedServiceClient<Ros1Kuavo_msgsChangeWaistCtrlModeRequest, Ros1Kuavo_msgsChangeWaistCtrlModeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsChangeWaistCtrlModeRequestCodec(),
            new Ros1Kuavo_msgsChangeWaistCtrlModeResponseCodec(),
            (value: Ros1Kuavo_msgsChangeWaistCtrlModeRequest): bool => value.validValue(),
            265,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/changeWaistCtrlMode incoming request/response owner. */
export class Ros1Kuavo_msgsChangeWaistCtrlModeServer extends
    BoundedServiceServer<Ros1Kuavo_msgsChangeWaistCtrlModeRequest, Ros1Kuavo_msgsChangeWaistCtrlModeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsChangeWaistCtrlModeRequestCodec(),
            new Ros1Kuavo_msgsChangeWaistCtrlModeResponseCodec(),
            (value: Ros1Kuavo_msgsChangeWaistCtrlModeResponse): bool => value.validValue(),
            4,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/chassisPoseCmdSrv typed call and real-submit client. */
export class Ros1Kuavo_msgsChassisPoseCmdSrvClient extends BoundedServiceClient<Ros1Kuavo_msgsChassisPoseCmdSrvRequest, Ros1Kuavo_msgsChassisPoseCmdSrvResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsChassisPoseCmdSrvRequestCodec(),
            new Ros1Kuavo_msgsChassisPoseCmdSrvResponseCodec(),
            (value: Ros1Kuavo_msgsChassisPoseCmdSrvRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/chassisPoseCmdSrv incoming request/response owner. */
export class Ros1Kuavo_msgsChassisPoseCmdSrvServer extends BoundedServiceServer<Ros1Kuavo_msgsChassisPoseCmdSrvRequest, Ros1Kuavo_msgsChassisPoseCmdSrvResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsChassisPoseCmdSrvRequestCodec(),
            new Ros1Kuavo_msgsChassisPoseCmdSrvResponseCodec(),
            (value: Ros1Kuavo_msgsChassisPoseCmdSrvResponse): bool => value.validValue(),
            188,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/controlLejuClaw typed call and real-submit client. */
export class Ros1Kuavo_msgsControlLejuClawClient extends BoundedServiceClient<Ros1Kuavo_msgsControlLejuClawRequest, Ros1Kuavo_msgsControlLejuClawResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsControlLejuClawRequestCodec(),
            new Ros1Kuavo_msgsControlLejuClawResponseCodec(),
            (value: Ros1Kuavo_msgsControlLejuClawRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/controlLejuClaw incoming request/response owner. */
export class Ros1Kuavo_msgsControlLejuClawServer extends BoundedServiceServer<Ros1Kuavo_msgsControlLejuClawRequest, Ros1Kuavo_msgsControlLejuClawResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsControlLejuClawRequestCodec(),
            new Ros1Kuavo_msgsControlLejuClawResponseCodec(),
            (value: Ros1Kuavo_msgsControlLejuClawResponse): bool => value.validValue(),
            4560,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/eePoseReachError typed call and real-submit client. */
export class Ros1Kuavo_msgsEePoseReachErrorClient extends BoundedServiceClient<Ros1Kuavo_msgsEePoseReachErrorRequest, Ros1Kuavo_msgsEePoseReachErrorResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsEePoseReachErrorRequestCodec(),
            new Ros1Kuavo_msgsEePoseReachErrorResponseCodec(),
            (value: Ros1Kuavo_msgsEePoseReachErrorRequest): bool => value.validValue(),
            133,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/eePoseReachError incoming request/response owner. */
export class Ros1Kuavo_msgsEePoseReachErrorServer extends BoundedServiceServer<Ros1Kuavo_msgsEePoseReachErrorRequest, Ros1Kuavo_msgsEePoseReachErrorResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsEePoseReachErrorRequestCodec(),
            new Ros1Kuavo_msgsEePoseReachErrorResponseCodec(),
            (value: Ros1Kuavo_msgsEePoseReachErrorResponse): bool => value.validValue(),
            1,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/enableHandTouchSensor typed call and real-submit client. */
export class Ros1Kuavo_msgsEnableHandTouchSensorClient extends
    BoundedServiceClient<Ros1Kuavo_msgsEnableHandTouchSensorRequest, Ros1Kuavo_msgsEnableHandTouchSensorResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsEnableHandTouchSensorRequestCodec(),
            new Ros1Kuavo_msgsEnableHandTouchSensorResponseCodec(),
            (value: Ros1Kuavo_msgsEnableHandTouchSensorRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/enableHandTouchSensor incoming request/response owner. */
export class Ros1Kuavo_msgsEnableHandTouchSensorServer extends
    BoundedServiceServer<Ros1Kuavo_msgsEnableHandTouchSensorRequest, Ros1Kuavo_msgsEnableHandTouchSensorResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsEnableHandTouchSensorRequestCodec(),
            new Ros1Kuavo_msgsEnableHandTouchSensorResponseCodec(),
            (value: Ros1Kuavo_msgsEnableHandTouchSensorResponse): bool => value.validValue(),
            1,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/fkSrv typed call and real-submit client. */
export class Ros1Kuavo_msgsFkSrvClient extends BoundedServiceClient<Ros1Kuavo_msgsFkSrvRequest, Ros1Kuavo_msgsFkSrvResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsFkSrvRequestCodec(),
            new Ros1Kuavo_msgsFkSrvResponseCodec(),
            (value: Ros1Kuavo_msgsFkSrvRequest): bool => value.validValue(),
            545,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/fkSrv incoming request/response owner. */
export class Ros1Kuavo_msgsFkSrvServer extends BoundedServiceServer<Ros1Kuavo_msgsFkSrvRequest, Ros1Kuavo_msgsFkSrvResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsFkSrvRequestCodec(),
            new Ros1Kuavo_msgsFkSrvResponseCodec(),
            (value: Ros1Kuavo_msgsFkSrvResponse): bool => value.validValue(),
            132,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/fkSrvWithReferFrame typed call and real-submit client. */
export class Ros1Kuavo_msgsFkSrvWithReferFrameClient extends
    BoundedServiceClient<Ros1Kuavo_msgsFkSrvWithReferFrameRequest, Ros1Kuavo_msgsFkSrvWithReferFrameResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsFkSrvWithReferFrameRequestCodec(),
            new Ros1Kuavo_msgsFkSrvWithReferFrameResponseCodec(),
            (value: Ros1Kuavo_msgsFkSrvWithReferFrameRequest): bool => value.validValue(),
            805,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/fkSrvWithReferFrame incoming request/response owner. */
export class Ros1Kuavo_msgsFkSrvWithReferFrameServer extends
    BoundedServiceServer<Ros1Kuavo_msgsFkSrvWithReferFrameRequest, Ros1Kuavo_msgsFkSrvWithReferFrameResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsFkSrvWithReferFrameRequestCodec(),
            new Ros1Kuavo_msgsFkSrvWithReferFrameResponseCodec(),
            (value: Ros1Kuavo_msgsFkSrvWithReferFrameResponse): bool => value.validValue(),
            656,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/footPose6DTargetTrajectoriesSrv typed call and real-submit client. */
export class Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvClient extends
    BoundedServiceClient<Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest, Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequestCodec(),
            new Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponseCodec(),
            (value: Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/footPose6DTargetTrajectoriesSrv incoming request/response owner. */
export class Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvServer extends
    BoundedServiceServer<Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest, Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequestCodec(),
            new Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponseCodec(),
            (value: Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse): bool => value.validValue(),
            7292,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/footPoseTargetTrajectoriesSrv typed call and real-submit client. */
export class Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvClient extends
    BoundedServiceClient<Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest, Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequestCodec(),
            new Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponseCodec(),
            (value: Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/footPoseTargetTrajectoriesSrv incoming request/response owner. */
export class Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvServer extends
    BoundedServiceServer<Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest, Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequestCodec(),
            new Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponseCodec(),
            (value: Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse): bool => value.validValue(),
            4980,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/gestureExecute typed call and real-submit client. */
export class Ros1Kuavo_msgsGestureExecuteClient extends BoundedServiceClient<Ros1Kuavo_msgsGestureExecuteRequest, Ros1Kuavo_msgsGestureExecuteResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsGestureExecuteRequestCodec(),
            new Ros1Kuavo_msgsGestureExecuteResponseCodec(),
            (value: Ros1Kuavo_msgsGestureExecuteRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/gestureExecute incoming request/response owner. */
export class Ros1Kuavo_msgsGestureExecuteServer extends BoundedServiceServer<Ros1Kuavo_msgsGestureExecuteRequest, Ros1Kuavo_msgsGestureExecuteResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsGestureExecuteRequestCodec(),
            new Ros1Kuavo_msgsGestureExecuteResponseCodec(),
            (value: Ros1Kuavo_msgsGestureExecuteResponse): bool => value.validValue(),
            2092,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/gestureExecuteState typed call and real-submit client. */
export class Ros1Kuavo_msgsGestureExecuteStateClient extends
    BoundedServiceClient<Ros1Kuavo_msgsGestureExecuteStateRequest, Ros1Kuavo_msgsGestureExecuteStateResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsGestureExecuteStateRequestCodec(),
            new Ros1Kuavo_msgsGestureExecuteStateResponseCodec(),
            (value: Ros1Kuavo_msgsGestureExecuteStateRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/gestureExecuteState incoming request/response owner. */
export class Ros1Kuavo_msgsGestureExecuteStateServer extends
    BoundedServiceServer<Ros1Kuavo_msgsGestureExecuteStateRequest, Ros1Kuavo_msgsGestureExecuteStateResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsGestureExecuteStateRequestCodec(),
            new Ros1Kuavo_msgsGestureExecuteStateResponseCodec(),
            (value: Ros1Kuavo_msgsGestureExecuteStateResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/gestureList typed call and real-submit client. */
export class Ros1Kuavo_msgsGestureListClient extends BoundedServiceClient<Ros1Kuavo_msgsGestureListRequest, Ros1Kuavo_msgsGestureListResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsGestureListRequestCodec(),
            new Ros1Kuavo_msgsGestureListResponseCodec(),
            (value: Ros1Kuavo_msgsGestureListRequest): bool => value.validValue(),
            13165,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/gestureList incoming request/response owner. */
export class Ros1Kuavo_msgsGestureListServer extends BoundedServiceServer<Ros1Kuavo_msgsGestureListRequest, Ros1Kuavo_msgsGestureListResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsGestureListRequestCodec(),
            new Ros1Kuavo_msgsGestureListResponseCodec(),
            (value: Ros1Kuavo_msgsGestureListResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/getControllerList typed call and real-submit client. */
export class Ros1Kuavo_msgsGetControllerListClient extends BoundedServiceClient<Ros1Kuavo_msgsGetControllerListRequest, Ros1Kuavo_msgsGetControllerListResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsGetControllerListRequestCodec(),
            new Ros1Kuavo_msgsGetControllerListResponseCodec(),
            (value: Ros1Kuavo_msgsGetControllerListRequest): bool => value.validValue(),
            4693,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/getControllerList incoming request/response owner. */
export class Ros1Kuavo_msgsGetControllerListServer extends BoundedServiceServer<Ros1Kuavo_msgsGetControllerListRequest, Ros1Kuavo_msgsGetControllerListResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsGetControllerListRequestCodec(),
            new Ros1Kuavo_msgsGetControllerListResponseCodec(),
            (value: Ros1Kuavo_msgsGetControllerListResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/getCurrentGaitName typed call and real-submit client. */
export class Ros1Kuavo_msgsGetCurrentGaitNameClient extends
    BoundedServiceClient<Ros1Kuavo_msgsGetCurrentGaitNameRequest, Ros1Kuavo_msgsGetCurrentGaitNameResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsGetCurrentGaitNameRequestCodec(),
            new Ros1Kuavo_msgsGetCurrentGaitNameResponseCodec(),
            (value: Ros1Kuavo_msgsGetCurrentGaitNameRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/getCurrentGaitName incoming request/response owner. */
export class Ros1Kuavo_msgsGetCurrentGaitNameServer extends
    BoundedServiceServer<Ros1Kuavo_msgsGetCurrentGaitNameRequest, Ros1Kuavo_msgsGetCurrentGaitNameResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsGetCurrentGaitNameRequestCodec(),
            new Ros1Kuavo_msgsGetCurrentGaitNameResponseCodec(),
            (value: Ros1Kuavo_msgsGetCurrentGaitNameResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/getLbTorsoInitialPose typed call and real-submit client. */
export class Ros1Kuavo_msgsGetLbTorsoInitialPoseClient extends
    BoundedServiceClient<Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest, Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsGetLbTorsoInitialPoseRequestCodec(),
            new Ros1Kuavo_msgsGetLbTorsoInitialPoseResponseCodec(),
            (value: Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest): bool => value.validValue(),
            309,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/getLbTorsoInitialPose incoming request/response owner. */
export class Ros1Kuavo_msgsGetLbTorsoInitialPoseServer extends
    BoundedServiceServer<Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest, Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsGetLbTorsoInitialPoseRequestCodec(),
            new Ros1Kuavo_msgsGetLbTorsoInitialPoseResponseCodec(),
            (value: Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse): bool => value.validValue(),
            1,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/getMotorParam typed call and real-submit client. */
export class Ros1Kuavo_msgsGetMotorParamClient extends BoundedServiceClient<Ros1Kuavo_msgsGetMotorParamRequest, Ros1Kuavo_msgsGetMotorParamResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsGetMotorParamRequestCodec(),
            new Ros1Kuavo_msgsGetMotorParamResponseCodec(),
            (value: Ros1Kuavo_msgsGetMotorParamRequest): bool => value.validValue(),
            345,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/getMotorParam incoming request/response owner. */
export class Ros1Kuavo_msgsGetMotorParamServer extends BoundedServiceServer<Ros1Kuavo_msgsGetMotorParamRequest, Ros1Kuavo_msgsGetMotorParamResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsGetMotorParamRequestCodec(),
            new Ros1Kuavo_msgsGetMotorParamResponseCodec(),
            (value: Ros1Kuavo_msgsGetMotorParamResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/getMotorZeroPoints typed call and real-submit client. */
export class Ros1Kuavo_msgsGetMotorZeroPointsClient extends
    BoundedServiceClient<Ros1Kuavo_msgsGetMotorZeroPointsRequest, Ros1Kuavo_msgsGetMotorZeroPointsResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsGetMotorZeroPointsRequestCodec(),
            new Ros1Kuavo_msgsGetMotorZeroPointsResponseCodec(),
            (value: Ros1Kuavo_msgsGetMotorZeroPointsRequest): bool => value.validValue(),
            393,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/getMotorZeroPoints incoming request/response owner. */
export class Ros1Kuavo_msgsGetMotorZeroPointsServer extends
    BoundedServiceServer<Ros1Kuavo_msgsGetMotorZeroPointsRequest, Ros1Kuavo_msgsGetMotorZeroPointsResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsGetMotorZeroPointsRequestCodec(),
            new Ros1Kuavo_msgsGetMotorZeroPointsResponseCodec(),
            (value: Ros1Kuavo_msgsGetMotorZeroPointsResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/goToZeroPoint typed call and real-submit client. */
export class Ros1Kuavo_msgsGoToZeroPointClient extends BoundedServiceClient<Ros1Kuavo_msgsGoToZeroPointRequest, Ros1Kuavo_msgsGoToZeroPointResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsGoToZeroPointRequestCodec(),
            new Ros1Kuavo_msgsGoToZeroPointResponseCodec(),
            (value: Ros1Kuavo_msgsGoToZeroPointRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/goToZeroPoint incoming request/response owner. */
export class Ros1Kuavo_msgsGoToZeroPointServer extends BoundedServiceServer<Ros1Kuavo_msgsGoToZeroPointRequest, Ros1Kuavo_msgsGoToZeroPointResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsGoToZeroPointRequestCodec(),
            new Ros1Kuavo_msgsGoToZeroPointResponseCodec(),
            (value: Ros1Kuavo_msgsGoToZeroPointResponse): bool => value.validValue(),
            132,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/handForceLevel typed call and real-submit client. */
export class Ros1Kuavo_msgsHandForceLevelClient extends BoundedServiceClient<Ros1Kuavo_msgsHandForceLevelRequest, Ros1Kuavo_msgsHandForceLevelResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsHandForceLevelRequestCodec(),
            new Ros1Kuavo_msgsHandForceLevelResponseCodec(),
            (value: Ros1Kuavo_msgsHandForceLevelRequest): bool => value.validValue(),
            281,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/handForceLevel incoming request/response owner. */
export class Ros1Kuavo_msgsHandForceLevelServer extends BoundedServiceServer<Ros1Kuavo_msgsHandForceLevelRequest, Ros1Kuavo_msgsHandForceLevelResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsHandForceLevelRequestCodec(),
            new Ros1Kuavo_msgsHandForceLevelResponseCodec(),
            (value: Ros1Kuavo_msgsHandForceLevelResponse): bool => value.validValue(),
            2,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/jointMoveTo typed call and real-submit client. */
export class Ros1Kuavo_msgsJointMoveToClient extends BoundedServiceClient<Ros1Kuavo_msgsJointMoveToRequest, Ros1Kuavo_msgsJointMoveToResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsJointMoveToRequestCodec(),
            new Ros1Kuavo_msgsJointMoveToResponseCodec(),
            (value: Ros1Kuavo_msgsJointMoveToRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/jointMoveTo incoming request/response owner. */
export class Ros1Kuavo_msgsJointMoveToServer extends BoundedServiceServer<Ros1Kuavo_msgsJointMoveToRequest, Ros1Kuavo_msgsJointMoveToResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsJointMoveToRequestCodec(),
            new Ros1Kuavo_msgsJointMoveToResponseCodec(),
            (value: Ros1Kuavo_msgsJointMoveToResponse): bool => value.validValue(),
            148,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/lbBaseLinkPoseCmdSrv typed call and real-submit client. */
export class Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvClient extends
    BoundedServiceClient<Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest, Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequestCodec(),
            new Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponseCodec(),
            (value: Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest): bool => value.validValue(),
            41,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/lbBaseLinkPoseCmdSrv incoming request/response owner. */
export class Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvServer extends
    BoundedServiceServer<Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest, Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequestCodec(),
            new Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponseCodec(),
            (value: Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse): bool => value.validValue(),
            114,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/lbLegControlSrv typed call and real-submit client. */
export class Ros1Kuavo_msgsLbLegControlSrvClient extends BoundedServiceClient<Ros1Kuavo_msgsLbLegControlSrvRequest, Ros1Kuavo_msgsLbLegControlSrvResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsLbLegControlSrvRequestCodec(),
            new Ros1Kuavo_msgsLbLegControlSrvResponseCodec(),
            (value: Ros1Kuavo_msgsLbLegControlSrvRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/lbLegControlSrv incoming request/response owner. */
export class Ros1Kuavo_msgsLbLegControlSrvServer extends BoundedServiceServer<Ros1Kuavo_msgsLbLegControlSrvRequest, Ros1Kuavo_msgsLbLegControlSrvResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsLbLegControlSrvRequestCodec(),
            new Ros1Kuavo_msgsLbLegControlSrvResponseCodec(),
            (value: Ros1Kuavo_msgsLbLegControlSrvResponse): bool => value.validValue(),
            40,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/lbMultiTimedOfflineTraj typed call and real-submit client. */
export class Ros1Kuavo_msgsLbMultiTimedOfflineTrajClient extends
    BoundedServiceClient<Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest, Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequestCodec(),
            new Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponseCodec(),
            (value: Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/lbMultiTimedOfflineTraj incoming request/response owner. */
export class Ros1Kuavo_msgsLbMultiTimedOfflineTrajServer extends
    BoundedServiceServer<Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest, Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequestCodec(),
            new Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponseCodec(),
            (value: Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse): bool => value.validValue(),
            8756,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/lbMultiTimedPosCmd typed call and real-submit client. */
export class Ros1Kuavo_msgsLbMultiTimedPosCmdClient extends
    BoundedServiceClient<Ros1Kuavo_msgsLbMultiTimedPosCmdRequest, Ros1Kuavo_msgsLbMultiTimedPosCmdResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsLbMultiTimedPosCmdRequestCodec(),
            new Ros1Kuavo_msgsLbMultiTimedPosCmdResponseCodec(),
            (value: Ros1Kuavo_msgsLbMultiTimedPosCmdRequest): bool => value.validValue(),
            265,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/lbMultiTimedPosCmd incoming request/response owner. */
export class Ros1Kuavo_msgsLbMultiTimedPosCmdServer extends
    BoundedServiceServer<Ros1Kuavo_msgsLbMultiTimedPosCmdRequest, Ros1Kuavo_msgsLbMultiTimedPosCmdResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsLbMultiTimedPosCmdRequestCodec(),
            new Ros1Kuavo_msgsLbMultiTimedPosCmdResponseCodec(),
            (value: Ros1Kuavo_msgsLbMultiTimedPosCmdResponse): bool => value.validValue(),
            1101,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/lbTimedPosCmd typed call and real-submit client. */
export class Ros1Kuavo_msgsLbTimedPosCmdClient extends BoundedServiceClient<Ros1Kuavo_msgsLbTimedPosCmdRequest, Ros1Kuavo_msgsLbTimedPosCmdResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsLbTimedPosCmdRequestCodec(),
            new Ros1Kuavo_msgsLbTimedPosCmdResponseCodec(),
            (value: Ros1Kuavo_msgsLbTimedPosCmdRequest): bool => value.validValue(),
            265,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/lbTimedPosCmd incoming request/response owner. */
export class Ros1Kuavo_msgsLbTimedPosCmdServer extends BoundedServiceServer<Ros1Kuavo_msgsLbTimedPosCmdRequest, Ros1Kuavo_msgsLbTimedPosCmdResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsLbTimedPosCmdRequestCodec(),
            new Ros1Kuavo_msgsLbTimedPosCmdResponseCodec(),
            (value: Ros1Kuavo_msgsLbTimedPosCmdResponse): bool => value.validValue(),
            137,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/lejuClawRecovery typed call and real-submit client. */
export class Ros1Kuavo_msgsLejuClawRecoveryClient extends BoundedServiceClient<Ros1Kuavo_msgsLejuClawRecoveryRequest, Ros1Kuavo_msgsLejuClawRecoveryResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsLejuClawRecoveryRequestCodec(),
            new Ros1Kuavo_msgsLejuClawRecoveryResponseCodec(),
            (value: Ros1Kuavo_msgsLejuClawRecoveryRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/lejuClawRecovery incoming request/response owner. */
export class Ros1Kuavo_msgsLejuClawRecoveryServer extends BoundedServiceServer<Ros1Kuavo_msgsLejuClawRecoveryRequest, Ros1Kuavo_msgsLejuClawRecoveryResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsLejuClawRecoveryRequestCodec(),
            new Ros1Kuavo_msgsLejuClawRecoveryResponseCodec(),
            (value: Ros1Kuavo_msgsLejuClawRecoveryResponse): bool => value.validValue(),
            272,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/planArmTrajectoryBezierCurve typed call and real-submit client. */
export class Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveClient extends
    BoundedServiceClient<Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest, Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequestCodec(),
            new Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponseCodec(),
            (value: Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/planArmTrajectoryBezierCurve incoming request/response owner. */
export class Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveServer extends
    BoundedServiceServer<Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest, Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequestCodec(),
            new Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponseCodec(),
            (value: Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse): bool => value.validValue(),
            29560,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/planArmTrajectoryCubicSpline typed call and real-submit client. */
export class Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineClient extends
    BoundedServiceClient<Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest, Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequestCodec(),
            new Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponseCodec(),
            (value: Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/planArmTrajectoryCubicSpline incoming request/response owner. */
export class Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineServer extends
    BoundedServiceServer<Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest, Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequestCodec(),
            new Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponseCodec(),
            (value: Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse): bool => value.validValue(),
            8728,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/playmusic typed call and real-submit client. */
export class Ros1Kuavo_msgsPlaymusicClient extends BoundedServiceClient<Ros1Kuavo_msgsPlaymusicRequest, Ros1Kuavo_msgsPlaymusicResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsPlaymusicRequestCodec(),
            new Ros1Kuavo_msgsPlaymusicResponseCodec(),
            (value: Ros1Kuavo_msgsPlaymusicRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/playmusic incoming request/response owner. */
export class Ros1Kuavo_msgsPlaymusicServer extends BoundedServiceServer<Ros1Kuavo_msgsPlaymusicRequest, Ros1Kuavo_msgsPlaymusicResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsPlaymusicRequestCodec(),
            new Ros1Kuavo_msgsPlaymusicResponseCodec(),
            (value: Ros1Kuavo_msgsPlaymusicResponse): bool => value.validValue(),
            268,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/recordmusic typed call and real-submit client. */
export class Ros1Kuavo_msgsRecordmusicClient extends BoundedServiceClient<Ros1Kuavo_msgsRecordmusicRequest, Ros1Kuavo_msgsRecordmusicResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsRecordmusicRequestCodec(),
            new Ros1Kuavo_msgsRecordmusicResponseCodec(),
            (value: Ros1Kuavo_msgsRecordmusicRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/recordmusic incoming request/response owner. */
export class Ros1Kuavo_msgsRecordmusicServer extends BoundedServiceServer<Ros1Kuavo_msgsRecordmusicRequest, Ros1Kuavo_msgsRecordmusicResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsRecordmusicRequestCodec(),
            new Ros1Kuavo_msgsRecordmusicResponseCodec(),
            (value: Ros1Kuavo_msgsRecordmusicResponse): bool => value.validValue(),
            268,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/robotSwitchPose typed call and real-submit client. */
export class Ros1Kuavo_msgsRobotSwitchPoseClient extends BoundedServiceClient<Ros1Kuavo_msgsRobotSwitchPoseRequest, Ros1Kuavo_msgsRobotSwitchPoseResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsRobotSwitchPoseRequestCodec(),
            new Ros1Kuavo_msgsRobotSwitchPoseResponseCodec(),
            (value: Ros1Kuavo_msgsRobotSwitchPoseRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/robotSwitchPose incoming request/response owner. */
export class Ros1Kuavo_msgsRobotSwitchPoseServer extends BoundedServiceServer<Ros1Kuavo_msgsRobotSwitchPoseRequest, Ros1Kuavo_msgsRobotSwitchPoseResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsRobotSwitchPoseRequestCodec(),
            new Ros1Kuavo_msgsRobotSwitchPoseResponseCodec(),
            (value: Ros1Kuavo_msgsRobotSwitchPoseResponse): bool => value.validValue(),
            260,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/setContactForceInterpParams typed call and real-submit client. */
export class Ros1Kuavo_msgsSetContactForceInterpParamsClient extends
    BoundedServiceClient<Ros1Kuavo_msgsSetContactForceInterpParamsRequest, Ros1Kuavo_msgsSetContactForceInterpParamsResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsSetContactForceInterpParamsRequestCodec(),
            new Ros1Kuavo_msgsSetContactForceInterpParamsResponseCodec(),
            (value: Ros1Kuavo_msgsSetContactForceInterpParamsRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/setContactForceInterpParams incoming request/response owner. */
export class Ros1Kuavo_msgsSetContactForceInterpParamsServer extends
    BoundedServiceServer<Ros1Kuavo_msgsSetContactForceInterpParamsRequest, Ros1Kuavo_msgsSetContactForceInterpParamsResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsSetContactForceInterpParamsRequestCodec(),
            new Ros1Kuavo_msgsSetContactForceInterpParamsResponseCodec(),
            (value: Ros1Kuavo_msgsSetContactForceInterpParamsResponse): bool => value.validValue(),
            16,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/setHwIntialState typed call and real-submit client. */
export class Ros1Kuavo_msgsSetHwIntialStateClient extends BoundedServiceClient<Ros1Kuavo_msgsSetHwIntialStateRequest, Ros1Kuavo_msgsSetHwIntialStateResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsSetHwIntialStateRequestCodec(),
            new Ros1Kuavo_msgsSetHwIntialStateResponseCodec(),
            (value: Ros1Kuavo_msgsSetHwIntialStateRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/setHwIntialState incoming request/response owner. */
export class Ros1Kuavo_msgsSetHwIntialStateServer extends BoundedServiceServer<Ros1Kuavo_msgsSetHwIntialStateRequest, Ros1Kuavo_msgsSetHwIntialStateResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsSetHwIntialStateRequestCodec(),
            new Ros1Kuavo_msgsSetHwIntialStateResponseCodec(),
            (value: Ros1Kuavo_msgsSetHwIntialStateResponse): bool => value.validValue(),
            264,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/setMmCtrlFrame typed call and real-submit client. */
export class Ros1Kuavo_msgsSetMmCtrlFrameClient extends BoundedServiceClient<Ros1Kuavo_msgsSetMmCtrlFrameRequest, Ros1Kuavo_msgsSetMmCtrlFrameResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsSetMmCtrlFrameRequestCodec(),
            new Ros1Kuavo_msgsSetMmCtrlFrameResponseCodec(),
            (value: Ros1Kuavo_msgsSetMmCtrlFrameRequest): bool => value.validValue(),
            265,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/setMmCtrlFrame incoming request/response owner. */
export class Ros1Kuavo_msgsSetMmCtrlFrameServer extends BoundedServiceServer<Ros1Kuavo_msgsSetMmCtrlFrameRequest, Ros1Kuavo_msgsSetMmCtrlFrameResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsSetMmCtrlFrameRequestCodec(),
            new Ros1Kuavo_msgsSetMmCtrlFrameResponseCodec(),
            (value: Ros1Kuavo_msgsSetMmCtrlFrameResponse): bool => value.validValue(),
            4,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/setMotorEncoderRoundService typed call and real-submit client. */
export class Ros1Kuavo_msgsSetMotorEncoderRoundServiceClient extends
    BoundedServiceClient<Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest, Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequestCodec(),
            new Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponseCodec(),
            (value: Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/setMotorEncoderRoundService incoming request/response owner. */
export class Ros1Kuavo_msgsSetMotorEncoderRoundServiceServer extends
    BoundedServiceServer<Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest, Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequestCodec(),
            new Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponseCodec(),
            (value: Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse): bool => value.validValue(),
            9,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/setRuckigPlannerParams typed call and real-submit client. */
export class Ros1Kuavo_msgsSetRuckigPlannerParamsClient extends
    BoundedServiceClient<Ros1Kuavo_msgsSetRuckigPlannerParamsRequest, Ros1Kuavo_msgsSetRuckigPlannerParamsResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsSetRuckigPlannerParamsRequestCodec(),
            new Ros1Kuavo_msgsSetRuckigPlannerParamsResponseCodec(),
            (value: Ros1Kuavo_msgsSetRuckigPlannerParamsRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/setRuckigPlannerParams incoming request/response owner. */
export class Ros1Kuavo_msgsSetRuckigPlannerParamsServer extends
    BoundedServiceServer<Ros1Kuavo_msgsSetRuckigPlannerParamsRequest, Ros1Kuavo_msgsSetRuckigPlannerParamsResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsSetRuckigPlannerParamsRequestCodec(),
            new Ros1Kuavo_msgsSetRuckigPlannerParamsResponseCodec(),
            (value: Ros1Kuavo_msgsSetRuckigPlannerParamsResponse): bool => value.validValue(),
            662,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/setTagId typed call and real-submit client. */
export class Ros1Kuavo_msgsSetTagIdClient extends BoundedServiceClient<Ros1Kuavo_msgsSetTagIdRequest, Ros1Kuavo_msgsSetTagIdResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsSetTagIdRequestCodec(),
            new Ros1Kuavo_msgsSetTagIdResponseCodec(),
            (value: Ros1Kuavo_msgsSetTagIdRequest): bool => value.validValue(),
            265,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/setTagId incoming request/response owner. */
export class Ros1Kuavo_msgsSetTagIdServer extends BoundedServiceServer<Ros1Kuavo_msgsSetTagIdRequest, Ros1Kuavo_msgsSetTagIdResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsSetTagIdRequestCodec(),
            new Ros1Kuavo_msgsSetTagIdResponseCodec(),
            (value: Ros1Kuavo_msgsSetTagIdResponse): bool => value.validValue(),
            4,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/singleStepControl typed call and real-submit client. */
export class Ros1Kuavo_msgsSingleStepControlClient extends BoundedServiceClient<Ros1Kuavo_msgsSingleStepControlRequest, Ros1Kuavo_msgsSingleStepControlResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsSingleStepControlRequestCodec(),
            new Ros1Kuavo_msgsSingleStepControlResponseCodec(),
            (value: Ros1Kuavo_msgsSingleStepControlRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/singleStepControl incoming request/response owner. */
export class Ros1Kuavo_msgsSingleStepControlServer extends BoundedServiceServer<Ros1Kuavo_msgsSingleStepControlRequest, Ros1Kuavo_msgsSingleStepControlResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsSingleStepControlRequestCodec(),
            new Ros1Kuavo_msgsSingleStepControlResponseCodec(),
            (value: Ros1Kuavo_msgsSingleStepControlResponse): bool => value.validValue(),
            4980,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/stairAlignmentSrv typed call and real-submit client. */
export class Ros1Kuavo_msgsStairAlignmentSrvClient extends BoundedServiceClient<Ros1Kuavo_msgsStairAlignmentSrvRequest, Ros1Kuavo_msgsStairAlignmentSrvResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsStairAlignmentSrvRequestCodec(),
            new Ros1Kuavo_msgsStairAlignmentSrvResponseCodec(),
            (value: Ros1Kuavo_msgsStairAlignmentSrvRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/stairAlignmentSrv incoming request/response owner. */
export class Ros1Kuavo_msgsStairAlignmentSrvServer extends BoundedServiceServer<Ros1Kuavo_msgsStairAlignmentSrvRequest, Ros1Kuavo_msgsStairAlignmentSrvResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsStairAlignmentSrvRequestCodec(),
            new Ros1Kuavo_msgsStairAlignmentSrvResponseCodec(),
            (value: Ros1Kuavo_msgsStairAlignmentSrvResponse): bool => value.validValue(),
            25,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/switchController typed call and real-submit client. */
export class Ros1Kuavo_msgsSwitchControllerClient extends BoundedServiceClient<Ros1Kuavo_msgsSwitchControllerRequest, Ros1Kuavo_msgsSwitchControllerResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsSwitchControllerRequestCodec(),
            new Ros1Kuavo_msgsSwitchControllerResponseCodec(),
            (value: Ros1Kuavo_msgsSwitchControllerRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/switchController incoming request/response owner. */
export class Ros1Kuavo_msgsSwitchControllerServer extends BoundedServiceServer<Ros1Kuavo_msgsSwitchControllerRequest, Ros1Kuavo_msgsSwitchControllerResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsSwitchControllerRequestCodec(),
            new Ros1Kuavo_msgsSwitchControllerResponseCodec(),
            (value: Ros1Kuavo_msgsSwitchControllerResponse): bool => value.validValue(),
            260,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/switchToNextController typed call and real-submit client. */
export class Ros1Kuavo_msgsSwitchToNextControllerClient extends
    BoundedServiceClient<Ros1Kuavo_msgsSwitchToNextControllerRequest, Ros1Kuavo_msgsSwitchToNextControllerResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsSwitchToNextControllerRequestCodec(),
            new Ros1Kuavo_msgsSwitchToNextControllerResponseCodec(),
            (value: Ros1Kuavo_msgsSwitchToNextControllerRequest): bool => value.validValue(),
            789,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/switchToNextController incoming request/response owner. */
export class Ros1Kuavo_msgsSwitchToNextControllerServer extends
    BoundedServiceServer<Ros1Kuavo_msgsSwitchToNextControllerRequest, Ros1Kuavo_msgsSwitchToNextControllerResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsSwitchToNextControllerRequestCodec(),
            new Ros1Kuavo_msgsSwitchToNextControllerResponseCodec(),
            (value: Ros1Kuavo_msgsSwitchToNextControllerResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/twoArmHandPoseCmdFreeSrv typed call and real-submit client. */
export class Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvClient extends
    BoundedServiceClient<Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest, Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequestCodec(),
            new Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponseCodec(),
            (value: Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest): bool => value.validValue(),
            970,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/twoArmHandPoseCmdFreeSrv incoming request/response owner. */
export class Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvServer extends
    BoundedServiceServer<Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest, Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequestCodec(),
            new Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponseCodec(),
            (value: Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse): bool => value.validValue(),
            763,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/twoArmHandPoseCmdSrv typed call and real-submit client. */
export class Ros1Kuavo_msgsTwoArmHandPoseCmdSrvClient extends
    BoundedServiceClient<Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest, Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequestCodec(),
            new Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponseCodec(),
            (value: Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest): bool => value.validValue(),
            1078,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_msgs/twoArmHandPoseCmdSrv incoming request/response owner. */
export class Ros1Kuavo_msgsTwoArmHandPoseCmdSrvServer extends
    BoundedServiceServer<Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest, Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequestCodec(),
            new Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponseCodec(),
            (value: Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse): bool => value.validValue(),
            615,
            capacity,
        );
    }
}

/** Complete kuavo_pico_gmr/AmpJoyRoute typed call and real-submit client. */
export class Ros1Kuavo_pico_gmrAmpJoyRouteClient extends BoundedServiceClient<Ros1Kuavo_pico_gmrAmpJoyRouteRequest, Ros1Kuavo_pico_gmrAmpJoyRouteResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_pico_gmrAmpJoyRouteRequestCodec(),
            new Ros1Kuavo_pico_gmrAmpJoyRouteResponseCodec(),
            (value: Ros1Kuavo_pico_gmrAmpJoyRouteRequest): bool => value.validValue(),
            533,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_pico_gmr/AmpJoyRoute incoming request/response owner. */
export class Ros1Kuavo_pico_gmrAmpJoyRouteServer extends BoundedServiceServer<Ros1Kuavo_pico_gmrAmpJoyRouteRequest, Ros1Kuavo_pico_gmrAmpJoyRouteResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_pico_gmrAmpJoyRouteRequestCodec(),
            new Ros1Kuavo_pico_gmrAmpJoyRouteResponseCodec(),
            (value: Ros1Kuavo_pico_gmrAmpJoyRouteResponse): bool => value.validValue(),
            806,
            capacity,
        );
    }
}

/** Complete kuavo_ros_interfaces/ocs2ChangeArmCtrlMode typed call and real-submit client. */
export class Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeClient extends
    BoundedServiceClient<Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest, Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequestCodec(),
            new Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponseCodec(),
            (value: Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest): bool => value.validValue(),
            265,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_ros_interfaces/ocs2ChangeArmCtrlMode incoming request/response owner. */
export class Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeServer extends
    BoundedServiceServer<Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest, Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequestCodec(),
            new Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponseCodec(),
            (value: Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse): bool => value.validValue(),
            4,
            capacity,
        );
    }
}

/** Complete kuavo_ros_interfaces/planArmTrajectoryBezierCurve typed call and real-submit client. */
export class Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveClient extends
    BoundedServiceClient<Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest, Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequestCodec(),
            new Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponseCodec(),
            (value: Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_ros_interfaces/planArmTrajectoryBezierCurve incoming request/response owner. */
export class Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveServer extends
    BoundedServiceServer<Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest, Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequestCodec(),
            new Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponseCodec(),
            (value: Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse): bool => value.validValue(),
            29560,
            capacity,
        );
    }
}

/** Complete kuavo_ros_interfaces/stopPlanArmTrajectory typed call and real-submit client. */
export class Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryClient extends
    BoundedServiceClient<Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest, Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequestCodec(),
            new Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponseCodec(),
            (value: Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete kuavo_ros_interfaces/stopPlanArmTrajectory incoming request/response owner. */
export class Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryServer extends
    BoundedServiceServer<Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest, Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequestCodec(),
            new Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponseCodec(),
            (value: Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/BaseMove typed call and real-submit client. */
export class Ros1Leju_mobile_base_msgsBaseMoveClient extends
    BoundedServiceClient<Ros1Leju_mobile_base_msgsBaseMoveRequest, Ros1Leju_mobile_base_msgsBaseMoveResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Leju_mobile_base_msgsBaseMoveRequestCodec(),
            new Ros1Leju_mobile_base_msgsBaseMoveResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsBaseMoveRequest): bool => value.validValue(),
            521,
            observerAlias,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/BaseMove incoming request/response owner. */
export class Ros1Leju_mobile_base_msgsBaseMoveServer extends
    BoundedServiceServer<Ros1Leju_mobile_base_msgsBaseMoveRequest, Ros1Leju_mobile_base_msgsBaseMoveResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Leju_mobile_base_msgsBaseMoveRequestCodec(),
            new Ros1Leju_mobile_base_msgsBaseMoveResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsBaseMoveResponse): bool => value.validValue(),
            34,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/CheckArrived typed call and real-submit client. */
export class Ros1Leju_mobile_base_msgsCheckArrivedClient extends
    BoundedServiceClient<Ros1Leju_mobile_base_msgsCheckArrivedRequest, Ros1Leju_mobile_base_msgsCheckArrivedResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Leju_mobile_base_msgsCheckArrivedRequestCodec(),
            new Ros1Leju_mobile_base_msgsCheckArrivedResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsCheckArrivedRequest): bool => value.validValue(),
            266,
            observerAlias,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/CheckArrived incoming request/response owner. */
export class Ros1Leju_mobile_base_msgsCheckArrivedServer extends
    BoundedServiceServer<Ros1Leju_mobile_base_msgsCheckArrivedRequest, Ros1Leju_mobile_base_msgsCheckArrivedResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Leju_mobile_base_msgsCheckArrivedRequestCodec(),
            new Ros1Leju_mobile_base_msgsCheckArrivedResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsCheckArrivedResponse): bool => value.validValue(),
            265,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/ControlLaserScan typed call and real-submit client. */
export class Ros1Leju_mobile_base_msgsControlLaserScanClient extends
    BoundedServiceClient<Ros1Leju_mobile_base_msgsControlLaserScanRequest, Ros1Leju_mobile_base_msgsControlLaserScanResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Leju_mobile_base_msgsControlLaserScanRequestCodec(),
            new Ros1Leju_mobile_base_msgsControlLaserScanResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsControlLaserScanRequest): bool => value.validValue(),
            4449,
            observerAlias,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/ControlLaserScan incoming request/response owner. */
export class Ros1Leju_mobile_base_msgsControlLaserScanServer extends
    BoundedServiceServer<Ros1Leju_mobile_base_msgsControlLaserScanRequest, Ros1Leju_mobile_base_msgsControlLaserScanResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Leju_mobile_base_msgsControlLaserScanRequestCodec(),
            new Ros1Leju_mobile_base_msgsControlLaserScanResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsControlLaserScanResponse): bool => value.validValue(),
            4185,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/DispatchMove typed call and real-submit client. */
export class Ros1Leju_mobile_base_msgsDispatchMoveClient extends
    BoundedServiceClient<Ros1Leju_mobile_base_msgsDispatchMoveRequest, Ros1Leju_mobile_base_msgsDispatchMoveResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Leju_mobile_base_msgsDispatchMoveRequestCodec(),
            new Ros1Leju_mobile_base_msgsDispatchMoveResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsDispatchMoveRequest): bool => value.validValue(),
            521,
            observerAlias,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/DispatchMove incoming request/response owner. */
export class Ros1Leju_mobile_base_msgsDispatchMoveServer extends
    BoundedServiceServer<Ros1Leju_mobile_base_msgsDispatchMoveRequest, Ros1Leju_mobile_base_msgsDispatchMoveResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Leju_mobile_base_msgsDispatchMoveRequestCodec(),
            new Ros1Leju_mobile_base_msgsDispatchMoveResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsDispatchMoveResponse): bool => value.validValue(),
            282,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/ExecTask typed call and real-submit client. */
export class Ros1Leju_mobile_base_msgsExecTaskClient extends
    BoundedServiceClient<Ros1Leju_mobile_base_msgsExecTaskRequest, Ros1Leju_mobile_base_msgsExecTaskResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Leju_mobile_base_msgsExecTaskRequestCodec(),
            new Ros1Leju_mobile_base_msgsExecTaskResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsExecTaskRequest): bool => value.validValue(),
            525,
            observerAlias,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/ExecTask incoming request/response owner. */
export class Ros1Leju_mobile_base_msgsExecTaskServer extends
    BoundedServiceServer<Ros1Leju_mobile_base_msgsExecTaskRequest, Ros1Leju_mobile_base_msgsExecTaskResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Leju_mobile_base_msgsExecTaskRequestCodec(),
            new Ros1Leju_mobile_base_msgsExecTaskResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsExecTaskResponse): bool => value.validValue(),
            7321,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/GetGlobalOdometer typed call and real-submit client. */
export class Ros1Leju_mobile_base_msgsGetGlobalOdometerClient extends
    BoundedServiceClient<Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest, Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Leju_mobile_base_msgsGetGlobalOdometerRequestCodec(),
            new Ros1Leju_mobile_base_msgsGetGlobalOdometerResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest): bool => value.validValue(),
            24,
            observerAlias,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/GetGlobalOdometer incoming request/response owner. */
export class Ros1Leju_mobile_base_msgsGetGlobalOdometerServer extends
    BoundedServiceServer<Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest, Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Leju_mobile_base_msgsGetGlobalOdometerRequestCodec(),
            new Ros1Leju_mobile_base_msgsGetGlobalOdometerResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/GetLaserScanList typed call and real-submit client. */
export class Ros1Leju_mobile_base_msgsGetLaserScanListClient extends
    BoundedServiceClient<Ros1Leju_mobile_base_msgsGetLaserScanListRequest, Ros1Leju_mobile_base_msgsGetLaserScanListResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Leju_mobile_base_msgsGetLaserScanListRequestCodec(),
            new Ros1Leju_mobile_base_msgsGetLaserScanListResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsGetLaserScanListRequest): bool => value.validValue(),
            4449,
            observerAlias,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/GetLaserScanList incoming request/response owner. */
export class Ros1Leju_mobile_base_msgsGetLaserScanListServer extends
    BoundedServiceServer<Ros1Leju_mobile_base_msgsGetLaserScanListRequest, Ros1Leju_mobile_base_msgsGetLaserScanListResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Leju_mobile_base_msgsGetLaserScanListRequestCodec(),
            new Ros1Leju_mobile_base_msgsGetLaserScanListResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsGetLaserScanListResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/MoveToTarget typed call and real-submit client. */
export class Ros1Leju_mobile_base_msgsMoveToTargetClient extends
    BoundedServiceClient<Ros1Leju_mobile_base_msgsMoveToTargetRequest, Ros1Leju_mobile_base_msgsMoveToTargetResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Leju_mobile_base_msgsMoveToTargetRequestCodec(),
            new Ros1Leju_mobile_base_msgsMoveToTargetResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsMoveToTargetRequest): bool => value.validValue(),
            521,
            observerAlias,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/MoveToTarget incoming request/response owner. */
export class Ros1Leju_mobile_base_msgsMoveToTargetServer extends
    BoundedServiceServer<Ros1Leju_mobile_base_msgsMoveToTargetRequest, Ros1Leju_mobile_base_msgsMoveToTargetResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Leju_mobile_base_msgsMoveToTargetRequestCodec(),
            new Ros1Leju_mobile_base_msgsMoveToTargetResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsMoveToTargetResponse): bool => value.validValue(),
            34,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/ResetTemporaryOdometer typed call and real-submit client. */
export class Ros1Leju_mobile_base_msgsResetTemporaryOdometerClient extends
    BoundedServiceClient<Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest, Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequestCodec(),
            new Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest): bool => value.validValue(),
            277,
            observerAlias,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/ResetTemporaryOdometer incoming request/response owner. */
export class Ros1Leju_mobile_base_msgsResetTemporaryOdometerServer extends
    BoundedServiceServer<Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest, Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequestCodec(),
            new Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse): bool => value.validValue(),
            520,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/SetDispatchMode typed call and real-submit client. */
export class Ros1Leju_mobile_base_msgsSetDispatchModeClient extends
    BoundedServiceClient<Ros1Leju_mobile_base_msgsSetDispatchModeRequest, Ros1Leju_mobile_base_msgsSetDispatchModeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Leju_mobile_base_msgsSetDispatchModeRequestCodec(),
            new Ros1Leju_mobile_base_msgsSetDispatchModeResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsSetDispatchModeRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/SetDispatchMode incoming request/response owner. */
export class Ros1Leju_mobile_base_msgsSetDispatchModeServer extends
    BoundedServiceServer<Ros1Leju_mobile_base_msgsSetDispatchModeRequest, Ros1Leju_mobile_base_msgsSetDispatchModeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Leju_mobile_base_msgsSetDispatchModeRequestCodec(),
            new Ros1Leju_mobile_base_msgsSetDispatchModeResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsSetDispatchModeResponse): bool => value.validValue(),
            1,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/SetMapServer typed call and real-submit client. */
export class Ros1Leju_mobile_base_msgsSetMapServerClient extends
    BoundedServiceClient<Ros1Leju_mobile_base_msgsSetMapServerRequest, Ros1Leju_mobile_base_msgsSetMapServerResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Leju_mobile_base_msgsSetMapServerRequestCodec(),
            new Ros1Leju_mobile_base_msgsSetMapServerResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsSetMapServerRequest): bool => value.validValue(),
            853,
            observerAlias,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/SetMapServer incoming request/response owner. */
export class Ros1Leju_mobile_base_msgsSetMapServerServer extends
    BoundedServiceServer<Ros1Leju_mobile_base_msgsSetMapServerRequest, Ros1Leju_mobile_base_msgsSetMapServerResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Leju_mobile_base_msgsSetMapServerRequestCodec(),
            new Ros1Leju_mobile_base_msgsSetMapServerResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsSetMapServerResponse): bool => value.validValue(),
            523,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/StartLocalization typed call and real-submit client. */
export class Ros1Leju_mobile_base_msgsStartLocalizationClient extends
    BoundedServiceClient<Ros1Leju_mobile_base_msgsStartLocalizationRequest, Ros1Leju_mobile_base_msgsStartLocalizationResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Leju_mobile_base_msgsStartLocalizationRequestCodec(),
            new Ros1Leju_mobile_base_msgsStartLocalizationResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsStartLocalizationRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/StartLocalization incoming request/response owner. */
export class Ros1Leju_mobile_base_msgsStartLocalizationServer extends
    BoundedServiceServer<Ros1Leju_mobile_base_msgsStartLocalizationRequest, Ros1Leju_mobile_base_msgsStartLocalizationResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Leju_mobile_base_msgsStartLocalizationRequestCodec(),
            new Ros1Leju_mobile_base_msgsStartLocalizationResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsStartLocalizationResponse): bool => value.validValue(),
            25,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/SyncCostmap typed call and real-submit client. */
export class Ros1Leju_mobile_base_msgsSyncCostmapClient extends
    BoundedServiceClient<Ros1Leju_mobile_base_msgsSyncCostmapRequest, Ros1Leju_mobile_base_msgsSyncCostmapResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Leju_mobile_base_msgsSyncCostmapRequestCodec(),
            new Ros1Leju_mobile_base_msgsSyncCostmapResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsSyncCostmapRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete leju_mobile_base_msgs/SyncCostmap incoming request/response owner. */
export class Ros1Leju_mobile_base_msgsSyncCostmapServer extends
    BoundedServiceServer<Ros1Leju_mobile_base_msgsSyncCostmapRequest, Ros1Leju_mobile_base_msgsSyncCostmapResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Leju_mobile_base_msgsSyncCostmapRequestCodec(),
            new Ros1Leju_mobile_base_msgsSyncCostmapResponseCodec(),
            (value: Ros1Leju_mobile_base_msgsSyncCostmapResponse): bool => value.validValue(),
            3,
            capacity,
        );
    }
}

/** Complete network_monitor/NetworkPing typed call and real-submit client. */
export class Ros1Network_monitorNetworkPingClient extends BoundedServiceClient<Ros1Network_monitorNetworkPingRequest, Ros1Network_monitorNetworkPingResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Network_monitorNetworkPingRequestCodec(),
            new Ros1Network_monitorNetworkPingResponseCodec(),
            (value: Ros1Network_monitorNetworkPingRequest): bool => value.validValue(),
            269,
            observerAlias,
            capacity,
        );
    }
}

/** Complete network_monitor/NetworkPing incoming request/response owner. */
export class Ros1Network_monitorNetworkPingServer extends BoundedServiceServer<Ros1Network_monitorNetworkPingRequest, Ros1Network_monitorNetworkPingResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Network_monitorNetworkPingRequestCodec(),
            new Ros1Network_monitorNetworkPingResponseCodec(),
            (value: Ros1Network_monitorNetworkPingResponse): bool => value.validValue(),
            8,
            capacity,
        );
    }
}

/** Complete ocs2_msgs/pause_resume typed call and real-submit client. */
export class Ros1Ocs2_msgsPause_resumeClient extends BoundedServiceClient<Ros1Ocs2_msgsPause_resumeRequest, Ros1Ocs2_msgsPause_resumeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Ocs2_msgsPause_resumeRequestCodec(),
            new Ros1Ocs2_msgsPause_resumeResponseCodec(),
            (value: Ros1Ocs2_msgsPause_resumeRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete ocs2_msgs/pause_resume incoming request/response owner. */
export class Ros1Ocs2_msgsPause_resumeServer extends BoundedServiceServer<Ros1Ocs2_msgsPause_resumeRequest, Ros1Ocs2_msgsPause_resumeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Ocs2_msgsPause_resumeRequestCodec(),
            new Ros1Ocs2_msgsPause_resumeResponseCodec(),
            (value: Ros1Ocs2_msgsPause_resumeResponse): bool => value.validValue(),
            1,
            capacity,
        );
    }
}

/** Complete ocs2_msgs/reset typed call and real-submit client. */
export class Ros1Ocs2_msgsResetClient extends BoundedServiceClient<Ros1Ocs2_msgsResetRequest, Ros1Ocs2_msgsResetResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Ocs2_msgsResetRequestCodec(),
            new Ros1Ocs2_msgsResetResponseCodec(),
            (value: Ros1Ocs2_msgsResetRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete ocs2_msgs/reset incoming request/response owner. */
export class Ros1Ocs2_msgsResetServer extends BoundedServiceServer<Ros1Ocs2_msgsResetRequest, Ros1Ocs2_msgsResetResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Ocs2_msgsResetRequestCodec(),
            new Ros1Ocs2_msgsResetResponseCodec(),
            (value: Ros1Ocs2_msgsResetResponse): bool => value.validValue(),
            4269,
            capacity,
        );
    }
}

/** Complete ocs2_switched_model_msgs/trajectory_request typed call and real-submit client. */
export class Ros1Ocs2_switched_model_msgsTrajectory_requestClient extends
    BoundedServiceClient<Ros1Ocs2_switched_model_msgsTrajectory_requestRequest, Ros1Ocs2_switched_model_msgsTrajectory_requestResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Ocs2_switched_model_msgsTrajectory_requestRequestCodec(),
            new Ros1Ocs2_switched_model_msgsTrajectory_requestResponseCodec(),
            (value: Ros1Ocs2_switched_model_msgsTrajectory_requestRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete ocs2_switched_model_msgs/trajectory_request incoming request/response owner. */
export class Ros1Ocs2_switched_model_msgsTrajectory_requestServer extends
    BoundedServiceServer<Ros1Ocs2_switched_model_msgsTrajectory_requestRequest, Ros1Ocs2_switched_model_msgsTrajectory_requestResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Ocs2_switched_model_msgsTrajectory_requestRequestCodec(),
            new Ros1Ocs2_switched_model_msgsTrajectory_requestResponseCodec(),
            (value: Ros1Ocs2_switched_model_msgsTrajectory_requestResponse): bool => value.validValue(),
            5008,
            capacity,
        );
    }
}

/** Complete custom robot_calibration_msgs/GripperLedCommand client. Role aliases never imply grants. */
export class Ros1Robot_calibration_msgsGripperLedCommandClient extends BoundedActionClient<Ros1Robot_calibration_msgsGripperLedCommandGoal,
                                                                                           Ros1Robot_calibration_msgsGripperLedCommandResult,
                                                                                           Ros1Robot_calibration_msgsGripperLedCommandFeedback>
{
    constructor(
        api: Api,
        send: string,
        cancelOwn: string,
        feedback: string,
        result: string,
        cancelAny: string = '',
        capacity: i32 = 8,
    )
    {
        super(
            api,
            1,
            send,
            cancelOwn,
            feedback,
            result,
            new Ros1Robot_calibration_msgsGripperLedCommandGoalCodec(),
            new Ros1Robot_calibration_msgsGripperLedCommandResultCodec(),
            new Ros1Robot_calibration_msgsGripperLedCommandFeedbackCodec(),
            (value: Ros1Robot_calibration_msgsGripperLedCommandGoal): bool => value.validValue(),
            0,
            0,
            cancelAny,
            capacity,
        );
    }
}

/** Complete custom robot_calibration_msgs/GripperLedCommand server with matching-ID response codecs. */
export class Ros1Robot_calibration_msgsGripperLedCommandServer extends BoundedActionServer<Ros1Robot_calibration_msgsGripperLedCommandGoal,
                                                                                           Ros1Robot_calibration_msgsGripperLedCommandResult,
                                                                                           Ros1Robot_calibration_msgsGripperLedCommandFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Robot_calibration_msgsGripperLedCommandGoalCodec(),
            new Ros1Robot_calibration_msgsGripperLedCommandResultCodec(),
            new Ros1Robot_calibration_msgsGripperLedCommandFeedbackCodec(),
            (value: Ros1Robot_calibration_msgsGripperLedCommandResult): bool => value.validValue(),
            (value: Ros1Robot_calibration_msgsGripperLedCommandFeedback): bool => value.validValue(),
            1,
            capacity,
        );
    }
}

/** Complete robot_localization/FromLL typed call and real-submit client. */
export class Ros1Robot_localizationFromLLClient extends BoundedServiceClient<Ros1Robot_localizationFromLLRequest, Ros1Robot_localizationFromLLResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Robot_localizationFromLLRequestCodec(),
            new Ros1Robot_localizationFromLLResponseCodec(),
            (value: Ros1Robot_localizationFromLLRequest): bool => value.validValue(),
            24,
            observerAlias,
            capacity,
        );
    }
}

/** Complete robot_localization/FromLL incoming request/response owner. */
export class Ros1Robot_localizationFromLLServer extends BoundedServiceServer<Ros1Robot_localizationFromLLRequest, Ros1Robot_localizationFromLLResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Robot_localizationFromLLRequestCodec(),
            new Ros1Robot_localizationFromLLResponseCodec(),
            (value: Ros1Robot_localizationFromLLResponse): bool => value.validValue(),
            24,
            capacity,
        );
    }
}

/** Complete robot_localization/GetState typed call and real-submit client. */
export class Ros1Robot_localizationGetStateClient extends BoundedServiceClient<Ros1Robot_localizationGetStateRequest, Ros1Robot_localizationGetStateResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Robot_localizationGetStateRequestCodec(),
            new Ros1Robot_localizationGetStateResponseCodec(),
            (value: Ros1Robot_localizationGetStateRequest): bool => value.validValue(),
            1920,
            observerAlias,
            capacity,
        );
    }
}

/** Complete robot_localization/GetState incoming request/response owner. */
export class Ros1Robot_localizationGetStateServer extends BoundedServiceServer<Ros1Robot_localizationGetStateRequest, Ros1Robot_localizationGetStateResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Robot_localizationGetStateRequestCodec(),
            new Ros1Robot_localizationGetStateResponseCodec(),
            (value: Ros1Robot_localizationGetStateResponse): bool => value.validValue(),
            268,
            capacity,
        );
    }
}

/** Complete robot_localization/SetDatum typed call and real-submit client. */
export class Ros1Robot_localizationSetDatumClient extends BoundedServiceClient<Ros1Robot_localizationSetDatumRequest, Ros1Robot_localizationSetDatumResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Robot_localizationSetDatumRequestCodec(),
            new Ros1Robot_localizationSetDatumResponseCodec(),
            (value: Ros1Robot_localizationSetDatumRequest): bool => value.validValue(),
            0,
            observerAlias,
            capacity,
        );
    }
}

/** Complete robot_localization/SetDatum incoming request/response owner. */
export class Ros1Robot_localizationSetDatumServer extends BoundedServiceServer<Ros1Robot_localizationSetDatumRequest, Ros1Robot_localizationSetDatumResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Robot_localizationSetDatumRequestCodec(),
            new Ros1Robot_localizationSetDatumResponseCodec(),
            (value: Ros1Robot_localizationSetDatumResponse): bool => value.validValue(),
            56,
            capacity,
        );
    }
}

/** Complete robot_localization/SetPose typed call and real-submit client. */
export class Ros1Robot_localizationSetPoseClient extends BoundedServiceClient<Ros1Robot_localizationSetPoseRequest, Ros1Robot_localizationSetPoseResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Robot_localizationSetPoseRequestCodec(),
            new Ros1Robot_localizationSetPoseResponseCodec(),
            (value: Ros1Robot_localizationSetPoseRequest): bool => value.validValue(),
            0,
            observerAlias,
            capacity,
        );
    }
}

/** Complete robot_localization/SetPose incoming request/response owner. */
export class Ros1Robot_localizationSetPoseServer extends BoundedServiceServer<Ros1Robot_localizationSetPoseRequest, Ros1Robot_localizationSetPoseResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Robot_localizationSetPoseRequestCodec(),
            new Ros1Robot_localizationSetPoseResponseCodec(),
            (value: Ros1Robot_localizationSetPoseResponse): bool => value.validValue(),
            616,
            capacity,
        );
    }
}

/** Complete robot_localization/SetUTMZone typed call and real-submit client. */
export class Ros1Robot_localizationSetUTMZoneClient extends
    BoundedServiceClient<Ros1Robot_localizationSetUTMZoneRequest, Ros1Robot_localizationSetUTMZoneResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Robot_localizationSetUTMZoneRequestCodec(),
            new Ros1Robot_localizationSetUTMZoneResponseCodec(),
            (value: Ros1Robot_localizationSetUTMZoneRequest): bool => value.validValue(),
            0,
            observerAlias,
            capacity,
        );
    }
}

/** Complete robot_localization/SetUTMZone incoming request/response owner. */
export class Ros1Robot_localizationSetUTMZoneServer extends
    BoundedServiceServer<Ros1Robot_localizationSetUTMZoneRequest, Ros1Robot_localizationSetUTMZoneResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Robot_localizationSetUTMZoneRequestCodec(),
            new Ros1Robot_localizationSetUTMZoneResponseCodec(),
            (value: Ros1Robot_localizationSetUTMZoneResponse): bool => value.validValue(),
            260,
            capacity,
        );
    }
}

/** Complete robot_localization/ToLL typed call and real-submit client. */
export class Ros1Robot_localizationToLLClient extends BoundedServiceClient<Ros1Robot_localizationToLLRequest, Ros1Robot_localizationToLLResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Robot_localizationToLLRequestCodec(),
            new Ros1Robot_localizationToLLResponseCodec(),
            (value: Ros1Robot_localizationToLLRequest): bool => value.validValue(),
            24,
            observerAlias,
            capacity,
        );
    }
}

/** Complete robot_localization/ToLL incoming request/response owner. */
export class Ros1Robot_localizationToLLServer extends BoundedServiceServer<Ros1Robot_localizationToLLRequest, Ros1Robot_localizationToLLResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Robot_localizationToLLRequestCodec(),
            new Ros1Robot_localizationToLLResponseCodec(),
            (value: Ros1Robot_localizationToLLResponse): bool => value.validValue(),
            24,
            capacity,
        );
    }
}

/** Complete robot_localization/ToggleFilterProcessing typed call and real-submit client. */
export class Ros1Robot_localizationToggleFilterProcessingClient extends
    BoundedServiceClient<Ros1Robot_localizationToggleFilterProcessingRequest, Ros1Robot_localizationToggleFilterProcessingResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Robot_localizationToggleFilterProcessingRequestCodec(),
            new Ros1Robot_localizationToggleFilterProcessingResponseCodec(),
            (value: Ros1Robot_localizationToggleFilterProcessingRequest): bool => value.validValue(),
            1,
            observerAlias,
            capacity,
        );
    }
}

/** Complete robot_localization/ToggleFilterProcessing incoming request/response owner. */
export class Ros1Robot_localizationToggleFilterProcessingServer extends
    BoundedServiceServer<Ros1Robot_localizationToggleFilterProcessingRequest, Ros1Robot_localizationToggleFilterProcessingResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Robot_localizationToggleFilterProcessingRequestCodec(),
            new Ros1Robot_localizationToggleFilterProcessingResponseCodec(),
            (value: Ros1Robot_localizationToggleFilterProcessingResponse): bool => value.validValue(),
            1,
            capacity,
        );
    }
}

/** Complete taiji_trigger_node/PerformTaiji typed call and real-submit client. */
export class Ros1Taiji_trigger_nodePerformTaijiClient extends
    BoundedServiceClient<Ros1Taiji_trigger_nodePerformTaijiRequest, Ros1Taiji_trigger_nodePerformTaijiResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = '', capacity: i32 = 8)
    {
        super(
            api,
            1,
            alias,
            new Ros1Taiji_trigger_nodePerformTaijiRequestCodec(),
            new Ros1Taiji_trigger_nodePerformTaijiResponseCodec(),
            (value: Ros1Taiji_trigger_nodePerformTaijiRequest): bool => value.validValue(),
            261,
            observerAlias,
            capacity,
        );
    }
}

/** Complete taiji_trigger_node/PerformTaiji incoming request/response owner. */
export class Ros1Taiji_trigger_nodePerformTaijiServer extends
    BoundedServiceServer<Ros1Taiji_trigger_nodePerformTaijiRequest, Ros1Taiji_trigger_nodePerformTaijiResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(
            api,
            1,
            advertise,
            respond,
            new Ros1Taiji_trigger_nodePerformTaijiRequestCodec(),
            new Ros1Taiji_trigger_nodePerformTaijiResponseCodec(),
            (value: Ros1Taiji_trigger_nodePerformTaijiResponse): bool => value.validValue(),
            0,
            capacity,
        );
    }
}
