// @file json.ts
// @brief Provide the complete agibot json.ts source contract.
// @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
// encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
// SPDX-License-Identifier: Apache-2.0
/** Complete original typed records rendered inside the AssemblyScript Wasm guest. */
import {quote} from 'agibot/shared/as/wasi';
import {
    Ros2Aimdk_msgsMsgCommonRequest,
    Ros2Aimdk_msgsMsgCommonResponse,
    Ros2Aimdk_msgsMsgCommonState,
    Ros2Aimdk_msgsMsgCurrentVersion,
    Ros2Aimdk_msgsMsgMcAction,
    Ros2Aimdk_msgsMsgMcActionInfo,
    Ros2Aimdk_msgsMsgMcActionStatus,
    Ros2Aimdk_msgsMsgMcBodyPoseStatus,
    Ros2Aimdk_msgsMsgMcCommonState,
    Ros2Aimdk_msgsMsgMcControlArea,
    Ros2Aimdk_msgsMsgMcFsmState,
    Ros2Aimdk_msgsMsgMcHandStatus,
    Ros2Aimdk_msgsMsgMcInputSource,
    Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds,
    Ros2Aimdk_msgsMsgMcLocomotionSpeedMode,
    Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus,
    Ros2Aimdk_msgsMsgMcMotionStatus,
    Ros2Aimdk_msgsMsgMcMotionType,
    Ros2Aimdk_msgsMsgMcPlayerState,
    Ros2Aimdk_msgsMsgMcRuntimeModel,
    Ros2Aimdk_msgsMsgMcServoStatus,
    Ros2Aimdk_msgsMsgMessageHeader,
    Ros2Aimdk_msgsMsgRequestHeader,
    Ros2Aimdk_msgsMsgResponseHeader,
    Ros2Aimdk_msgsMsgRobotResource,
    Ros2Aimdk_msgsSrvGetMcAction_Request,
    Ros2Aimdk_msgsSrvGetMcAction_Response,
    Ros2Aimdk_msgsSrvGetRobotResources_Request,
    Ros2Aimdk_msgsSrvGetRobotResources_Response,
    Ros2Builtin_interfacesMsgTime,
} from 'agibot/as/ros2/agibot-ros2-sdk-v1-1-0-main-complete/bounded_records';

/** @brief Render a finite IEEE value, retaining negative zero. */
function number(value: f64): string
{
    assert(isFinite(value), 'Nonfinite original float');
    return value == 0.0 && 1.0 / value < 0.0 ? '-0' : value.toString();
}

/** @brief Render every original field of aimdk_msgs/msg/CommonRequest; caller retains the record. */
function json_aimdk_msgs_msg_CommonRequest(value: Ros2Aimdk_msgsMsgCommonRequest): string
{
    let result = '{';
    result += '"header":';
    result += json_aimdk_msgs_msg_RequestHeader(value.header);
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/CommonResponse; caller retains the record. */
function json_aimdk_msgs_msg_CommonResponse(value: Ros2Aimdk_msgsMsgCommonResponse): string
{
    let result = '{';
    result += '"header":';
    result += json_aimdk_msgs_msg_ResponseHeader(value.header);
    result += ',"status":';
    result += json_aimdk_msgs_msg_CommonState(value.status);
    result += ',"message":';
    result += quote(value.message);
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/CommonState; caller retains the record. */
function json_aimdk_msgs_msg_CommonState(value: Ros2Aimdk_msgsMsgCommonState): string
{
    let result = '{';
    result += '"value":';
    result += value.value.toString();
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/CurrentVersion; caller retains the record. */
function json_aimdk_msgs_msg_CurrentVersion(value: Ros2Aimdk_msgsMsgCurrentVersion): string
{
    let result = '{';
    result += '"version":';
    result += quote(value.version);
    result += ',"name":';
    result += quote(value.name);
    result += ',"files":';
    result += '[';
    for(let index = 0; index < value.files.length; ++index)
    {
        if(index != 0)
        {
            result += ',';
        }
        result += quote(value.files[index]);
    }
    result += ']';
    result += ',"download_timestamp_seconds":';
    result += quote(value.download_timestamp_seconds.toString());
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/McAction; caller retains the record. */
function json_aimdk_msgs_msg_McAction(value: Ros2Aimdk_msgsMsgMcAction): string
{
    let result = '{';
    result += '"value":';
    result += value.value.toString();
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/McActionInfo; caller retains the record. */
function json_aimdk_msgs_msg_McActionInfo(value: Ros2Aimdk_msgsMsgMcActionInfo): string
{
    let result = '{';
    result += '"current_action":';
    result += json_aimdk_msgs_msg_McAction(value.current_action);
    result += ',"action_desc":';
    result += quote(value.action_desc);
    result += ',"status":';
    result += json_aimdk_msgs_msg_McActionStatus(value.status);
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/McActionStatus; caller retains the record. */
function json_aimdk_msgs_msg_McActionStatus(value: Ros2Aimdk_msgsMsgMcActionStatus): string
{
    let result = '{';
    result += '"value":';
    result += value.value.toString();
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/McBodyPoseStatus; caller retains the record. */
function json_aimdk_msgs_msg_McBodyPoseStatus(value: Ros2Aimdk_msgsMsgMcBodyPoseStatus): string
{
    let result = '{';
    result += '"value":';
    result += value.value.toString();
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/McCommonState; caller retains the record. */
function json_aimdk_msgs_msg_McCommonState(value: Ros2Aimdk_msgsMsgMcCommonState): string
{
    let result = '{';
    result += '"header":';
    result += json_aimdk_msgs_msg_MessageHeader(value.header);
    result += ',"input_source":';
    result += json_aimdk_msgs_msg_McInputSource(value.input_source);
    result += ',"action_info":';
    result += json_aimdk_msgs_msg_McActionInfo(value.action_info);
    result += ',"runtime_model":';
    result += json_aimdk_msgs_msg_McRuntimeModel(value.runtime_model);
    result += ',"motion_status":';
    result += json_aimdk_msgs_msg_McMotionStatus(value.motion_status);
    result += ',"servo_status":';
    result += json_aimdk_msgs_msg_McServoStatus(value.servo_status);
    result += ',"fsm_state":';
    result += json_aimdk_msgs_msg_McFsmState(value.fsm_state);
    result += ',"body_status":';
    result += json_aimdk_msgs_msg_McBodyPoseStatus(value.body_status);
    result += ',"speed_status":';
    result += json_aimdk_msgs_msg_McLocomotionSpeedStatus(value.speed_status);
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/McControlArea; caller retains the record. */
function json_aimdk_msgs_msg_McControlArea(value: Ros2Aimdk_msgsMsgMcControlArea): string
{
    let result = '{';
    result += '"value":';
    result += value.value.toString();
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/McFsmState; caller retains the record. */
function json_aimdk_msgs_msg_McFsmState(value: Ros2Aimdk_msgsMsgMcFsmState): string
{
    let result = '{';
    result += '"current_state":';
    result += value.current_state.toString();
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/McHandStatus; caller retains the record. */
function json_aimdk_msgs_msg_McHandStatus(value: Ros2Aimdk_msgsMsgMcHandStatus): string
{
    let result = '{';
    result += '"value":';
    result += value.value.toString();
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/McInputSource; caller retains the record. */
function json_aimdk_msgs_msg_McInputSource(value: Ros2Aimdk_msgsMsgMcInputSource): string
{
    let result = '{';
    result += '"name":';
    result += quote(value.name);
    result += ',"priority":';
    result += value.priority.toString();
    result += ',"timeout":';
    result += value.timeout.toString();
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/McLocomotionSpeedBounds; caller retains the record. */
function json_aimdk_msgs_msg_McLocomotionSpeedBounds(value: Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds): string
{
    let result = '{';
    result += '"min_value":';
    result += number(value.min_value);
    result += ',"max_value":';
    result += number(value.max_value);
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/McLocomotionSpeedMode; caller retains the record. */
function json_aimdk_msgs_msg_McLocomotionSpeedMode(value: Ros2Aimdk_msgsMsgMcLocomotionSpeedMode): string
{
    let result = '{';
    result += '"value":';
    result += value.value.toString();
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/McLocomotionSpeedStatus; caller retains the record. */
function json_aimdk_msgs_msg_McLocomotionSpeedStatus(value: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus): string
{
    let result = '{';
    result += '"speed_mode":';
    result += json_aimdk_msgs_msg_McLocomotionSpeedMode(value.speed_mode);
    result += ',"forward_bounds":';
    result += json_aimdk_msgs_msg_McLocomotionSpeedBounds(value.forward_bounds);
    result += ',"lateral_bounds":';
    result += json_aimdk_msgs_msg_McLocomotionSpeedBounds(value.lateral_bounds);
    result += ',"angular_bounds":';
    result += json_aimdk_msgs_msg_McLocomotionSpeedBounds(value.angular_bounds);
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/McMotionStatus; caller retains the record. */
function json_aimdk_msgs_msg_McMotionStatus(value: Ros2Aimdk_msgsMsgMcMotionStatus): string
{
    let result = '{';
    result += '"player_state":';
    result += json_aimdk_msgs_msg_McPlayerState(value.player_state);
    result += ',"control_area":';
    result += json_aimdk_msgs_msg_McControlArea(value.control_area);
    result += ',"motion":';
    result += quote(value.motion);
    result += ',"type":';
    result += json_aimdk_msgs_msg_McMotionType(value.ros_type);
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/McMotionType; caller retains the record. */
function json_aimdk_msgs_msg_McMotionType(value: Ros2Aimdk_msgsMsgMcMotionType): string
{
    let result = '{';
    result += '"value":';
    result += value.value.toString();
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/McPlayerState; caller retains the record. */
function json_aimdk_msgs_msg_McPlayerState(value: Ros2Aimdk_msgsMsgMcPlayerState): string
{
    let result = '{';
    result += '"value":';
    result += value.value.toString();
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/McRuntimeModel; caller retains the record. */
function json_aimdk_msgs_msg_McRuntimeModel(value: Ros2Aimdk_msgsMsgMcRuntimeModel): string
{
    let result = '{';
    result += '"waist_status":';
    result += value.waist_status.toString();
    result += ',"left_hand_status":';
    result += json_aimdk_msgs_msg_McHandStatus(value.left_hand_status);
    result += ',"right_hand_status":';
    result += json_aimdk_msgs_msg_McHandStatus(value.right_hand_status);
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/McServoStatus; caller retains the record. */
function json_aimdk_msgs_msg_McServoStatus(value: Ros2Aimdk_msgsMsgMcServoStatus): string
{
    let result = '{';
    result += '"squat_enable":';
    result += value.squat_enable.toString();
    result += ',"squat_offset":';
    result += number(value.squat_offset);
    result += ',"squat_limit":';
    result += value.squat_limit.toString();
    result += ',"head_yaw_offset":';
    result += number(value.head_yaw_offset);
    result += ',"head_pitch_offset":';
    result += number(value.head_pitch_offset);
    result += ',"waist_yaw_offset":';
    result += number(value.waist_yaw_offset);
    result += ',"waist_pitch_offset":';
    result += number(value.waist_pitch_offset);
    result += ',"waist_roll_offset":';
    result += number(value.waist_roll_offset);
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/MessageHeader; caller retains the record. */
function json_aimdk_msgs_msg_MessageHeader(value: Ros2Aimdk_msgsMsgMessageHeader): string
{
    let result = '{';
    result += '"stamp":';
    result += json_builtin_interfaces_msg_Time(value.stamp);
    result += ',"frame_id":';
    result += quote(value.frame_id);
    result += ',"sequence":';
    result += value.sequence.toString();
    result += ',"meas_stamp":';
    result += json_builtin_interfaces_msg_Time(value.meas_stamp);
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/RequestHeader; caller retains the record. */
function json_aimdk_msgs_msg_RequestHeader(value: Ros2Aimdk_msgsMsgRequestHeader): string
{
    let result = '{';
    result += '"stamp":';
    result += json_builtin_interfaces_msg_Time(value.stamp);
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/ResponseHeader; caller retains the record. */
function json_aimdk_msgs_msg_ResponseHeader(value: Ros2Aimdk_msgsMsgResponseHeader): string
{
    let result = '{';
    result += '"stamp":';
    result += json_builtin_interfaces_msg_Time(value.stamp);
    result += ',"code":';
    result += quote(value.code.toString());
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/msg/RobotResource; caller retains the record. */
function json_aimdk_msgs_msg_RobotResource(value: Ros2Aimdk_msgsMsgRobotResource): string
{
    let result = '{';
    result += '"resource_key":';
    result += quote(value.resource_key);
    result += ',"current_version":';
    result += json_aimdk_msgs_msg_CurrentVersion(value.current_version);
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/srv/GetMcAction_Request; caller retains the record. */
function json_aimdk_msgs_srv_GetMcAction_Request(value: Ros2Aimdk_msgsSrvGetMcAction_Request): string
{
    let result = '{';
    result += '"request":';
    result += json_aimdk_msgs_msg_CommonRequest(value.request);
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/srv/GetMcAction_Response; caller retains the record. */
function json_aimdk_msgs_srv_GetMcAction_Response(value: Ros2Aimdk_msgsSrvGetMcAction_Response): string
{
    let result = '{';
    result += '"header":';
    result += json_aimdk_msgs_msg_ResponseHeader(value.header);
    result += ',"info":';
    result += json_aimdk_msgs_msg_McActionInfo(value.info);
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/srv/GetRobotResources_Request; caller retains the record. */
function json_aimdk_msgs_srv_GetRobotResources_Request(value: Ros2Aimdk_msgsSrvGetRobotResources_Request): string
{
    let result = '{';
    result += '"header":';
    result += json_aimdk_msgs_msg_CommonRequest(value.header);
    return result + '}';
}

/** @brief Render every original field of aimdk_msgs/srv/GetRobotResources_Response; caller retains the record. */
function json_aimdk_msgs_srv_GetRobotResources_Response(value: Ros2Aimdk_msgsSrvGetRobotResources_Response): string
{
    let result = '{';
    result += '"header":';
    result += json_aimdk_msgs_msg_CommonResponse(value.header);
    result += ',"robot_resources":';
    result += '[';
    for(let index = 0; index < value.robot_resources.length; ++index)
    {
        if(index != 0)
        {
            result += ',';
        }
        result += json_aimdk_msgs_msg_RobotResource(value.robot_resources[index]);
    }
    result += ']';
    return result + '}';
}

/** @brief Render every original field of builtin_interfaces/msg/Time; caller retains the record. */
function json_builtin_interfaces_msg_Time(value: Ros2Builtin_interfacesMsgTime): string
{
    let result = '{';
    result += '"sec":';
    result += value.sec.toString();
    result += ',"nanosec":';
    result += value.nanosec.toString();
    return result + '}';
}

/** @brief Return full original aimdk_msgs/srv/GetMcAction_Response JSON with exact integer fields. */
export function modeJson(value: Ros2Aimdk_msgsSrvGetMcAction_Response): string
{
    return json_aimdk_msgs_srv_GetMcAction_Response(value);
}

/** @brief Return full original aimdk_msgs/msg/McCommonState JSON with exact integer fields. */
export function stateJson(value: Ros2Aimdk_msgsMsgMcCommonState): string
{
    return json_aimdk_msgs_msg_McCommonState(value);
}

/** @brief Return full original aimdk_msgs/srv/GetRobotResources_Response JSON with exact integer fields. */
export function resourcesJson(value: Ros2Aimdk_msgsSrvGetRobotResources_Response): string
{
    return json_aimdk_msgs_srv_GetRobotResources_Response(value);
}
