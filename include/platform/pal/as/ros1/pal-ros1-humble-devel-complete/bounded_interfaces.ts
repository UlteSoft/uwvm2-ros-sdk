/**
 * @brief Generated custom RPC facades. Keep beside bounded_records.ts; select the
 * real ros1/ros2 NativeApi and explicit CLI-provisioned aliases. No factory
 * creates a grant, thread, clock, retry or native callback. A Wasm abort/trap
 * cannot promise cleanup; every normal caller-driven pass releases its lease.
 */
import {Api, Operation, Status} from 'ros/as/api';
import {Capability, Reply} from 'ros/as/roswasm';
import {Codec, validUnicode} from 'ros/as/codecs';
import {decodeUnifiedEvent, UnifiedEvent, EventKind} from 'ros/as/events';
import {
    Ros1Pal_behaviour_msgsBehaviourEventRequest,
    Ros1Pal_behaviour_msgsBehaviourEventRequestCodec,
    Ros1Pal_behaviour_msgsBehaviourEventResponse,
    Ros1Pal_behaviour_msgsBehaviourEventResponseCodec,
    Ros1Pal_behaviour_msgsBehaviourTaskGoal,
    Ros1Pal_behaviour_msgsBehaviourTaskGoalCodec,
    Ros1Pal_behaviour_msgsBehaviourTaskResult,
    Ros1Pal_behaviour_msgsBehaviourTaskResultCodec,
    Ros1Pal_behaviour_msgsBehaviourTaskFeedback,
    Ros1Pal_behaviour_msgsBehaviourTaskFeedbackCodec,
    Ros1Pal_behaviour_msgsPresentationGoal,
    Ros1Pal_behaviour_msgsPresentationGoalCodec,
    Ros1Pal_behaviour_msgsPresentationResult,
    Ros1Pal_behaviour_msgsPresentationResultCodec,
    Ros1Pal_behaviour_msgsPresentationFeedback,
    Ros1Pal_behaviour_msgsPresentationFeedbackCodec,
    Ros1Pal_common_msgsDisableGoal,
    Ros1Pal_common_msgsDisableGoalCodec,
    Ros1Pal_common_msgsDisableResult,
    Ros1Pal_common_msgsDisableResultCodec,
    Ros1Pal_common_msgsDisableFeedback,
    Ros1Pal_common_msgsDisableFeedbackCodec,
    Ros1Pal_common_msgsEmptyGoal,
    Ros1Pal_common_msgsEmptyGoalCodec,
    Ros1Pal_common_msgsEmptyResult,
    Ros1Pal_common_msgsEmptyResultCodec,
    Ros1Pal_common_msgsEmptyFeedback,
    Ros1Pal_common_msgsEmptyFeedbackCodec,
    Ros1Pal_common_msgsGetStringRequest,
    Ros1Pal_common_msgsGetStringRequestCodec,
    Ros1Pal_common_msgsGetStringResponse,
    Ros1Pal_common_msgsGetStringResponseCodec,
    Ros1Pal_common_msgsSetStringRequest,
    Ros1Pal_common_msgsSetStringRequestCodec,
    Ros1Pal_common_msgsSetStringResponse,
    Ros1Pal_common_msgsSetStringResponseCodec,
    Ros1Pal_control_msgsCurrentLimitRequest,
    Ros1Pal_control_msgsCurrentLimitRequestCodec,
    Ros1Pal_control_msgsCurrentLimitResponse,
    Ros1Pal_control_msgsCurrentLimitResponseCodec,
    Ros1Pal_control_msgsMotionManagerGoal,
    Ros1Pal_control_msgsMotionManagerGoalCodec,
    Ros1Pal_control_msgsMotionManagerResult,
    Ros1Pal_control_msgsMotionManagerResultCodec,
    Ros1Pal_control_msgsMotionManagerFeedback,
    Ros1Pal_control_msgsMotionManagerFeedbackCodec,
    Ros1Pal_control_msgsRigidBodyTrajectoryGoal,
    Ros1Pal_control_msgsRigidBodyTrajectoryGoalCodec,
    Ros1Pal_control_msgsRigidBodyTrajectoryResult,
    Ros1Pal_control_msgsRigidBodyTrajectoryResultCodec,
    Ros1Pal_control_msgsRigidBodyTrajectoryFeedback,
    Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackCodec,
    Ros1Pal_detection_msgsAddTexturedObjectRequest,
    Ros1Pal_detection_msgsAddTexturedObjectRequestCodec,
    Ros1Pal_detection_msgsAddTexturedObjectResponse,
    Ros1Pal_detection_msgsAddTexturedObjectResponseCodec,
    Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest,
    Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestCodec,
    Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse,
    Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseCodec,
    Ros1Pal_detection_msgsRecognizeObjectsGoal,
    Ros1Pal_detection_msgsRecognizeObjectsGoalCodec,
    Ros1Pal_detection_msgsRecognizeObjectsResult,
    Ros1Pal_detection_msgsRecognizeObjectsResultCodec,
    Ros1Pal_detection_msgsRecognizeObjectsFeedback,
    Ros1Pal_detection_msgsRecognizeObjectsFeedbackCodec,
    Ros1Pal_detection_msgsRecognizerRequest,
    Ros1Pal_detection_msgsRecognizerRequestCodec,
    Ros1Pal_detection_msgsRecognizerResponse,
    Ros1Pal_detection_msgsRecognizerResponseCodec,
    Ros1Pal_detection_msgsSelectTexturedObjectRequest,
    Ros1Pal_detection_msgsSelectTexturedObjectRequestCodec,
    Ros1Pal_detection_msgsSelectTexturedObjectResponse,
    Ros1Pal_detection_msgsSelectTexturedObjectResponseCodec,
    Ros1Pal_detection_msgsSetDatabaseRequest,
    Ros1Pal_detection_msgsSetDatabaseRequestCodec,
    Ros1Pal_detection_msgsSetDatabaseResponse,
    Ros1Pal_detection_msgsSetDatabaseResponseCodec,
    Ros1Pal_detection_msgsStartEnrollmentRequest,
    Ros1Pal_detection_msgsStartEnrollmentRequestCodec,
    Ros1Pal_detection_msgsStartEnrollmentResponse,
    Ros1Pal_detection_msgsStartEnrollmentResponseCodec,
    Ros1Pal_detection_msgsStopEnrollmentRequest,
    Ros1Pal_detection_msgsStopEnrollmentRequestCodec,
    Ros1Pal_detection_msgsStopEnrollmentResponse,
    Ros1Pal_detection_msgsStopEnrollmentResponseCodec,
    Ros1Pal_interaction_msgsASRFileGoal,
    Ros1Pal_interaction_msgsASRFileGoalCodec,
    Ros1Pal_interaction_msgsASRFileResult,
    Ros1Pal_interaction_msgsASRFileResultCodec,
    Ros1Pal_interaction_msgsASRFileFeedback,
    Ros1Pal_interaction_msgsASRFileFeedbackCodec,
    Ros1Pal_interaction_msgsASRServiceRequest,
    Ros1Pal_interaction_msgsASRServiceRequestCodec,
    Ros1Pal_interaction_msgsASRServiceResponse,
    Ros1Pal_interaction_msgsASRServiceResponseCodec,
    Ros1Pal_interaction_msgsAudioPlayGoal,
    Ros1Pal_interaction_msgsAudioPlayGoalCodec,
    Ros1Pal_interaction_msgsAudioPlayResult,
    Ros1Pal_interaction_msgsAudioPlayResultCodec,
    Ros1Pal_interaction_msgsAudioPlayFeedback,
    Ros1Pal_interaction_msgsAudioPlayFeedbackCodec,
    Ros1Pal_interaction_msgsGetSpeechDurationRequest,
    Ros1Pal_interaction_msgsGetSpeechDurationRequestCodec,
    Ros1Pal_interaction_msgsGetSpeechDurationResponse,
    Ros1Pal_interaction_msgsGetSpeechDurationResponseCodec,
    Ros1Pal_interaction_msgsSoundGoal,
    Ros1Pal_interaction_msgsSoundGoalCodec,
    Ros1Pal_interaction_msgsSoundResult,
    Ros1Pal_interaction_msgsSoundResultCodec,
    Ros1Pal_interaction_msgsSoundFeedback,
    Ros1Pal_interaction_msgsSoundFeedbackCodec,
    Ros1Pal_interaction_msgsSoundLocalisationServiceRequest,
    Ros1Pal_interaction_msgsSoundLocalisationServiceRequestCodec,
    Ros1Pal_interaction_msgsSoundLocalisationServiceResponse,
    Ros1Pal_interaction_msgsSoundLocalisationServiceResponseCodec,
    Ros1Pal_interaction_msgsTtsGoal,
    Ros1Pal_interaction_msgsTtsGoalCodec,
    Ros1Pal_interaction_msgsTtsResult,
    Ros1Pal_interaction_msgsTtsResultCodec,
    Ros1Pal_interaction_msgsTtsFeedback,
    Ros1Pal_interaction_msgsTtsFeedbackCodec,
    Ros1Pal_interaction_msgsRecognizerServiceRequest,
    Ros1Pal_interaction_msgsRecognizerServiceRequestCodec,
    Ros1Pal_interaction_msgsRecognizerServiceResponse,
    Ros1Pal_interaction_msgsRecognizerServiceResponseCodec,
    Ros1Pal_motion_model_msgsGetMotionMapRequest,
    Ros1Pal_motion_model_msgsGetMotionMapRequestCodec,
    Ros1Pal_motion_model_msgsGetMotionMapResponse,
    Ros1Pal_motion_model_msgsGetMotionMapResponseCodec,
    Ros1Pal_navigation_msgsAcknowledgmentRequest,
    Ros1Pal_navigation_msgsAcknowledgmentRequestCodec,
    Ros1Pal_navigation_msgsAcknowledgmentResponse,
    Ros1Pal_navigation_msgsAcknowledgmentResponseCodec,
    Ros1Pal_navigation_msgsChangeBuildingRequest,
    Ros1Pal_navigation_msgsChangeBuildingRequestCodec,
    Ros1Pal_navigation_msgsChangeBuildingResponse,
    Ros1Pal_navigation_msgsChangeBuildingResponseCodec,
    Ros1Pal_navigation_msgsChangeMapRequest,
    Ros1Pal_navigation_msgsChangeMapRequestCodec,
    Ros1Pal_navigation_msgsChangeMapResponse,
    Ros1Pal_navigation_msgsChangeMapResponseCodec,
    Ros1Pal_navigation_msgsChangeSyncMapRequest,
    Ros1Pal_navigation_msgsChangeSyncMapRequestCodec,
    Ros1Pal_navigation_msgsChangeSyncMapResponse,
    Ros1Pal_navigation_msgsChangeSyncMapResponseCodec,
    Ros1Pal_navigation_msgsDisableEmergencyRequest,
    Ros1Pal_navigation_msgsDisableEmergencyRequestCodec,
    Ros1Pal_navigation_msgsDisableEmergencyResponse,
    Ros1Pal_navigation_msgsDisableEmergencyResponseCodec,
    Ros1Pal_navigation_msgsExecuteParkingGoal,
    Ros1Pal_navigation_msgsExecuteParkingGoalCodec,
    Ros1Pal_navigation_msgsExecuteParkingResult,
    Ros1Pal_navigation_msgsExecuteParkingResultCodec,
    Ros1Pal_navigation_msgsExecuteParkingFeedback,
    Ros1Pal_navigation_msgsExecuteParkingFeedbackCodec,
    Ros1Pal_navigation_msgsFinalApproachPoseRequest,
    Ros1Pal_navigation_msgsFinalApproachPoseRequestCodec,
    Ros1Pal_navigation_msgsFinalApproachPoseResponse,
    Ros1Pal_navigation_msgsFinalApproachPoseResponseCodec,
    Ros1Pal_navigation_msgsGetMapConfigurationRequest,
    Ros1Pal_navigation_msgsGetMapConfigurationRequestCodec,
    Ros1Pal_navigation_msgsGetMapConfigurationResponse,
    Ros1Pal_navigation_msgsGetMapConfigurationResponseCodec,
    Ros1Pal_navigation_msgsGetNodesRequest,
    Ros1Pal_navigation_msgsGetNodesRequestCodec,
    Ros1Pal_navigation_msgsGetNodesResponse,
    Ros1Pal_navigation_msgsGetNodesResponseCodec,
    Ros1Pal_navigation_msgsGetPOIRequest,
    Ros1Pal_navigation_msgsGetPOIRequestCodec,
    Ros1Pal_navigation_msgsGetPOIResponse,
    Ros1Pal_navigation_msgsGetPOIResponseCodec,
    Ros1Pal_navigation_msgsGetSubMapRequest,
    Ros1Pal_navigation_msgsGetSubMapRequestCodec,
    Ros1Pal_navigation_msgsGetSubMapResponse,
    Ros1Pal_navigation_msgsGetSubMapResponseCodec,
    Ros1Pal_navigation_msgsGoToGoal,
    Ros1Pal_navigation_msgsGoToGoalCodec,
    Ros1Pal_navigation_msgsGoToResult,
    Ros1Pal_navigation_msgsGoToResultCodec,
    Ros1Pal_navigation_msgsGoToFeedback,
    Ros1Pal_navigation_msgsGoToFeedbackCodec,
    Ros1Pal_navigation_msgsGoToPOIGoal,
    Ros1Pal_navigation_msgsGoToPOIGoalCodec,
    Ros1Pal_navigation_msgsGoToPOIResult,
    Ros1Pal_navigation_msgsGoToPOIResultCodec,
    Ros1Pal_navigation_msgsGoToPOIFeedback,
    Ros1Pal_navigation_msgsGoToPOIFeedbackCodec,
    Ros1Pal_navigation_msgsJoyPriorityGoal,
    Ros1Pal_navigation_msgsJoyPriorityGoalCodec,
    Ros1Pal_navigation_msgsJoyPriorityResult,
    Ros1Pal_navigation_msgsJoyPriorityResultCodec,
    Ros1Pal_navigation_msgsJoyPriorityFeedback,
    Ros1Pal_navigation_msgsJoyPriorityFeedbackCodec,
    Ros1Pal_navigation_msgsJoyTurboGoal,
    Ros1Pal_navigation_msgsJoyTurboGoalCodec,
    Ros1Pal_navigation_msgsJoyTurboResult,
    Ros1Pal_navigation_msgsJoyTurboResultCodec,
    Ros1Pal_navigation_msgsJoyTurboFeedback,
    Ros1Pal_navigation_msgsJoyTurboFeedbackCodec,
    Ros1Pal_navigation_msgsListMapsRequest,
    Ros1Pal_navigation_msgsListMapsRequestCodec,
    Ros1Pal_navigation_msgsListMapsResponse,
    Ros1Pal_navigation_msgsListMapsResponseCodec,
    Ros1Pal_navigation_msgsRenameMapRequest,
    Ros1Pal_navigation_msgsRenameMapRequestCodec,
    Ros1Pal_navigation_msgsRenameMapResponse,
    Ros1Pal_navigation_msgsRenameMapResponseCodec,
    Ros1Pal_navigation_msgsSafetyZoneRequest,
    Ros1Pal_navigation_msgsSafetyZoneRequestCodec,
    Ros1Pal_navigation_msgsSafetyZoneResponse,
    Ros1Pal_navigation_msgsSafetyZoneResponseCodec,
    Ros1Pal_navigation_msgsSaveMapRequest,
    Ros1Pal_navigation_msgsSaveMapRequestCodec,
    Ros1Pal_navigation_msgsSaveMapResponse,
    Ros1Pal_navigation_msgsSaveMapResponseCodec,
    Ros1Pal_navigation_msgsSetMapConfigurationRequest,
    Ros1Pal_navigation_msgsSetMapConfigurationRequestCodec,
    Ros1Pal_navigation_msgsSetMapConfigurationResponse,
    Ros1Pal_navigation_msgsSetMapConfigurationResponseCodec,
    Ros1Pal_navigation_msgsSetPOIRequest,
    Ros1Pal_navigation_msgsSetPOIRequestCodec,
    Ros1Pal_navigation_msgsSetPOIResponse,
    Ros1Pal_navigation_msgsSetPOIResponseCodec,
    Ros1Pal_navigation_msgsSetSubMapFloorRequest,
    Ros1Pal_navigation_msgsSetSubMapFloorRequestCodec,
    Ros1Pal_navigation_msgsSetSubMapFloorResponse,
    Ros1Pal_navigation_msgsSetSubMapFloorResponseCodec,
    Ros1Pal_navigation_msgsVisualLocRecognizeRequest,
    Ros1Pal_navigation_msgsVisualLocRecognizeRequestCodec,
    Ros1Pal_navigation_msgsVisualLocRecognizeResponse,
    Ros1Pal_navigation_msgsVisualLocRecognizeResponseCodec,
    Ros1Pal_navigation_msgsVisualTrainingGoal,
    Ros1Pal_navigation_msgsVisualTrainingGoalCodec,
    Ros1Pal_navigation_msgsVisualTrainingResult,
    Ros1Pal_navigation_msgsVisualTrainingResultCodec,
    Ros1Pal_navigation_msgsVisualTrainingFeedback,
    Ros1Pal_navigation_msgsVisualTrainingFeedbackCodec,
    Ros1Pal_video_recording_msgsStartRecordingRequest,
    Ros1Pal_video_recording_msgsStartRecordingRequestCodec,
    Ros1Pal_video_recording_msgsStartRecordingResponse,
    Ros1Pal_video_recording_msgsStartRecordingResponseCodec,
    Ros1Pal_video_recording_msgsStopRecordingRequest,
    Ros1Pal_video_recording_msgsStopRecordingRequestCodec,
    Ros1Pal_video_recording_msgsStopRecordingResponse,
    Ros1Pal_video_recording_msgsStopRecordingResponseCodec,
    Ros1Pal_vision_msgsFaceRecognitionGoal,
    Ros1Pal_vision_msgsFaceRecognitionGoalCodec,
    Ros1Pal_vision_msgsFaceRecognitionResult,
    Ros1Pal_vision_msgsFaceRecognitionResultCodec,
    Ros1Pal_vision_msgsFaceRecognitionFeedback,
    Ros1Pal_vision_msgsFaceRecognitionFeedbackCodec,
    Ros1Pal_vision_msgsFaceTrackingStartRequest,
    Ros1Pal_vision_msgsFaceTrackingStartRequestCodec,
    Ros1Pal_vision_msgsFaceTrackingStartResponse,
    Ros1Pal_vision_msgsFaceTrackingStartResponseCodec,
    Ros1Pal_vision_msgsFaceTrackingStopRequest,
    Ros1Pal_vision_msgsFaceTrackingStopRequestCodec,
    Ros1Pal_vision_msgsFaceTrackingStopResponse,
    Ros1Pal_vision_msgsFaceTrackingStopResponseCodec,
    Ros1Pal_vision_msgsFollowMeStartRequest,
    Ros1Pal_vision_msgsFollowMeStartRequestCodec,
    Ros1Pal_vision_msgsFollowMeStartResponse,
    Ros1Pal_vision_msgsFollowMeStartResponseCodec,
    Ros1Pal_vision_msgsFollowMeStopRequest,
    Ros1Pal_vision_msgsFollowMeStopRequestCodec,
    Ros1Pal_vision_msgsFollowMeStopResponse,
    Ros1Pal_vision_msgsFollowMeStopResponseCodec,
    Ros1Pal_vision_msgsLookToPixelRequest,
    Ros1Pal_vision_msgsLookToPixelRequestCodec,
    Ros1Pal_vision_msgsLookToPixelResponse,
    Ros1Pal_vision_msgsLookToPixelResponseCodec,
    Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal,
    Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalCodec,
    Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult,
    Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultCodec,
    Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback,
    Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackCodec,
    Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal,
    Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalCodec,
    Ros1Pal_visual_localization_msgsVisualLocRecognizeResult,
    Ros1Pal_visual_localization_msgsVisualLocRecognizeResultCodec,
    Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback,
    Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackCodec,
    Ros1Pal_walking_msgsMoveHipFeetRequest,
    Ros1Pal_walking_msgsMoveHipFeetRequestCodec,
    Ros1Pal_walking_msgsMoveHipFeetResponse,
    Ros1Pal_walking_msgsMoveHipFeetResponseCodec,
    Ros1Pal_walking_msgsSitRequest,
    Ros1Pal_walking_msgsSitRequestCodec,
    Ros1Pal_walking_msgsSitResponse,
    Ros1Pal_walking_msgsSitResponseCodec,
    Ros1Pal_walking_msgsStepOverRequest,
    Ros1Pal_walking_msgsStepOverRequestCodec,
    Ros1Pal_walking_msgsStepOverResponse,
    Ros1Pal_walking_msgsStepOverResponseCodec,
    Ros1Pal_walking_msgsWalkStepsRequest,
    Ros1Pal_walking_msgsWalkStepsRequestCodec,
    Ros1Pal_walking_msgsWalkStepsResponse,
    Ros1Pal_walking_msgsWalkStepsResponseCodec,
    Ros1Pal_web_msgsGetUserInputGoal,
    Ros1Pal_web_msgsGetUserInputGoalCodec,
    Ros1Pal_web_msgsGetUserInputResult,
    Ros1Pal_web_msgsGetUserInputResultCodec,
    Ros1Pal_web_msgsGetUserInputFeedback,
    Ros1Pal_web_msgsGetUserInputFeedbackCodec,
    Ros1Pal_wifi_localization_msgsGetWifiMapRequest,
    Ros1Pal_wifi_localization_msgsGetWifiMapRequestCodec,
    Ros1Pal_wifi_localization_msgsGetWifiMapResponse,
    Ros1Pal_wifi_localization_msgsGetWifiMapResponseCodec
} from "./bounded_records";

/**
 * @brief Complete typed result. Inspect status before value; required is retained
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

/** @brief Primary failure remains separate from every attempted retirement result. */
export class RPCCleanup
{
    constructor(public primary: u32, public statuses: Array<u32>)
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
    private caps: Array < Capability >= [];
    busy: bool = false;
    status: u32 = 0;
    constructionCleanup: RPCCleanup = new RPCCleanup(0, []);

    constructor(api: Api, version: u32, aliases: Array<string>, public capacity: i32)
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
 * @brief Generic implementation instantiated only with the generated complete codecs.
 * Each validator runs before encoding, including zero-wire nested-empty values.
 */
export class BoundedServiceClient<Q, S>
{
    private owners: RPCOwners;
    private pending: Array < u64 >= [];
    private sequence: u64 = 0;
    private instance: u64 = 0;
    private session: u64 = 0;

    constructor(api: Api,
                private version: u32,
                alias: string,
                private requestCodec: Codec<Q>,
                private responseCodec: Codec<S>,
                private requestValid: (value: Q) => bool,
                private responseMax: i32,
                observerAlias: string = '',
                capacity: i32 = 8)
    {
        this.owners = new RPCOwners(api, version, observerAlias.length ? [ alias, observerAlias ] : [ alias ], capacity);
    }

    /** @brief One synchronous call. No timeout/disconnect/TooLarge replay is attempted. */
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
     * @brief Real service_submit with the explicitly opened independent observer. The
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
     * @brief Use the existing SDK envelope decoder before source/stream/correlation and
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

    /** @brief Preserve all partial open cleanup facts independently of the primary status. */
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** @brief Close each role once, preserving observer/source retirement errors. */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.pending.length = 0;
        return r;
    }

    /** @brief Explicitly revoke only these already granted aliases. */
    revokeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary, true);
        if(!this.owners.busy)
            this.pending.length = 0;
        return r;
    }
}

/**
 * @brief Incoming custom service implementation. Host still validates exact responder,
 * ticket principal, deadline and one-shot ownership; no ticket is a capability.
 */
export class BoundedServiceServer<Q, S>
{
    private owners: RPCOwners;
    private live: Array < u64 >= [];

    constructor(api: Api,
                version: u32,
                advertise: string,
                respond: string,
                private input: Codec<Q>,
                private output: Codec<S>,
                private outputValid: (value: S) => bool,
                private inputMax: i32,
                capacity: i32 = 8)
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

    /** @brief Poll at most one complete request; all malformed values leave outputs absent. */
    pollOnce(): RPCReply<Q>
    {
        const status = this.owners.check();
        return status ? new RPCReply<Q>(new Reply(status)) : this.pollInner();
    }

    /** @brief Respond once to a locally delivered ticket. Refusal retains local ownership. */
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
     * @brief A normal callback may respond but cannot poll/close/revoke this owner.
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

    /** @brief Inspect partial construction rollback separately. */
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** @brief Close both roles only after callback preflight. */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.live.length = 0;
        return r;
    }

    /** @brief Deliberately revoke both existing aliases. */
    revokeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary, true);
        if(!this.owners.busy)
            this.live.length = 0;
        return r;
    }
}

/** @brief Custom action owner with four distinct required roles and optional cancel-any. */
export class BoundedActionClient<G, R, F>
{
    private owners: RPCOwners;
    private goals: Array < u64 >= [];

    constructor(api: Api,
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
                capacity: i32 = 8)
    {
        this.owners =
            new RPCOwners(api, version, cancelAny.length ? [ send, cancelOwn, feedback, result, cancelAny ] : [ send, cancelOwn, feedback, result ], capacity);
    }

    /** @brief Send a complete generated goal; capacity checked before any import. */
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

    /** @brief Cancellation acknowledgement does not retire a local goal. */
    cancelOwn(id: u64): RPCReply<R>
    {
        let status = this.owners.check();
        if(!status && this.goals.indexOf(id) < 0)
            status = Status.BadHandle;
        return status ? new RPCReply<R>(new Reply(status)) : this.cancel(1, Operation.action_cancel_own_goal, id);
    }

    /** @brief Zero means cancel-all and still requires the explicit fifth role. */
    cancelAny(id: u64): RPCReply<R>
    {
        let status = this.owners.check();
        if(!status && !this.owners.available(4))
            status = Status.Denied;
        return status ? new RPCReply<R>(new Reply(status)) : this.cancel(4, Operation.action_cancel_any_goal, id);
    }

    /** @brief Explicit cancel-all preserves the independent fifth-role requirement. */
    cancelAll(): RPCReply<R>
    {
        return this.cancelAny(0);
    }

    /** @brief Receive complete matching-ID feedback, retaining goal ownership on every refusal. */
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

    /** @brief Only decoded terminal kinds2/3/4 remove one locally owned goal. */
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

    /** @brief Observe every acquisition rollback result. */
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** @brief Close every role once. */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.goals.length = 0;
        return r;
    }

    /** @brief Revoke only existing role aliases. */
    revokeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary, true);
        if(!this.owners.busy)
            this.goals.length = 0;
        return r;
    }
}

/** @brief Incoming custom action: feedback1 retains; accepted terminal2/3/4 retires. */
export class BoundedActionServer<G, R, F>
{
    private owners: RPCOwners;
    private live: Array < u64 >= [];

    constructor(api: Api,
                version: u32,
                advertise: string,
                respond: string,
                private goal: Codec<G>,
                private resultCodec: Codec<R>,
                private feedbackCodec: Codec<F>,
                private resultValid: (value: R) => bool,
                private feedbackValid: (value: F) => bool,
                private goalMax: i32,
                capacity: i32 = 8)
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

    /** @brief Poll once; nested dispatch returns Conflict before dequeue. */
    pollOnce(): RPCReply<G>
    {
        const status = this.owners.check();
        return status ? new RPCReply<G>(new Reply(status)) : this.pollInner();
    }

    /** @brief Respond only to a goal delivered to this owner. */
    respondFeedback(id: u64, value: F): u32
    {
        if(this.live.indexOf(id) < 0)
            return Status.BadHandle;
        if(!this.feedbackValid(value))
            return Status.Invalid;
        return this.owners.zero(1, Operation.action_respond, rpcFrame(id, this.feedbackCodec.encode(value), 1));
    }

    /** @brief Validate terminal kind and component before any response import. */
    respondResult(id: u64, kind: u8, value: R): u32
    {
        if(this.live.indexOf(id) < 0)
            return Status.BadHandle;
        if(kind < 2 || kind > 4 || !this.resultValid(value))
            return Status.Invalid;
        const status = this.owners.zero(1, Operation.action_respond, rpcFrame(id, this.resultCodec.encode(value), kind));
        if(!status)
            rpcRemove(this.live, id);
        return status;
    }

    /** @brief Handler runs locally under a lease and explicitly chooses later responses. */
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

    /** @brief Inspect original partial construction cleanup. */
    constructionCleanup(): RPCCleanup
    {
        return this.owners.constructionCleanup;
    }

    /** @brief Close both roles, preserving primary and every cleanup status. */
    closeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary);
        if(!this.owners.busy)
            this.live.length = 0;
        return r;
    }

    /** @brief Explicitly revoke the existing advertise/respond aliases. */
    revokeChecked(primary: u32 = 0): RPCCleanup
    {
        const r = this.owners.cleanup(primary, true);
        if(!this.owners.busy)
            this.live.length = 0;
        return r;
    }
}

/** @brief Complete pal_behaviour_msgs/BehaviourEvent typed call and real-submit client. */
export class Ros1Pal_behaviour_msgsBehaviourEventClient extends
    BoundedServiceClient<Ros1Pal_behaviour_msgsBehaviourEventRequest, Ros1Pal_behaviour_msgsBehaviourEventResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_behaviour_msgsBehaviourEventRequestCodec(),
              new Ros1Pal_behaviour_msgsBehaviourEventResponseCodec(),
              (value: Ros1Pal_behaviour_msgsBehaviourEventRequest): bool => value.validValue(),
              132,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_behaviour_msgs/BehaviourEvent incoming request/response owner. */
export class Ros1Pal_behaviour_msgsBehaviourEventServer extends
    BoundedServiceServer<Ros1Pal_behaviour_msgsBehaviourEventRequest, Ros1Pal_behaviour_msgsBehaviourEventResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_behaviour_msgsBehaviourEventRequestCodec(),
              new Ros1Pal_behaviour_msgsBehaviourEventResponseCodec(),
              (value: Ros1Pal_behaviour_msgsBehaviourEventResponse): bool => value.validValue(),
              1192,
              capacity);
    }
}

/** @brief Complete custom pal_behaviour_msgs/BehaviourTask client. Role aliases never imply grants. */
export class Ros1Pal_behaviour_msgsBehaviourTaskClient extends
    BoundedActionClient<Ros1Pal_behaviour_msgsBehaviourTaskGoal, Ros1Pal_behaviour_msgsBehaviourTaskResult, Ros1Pal_behaviour_msgsBehaviourTaskFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_behaviour_msgsBehaviourTaskGoalCodec(),
              new Ros1Pal_behaviour_msgsBehaviourTaskResultCodec(),
              new Ros1Pal_behaviour_msgsBehaviourTaskFeedbackCodec(),
              (value: Ros1Pal_behaviour_msgsBehaviourTaskGoal): bool => value.validValue(),
              0,
              0,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_behaviour_msgs/BehaviourTask server with matching-ID response codecs. */
export class Ros1Pal_behaviour_msgsBehaviourTaskServer extends
    BoundedActionServer<Ros1Pal_behaviour_msgsBehaviourTaskGoal, Ros1Pal_behaviour_msgsBehaviourTaskResult, Ros1Pal_behaviour_msgsBehaviourTaskFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_behaviour_msgsBehaviourTaskGoalCodec(),
              new Ros1Pal_behaviour_msgsBehaviourTaskResultCodec(),
              new Ros1Pal_behaviour_msgsBehaviourTaskFeedbackCodec(),
              (value: Ros1Pal_behaviour_msgsBehaviourTaskResult): bool => value.validValue(),
              (value: Ros1Pal_behaviour_msgsBehaviourTaskFeedback): bool => value.validValue(),
              1192,
              capacity);
    }
}

/** @brief Complete custom pal_behaviour_msgs/Presentation client. Role aliases never imply grants. */
export class Ros1Pal_behaviour_msgsPresentationClient extends
    BoundedActionClient<Ros1Pal_behaviour_msgsPresentationGoal, Ros1Pal_behaviour_msgsPresentationResult, Ros1Pal_behaviour_msgsPresentationFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_behaviour_msgsPresentationGoalCodec(),
              new Ros1Pal_behaviour_msgsPresentationResultCodec(),
              new Ros1Pal_behaviour_msgsPresentationFeedbackCodec(),
              (value: Ros1Pal_behaviour_msgsPresentationGoal): bool => value.validValue(),
              0,
              0,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_behaviour_msgs/Presentation server with matching-ID response codecs. */
export class Ros1Pal_behaviour_msgsPresentationServer extends
    BoundedActionServer<Ros1Pal_behaviour_msgsPresentationGoal, Ros1Pal_behaviour_msgsPresentationResult, Ros1Pal_behaviour_msgsPresentationFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_behaviour_msgsPresentationGoalCodec(),
              new Ros1Pal_behaviour_msgsPresentationResultCodec(),
              new Ros1Pal_behaviour_msgsPresentationFeedbackCodec(),
              (value: Ros1Pal_behaviour_msgsPresentationResult): bool => value.validValue(),
              (value: Ros1Pal_behaviour_msgsPresentationFeedback): bool => value.validValue(),
              132,
              capacity);
    }
}

/** @brief Complete custom pal_common_msgs/Disable client. Role aliases never imply grants. */
export class Ros1Pal_common_msgsDisableClient extends
    BoundedActionClient<Ros1Pal_common_msgsDisableGoal, Ros1Pal_common_msgsDisableResult, Ros1Pal_common_msgsDisableFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_common_msgsDisableGoalCodec(),
              new Ros1Pal_common_msgsDisableResultCodec(),
              new Ros1Pal_common_msgsDisableFeedbackCodec(),
              (value: Ros1Pal_common_msgsDisableGoal): bool => value.validValue(),
              0,
              0,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_common_msgs/Disable server with matching-ID response codecs. */
export class Ros1Pal_common_msgsDisableServer extends
    BoundedActionServer<Ros1Pal_common_msgsDisableGoal, Ros1Pal_common_msgsDisableResult, Ros1Pal_common_msgsDisableFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_common_msgsDisableGoalCodec(),
              new Ros1Pal_common_msgsDisableResultCodec(),
              new Ros1Pal_common_msgsDisableFeedbackCodec(),
              (value: Ros1Pal_common_msgsDisableResult): bool => value.validValue(),
              (value: Ros1Pal_common_msgsDisableFeedback): bool => value.validValue(),
              4,
              capacity);
    }
}

/** @brief Complete custom pal_common_msgs/Empty client. Role aliases never imply grants. */
export class Ros1Pal_common_msgsEmptyClient extends
    BoundedActionClient<Ros1Pal_common_msgsEmptyGoal, Ros1Pal_common_msgsEmptyResult, Ros1Pal_common_msgsEmptyFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_common_msgsEmptyGoalCodec(),
              new Ros1Pal_common_msgsEmptyResultCodec(),
              new Ros1Pal_common_msgsEmptyFeedbackCodec(),
              (value: Ros1Pal_common_msgsEmptyGoal): bool => value.validValue(),
              0,
              0,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_common_msgs/Empty server with matching-ID response codecs. */
export class Ros1Pal_common_msgsEmptyServer extends
    BoundedActionServer<Ros1Pal_common_msgsEmptyGoal, Ros1Pal_common_msgsEmptyResult, Ros1Pal_common_msgsEmptyFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_common_msgsEmptyGoalCodec(),
              new Ros1Pal_common_msgsEmptyResultCodec(),
              new Ros1Pal_common_msgsEmptyFeedbackCodec(),
              (value: Ros1Pal_common_msgsEmptyResult): bool => value.validValue(),
              (value: Ros1Pal_common_msgsEmptyFeedback): bool => value.validValue(),
              0,
              capacity);
    }
}

/** @brief Complete pal_common_msgs/GetString typed call and real-submit client. */
export class Ros1Pal_common_msgsGetStringClient extends BoundedServiceClient<Ros1Pal_common_msgsGetStringRequest, Ros1Pal_common_msgsGetStringResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_common_msgsGetStringRequestCodec(),
              new Ros1Pal_common_msgsGetStringResponseCodec(),
              (value: Ros1Pal_common_msgsGetStringRequest): bool => value.validValue(),
              133,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_common_msgs/GetString incoming request/response owner. */
export class Ros1Pal_common_msgsGetStringServer extends BoundedServiceServer<Ros1Pal_common_msgsGetStringRequest, Ros1Pal_common_msgsGetStringResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_common_msgsGetStringRequestCodec(),
              new Ros1Pal_common_msgsGetStringResponseCodec(),
              (value: Ros1Pal_common_msgsGetStringResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** @brief Complete pal_common_msgs/SetString typed call and real-submit client. */
export class Ros1Pal_common_msgsSetStringClient extends BoundedServiceClient<Ros1Pal_common_msgsSetStringRequest, Ros1Pal_common_msgsSetStringResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_common_msgsSetStringRequestCodec(),
              new Ros1Pal_common_msgsSetStringResponseCodec(),
              (value: Ros1Pal_common_msgsSetStringRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_common_msgs/SetString incoming request/response owner. */
export class Ros1Pal_common_msgsSetStringServer extends BoundedServiceServer<Ros1Pal_common_msgsSetStringRequest, Ros1Pal_common_msgsSetStringResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_common_msgsSetStringRequestCodec(),
              new Ros1Pal_common_msgsSetStringResponseCodec(),
              (value: Ros1Pal_common_msgsSetStringResponse): bool => value.validValue(),
              132,
              capacity);
    }
}

/** @brief Complete pal_control_msgs/CurrentLimit typed call and real-submit client. */
export class Ros1Pal_control_msgsCurrentLimitClient extends
    BoundedServiceClient<Ros1Pal_control_msgsCurrentLimitRequest, Ros1Pal_control_msgsCurrentLimitResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_control_msgsCurrentLimitRequestCodec(),
              new Ros1Pal_control_msgsCurrentLimitResponseCodec(),
              (value: Ros1Pal_control_msgsCurrentLimitRequest): bool => value.validValue(),
              132,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_control_msgs/CurrentLimit incoming request/response owner. */
export class Ros1Pal_control_msgsCurrentLimitServer extends
    BoundedServiceServer<Ros1Pal_control_msgsCurrentLimitRequest, Ros1Pal_control_msgsCurrentLimitResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_control_msgsCurrentLimitRequestCodec(),
              new Ros1Pal_control_msgsCurrentLimitResponseCodec(),
              (value: Ros1Pal_control_msgsCurrentLimitResponse): bool => value.validValue(),
              140,
              capacity);
    }
}

/** @brief Complete custom pal_control_msgs/MotionManager client. Role aliases never imply grants. */
export class Ros1Pal_control_msgsMotionManagerClient extends
    BoundedActionClient<Ros1Pal_control_msgsMotionManagerGoal, Ros1Pal_control_msgsMotionManagerResult, Ros1Pal_control_msgsMotionManagerFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_control_msgsMotionManagerGoalCodec(),
              new Ros1Pal_control_msgsMotionManagerResultCodec(),
              new Ros1Pal_control_msgsMotionManagerFeedbackCodec(),
              (value: Ros1Pal_control_msgsMotionManagerGoal): bool => value.validValue(),
              132,
              0,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_control_msgs/MotionManager server with matching-ID response codecs. */
export class Ros1Pal_control_msgsMotionManagerServer extends
    BoundedActionServer<Ros1Pal_control_msgsMotionManagerGoal, Ros1Pal_control_msgsMotionManagerResult, Ros1Pal_control_msgsMotionManagerFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_control_msgsMotionManagerGoalCodec(),
              new Ros1Pal_control_msgsMotionManagerResultCodec(),
              new Ros1Pal_control_msgsMotionManagerFeedbackCodec(),
              (value: Ros1Pal_control_msgsMotionManagerResult): bool => value.validValue(),
              (value: Ros1Pal_control_msgsMotionManagerFeedback): bool => value.validValue(),
              140,
              capacity);
    }
}

/** @brief Complete custom pal_control_msgs/RigidBodyTrajectory client. Role aliases never imply grants. */
export class Ros1Pal_control_msgsRigidBodyTrajectoryClient extends BoundedActionClient<Ros1Pal_control_msgsRigidBodyTrajectoryGoal,
                                                                                       Ros1Pal_control_msgsRigidBodyTrajectoryResult,
                                                                                       Ros1Pal_control_msgsRigidBodyTrajectoryFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_control_msgsRigidBodyTrajectoryGoalCodec(),
              new Ros1Pal_control_msgsRigidBodyTrajectoryResultCodec(),
              new Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackCodec(),
              (value: Ros1Pal_control_msgsRigidBodyTrajectoryGoal): bool => value.validValue(),
              132,
              0,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_control_msgs/RigidBodyTrajectory server with matching-ID response codecs. */
export class Ros1Pal_control_msgsRigidBodyTrajectoryServer extends BoundedActionServer<Ros1Pal_control_msgsRigidBodyTrajectoryGoal,
                                                                                       Ros1Pal_control_msgsRigidBodyTrajectoryResult,
                                                                                       Ros1Pal_control_msgsRigidBodyTrajectoryFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_control_msgsRigidBodyTrajectoryGoalCodec(),
              new Ros1Pal_control_msgsRigidBodyTrajectoryResultCodec(),
              new Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackCodec(),
              (value: Ros1Pal_control_msgsRigidBodyTrajectoryResult): bool => value.validValue(),
              (value: Ros1Pal_control_msgsRigidBodyTrajectoryFeedback): bool => value.validValue(),
              789,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/AddTexturedObject typed call and real-submit client. */
export class Ros1Pal_detection_msgsAddTexturedObjectClient extends
    BoundedServiceClient<Ros1Pal_detection_msgsAddTexturedObjectRequest, Ros1Pal_detection_msgsAddTexturedObjectResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_detection_msgsAddTexturedObjectRequestCodec(),
              new Ros1Pal_detection_msgsAddTexturedObjectResponseCodec(),
              (value: Ros1Pal_detection_msgsAddTexturedObjectRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/AddTexturedObject incoming request/response owner. */
export class Ros1Pal_detection_msgsAddTexturedObjectServer extends
    BoundedServiceServer<Ros1Pal_detection_msgsAddTexturedObjectRequest, Ros1Pal_detection_msgsAddTexturedObjectResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_detection_msgsAddTexturedObjectRequestCodec(),
              new Ros1Pal_detection_msgsAddTexturedObjectResponseCodec(),
              (value: Ros1Pal_detection_msgsAddTexturedObjectResponse): bool => value.validValue(),
              4521,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/ChangeObjectRecognizerModel typed call and real-submit client. */
export class Ros1Pal_detection_msgsChangeObjectRecognizerModelClient extends
    BoundedServiceClient<Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest, Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestCodec(),
              new Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseCodec(),
              (value: Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/ChangeObjectRecognizerModel incoming request/response owner. */
export class Ros1Pal_detection_msgsChangeObjectRecognizerModelServer extends
    BoundedServiceServer<Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest, Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestCodec(),
              new Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseCodec(),
              (value: Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse): bool => value.validValue(),
              133,
              capacity);
    }
}

/** @brief Complete custom pal_detection_msgs/RecognizeObjects client. Role aliases never imply grants. */
export class Ros1Pal_detection_msgsRecognizeObjectsClient extends BoundedActionClient<Ros1Pal_detection_msgsRecognizeObjectsGoal,
                                                                                      Ros1Pal_detection_msgsRecognizeObjectsResult,
                                                                                      Ros1Pal_detection_msgsRecognizeObjectsFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_detection_msgsRecognizeObjectsGoalCodec(),
              new Ros1Pal_detection_msgsRecognizeObjectsResultCodec(),
              new Ros1Pal_detection_msgsRecognizeObjectsFeedbackCodec(),
              (value: Ros1Pal_detection_msgsRecognizeObjectsGoal): bool => value.validValue(),
              5138,
              0,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_detection_msgs/RecognizeObjects server with matching-ID response codecs. */
export class Ros1Pal_detection_msgsRecognizeObjectsServer extends BoundedActionServer<Ros1Pal_detection_msgsRecognizeObjectsGoal,
                                                                                      Ros1Pal_detection_msgsRecognizeObjectsResult,
                                                                                      Ros1Pal_detection_msgsRecognizeObjectsFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_detection_msgsRecognizeObjectsGoalCodec(),
              new Ros1Pal_detection_msgsRecognizeObjectsResultCodec(),
              new Ros1Pal_detection_msgsRecognizeObjectsFeedbackCodec(),
              (value: Ros1Pal_detection_msgsRecognizeObjectsResult): bool => value.validValue(),
              (value: Ros1Pal_detection_msgsRecognizeObjectsFeedback): bool => value.validValue(),
              4376,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/Recognizer typed call and real-submit client. */
export class Ros1Pal_detection_msgsRecognizerClient extends
    BoundedServiceClient<Ros1Pal_detection_msgsRecognizerRequest, Ros1Pal_detection_msgsRecognizerResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_detection_msgsRecognizerRequestCodec(),
              new Ros1Pal_detection_msgsRecognizerResponseCodec(),
              (value: Ros1Pal_detection_msgsRecognizerRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/Recognizer incoming request/response owner. */
export class Ros1Pal_detection_msgsRecognizerServer extends
    BoundedServiceServer<Ros1Pal_detection_msgsRecognizerRequest, Ros1Pal_detection_msgsRecognizerResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_detection_msgsRecognizerRequestCodec(),
              new Ros1Pal_detection_msgsRecognizerResponseCodec(),
              (value: Ros1Pal_detection_msgsRecognizerResponse): bool => value.validValue(),
              5,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/SelectTexturedObject typed call and real-submit client. */
export class Ros1Pal_detection_msgsSelectTexturedObjectClient extends
    BoundedServiceClient<Ros1Pal_detection_msgsSelectTexturedObjectRequest, Ros1Pal_detection_msgsSelectTexturedObjectResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_detection_msgsSelectTexturedObjectRequestCodec(),
              new Ros1Pal_detection_msgsSelectTexturedObjectResponseCodec(),
              (value: Ros1Pal_detection_msgsSelectTexturedObjectRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/SelectTexturedObject incoming request/response owner. */
export class Ros1Pal_detection_msgsSelectTexturedObjectServer extends
    BoundedServiceServer<Ros1Pal_detection_msgsSelectTexturedObjectRequest, Ros1Pal_detection_msgsSelectTexturedObjectResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_detection_msgsSelectTexturedObjectRequestCodec(),
              new Ros1Pal_detection_msgsSelectTexturedObjectResponseCodec(),
              (value: Ros1Pal_detection_msgsSelectTexturedObjectResponse): bool => value.validValue(),
              148,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/SetDatabase typed call and real-submit client. */
export class Ros1Pal_detection_msgsSetDatabaseClient extends
    BoundedServiceClient<Ros1Pal_detection_msgsSetDatabaseRequest, Ros1Pal_detection_msgsSetDatabaseResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_detection_msgsSetDatabaseRequestCodec(),
              new Ros1Pal_detection_msgsSetDatabaseResponseCodec(),
              (value: Ros1Pal_detection_msgsSetDatabaseRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/SetDatabase incoming request/response owner. */
export class Ros1Pal_detection_msgsSetDatabaseServer extends
    BoundedServiceServer<Ros1Pal_detection_msgsSetDatabaseRequest, Ros1Pal_detection_msgsSetDatabaseResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_detection_msgsSetDatabaseRequestCodec(),
              new Ros1Pal_detection_msgsSetDatabaseResponseCodec(),
              (value: Ros1Pal_detection_msgsSetDatabaseResponse): bool => value.validValue(),
              133,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/StartEnrollment typed call and real-submit client. */
export class Ros1Pal_detection_msgsStartEnrollmentClient extends
    BoundedServiceClient<Ros1Pal_detection_msgsStartEnrollmentRequest, Ros1Pal_detection_msgsStartEnrollmentResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_detection_msgsStartEnrollmentRequestCodec(),
              new Ros1Pal_detection_msgsStartEnrollmentResponseCodec(),
              (value: Ros1Pal_detection_msgsStartEnrollmentRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/StartEnrollment incoming request/response owner. */
export class Ros1Pal_detection_msgsStartEnrollmentServer extends
    BoundedServiceServer<Ros1Pal_detection_msgsStartEnrollmentRequest, Ros1Pal_detection_msgsStartEnrollmentResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_detection_msgsStartEnrollmentRequestCodec(),
              new Ros1Pal_detection_msgsStartEnrollmentResponseCodec(),
              (value: Ros1Pal_detection_msgsStartEnrollmentResponse): bool => value.validValue(),
              132,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/StopEnrollment typed call and real-submit client. */
export class Ros1Pal_detection_msgsStopEnrollmentClient extends
    BoundedServiceClient<Ros1Pal_detection_msgsStopEnrollmentRequest, Ros1Pal_detection_msgsStopEnrollmentResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_detection_msgsStopEnrollmentRequestCodec(),
              new Ros1Pal_detection_msgsStopEnrollmentResponseCodec(),
              (value: Ros1Pal_detection_msgsStopEnrollmentRequest): bool => value.validValue(),
              137,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_detection_msgs/StopEnrollment incoming request/response owner. */
export class Ros1Pal_detection_msgsStopEnrollmentServer extends
    BoundedServiceServer<Ros1Pal_detection_msgsStopEnrollmentRequest, Ros1Pal_detection_msgsStopEnrollmentResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_detection_msgsStopEnrollmentRequestCodec(),
              new Ros1Pal_detection_msgsStopEnrollmentResponseCodec(),
              (value: Ros1Pal_detection_msgsStopEnrollmentResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** @brief Complete custom pal_interaction_msgs/ASRFile client. Role aliases never imply grants. */
export class Ros1Pal_interaction_msgsASRFileClient extends
    BoundedActionClient<Ros1Pal_interaction_msgsASRFileGoal, Ros1Pal_interaction_msgsASRFileResult, Ros1Pal_interaction_msgsASRFileFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_interaction_msgsASRFileGoalCodec(),
              new Ros1Pal_interaction_msgsASRFileResultCodec(),
              new Ros1Pal_interaction_msgsASRFileFeedbackCodec(),
              (value: Ros1Pal_interaction_msgsASRFileGoal): bool => value.validValue(),
              5104,
              1209,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_interaction_msgs/ASRFile server with matching-ID response codecs. */
export class Ros1Pal_interaction_msgsASRFileServer extends
    BoundedActionServer<Ros1Pal_interaction_msgsASRFileGoal, Ros1Pal_interaction_msgsASRFileResult, Ros1Pal_interaction_msgsASRFileFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_interaction_msgsASRFileGoalCodec(),
              new Ros1Pal_interaction_msgsASRFileResultCodec(),
              new Ros1Pal_interaction_msgsASRFileFeedbackCodec(),
              (value: Ros1Pal_interaction_msgsASRFileResult): bool => value.validValue(),
              (value: Ros1Pal_interaction_msgsASRFileFeedback): bool => value.validValue(),
              396,
              capacity);
    }
}

/** @brief Complete pal_interaction_msgs/ASRService typed call and real-submit client. */
export class Ros1Pal_interaction_msgsASRServiceClient extends
    BoundedServiceClient<Ros1Pal_interaction_msgsASRServiceRequest, Ros1Pal_interaction_msgsASRServiceResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_interaction_msgsASRServiceRequestCodec(),
              new Ros1Pal_interaction_msgsASRServiceResponseCodec(),
              (value: Ros1Pal_interaction_msgsASRServiceRequest): bool => value.validValue(),
              802,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_interaction_msgs/ASRService incoming request/response owner. */
export class Ros1Pal_interaction_msgsASRServiceServer extends
    BoundedServiceServer<Ros1Pal_interaction_msgsASRServiceRequest, Ros1Pal_interaction_msgsASRServiceResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_interaction_msgsASRServiceRequestCodec(),
              new Ros1Pal_interaction_msgsASRServiceResponseCodec(),
              (value: Ros1Pal_interaction_msgsASRServiceResponse): bool => value.validValue(),
              526,
              capacity);
    }
}

/** @brief Complete custom pal_interaction_msgs/AudioPlay client. Role aliases never imply grants. */
export class Ros1Pal_interaction_msgsAudioPlayClient extends
    BoundedActionClient<Ros1Pal_interaction_msgsAudioPlayGoal, Ros1Pal_interaction_msgsAudioPlayResult, Ros1Pal_interaction_msgsAudioPlayFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_interaction_msgsAudioPlayGoalCodec(),
              new Ros1Pal_interaction_msgsAudioPlayResultCodec(),
              new Ros1Pal_interaction_msgsAudioPlayFeedbackCodec(),
              (value: Ros1Pal_interaction_msgsAudioPlayGoal): bool => value.validValue(),
              0,
              0,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_interaction_msgs/AudioPlay server with matching-ID response codecs. */
export class Ros1Pal_interaction_msgsAudioPlayServer extends
    BoundedActionServer<Ros1Pal_interaction_msgsAudioPlayGoal, Ros1Pal_interaction_msgsAudioPlayResult, Ros1Pal_interaction_msgsAudioPlayFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_interaction_msgsAudioPlayGoalCodec(),
              new Ros1Pal_interaction_msgsAudioPlayResultCodec(),
              new Ros1Pal_interaction_msgsAudioPlayFeedbackCodec(),
              (value: Ros1Pal_interaction_msgsAudioPlayResult): bool => value.validValue(),
              (value: Ros1Pal_interaction_msgsAudioPlayFeedback): bool => value.validValue(),
              133,
              capacity);
    }
}

/** @brief Complete pal_interaction_msgs/GetSpeechDuration typed call and real-submit client. */
export class Ros1Pal_interaction_msgsGetSpeechDurationClient extends
    BoundedServiceClient<Ros1Pal_interaction_msgsGetSpeechDurationRequest, Ros1Pal_interaction_msgsGetSpeechDurationResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_interaction_msgsGetSpeechDurationRequestCodec(),
              new Ros1Pal_interaction_msgsGetSpeechDurationResponseCodec(),
              (value: Ros1Pal_interaction_msgsGetSpeechDurationRequest): bool => value.validValue(),
              2249,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_interaction_msgs/GetSpeechDuration incoming request/response owner. */
export class Ros1Pal_interaction_msgsGetSpeechDurationServer extends
    BoundedServiceServer<Ros1Pal_interaction_msgsGetSpeechDurationRequest, Ros1Pal_interaction_msgsGetSpeechDurationResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_interaction_msgsGetSpeechDurationRequestCodec(),
              new Ros1Pal_interaction_msgsGetSpeechDurationResponseCodec(),
              (value: Ros1Pal_interaction_msgsGetSpeechDurationResponse): bool => value.validValue(),
              2248,
              capacity);
    }
}

/** @brief Complete custom pal_interaction_msgs/Sound client. Role aliases never imply grants. */
export class Ros1Pal_interaction_msgsSoundClient extends
    BoundedActionClient<Ros1Pal_interaction_msgsSoundGoal, Ros1Pal_interaction_msgsSoundResult, Ros1Pal_interaction_msgsSoundFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_interaction_msgsSoundGoalCodec(),
              new Ros1Pal_interaction_msgsSoundResultCodec(),
              new Ros1Pal_interaction_msgsSoundFeedbackCodec(),
              (value: Ros1Pal_interaction_msgsSoundGoal): bool => value.validValue(),
              132,
              0,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_interaction_msgs/Sound server with matching-ID response codecs. */
export class Ros1Pal_interaction_msgsSoundServer extends
    BoundedActionServer<Ros1Pal_interaction_msgsSoundGoal, Ros1Pal_interaction_msgsSoundResult, Ros1Pal_interaction_msgsSoundFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_interaction_msgsSoundGoalCodec(),
              new Ros1Pal_interaction_msgsSoundResultCodec(),
              new Ros1Pal_interaction_msgsSoundFeedbackCodec(),
              (value: Ros1Pal_interaction_msgsSoundResult): bool => value.validValue(),
              (value: Ros1Pal_interaction_msgsSoundFeedback): bool => value.validValue(),
              272,
              capacity);
    }
}

/** @brief Complete pal_interaction_msgs/SoundLocalisationService typed call and real-submit client. */
export class Ros1Pal_interaction_msgsSoundLocalisationServiceClient extends
    BoundedServiceClient<Ros1Pal_interaction_msgsSoundLocalisationServiceRequest, Ros1Pal_interaction_msgsSoundLocalisationServiceResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_interaction_msgsSoundLocalisationServiceRequestCodec(),
              new Ros1Pal_interaction_msgsSoundLocalisationServiceResponseCodec(),
              (value: Ros1Pal_interaction_msgsSoundLocalisationServiceRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_interaction_msgs/SoundLocalisationService incoming request/response owner. */
export class Ros1Pal_interaction_msgsSoundLocalisationServiceServer extends
    BoundedServiceServer<Ros1Pal_interaction_msgsSoundLocalisationServiceRequest, Ros1Pal_interaction_msgsSoundLocalisationServiceResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_interaction_msgsSoundLocalisationServiceRequestCodec(),
              new Ros1Pal_interaction_msgsSoundLocalisationServiceResponseCodec(),
              (value: Ros1Pal_interaction_msgsSoundLocalisationServiceResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** @brief Complete custom pal_interaction_msgs/Tts client. Role aliases never imply grants. */
export class Ros1Pal_interaction_msgsTtsClient extends
    BoundedActionClient<Ros1Pal_interaction_msgsTtsGoal, Ros1Pal_interaction_msgsTtsResult, Ros1Pal_interaction_msgsTtsFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_interaction_msgsTtsGoalCodec(),
              new Ros1Pal_interaction_msgsTtsResultCodec(),
              new Ros1Pal_interaction_msgsTtsFeedbackCodec(),
              (value: Ros1Pal_interaction_msgsTtsGoal): bool => value.validValue(),
              264,
              4770,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_interaction_msgs/Tts server with matching-ID response codecs. */
export class Ros1Pal_interaction_msgsTtsServer extends
    BoundedActionServer<Ros1Pal_interaction_msgsTtsGoal, Ros1Pal_interaction_msgsTtsResult, Ros1Pal_interaction_msgsTtsFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_interaction_msgsTtsGoalCodec(),
              new Ros1Pal_interaction_msgsTtsResultCodec(),
              new Ros1Pal_interaction_msgsTtsFeedbackCodec(),
              (value: Ros1Pal_interaction_msgsTtsResult): bool => value.validValue(),
              (value: Ros1Pal_interaction_msgsTtsFeedback): bool => value.validValue(),
              2388,
              capacity);
    }
}

/** @brief Complete pal_interaction_msgs/recognizerService typed call and real-submit client. */
export class Ros1Pal_interaction_msgsRecognizerServiceClient extends
    BoundedServiceClient<Ros1Pal_interaction_msgsRecognizerServiceRequest, Ros1Pal_interaction_msgsRecognizerServiceResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_interaction_msgsRecognizerServiceRequestCodec(),
              new Ros1Pal_interaction_msgsRecognizerServiceResponseCodec(),
              (value: Ros1Pal_interaction_msgsRecognizerServiceRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_interaction_msgs/recognizerService incoming request/response owner. */
export class Ros1Pal_interaction_msgsRecognizerServiceServer extends
    BoundedServiceServer<Ros1Pal_interaction_msgsRecognizerServiceRequest, Ros1Pal_interaction_msgsRecognizerServiceResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_interaction_msgsRecognizerServiceRequestCodec(),
              new Ros1Pal_interaction_msgsRecognizerServiceResponseCodec(),
              (value: Ros1Pal_interaction_msgsRecognizerServiceResponse): bool => value.validValue(),
              529,
              capacity);
    }
}

/** @brief Complete pal_motion_model_msgs/GetMotionMap typed call and real-submit client. */
export class Ros1Pal_motion_model_msgsGetMotionMapClient extends
    BoundedServiceClient<Ros1Pal_motion_model_msgsGetMotionMapRequest, Ros1Pal_motion_model_msgsGetMotionMapResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_motion_model_msgsGetMotionMapRequestCodec(),
              new Ros1Pal_motion_model_msgsGetMotionMapResponseCodec(),
              (value: Ros1Pal_motion_model_msgsGetMotionMapRequest): bool => value.validValue(),
              624,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_motion_model_msgs/GetMotionMap incoming request/response owner. */
export class Ros1Pal_motion_model_msgsGetMotionMapServer extends
    BoundedServiceServer<Ros1Pal_motion_model_msgsGetMotionMapRequest, Ros1Pal_motion_model_msgsGetMotionMapResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_motion_model_msgsGetMotionMapRequestCodec(),
              new Ros1Pal_motion_model_msgsGetMotionMapResponseCodec(),
              (value: Ros1Pal_motion_model_msgsGetMotionMapResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/Acknowledgment typed call and real-submit client. */
export class Ros1Pal_navigation_msgsAcknowledgmentClient extends
    BoundedServiceClient<Ros1Pal_navigation_msgsAcknowledgmentRequest, Ros1Pal_navigation_msgsAcknowledgmentResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_navigation_msgsAcknowledgmentRequestCodec(),
              new Ros1Pal_navigation_msgsAcknowledgmentResponseCodec(),
              (value: Ros1Pal_navigation_msgsAcknowledgmentRequest): bool => value.validValue(),
              133,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/Acknowledgment incoming request/response owner. */
export class Ros1Pal_navigation_msgsAcknowledgmentServer extends
    BoundedServiceServer<Ros1Pal_navigation_msgsAcknowledgmentRequest, Ros1Pal_navigation_msgsAcknowledgmentResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsAcknowledgmentRequestCodec(),
              new Ros1Pal_navigation_msgsAcknowledgmentResponseCodec(),
              (value: Ros1Pal_navigation_msgsAcknowledgmentResponse): bool => value.validValue(),
              132,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/ChangeBuilding typed call and real-submit client. */
export class Ros1Pal_navigation_msgsChangeBuildingClient extends
    BoundedServiceClient<Ros1Pal_navigation_msgsChangeBuildingRequest, Ros1Pal_navigation_msgsChangeBuildingResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_navigation_msgsChangeBuildingRequestCodec(),
              new Ros1Pal_navigation_msgsChangeBuildingResponseCodec(),
              (value: Ros1Pal_navigation_msgsChangeBuildingRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/ChangeBuilding incoming request/response owner. */
export class Ros1Pal_navigation_msgsChangeBuildingServer extends
    BoundedServiceServer<Ros1Pal_navigation_msgsChangeBuildingRequest, Ros1Pal_navigation_msgsChangeBuildingResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsChangeBuildingRequestCodec(),
              new Ros1Pal_navigation_msgsChangeBuildingResponseCodec(),
              (value: Ros1Pal_navigation_msgsChangeBuildingResponse): bool => value.validValue(),
              264,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/ChangeMap typed call and real-submit client. */
export class Ros1Pal_navigation_msgsChangeMapClient extends
    BoundedServiceClient<Ros1Pal_navigation_msgsChangeMapRequest, Ros1Pal_navigation_msgsChangeMapResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_navigation_msgsChangeMapRequestCodec(),
              new Ros1Pal_navigation_msgsChangeMapResponseCodec(),
              (value: Ros1Pal_navigation_msgsChangeMapRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/ChangeMap incoming request/response owner. */
export class Ros1Pal_navigation_msgsChangeMapServer extends
    BoundedServiceServer<Ros1Pal_navigation_msgsChangeMapRequest, Ros1Pal_navigation_msgsChangeMapResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsChangeMapRequestCodec(),
              new Ros1Pal_navigation_msgsChangeMapResponseCodec(),
              (value: Ros1Pal_navigation_msgsChangeMapResponse): bool => value.validValue(),
              480,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/ChangeSyncMap typed call and real-submit client. */
export class Ros1Pal_navigation_msgsChangeSyncMapClient extends
    BoundedServiceClient<Ros1Pal_navigation_msgsChangeSyncMapRequest, Ros1Pal_navigation_msgsChangeSyncMapResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_navigation_msgsChangeSyncMapRequestCodec(),
              new Ros1Pal_navigation_msgsChangeSyncMapResponseCodec(),
              (value: Ros1Pal_navigation_msgsChangeSyncMapRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/ChangeSyncMap incoming request/response owner. */
export class Ros1Pal_navigation_msgsChangeSyncMapServer extends
    BoundedServiceServer<Ros1Pal_navigation_msgsChangeSyncMapRequest, Ros1Pal_navigation_msgsChangeSyncMapResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsChangeSyncMapRequestCodec(),
              new Ros1Pal_navigation_msgsChangeSyncMapResponseCodec(),
              (value: Ros1Pal_navigation_msgsChangeSyncMapResponse): bool => value.validValue(),
              2728,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/DisableEmergency typed call and real-submit client. */
export class Ros1Pal_navigation_msgsDisableEmergencyClient extends
    BoundedServiceClient<Ros1Pal_navigation_msgsDisableEmergencyRequest, Ros1Pal_navigation_msgsDisableEmergencyResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_navigation_msgsDisableEmergencyRequestCodec(),
              new Ros1Pal_navigation_msgsDisableEmergencyResponseCodec(),
              (value: Ros1Pal_navigation_msgsDisableEmergencyRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/DisableEmergency incoming request/response owner. */
export class Ros1Pal_navigation_msgsDisableEmergencyServer extends
    BoundedServiceServer<Ros1Pal_navigation_msgsDisableEmergencyRequest, Ros1Pal_navigation_msgsDisableEmergencyResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsDisableEmergencyRequestCodec(),
              new Ros1Pal_navigation_msgsDisableEmergencyResponseCodec(),
              (value: Ros1Pal_navigation_msgsDisableEmergencyResponse): bool => value.validValue(),
              9,
              capacity);
    }
}

/** @brief Complete custom pal_navigation_msgs/ExecuteParking client. Role aliases never imply grants. */
export class Ros1Pal_navigation_msgsExecuteParkingClient extends
    BoundedActionClient<Ros1Pal_navigation_msgsExecuteParkingGoal, Ros1Pal_navigation_msgsExecuteParkingResult, Ros1Pal_navigation_msgsExecuteParkingFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_navigation_msgsExecuteParkingGoalCodec(),
              new Ros1Pal_navigation_msgsExecuteParkingResultCodec(),
              new Ros1Pal_navigation_msgsExecuteParkingFeedbackCodec(),
              (value: Ros1Pal_navigation_msgsExecuteParkingGoal): bool => value.validValue(),
              0,
              0,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_navigation_msgs/ExecuteParking server with matching-ID response codecs. */
export class Ros1Pal_navigation_msgsExecuteParkingServer extends
    BoundedActionServer<Ros1Pal_navigation_msgsExecuteParkingGoal, Ros1Pal_navigation_msgsExecuteParkingResult, Ros1Pal_navigation_msgsExecuteParkingFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsExecuteParkingGoalCodec(),
              new Ros1Pal_navigation_msgsExecuteParkingResultCodec(),
              new Ros1Pal_navigation_msgsExecuteParkingFeedbackCodec(),
              (value: Ros1Pal_navigation_msgsExecuteParkingResult): bool => value.validValue(),
              (value: Ros1Pal_navigation_msgsExecuteParkingFeedback): bool => value.validValue(),
              281,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/FinalApproachPose typed call and real-submit client. */
export class Ros1Pal_navigation_msgsFinalApproachPoseClient extends
    BoundedServiceClient<Ros1Pal_navigation_msgsFinalApproachPoseRequest, Ros1Pal_navigation_msgsFinalApproachPoseResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_navigation_msgsFinalApproachPoseRequestCodec(),
              new Ros1Pal_navigation_msgsFinalApproachPoseResponseCodec(),
              (value: Ros1Pal_navigation_msgsFinalApproachPoseRequest): bool => value.validValue(),
              1,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/FinalApproachPose incoming request/response owner. */
export class Ros1Pal_navigation_msgsFinalApproachPoseServer extends
    BoundedServiceServer<Ros1Pal_navigation_msgsFinalApproachPoseRequest, Ros1Pal_navigation_msgsFinalApproachPoseResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsFinalApproachPoseRequestCodec(),
              new Ros1Pal_navigation_msgsFinalApproachPoseResponseCodec(),
              (value: Ros1Pal_navigation_msgsFinalApproachPoseResponse): bool => value.validValue(),
              56,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/GetMapConfiguration typed call and real-submit client. */
export class Ros1Pal_navigation_msgsGetMapConfigurationClient extends
    BoundedServiceClient<Ros1Pal_navigation_msgsGetMapConfigurationRequest, Ros1Pal_navigation_msgsGetMapConfigurationResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_navigation_msgsGetMapConfigurationRequestCodec(),
              new Ros1Pal_navigation_msgsGetMapConfigurationResponseCodec(),
              (value: Ros1Pal_navigation_msgsGetMapConfigurationRequest): bool => value.validValue(),
              15953,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/GetMapConfiguration incoming request/response owner. */
export class Ros1Pal_navigation_msgsGetMapConfigurationServer extends
    BoundedServiceServer<Ros1Pal_navigation_msgsGetMapConfigurationRequest, Ros1Pal_navigation_msgsGetMapConfigurationResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsGetMapConfigurationRequestCodec(),
              new Ros1Pal_navigation_msgsGetMapConfigurationResponseCodec(),
              (value: Ros1Pal_navigation_msgsGetMapConfigurationResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/GetNodes typed call and real-submit client. */
export class Ros1Pal_navigation_msgsGetNodesClient extends BoundedServiceClient<Ros1Pal_navigation_msgsGetNodesRequest, Ros1Pal_navigation_msgsGetNodesResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_navigation_msgsGetNodesRequestCodec(),
              new Ros1Pal_navigation_msgsGetNodesResponseCodec(),
              (value: Ros1Pal_navigation_msgsGetNodesRequest): bool => value.validValue(),
              2,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/GetNodes incoming request/response owner. */
export class Ros1Pal_navigation_msgsGetNodesServer extends BoundedServiceServer<Ros1Pal_navigation_msgsGetNodesRequest, Ros1Pal_navigation_msgsGetNodesResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsGetNodesRequestCodec(),
              new Ros1Pal_navigation_msgsGetNodesResponseCodec(),
              (value: Ros1Pal_navigation_msgsGetNodesResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/GetPOI typed call and real-submit client. */
export class Ros1Pal_navigation_msgsGetPOIClient extends BoundedServiceClient<Ros1Pal_navigation_msgsGetPOIRequest, Ros1Pal_navigation_msgsGetPOIResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_navigation_msgsGetPOIRequestCodec(),
              new Ros1Pal_navigation_msgsGetPOIResponseCodec(),
              (value: Ros1Pal_navigation_msgsGetPOIRequest): bool => value.validValue(),
              1664,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/GetPOI incoming request/response owner. */
export class Ros1Pal_navigation_msgsGetPOIServer extends BoundedServiceServer<Ros1Pal_navigation_msgsGetPOIRequest, Ros1Pal_navigation_msgsGetPOIResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsGetPOIRequestCodec(),
              new Ros1Pal_navigation_msgsGetPOIResponseCodec(),
              (value: Ros1Pal_navigation_msgsGetPOIResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/GetSubMap typed call and real-submit client. */
export class Ros1Pal_navigation_msgsGetSubMapClient extends
    BoundedServiceClient<Ros1Pal_navigation_msgsGetSubMapRequest, Ros1Pal_navigation_msgsGetSubMapResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_navigation_msgsGetSubMapRequestCodec(),
              new Ros1Pal_navigation_msgsGetSubMapResponseCodec(),
              (value: Ros1Pal_navigation_msgsGetSubMapRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/GetSubMap incoming request/response owner. */
export class Ros1Pal_navigation_msgsGetSubMapServer extends
    BoundedServiceServer<Ros1Pal_navigation_msgsGetSubMapRequest, Ros1Pal_navigation_msgsGetSubMapResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsGetSubMapRequestCodec(),
              new Ros1Pal_navigation_msgsGetSubMapResponseCodec(),
              (value: Ros1Pal_navigation_msgsGetSubMapResponse): bool => value.validValue(),
              1,
              capacity);
    }
}

/** @brief Complete custom pal_navigation_msgs/GoTo client. Role aliases never imply grants. */
export class Ros1Pal_navigation_msgsGoToClient extends
    BoundedActionClient<Ros1Pal_navigation_msgsGoToGoal, Ros1Pal_navigation_msgsGoToResult, Ros1Pal_navigation_msgsGoToFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_navigation_msgsGoToGoalCodec(),
              new Ros1Pal_navigation_msgsGoToResultCodec(),
              new Ros1Pal_navigation_msgsGoToFeedbackCodec(),
              (value: Ros1Pal_navigation_msgsGoToGoal): bool => value.validValue(),
              0,
              200,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_navigation_msgs/GoTo server with matching-ID response codecs. */
export class Ros1Pal_navigation_msgsGoToServer extends
    BoundedActionServer<Ros1Pal_navigation_msgsGoToGoal, Ros1Pal_navigation_msgsGoToResult, Ros1Pal_navigation_msgsGoToFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsGoToGoalCodec(),
              new Ros1Pal_navigation_msgsGoToResultCodec(),
              new Ros1Pal_navigation_msgsGoToFeedbackCodec(),
              (value: Ros1Pal_navigation_msgsGoToResult): bool => value.validValue(),
              (value: Ros1Pal_navigation_msgsGoToFeedback): bool => value.validValue(),
              200,
              capacity);
    }
}

/** @brief Complete custom pal_navigation_msgs/GoToPOI client. Role aliases never imply grants. */
export class Ros1Pal_navigation_msgsGoToPOIClient extends
    BoundedActionClient<Ros1Pal_navigation_msgsGoToPOIGoal, Ros1Pal_navigation_msgsGoToPOIResult, Ros1Pal_navigation_msgsGoToPOIFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_navigation_msgsGoToPOIGoalCodec(),
              new Ros1Pal_navigation_msgsGoToPOIResultCodec(),
              new Ros1Pal_navigation_msgsGoToPOIFeedbackCodec(),
              (value: Ros1Pal_navigation_msgsGoToPOIGoal): bool => value.validValue(),
              0,
              200,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_navigation_msgs/GoToPOI server with matching-ID response codecs. */
export class Ros1Pal_navigation_msgsGoToPOIServer extends
    BoundedActionServer<Ros1Pal_navigation_msgsGoToPOIGoal, Ros1Pal_navigation_msgsGoToPOIResult, Ros1Pal_navigation_msgsGoToPOIFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsGoToPOIGoalCodec(),
              new Ros1Pal_navigation_msgsGoToPOIResultCodec(),
              new Ros1Pal_navigation_msgsGoToPOIFeedbackCodec(),
              (value: Ros1Pal_navigation_msgsGoToPOIResult): bool => value.validValue(),
              (value: Ros1Pal_navigation_msgsGoToPOIFeedback): bool => value.validValue(),
              132,
              capacity);
    }
}

/** @brief Complete custom pal_navigation_msgs/JoyPriority client. Role aliases never imply grants. */
export class Ros1Pal_navigation_msgsJoyPriorityClient extends
    BoundedActionClient<Ros1Pal_navigation_msgsJoyPriorityGoal, Ros1Pal_navigation_msgsJoyPriorityResult, Ros1Pal_navigation_msgsJoyPriorityFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_navigation_msgsJoyPriorityGoalCodec(),
              new Ros1Pal_navigation_msgsJoyPriorityResultCodec(),
              new Ros1Pal_navigation_msgsJoyPriorityFeedbackCodec(),
              (value: Ros1Pal_navigation_msgsJoyPriorityGoal): bool => value.validValue(),
              0,
              0,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_navigation_msgs/JoyPriority server with matching-ID response codecs. */
export class Ros1Pal_navigation_msgsJoyPriorityServer extends
    BoundedActionServer<Ros1Pal_navigation_msgsJoyPriorityGoal, Ros1Pal_navigation_msgsJoyPriorityResult, Ros1Pal_navigation_msgsJoyPriorityFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsJoyPriorityGoalCodec(),
              new Ros1Pal_navigation_msgsJoyPriorityResultCodec(),
              new Ros1Pal_navigation_msgsJoyPriorityFeedbackCodec(),
              (value: Ros1Pal_navigation_msgsJoyPriorityResult): bool => value.validValue(),
              (value: Ros1Pal_navigation_msgsJoyPriorityFeedback): bool => value.validValue(),
              0,
              capacity);
    }
}

/** @brief Complete custom pal_navigation_msgs/JoyTurbo client. Role aliases never imply grants. */
export class Ros1Pal_navigation_msgsJoyTurboClient extends
    BoundedActionClient<Ros1Pal_navigation_msgsJoyTurboGoal, Ros1Pal_navigation_msgsJoyTurboResult, Ros1Pal_navigation_msgsJoyTurboFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_navigation_msgsJoyTurboGoalCodec(),
              new Ros1Pal_navigation_msgsJoyTurboResultCodec(),
              new Ros1Pal_navigation_msgsJoyTurboFeedbackCodec(),
              (value: Ros1Pal_navigation_msgsJoyTurboGoal): bool => value.validValue(),
              0,
              0,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_navigation_msgs/JoyTurbo server with matching-ID response codecs. */
export class Ros1Pal_navigation_msgsJoyTurboServer extends
    BoundedActionServer<Ros1Pal_navigation_msgsJoyTurboGoal, Ros1Pal_navigation_msgsJoyTurboResult, Ros1Pal_navigation_msgsJoyTurboFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsJoyTurboGoalCodec(),
              new Ros1Pal_navigation_msgsJoyTurboResultCodec(),
              new Ros1Pal_navigation_msgsJoyTurboFeedbackCodec(),
              (value: Ros1Pal_navigation_msgsJoyTurboResult): bool => value.validValue(),
              (value: Ros1Pal_navigation_msgsJoyTurboFeedback): bool => value.validValue(),
              0,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/ListMaps typed call and real-submit client. */
export class Ros1Pal_navigation_msgsListMapsClient extends BoundedServiceClient<Ros1Pal_navigation_msgsListMapsRequest, Ros1Pal_navigation_msgsListMapsResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_navigation_msgsListMapsRequestCodec(),
              new Ros1Pal_navigation_msgsListMapsResponseCodec(),
              (value: Ros1Pal_navigation_msgsListMapsRequest): bool => value.validValue(),
              2117,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/ListMaps incoming request/response owner. */
export class Ros1Pal_navigation_msgsListMapsServer extends BoundedServiceServer<Ros1Pal_navigation_msgsListMapsRequest, Ros1Pal_navigation_msgsListMapsResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsListMapsRequestCodec(),
              new Ros1Pal_navigation_msgsListMapsResponseCodec(),
              (value: Ros1Pal_navigation_msgsListMapsResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/RenameMap typed call and real-submit client. */
export class Ros1Pal_navigation_msgsRenameMapClient extends
    BoundedServiceClient<Ros1Pal_navigation_msgsRenameMapRequest, Ros1Pal_navigation_msgsRenameMapResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_navigation_msgsRenameMapRequestCodec(),
              new Ros1Pal_navigation_msgsRenameMapResponseCodec(),
              (value: Ros1Pal_navigation_msgsRenameMapRequest): bool => value.validValue(),
              133,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/RenameMap incoming request/response owner. */
export class Ros1Pal_navigation_msgsRenameMapServer extends
    BoundedServiceServer<Ros1Pal_navigation_msgsRenameMapRequest, Ros1Pal_navigation_msgsRenameMapResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsRenameMapRequestCodec(),
              new Ros1Pal_navigation_msgsRenameMapResponseCodec(),
              (value: Ros1Pal_navigation_msgsRenameMapResponse): bool => value.validValue(),
              264,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/SafetyZone typed call and real-submit client. */
export class Ros1Pal_navigation_msgsSafetyZoneClient extends
    BoundedServiceClient<Ros1Pal_navigation_msgsSafetyZoneRequest, Ros1Pal_navigation_msgsSafetyZoneResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_navigation_msgsSafetyZoneRequestCodec(),
              new Ros1Pal_navigation_msgsSafetyZoneResponseCodec(),
              (value: Ros1Pal_navigation_msgsSafetyZoneRequest): bool => value.validValue(),
              34,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/SafetyZone incoming request/response owner. */
export class Ros1Pal_navigation_msgsSafetyZoneServer extends
    BoundedServiceServer<Ros1Pal_navigation_msgsSafetyZoneRequest, Ros1Pal_navigation_msgsSafetyZoneResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsSafetyZoneRequestCodec(),
              new Ros1Pal_navigation_msgsSafetyZoneResponseCodec(),
              (value: Ros1Pal_navigation_msgsSafetyZoneResponse): bool => value.validValue(),
              28,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/SaveMap typed call and real-submit client. */
export class Ros1Pal_navigation_msgsSaveMapClient extends BoundedServiceClient<Ros1Pal_navigation_msgsSaveMapRequest, Ros1Pal_navigation_msgsSaveMapResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_navigation_msgsSaveMapRequestCodec(),
              new Ros1Pal_navigation_msgsSaveMapResponseCodec(),
              (value: Ros1Pal_navigation_msgsSaveMapRequest): bool => value.validValue(),
              397,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/SaveMap incoming request/response owner. */
export class Ros1Pal_navigation_msgsSaveMapServer extends BoundedServiceServer<Ros1Pal_navigation_msgsSaveMapRequest, Ros1Pal_navigation_msgsSaveMapResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsSaveMapRequestCodec(),
              new Ros1Pal_navigation_msgsSaveMapResponseCodec(),
              (value: Ros1Pal_navigation_msgsSaveMapResponse): bool => value.validValue(),
              132,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/SetMapConfiguration typed call and real-submit client. */
export class Ros1Pal_navigation_msgsSetMapConfigurationClient extends
    BoundedServiceClient<Ros1Pal_navigation_msgsSetMapConfigurationRequest, Ros1Pal_navigation_msgsSetMapConfigurationResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_navigation_msgsSetMapConfigurationRequestCodec(),
              new Ros1Pal_navigation_msgsSetMapConfigurationResponseCodec(),
              (value: Ros1Pal_navigation_msgsSetMapConfigurationRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/SetMapConfiguration incoming request/response owner. */
export class Ros1Pal_navigation_msgsSetMapConfigurationServer extends
    BoundedServiceServer<Ros1Pal_navigation_msgsSetMapConfigurationRequest, Ros1Pal_navigation_msgsSetMapConfigurationResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsSetMapConfigurationRequestCodec(),
              new Ros1Pal_navigation_msgsSetMapConfigurationResponseCodec(),
              (value: Ros1Pal_navigation_msgsSetMapConfigurationResponse): bool => value.validValue(),
              15953,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/SetPOI typed call and real-submit client. */
export class Ros1Pal_navigation_msgsSetPOIClient extends BoundedServiceClient<Ros1Pal_navigation_msgsSetPOIRequest, Ros1Pal_navigation_msgsSetPOIResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_navigation_msgsSetPOIRequestCodec(),
              new Ros1Pal_navigation_msgsSetPOIResponseCodec(),
              (value: Ros1Pal_navigation_msgsSetPOIRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/SetPOI incoming request/response owner. */
export class Ros1Pal_navigation_msgsSetPOIServer extends BoundedServiceServer<Ros1Pal_navigation_msgsSetPOIRequest, Ros1Pal_navigation_msgsSetPOIResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsSetPOIRequestCodec(),
              new Ros1Pal_navigation_msgsSetPOIResponseCodec(),
              (value: Ros1Pal_navigation_msgsSetPOIResponse): bool => value.validValue(),
              1664,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/SetSubMapFloor typed call and real-submit client. */
export class Ros1Pal_navigation_msgsSetSubMapFloorClient extends
    BoundedServiceClient<Ros1Pal_navigation_msgsSetSubMapFloorRequest, Ros1Pal_navigation_msgsSetSubMapFloorResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_navigation_msgsSetSubMapFloorRequestCodec(),
              new Ros1Pal_navigation_msgsSetSubMapFloorResponseCodec(),
              (value: Ros1Pal_navigation_msgsSetSubMapFloorRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/SetSubMapFloor incoming request/response owner. */
export class Ros1Pal_navigation_msgsSetSubMapFloorServer extends
    BoundedServiceServer<Ros1Pal_navigation_msgsSetSubMapFloorRequest, Ros1Pal_navigation_msgsSetSubMapFloorResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsSetSubMapFloorRequestCodec(),
              new Ros1Pal_navigation_msgsSetSubMapFloorResponseCodec(),
              (value: Ros1Pal_navigation_msgsSetSubMapFloorResponse): bool => value.validValue(),
              2,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/VisualLocRecognize typed call and real-submit client. */
export class Ros1Pal_navigation_msgsVisualLocRecognizeClient extends
    BoundedServiceClient<Ros1Pal_navigation_msgsVisualLocRecognizeRequest, Ros1Pal_navigation_msgsVisualLocRecognizeResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_navigation_msgsVisualLocRecognizeRequestCodec(),
              new Ros1Pal_navigation_msgsVisualLocRecognizeResponseCodec(),
              (value: Ros1Pal_navigation_msgsVisualLocRecognizeRequest): bool => value.validValue(),
              497,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_navigation_msgs/VisualLocRecognize incoming request/response owner. */
export class Ros1Pal_navigation_msgsVisualLocRecognizeServer extends
    BoundedServiceServer<Ros1Pal_navigation_msgsVisualLocRecognizeRequest, Ros1Pal_navigation_msgsVisualLocRecognizeResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsVisualLocRecognizeRequestCodec(),
              new Ros1Pal_navigation_msgsVisualLocRecognizeResponseCodec(),
              (value: Ros1Pal_navigation_msgsVisualLocRecognizeResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** @brief Complete custom pal_navigation_msgs/VisualTraining client. Role aliases never imply grants. */
export class Ros1Pal_navigation_msgsVisualTrainingClient extends
    BoundedActionClient<Ros1Pal_navigation_msgsVisualTrainingGoal, Ros1Pal_navigation_msgsVisualTrainingResult, Ros1Pal_navigation_msgsVisualTrainingFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_navigation_msgsVisualTrainingGoalCodec(),
              new Ros1Pal_navigation_msgsVisualTrainingResultCodec(),
              new Ros1Pal_navigation_msgsVisualTrainingFeedbackCodec(),
              (value: Ros1Pal_navigation_msgsVisualTrainingGoal): bool => value.validValue(),
              0,
              0,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_navigation_msgs/VisualTraining server with matching-ID response codecs. */
export class Ros1Pal_navigation_msgsVisualTrainingServer extends
    BoundedActionServer<Ros1Pal_navigation_msgsVisualTrainingGoal, Ros1Pal_navigation_msgsVisualTrainingResult, Ros1Pal_navigation_msgsVisualTrainingFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_navigation_msgsVisualTrainingGoalCodec(),
              new Ros1Pal_navigation_msgsVisualTrainingResultCodec(),
              new Ros1Pal_navigation_msgsVisualTrainingFeedbackCodec(),
              (value: Ros1Pal_navigation_msgsVisualTrainingResult): bool => value.validValue(),
              (value: Ros1Pal_navigation_msgsVisualTrainingFeedback): bool => value.validValue(),
              133,
              capacity);
    }
}

/** @brief Complete pal_video_recording_msgs/StartRecording typed call and real-submit client. */
export class Ros1Pal_video_recording_msgsStartRecordingClient extends
    BoundedServiceClient<Ros1Pal_video_recording_msgsStartRecordingRequest, Ros1Pal_video_recording_msgsStartRecordingResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_video_recording_msgsStartRecordingRequestCodec(),
              new Ros1Pal_video_recording_msgsStartRecordingResponseCodec(),
              (value: Ros1Pal_video_recording_msgsStartRecordingRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_video_recording_msgs/StartRecording incoming request/response owner. */
export class Ros1Pal_video_recording_msgsStartRecordingServer extends
    BoundedServiceServer<Ros1Pal_video_recording_msgsStartRecordingRequest, Ros1Pal_video_recording_msgsStartRecordingResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_video_recording_msgsStartRecordingRequestCodec(),
              new Ros1Pal_video_recording_msgsStartRecordingResponseCodec(),
              (value: Ros1Pal_video_recording_msgsStartRecordingResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** @brief Complete pal_video_recording_msgs/StopRecording typed call and real-submit client. */
export class Ros1Pal_video_recording_msgsStopRecordingClient extends
    BoundedServiceClient<Ros1Pal_video_recording_msgsStopRecordingRequest, Ros1Pal_video_recording_msgsStopRecordingResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_video_recording_msgsStopRecordingRequestCodec(),
              new Ros1Pal_video_recording_msgsStopRecordingResponseCodec(),
              (value: Ros1Pal_video_recording_msgsStopRecordingRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_video_recording_msgs/StopRecording incoming request/response owner. */
export class Ros1Pal_video_recording_msgsStopRecordingServer extends
    BoundedServiceServer<Ros1Pal_video_recording_msgsStopRecordingRequest, Ros1Pal_video_recording_msgsStopRecordingResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_video_recording_msgsStopRecordingRequestCodec(),
              new Ros1Pal_video_recording_msgsStopRecordingResponseCodec(),
              (value: Ros1Pal_video_recording_msgsStopRecordingResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** @brief Complete custom pal_vision_msgs/FaceRecognition client. Role aliases never imply grants. */
export class Ros1Pal_vision_msgsFaceRecognitionClient extends
    BoundedActionClient<Ros1Pal_vision_msgsFaceRecognitionGoal, Ros1Pal_vision_msgsFaceRecognitionResult, Ros1Pal_vision_msgsFaceRecognitionFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_vision_msgsFaceRecognitionGoalCodec(),
              new Ros1Pal_vision_msgsFaceRecognitionResultCodec(),
              new Ros1Pal_vision_msgsFaceRecognitionFeedbackCodec(),
              (value: Ros1Pal_vision_msgsFaceRecognitionGoal): bool => value.validValue(),
              2185,
              2185,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_vision_msgs/FaceRecognition server with matching-ID response codecs. */
export class Ros1Pal_vision_msgsFaceRecognitionServer extends
    BoundedActionServer<Ros1Pal_vision_msgsFaceRecognitionGoal, Ros1Pal_vision_msgsFaceRecognitionResult, Ros1Pal_vision_msgsFaceRecognitionFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_vision_msgsFaceRecognitionGoalCodec(),
              new Ros1Pal_vision_msgsFaceRecognitionResultCodec(),
              new Ros1Pal_vision_msgsFaceRecognitionFeedbackCodec(),
              (value: Ros1Pal_vision_msgsFaceRecognitionResult): bool => value.validValue(),
              (value: Ros1Pal_vision_msgsFaceRecognitionFeedback): bool => value.validValue(),
              133,
              capacity);
    }
}

/** @brief Complete pal_vision_msgs/FaceTrackingStart typed call and real-submit client. */
export class Ros1Pal_vision_msgsFaceTrackingStartClient extends
    BoundedServiceClient<Ros1Pal_vision_msgsFaceTrackingStartRequest, Ros1Pal_vision_msgsFaceTrackingStartResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_vision_msgsFaceTrackingStartRequestCodec(),
              new Ros1Pal_vision_msgsFaceTrackingStartResponseCodec(),
              (value: Ros1Pal_vision_msgsFaceTrackingStartRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_vision_msgs/FaceTrackingStart incoming request/response owner. */
export class Ros1Pal_vision_msgsFaceTrackingStartServer extends
    BoundedServiceServer<Ros1Pal_vision_msgsFaceTrackingStartRequest, Ros1Pal_vision_msgsFaceTrackingStartResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_vision_msgsFaceTrackingStartRequestCodec(),
              new Ros1Pal_vision_msgsFaceTrackingStartResponseCodec(),
              (value: Ros1Pal_vision_msgsFaceTrackingStartResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** @brief Complete pal_vision_msgs/FaceTrackingStop typed call and real-submit client. */
export class Ros1Pal_vision_msgsFaceTrackingStopClient extends
    BoundedServiceClient<Ros1Pal_vision_msgsFaceTrackingStopRequest, Ros1Pal_vision_msgsFaceTrackingStopResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_vision_msgsFaceTrackingStopRequestCodec(),
              new Ros1Pal_vision_msgsFaceTrackingStopResponseCodec(),
              (value: Ros1Pal_vision_msgsFaceTrackingStopRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_vision_msgs/FaceTrackingStop incoming request/response owner. */
export class Ros1Pal_vision_msgsFaceTrackingStopServer extends
    BoundedServiceServer<Ros1Pal_vision_msgsFaceTrackingStopRequest, Ros1Pal_vision_msgsFaceTrackingStopResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_vision_msgsFaceTrackingStopRequestCodec(),
              new Ros1Pal_vision_msgsFaceTrackingStopResponseCodec(),
              (value: Ros1Pal_vision_msgsFaceTrackingStopResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** @brief Complete pal_vision_msgs/FollowMeStart typed call and real-submit client. */
export class Ros1Pal_vision_msgsFollowMeStartClient extends
    BoundedServiceClient<Ros1Pal_vision_msgsFollowMeStartRequest, Ros1Pal_vision_msgsFollowMeStartResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_vision_msgsFollowMeStartRequestCodec(),
              new Ros1Pal_vision_msgsFollowMeStartResponseCodec(),
              (value: Ros1Pal_vision_msgsFollowMeStartRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_vision_msgs/FollowMeStart incoming request/response owner. */
export class Ros1Pal_vision_msgsFollowMeStartServer extends
    BoundedServiceServer<Ros1Pal_vision_msgsFollowMeStartRequest, Ros1Pal_vision_msgsFollowMeStartResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_vision_msgsFollowMeStartRequestCodec(),
              new Ros1Pal_vision_msgsFollowMeStartResponseCodec(),
              (value: Ros1Pal_vision_msgsFollowMeStartResponse): bool => value.validValue(),
              4,
              capacity);
    }
}

/** @brief Complete pal_vision_msgs/FollowMeStop typed call and real-submit client. */
export class Ros1Pal_vision_msgsFollowMeStopClient extends BoundedServiceClient<Ros1Pal_vision_msgsFollowMeStopRequest, Ros1Pal_vision_msgsFollowMeStopResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_vision_msgsFollowMeStopRequestCodec(),
              new Ros1Pal_vision_msgsFollowMeStopResponseCodec(),
              (value: Ros1Pal_vision_msgsFollowMeStopRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_vision_msgs/FollowMeStop incoming request/response owner. */
export class Ros1Pal_vision_msgsFollowMeStopServer extends BoundedServiceServer<Ros1Pal_vision_msgsFollowMeStopRequest, Ros1Pal_vision_msgsFollowMeStopResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_vision_msgsFollowMeStopRequestCodec(),
              new Ros1Pal_vision_msgsFollowMeStopResponseCodec(),
              (value: Ros1Pal_vision_msgsFollowMeStopResponse): bool => value.validValue(),
              0,
              capacity);
    }
}

/** @brief Complete pal_vision_msgs/LookToPixel typed call and real-submit client. */
export class Ros1Pal_vision_msgsLookToPixelClient extends BoundedServiceClient<Ros1Pal_vision_msgsLookToPixelRequest, Ros1Pal_vision_msgsLookToPixelResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_vision_msgsLookToPixelRequestCodec(),
              new Ros1Pal_vision_msgsLookToPixelResponseCodec(),
              (value: Ros1Pal_vision_msgsLookToPixelRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_vision_msgs/LookToPixel incoming request/response owner. */
export class Ros1Pal_vision_msgsLookToPixelServer extends BoundedServiceServer<Ros1Pal_vision_msgsLookToPixelRequest, Ros1Pal_vision_msgsLookToPixelResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_vision_msgsLookToPixelRequestCodec(),
              new Ros1Pal_vision_msgsLookToPixelResponseCodec(),
              (value: Ros1Pal_vision_msgsLookToPixelResponse): bool => value.validValue(),
              8,
              capacity);
    }
}

/** @brief Complete custom pal_visual_localization_msgs/VisualLocAddPlace client. Role aliases never imply grants. */
export class Ros1Pal_visual_localization_msgsVisualLocAddPlaceClient extends BoundedActionClient<Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal,
                                                                                                 Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult,
                                                                                                 Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalCodec(),
              new Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultCodec(),
              new Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackCodec(),
              (value: Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal): bool => value.validValue(),
              1,
              0,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_visual_localization_msgs/VisualLocAddPlace server with matching-ID response codecs. */
export class Ros1Pal_visual_localization_msgsVisualLocAddPlaceServer extends BoundedActionServer<Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal,
                                                                                                 Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult,
                                                                                                 Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalCodec(),
              new Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultCodec(),
              new Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackCodec(),
              (value: Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult): bool => value.validValue(),
              (value: Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback): bool => value.validValue(),
              0,
              capacity);
    }
}

/** @brief Complete custom pal_visual_localization_msgs/VisualLocRecognize client. Role aliases never imply grants. */
export class Ros1Pal_visual_localization_msgsVisualLocRecognizeClient extends BoundedActionClient<Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal,
                                                                                                  Ros1Pal_visual_localization_msgsVisualLocRecognizeResult,
                                                                                                  Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalCodec(),
              new Ros1Pal_visual_localization_msgsVisualLocRecognizeResultCodec(),
              new Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackCodec(),
              (value: Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal): bool => value.validValue(),
              497,
              0,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_visual_localization_msgs/VisualLocRecognize server with matching-ID response codecs. */
export class Ros1Pal_visual_localization_msgsVisualLocRecognizeServer extends BoundedActionServer<Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal,
                                                                                                  Ros1Pal_visual_localization_msgsVisualLocRecognizeResult,
                                                                                                  Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalCodec(),
              new Ros1Pal_visual_localization_msgsVisualLocRecognizeResultCodec(),
              new Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackCodec(),
              (value: Ros1Pal_visual_localization_msgsVisualLocRecognizeResult): bool => value.validValue(),
              (value: Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback): bool => value.validValue(),
              0,
              capacity);
    }
}

/** @brief Complete pal_walking_msgs/MoveHipFeet typed call and real-submit client. */
export class Ros1Pal_walking_msgsMoveHipFeetClient extends BoundedServiceClient<Ros1Pal_walking_msgsMoveHipFeetRequest, Ros1Pal_walking_msgsMoveHipFeetResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_walking_msgsMoveHipFeetRequestCodec(),
              new Ros1Pal_walking_msgsMoveHipFeetResponseCodec(),
              (value: Ros1Pal_walking_msgsMoveHipFeetRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_walking_msgs/MoveHipFeet incoming request/response owner. */
export class Ros1Pal_walking_msgsMoveHipFeetServer extends BoundedServiceServer<Ros1Pal_walking_msgsMoveHipFeetRequest, Ros1Pal_walking_msgsMoveHipFeetResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_walking_msgsMoveHipFeetRequestCodec(),
              new Ros1Pal_walking_msgsMoveHipFeetResponseCodec(),
              (value: Ros1Pal_walking_msgsMoveHipFeetResponse): bool => value.validValue(),
              1248,
              capacity);
    }
}

/** @brief Complete pal_walking_msgs/Sit typed call and real-submit client. */
export class Ros1Pal_walking_msgsSitClient extends BoundedServiceClient<Ros1Pal_walking_msgsSitRequest, Ros1Pal_walking_msgsSitResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_walking_msgsSitRequestCodec(),
              new Ros1Pal_walking_msgsSitResponseCodec(),
              (value: Ros1Pal_walking_msgsSitRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_walking_msgs/Sit incoming request/response owner. */
export class Ros1Pal_walking_msgsSitServer extends BoundedServiceServer<Ros1Pal_walking_msgsSitRequest, Ros1Pal_walking_msgsSitResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_walking_msgsSitRequestCodec(),
              new Ros1Pal_walking_msgsSitResponseCodec(),
              (value: Ros1Pal_walking_msgsSitResponse): bool => value.validValue(),
              9,
              capacity);
    }
}

/** @brief Complete pal_walking_msgs/StepOver typed call and real-submit client. */
export class Ros1Pal_walking_msgsStepOverClient extends BoundedServiceClient<Ros1Pal_walking_msgsStepOverRequest, Ros1Pal_walking_msgsStepOverResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_walking_msgsStepOverRequestCodec(),
              new Ros1Pal_walking_msgsStepOverResponseCodec(),
              (value: Ros1Pal_walking_msgsStepOverRequest): bool => value.validValue(),
              132,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_walking_msgs/StepOver incoming request/response owner. */
export class Ros1Pal_walking_msgsStepOverServer extends BoundedServiceServer<Ros1Pal_walking_msgsStepOverRequest, Ros1Pal_walking_msgsStepOverResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_walking_msgsStepOverRequestCodec(),
              new Ros1Pal_walking_msgsStepOverResponseCodec(),
              (value: Ros1Pal_walking_msgsStepOverResponse): bool => value.validValue(),
              32,
              capacity);
    }
}

/** @brief Complete pal_walking_msgs/WalkSteps typed call and real-submit client. */
export class Ros1Pal_walking_msgsWalkStepsClient extends BoundedServiceClient<Ros1Pal_walking_msgsWalkStepsRequest, Ros1Pal_walking_msgsWalkStepsResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_walking_msgsWalkStepsRequestCodec(),
              new Ros1Pal_walking_msgsWalkStepsResponseCodec(),
              (value: Ros1Pal_walking_msgsWalkStepsRequest): bool => value.validValue(),
              0,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_walking_msgs/WalkSteps incoming request/response owner. */
export class Ros1Pal_walking_msgsWalkStepsServer extends BoundedServiceServer<Ros1Pal_walking_msgsWalkStepsRequest, Ros1Pal_walking_msgsWalkStepsResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_walking_msgsWalkStepsRequestCodec(),
              new Ros1Pal_walking_msgsWalkStepsResponseCodec(),
              (value: Ros1Pal_walking_msgsWalkStepsResponse): bool => value.validValue(),
              20,
              capacity);
    }
}

/** @brief Complete custom pal_web_msgs/GetUserInput client. Role aliases never imply grants. */
export class Ros1Pal_web_msgsGetUserInputClient extends
    BoundedActionClient<Ros1Pal_web_msgsGetUserInputGoal, Ros1Pal_web_msgsGetUserInputResult, Ros1Pal_web_msgsGetUserInputFeedback>
{
    constructor(api: Api, send: string, cancelOwn: string, feedback: string, result: string, cancelAny: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              send,
              cancelOwn,
              feedback,
              result,
              new Ros1Pal_web_msgsGetUserInputGoalCodec(),
              new Ros1Pal_web_msgsGetUserInputResultCodec(),
              new Ros1Pal_web_msgsGetUserInputFeedbackCodec(),
              (value: Ros1Pal_web_msgsGetUserInputGoal): bool => value.validValue(),
              1192,
              0,
              cancelAny,
              capacity);
    }
}

/** @brief Complete custom pal_web_msgs/GetUserInput server with matching-ID response codecs. */
export class Ros1Pal_web_msgsGetUserInputServer extends
    BoundedActionServer<Ros1Pal_web_msgsGetUserInputGoal, Ros1Pal_web_msgsGetUserInputResult, Ros1Pal_web_msgsGetUserInputFeedback>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_web_msgsGetUserInputGoalCodec(),
              new Ros1Pal_web_msgsGetUserInputResultCodec(),
              new Ros1Pal_web_msgsGetUserInputFeedbackCodec(),
              (value: Ros1Pal_web_msgsGetUserInputResult): bool => value.validValue(),
              (value: Ros1Pal_web_msgsGetUserInputFeedback): bool => value.validValue(),
              7167,
              capacity);
    }
}

/** @brief Complete pal_wifi_localization_msgs/GetWifiMap typed call and real-submit client. */
export class Ros1Pal_wifi_localization_msgsGetWifiMapClient extends
    BoundedServiceClient<Ros1Pal_wifi_localization_msgsGetWifiMapRequest, Ros1Pal_wifi_localization_msgsGetWifiMapResponse>
{
    constructor(api: Api, alias: string, observerAlias: string = "", capacity: i32 = 8)
    {
        super(api,
              1,
              alias,
              new Ros1Pal_wifi_localization_msgsGetWifiMapRequestCodec(),
              new Ros1Pal_wifi_localization_msgsGetWifiMapResponseCodec(),
              (value: Ros1Pal_wifi_localization_msgsGetWifiMapRequest): bool => value.validValue(),
              2548,
              observerAlias,
              capacity);
    }
}

/** @brief Complete pal_wifi_localization_msgs/GetWifiMap incoming request/response owner. */
export class Ros1Pal_wifi_localization_msgsGetWifiMapServer extends
    BoundedServiceServer<Ros1Pal_wifi_localization_msgsGetWifiMapRequest, Ros1Pal_wifi_localization_msgsGetWifiMapResponse>
{
    constructor(api: Api, advertise: string, respond: string, capacity: i32 = 8)
    {
        super(api,
              1,
              advertise,
              respond,
              new Ros1Pal_wifi_localization_msgsGetWifiMapRequestCodec(),
              new Ros1Pal_wifi_localization_msgsGetWifiMapResponseCodec(),
              (value: Ros1Pal_wifi_localization_msgsGetWifiMapResponse): bool => value.validValue(),
              0,
              capacity);
    }
}
