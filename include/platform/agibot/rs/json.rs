// @file json.rs
// @brief Provide the complete agibot json.rs source contract.
// @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
// encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
// SPDX-License-Identifier: Apache-2.0
//! Full original-field JSON for owned AimDK records; no I/O or authority.
//! int64/uint64 remain exact decimal strings. Inputs must be complete
//! unmodified decoded records. Nonfinite mutated floats cause a panic.
#![allow(non_snake_case)]
use crate::aimdk::*;
use std::fmt::Write;

fn quote(value: &str) -> String {
    let mut result = String::from("\"");
    for character in value.chars() {
        match character {
            '"' => result.push_str("\\\""),
            '\\' => result.push_str("\\\\"),
            c if (c as u32) < 32 => {
                write!(&mut result, "\\u{:04x}", c as u32).unwrap();
            }
            c => result.push(c),
        }
    }
    result.push('"');
    result
}
fn number(value: f64) -> String {
    assert!(value.is_finite(), "Nonfinite original float");
    value.to_string()
}
/// Render every original field of `aimdk_msgs/msg/CommonRequest` without acquiring ROS authority.
fn json_aimdk_msgs_msg_CommonRequest(value: &Ros2Aimdk_msgsMsgCommonRequest) -> String {
    let mut result = String::from("{");
    result.push_str("\"header\":");
    result.push_str(&json_aimdk_msgs_msg_RequestHeader(&value.header));
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/CommonResponse` without acquiring ROS authority.
fn json_aimdk_msgs_msg_CommonResponse(value: &Ros2Aimdk_msgsMsgCommonResponse) -> String {
    let mut result = String::from("{");
    result.push_str("\"header\":");
    result.push_str(&json_aimdk_msgs_msg_ResponseHeader(&value.header));
    result.push_str(",\"status\":");
    result.push_str(&json_aimdk_msgs_msg_CommonState(&value.status));
    result.push_str(",\"message\":");
    result.push_str(&quote(&value.message));
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/CommonState` without acquiring ROS authority.
fn json_aimdk_msgs_msg_CommonState(value: &Ros2Aimdk_msgsMsgCommonState) -> String {
    let mut result = String::from("{");
    result.push_str("\"value\":");
    result.push_str(&(value.value).to_string());
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/CurrentVersion` without acquiring ROS authority.
fn json_aimdk_msgs_msg_CurrentVersion(value: &Ros2Aimdk_msgsMsgCurrentVersion) -> String {
    let mut result = String::from("{");
    result.push_str("\"version\":");
    result.push_str(&quote(&value.version));
    result.push_str(",\"name\":");
    result.push_str(&quote(&value.name));
    result.push_str(",\"files\":");
    result.push('[');
    for (index, item) in value.files.iter().enumerate() {
        if index != 0 {
            result.push(',');
        }
        result.push_str(&quote(&item));
    }
    result.push(']');
    result.push_str(",\"download_timestamp_seconds\":");
    result.push_str(&quote(&value.download_timestamp_seconds.to_string()));
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/McAction` without acquiring ROS authority.
fn json_aimdk_msgs_msg_McAction(value: &Ros2Aimdk_msgsMsgMcAction) -> String {
    let mut result = String::from("{");
    result.push_str("\"value\":");
    result.push_str(&(value.value).to_string());
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/McActionInfo` without acquiring ROS authority.
fn json_aimdk_msgs_msg_McActionInfo(value: &Ros2Aimdk_msgsMsgMcActionInfo) -> String {
    let mut result = String::from("{");
    result.push_str("\"current_action\":");
    result.push_str(&json_aimdk_msgs_msg_McAction(&value.current_action));
    result.push_str(",\"action_desc\":");
    result.push_str(&quote(&value.action_desc));
    result.push_str(",\"status\":");
    result.push_str(&json_aimdk_msgs_msg_McActionStatus(&value.status));
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/McActionStatus` without acquiring ROS authority.
fn json_aimdk_msgs_msg_McActionStatus(value: &Ros2Aimdk_msgsMsgMcActionStatus) -> String {
    let mut result = String::from("{");
    result.push_str("\"value\":");
    result.push_str(&(value.value).to_string());
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/McBodyPoseStatus` without acquiring ROS authority.
fn json_aimdk_msgs_msg_McBodyPoseStatus(value: &Ros2Aimdk_msgsMsgMcBodyPoseStatus) -> String {
    let mut result = String::from("{");
    result.push_str("\"value\":");
    result.push_str(&(value.value).to_string());
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/McCommonState` without acquiring ROS authority.
fn json_aimdk_msgs_msg_McCommonState(value: &Ros2Aimdk_msgsMsgMcCommonState) -> String {
    let mut result = String::from("{");
    result.push_str("\"header\":");
    result.push_str(&json_aimdk_msgs_msg_MessageHeader(&value.header));
    result.push_str(",\"input_source\":");
    result.push_str(&json_aimdk_msgs_msg_McInputSource(&value.input_source));
    result.push_str(",\"action_info\":");
    result.push_str(&json_aimdk_msgs_msg_McActionInfo(&value.action_info));
    result.push_str(",\"runtime_model\":");
    result.push_str(&json_aimdk_msgs_msg_McRuntimeModel(&value.runtime_model));
    result.push_str(",\"motion_status\":");
    result.push_str(&json_aimdk_msgs_msg_McMotionStatus(&value.motion_status));
    result.push_str(",\"servo_status\":");
    result.push_str(&json_aimdk_msgs_msg_McServoStatus(&value.servo_status));
    result.push_str(",\"fsm_state\":");
    result.push_str(&json_aimdk_msgs_msg_McFsmState(&value.fsm_state));
    result.push_str(",\"body_status\":");
    result.push_str(&json_aimdk_msgs_msg_McBodyPoseStatus(&value.body_status));
    result.push_str(",\"speed_status\":");
    result.push_str(&json_aimdk_msgs_msg_McLocomotionSpeedStatus(
        &value.speed_status,
    ));
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/McControlArea` without acquiring ROS authority.
fn json_aimdk_msgs_msg_McControlArea(value: &Ros2Aimdk_msgsMsgMcControlArea) -> String {
    let mut result = String::from("{");
    result.push_str("\"value\":");
    result.push_str(&(value.value).to_string());
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/McFsmState` without acquiring ROS authority.
fn json_aimdk_msgs_msg_McFsmState(value: &Ros2Aimdk_msgsMsgMcFsmState) -> String {
    let mut result = String::from("{");
    result.push_str("\"current_state\":");
    result.push_str(&(value.current_state).to_string());
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/McHandStatus` without acquiring ROS authority.
fn json_aimdk_msgs_msg_McHandStatus(value: &Ros2Aimdk_msgsMsgMcHandStatus) -> String {
    let mut result = String::from("{");
    result.push_str("\"value\":");
    result.push_str(&(value.value).to_string());
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/McInputSource` without acquiring ROS authority.
fn json_aimdk_msgs_msg_McInputSource(value: &Ros2Aimdk_msgsMsgMcInputSource) -> String {
    let mut result = String::from("{");
    result.push_str("\"name\":");
    result.push_str(&quote(&value.name));
    result.push_str(",\"priority\":");
    result.push_str(&(value.priority).to_string());
    result.push_str(",\"timeout\":");
    result.push_str(&(value.timeout).to_string());
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/McLocomotionSpeedBounds` without acquiring ROS authority.
fn json_aimdk_msgs_msg_McLocomotionSpeedBounds(
    value: &Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds,
) -> String {
    let mut result = String::from("{");
    result.push_str("\"min_value\":");
    result.push_str(&number(value.min_value as f64));
    result.push_str(",\"max_value\":");
    result.push_str(&number(value.max_value as f64));
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/McLocomotionSpeedMode` without acquiring ROS authority.
fn json_aimdk_msgs_msg_McLocomotionSpeedMode(
    value: &Ros2Aimdk_msgsMsgMcLocomotionSpeedMode,
) -> String {
    let mut result = String::from("{");
    result.push_str("\"value\":");
    result.push_str(&(value.value).to_string());
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/McLocomotionSpeedStatus` without acquiring ROS authority.
fn json_aimdk_msgs_msg_McLocomotionSpeedStatus(
    value: &Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus,
) -> String {
    let mut result = String::from("{");
    result.push_str("\"speed_mode\":");
    result.push_str(&json_aimdk_msgs_msg_McLocomotionSpeedMode(
        &value.speed_mode,
    ));
    result.push_str(",\"forward_bounds\":");
    result.push_str(&json_aimdk_msgs_msg_McLocomotionSpeedBounds(
        &value.forward_bounds,
    ));
    result.push_str(",\"lateral_bounds\":");
    result.push_str(&json_aimdk_msgs_msg_McLocomotionSpeedBounds(
        &value.lateral_bounds,
    ));
    result.push_str(",\"angular_bounds\":");
    result.push_str(&json_aimdk_msgs_msg_McLocomotionSpeedBounds(
        &value.angular_bounds,
    ));
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/McMotionStatus` without acquiring ROS authority.
fn json_aimdk_msgs_msg_McMotionStatus(value: &Ros2Aimdk_msgsMsgMcMotionStatus) -> String {
    let mut result = String::from("{");
    result.push_str("\"player_state\":");
    result.push_str(&json_aimdk_msgs_msg_McPlayerState(&value.player_state));
    result.push_str(",\"control_area\":");
    result.push_str(&json_aimdk_msgs_msg_McControlArea(&value.control_area));
    result.push_str(",\"motion\":");
    result.push_str(&quote(&value.motion));
    result.push_str(",\"type\":");
    result.push_str(&json_aimdk_msgs_msg_McMotionType(&value.r#type));
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/McMotionType` without acquiring ROS authority.
fn json_aimdk_msgs_msg_McMotionType(value: &Ros2Aimdk_msgsMsgMcMotionType) -> String {
    let mut result = String::from("{");
    result.push_str("\"value\":");
    result.push_str(&(value.value).to_string());
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/McPlayerState` without acquiring ROS authority.
fn json_aimdk_msgs_msg_McPlayerState(value: &Ros2Aimdk_msgsMsgMcPlayerState) -> String {
    let mut result = String::from("{");
    result.push_str("\"value\":");
    result.push_str(&(value.value).to_string());
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/McRuntimeModel` without acquiring ROS authority.
fn json_aimdk_msgs_msg_McRuntimeModel(value: &Ros2Aimdk_msgsMsgMcRuntimeModel) -> String {
    let mut result = String::from("{");
    result.push_str("\"waist_status\":");
    result.push_str(&(value.waist_status).to_string());
    result.push_str(",\"left_hand_status\":");
    result.push_str(&json_aimdk_msgs_msg_McHandStatus(&value.left_hand_status));
    result.push_str(",\"right_hand_status\":");
    result.push_str(&json_aimdk_msgs_msg_McHandStatus(&value.right_hand_status));
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/McServoStatus` without acquiring ROS authority.
fn json_aimdk_msgs_msg_McServoStatus(value: &Ros2Aimdk_msgsMsgMcServoStatus) -> String {
    let mut result = String::from("{");
    result.push_str("\"squat_enable\":");
    result.push_str(&(value.squat_enable).to_string());
    result.push_str(",\"squat_offset\":");
    result.push_str(&number(value.squat_offset as f64));
    result.push_str(",\"squat_limit\":");
    result.push_str(&(value.squat_limit).to_string());
    result.push_str(",\"head_yaw_offset\":");
    result.push_str(&number(value.head_yaw_offset as f64));
    result.push_str(",\"head_pitch_offset\":");
    result.push_str(&number(value.head_pitch_offset as f64));
    result.push_str(",\"waist_yaw_offset\":");
    result.push_str(&number(value.waist_yaw_offset as f64));
    result.push_str(",\"waist_pitch_offset\":");
    result.push_str(&number(value.waist_pitch_offset as f64));
    result.push_str(",\"waist_roll_offset\":");
    result.push_str(&number(value.waist_roll_offset as f64));
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/MessageHeader` without acquiring ROS authority.
fn json_aimdk_msgs_msg_MessageHeader(value: &Ros2Aimdk_msgsMsgMessageHeader) -> String {
    let mut result = String::from("{");
    result.push_str("\"stamp\":");
    result.push_str(&json_builtin_interfaces_msg_Time(&value.stamp));
    result.push_str(",\"frame_id\":");
    result.push_str(&quote(&value.frame_id));
    result.push_str(",\"sequence\":");
    result.push_str(&(value.sequence).to_string());
    result.push_str(",\"meas_stamp\":");
    result.push_str(&json_builtin_interfaces_msg_Time(&value.meas_stamp));
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/RequestHeader` without acquiring ROS authority.
fn json_aimdk_msgs_msg_RequestHeader(value: &Ros2Aimdk_msgsMsgRequestHeader) -> String {
    let mut result = String::from("{");
    result.push_str("\"stamp\":");
    result.push_str(&json_builtin_interfaces_msg_Time(&value.stamp));
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/ResponseHeader` without acquiring ROS authority.
fn json_aimdk_msgs_msg_ResponseHeader(value: &Ros2Aimdk_msgsMsgResponseHeader) -> String {
    let mut result = String::from("{");
    result.push_str("\"stamp\":");
    result.push_str(&json_builtin_interfaces_msg_Time(&value.stamp));
    result.push_str(",\"code\":");
    result.push_str(&quote(&value.code.to_string()));
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/msg/RobotResource` without acquiring ROS authority.
fn json_aimdk_msgs_msg_RobotResource(value: &Ros2Aimdk_msgsMsgRobotResource) -> String {
    let mut result = String::from("{");
    result.push_str("\"resource_key\":");
    result.push_str(&quote(&value.resource_key));
    result.push_str(",\"current_version\":");
    result.push_str(&json_aimdk_msgs_msg_CurrentVersion(&value.current_version));
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/srv/GetMcAction_Request` without acquiring ROS authority.
fn json_aimdk_msgs_srv_GetMcAction_Request(value: &Ros2Aimdk_msgsSrvGetMcAction_Request) -> String {
    let mut result = String::from("{");
    result.push_str("\"request\":");
    result.push_str(&json_aimdk_msgs_msg_CommonRequest(&value.request));
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/srv/GetMcAction_Response` without acquiring ROS authority.
fn json_aimdk_msgs_srv_GetMcAction_Response(
    value: &Ros2Aimdk_msgsSrvGetMcAction_Response,
) -> String {
    let mut result = String::from("{");
    result.push_str("\"header\":");
    result.push_str(&json_aimdk_msgs_msg_ResponseHeader(&value.header));
    result.push_str(",\"info\":");
    result.push_str(&json_aimdk_msgs_msg_McActionInfo(&value.info));
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/srv/GetRobotResources_Request` without acquiring ROS authority.
fn json_aimdk_msgs_srv_GetRobotResources_Request(
    value: &Ros2Aimdk_msgsSrvGetRobotResources_Request,
) -> String {
    let mut result = String::from("{");
    result.push_str("\"header\":");
    result.push_str(&json_aimdk_msgs_msg_CommonRequest(&value.header));
    result.push('}');
    result
}

/// Render every original field of `aimdk_msgs/srv/GetRobotResources_Response` without acquiring ROS authority.
fn json_aimdk_msgs_srv_GetRobotResources_Response(
    value: &Ros2Aimdk_msgsSrvGetRobotResources_Response,
) -> String {
    let mut result = String::from("{");
    result.push_str("\"header\":");
    result.push_str(&json_aimdk_msgs_msg_CommonResponse(&value.header));
    result.push_str(",\"robot_resources\":");
    result.push('[');
    for (index, item) in value.robot_resources.iter().enumerate() {
        if index != 0 {
            result.push(',');
        }
        result.push_str(&json_aimdk_msgs_msg_RobotResource(&item));
    }
    result.push(']');
    result.push('}');
    result
}

/// Render every original field of `builtin_interfaces/msg/Time` without acquiring ROS authority.
fn json_builtin_interfaces_msg_Time(value: &Ros2Builtin_interfacesMsgTime) -> String {
    let mut result = String::from("{");
    result.push_str("\"sec\":");
    result.push_str(&(value.sec).to_string());
    result.push_str(",\"nanosec\":");
    result.push_str(&(value.nanosec).to_string());
    result.push('}');
    result
}

/// Return full original aimdk_msgs/srv/GetMcAction_Response JSON; 64-bit integers use decimal strings.
pub fn mode_json(value: &Ros2Aimdk_msgsSrvGetMcAction_Response) -> String {
    json_aimdk_msgs_srv_GetMcAction_Response(value)
}

/// Return full original aimdk_msgs/msg/McCommonState JSON; 64-bit integers use decimal strings.
pub fn state_json(value: &Ros2Aimdk_msgsMsgMcCommonState) -> String {
    json_aimdk_msgs_msg_McCommonState(value)
}

/// Return full original aimdk_msgs/srv/GetRobotResources_Response JSON; 64-bit integers use decimal strings.
pub fn resources_json(value: &Ros2Aimdk_msgsSrvGetRobotResources_Response) -> String {
    json_aimdk_msgs_srv_GetRobotResources_Response(value)
}
