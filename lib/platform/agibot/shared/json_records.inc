/* SPDX-License-Identifier: Apache-2.0 */
/** @file json_records.inc
 * @brief Generated complete original-record JSON emitters; no I/O or authority.
 * @details Source fields and explicit bounds are pinned in the shared JSON schema.
 */
static void json_aimdk_msgs_msg_CommonResponse(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse const*);
static void json_aimdk_msgs_msg_CommonState(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_CommonState const*);
static void json_aimdk_msgs_msg_CurrentVersion(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_CurrentVersion const*);
static void json_aimdk_msgs_msg_McAction(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_McAction const*);
static void json_aimdk_msgs_msg_McActionInfo(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo const*);
static void json_aimdk_msgs_msg_McActionStatus(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus const*);
static void json_aimdk_msgs_msg_McBodyPoseStatus(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_McBodyPoseStatus const*);
static void json_aimdk_msgs_msg_McCommonState(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_McCommonState const*);
static void json_aimdk_msgs_msg_McControlArea(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_McControlArea const*);
static void json_aimdk_msgs_msg_McFsmState(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_McFsmState const*);
static void json_aimdk_msgs_msg_McHandStatus(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_McHandStatus const*);
static void json_aimdk_msgs_msg_McInputSource(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_McInputSource const*);
static void json_aimdk_msgs_msg_McLocomotionSpeedBounds(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedBounds const*);
static void json_aimdk_msgs_msg_McLocomotionSpeedMode(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedMode const*);
static void json_aimdk_msgs_msg_McLocomotionSpeedStatus(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedStatus const*);
static void json_aimdk_msgs_msg_McMotionStatus(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_McMotionStatus const*);
static void json_aimdk_msgs_msg_McMotionType(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_McMotionType const*);
static void json_aimdk_msgs_msg_McPlayerState(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_McPlayerState const*);
static void json_aimdk_msgs_msg_McRuntimeModel(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_McRuntimeModel const*);
static void json_aimdk_msgs_msg_McServoStatus(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_McServoStatus const*);
static void json_aimdk_msgs_msg_MessageHeader(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader const*);
static void json_aimdk_msgs_msg_ResponseHeader(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader const*);
static void json_aimdk_msgs_msg_RobotResource(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_msg_RobotResource const*);
static void json_aimdk_msgs_srv_GetMcAction_Response(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response const*);
static void json_aimdk_msgs_srv_GetRobotResources_Response(agibot_json_writer*, roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Response const*);
static void json_builtin_interfaces_msg_Time(agibot_json_writer*, roswasmc_bounded_2_builtin_interfaces_msg_Time const*);

/** @brief Serialize every original field of aimdk_msgs/msg/CommonResponse. */
static void json_aimdk_msgs_msg_CommonResponse(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_CommonResponse const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"header\":");
    json_aimdk_msgs_msg_ResponseHeader(writer, &(record->header));
    json_literal(writer, ",\"status\":");
    json_aimdk_msgs_msg_CommonState(writer, &(record->status));
    json_literal(writer, ",\"message\":");
    json_text(writer, record->message.data, record->message.size);
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/CommonState. */
static void json_aimdk_msgs_msg_CommonState(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_CommonState const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"value\":");
    json_signed(writer, record->value, 0);
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/CurrentVersion. */
static void json_aimdk_msgs_msg_CurrentVersion(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_CurrentVersion const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"version\":");
    json_text(writer, record->version.data, record->version.size);
    json_literal(writer, ",\"name\":");
    json_text(writer, record->name.data, record->name.size);
    json_literal(writer, ",\"files\":");
    json_literal(writer, "[");
    for(uint32_t index = 0; index < record->files.size; ++index)
    {
        if(index)
        {
            json_literal(writer, ",");
        }
        json_text(writer, record->files.data[index].data, record->files.data[index].size);
    }
    json_literal(writer, "]");
    json_literal(writer, ",\"download_timestamp_seconds\":");
    json_unsigned(writer, record->download_timestamp_seconds, 1);
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/McAction. */
static void json_aimdk_msgs_msg_McAction(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_McAction const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"value\":");
    json_signed(writer, record->value, 0);
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/McActionInfo. */
static void json_aimdk_msgs_msg_McActionInfo(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_McActionInfo const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"current_action\":");
    json_aimdk_msgs_msg_McAction(writer, &(record->current_action));
    json_literal(writer, ",\"action_desc\":");
    json_text(writer, record->action_desc.data, record->action_desc.size);
    json_literal(writer, ",\"status\":");
    json_aimdk_msgs_msg_McActionStatus(writer, &(record->status));
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/McActionStatus. */
static void json_aimdk_msgs_msg_McActionStatus(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_McActionStatus const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"value\":");
    json_signed(writer, record->value, 0);
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/McBodyPoseStatus. */
static void json_aimdk_msgs_msg_McBodyPoseStatus(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_McBodyPoseStatus const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"value\":");
    json_signed(writer, record->value, 0);
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/McCommonState. */
static void json_aimdk_msgs_msg_McCommonState(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_McCommonState const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"header\":");
    json_aimdk_msgs_msg_MessageHeader(writer, &(record->header));
    json_literal(writer, ",\"input_source\":");
    json_aimdk_msgs_msg_McInputSource(writer, &(record->input_source));
    json_literal(writer, ",\"action_info\":");
    json_aimdk_msgs_msg_McActionInfo(writer, &(record->action_info));
    json_literal(writer, ",\"runtime_model\":");
    json_aimdk_msgs_msg_McRuntimeModel(writer, &(record->runtime_model));
    json_literal(writer, ",\"motion_status\":");
    json_aimdk_msgs_msg_McMotionStatus(writer, &(record->motion_status));
    json_literal(writer, ",\"servo_status\":");
    json_aimdk_msgs_msg_McServoStatus(writer, &(record->servo_status));
    json_literal(writer, ",\"fsm_state\":");
    json_aimdk_msgs_msg_McFsmState(writer, &(record->fsm_state));
    json_literal(writer, ",\"body_status\":");
    json_aimdk_msgs_msg_McBodyPoseStatus(writer, &(record->body_status));
    json_literal(writer, ",\"speed_status\":");
    json_aimdk_msgs_msg_McLocomotionSpeedStatus(writer, &(record->speed_status));
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/McControlArea. */
static void json_aimdk_msgs_msg_McControlArea(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_McControlArea const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"value\":");
    json_signed(writer, record->value, 0);
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/McFsmState. */
static void json_aimdk_msgs_msg_McFsmState(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_McFsmState const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"current_state\":");
    json_unsigned(writer, record->current_state, 0);
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/McHandStatus. */
static void json_aimdk_msgs_msg_McHandStatus(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_McHandStatus const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"value\":");
    json_signed(writer, record->value, 0);
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/McInputSource. */
static void json_aimdk_msgs_msg_McInputSource(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_McInputSource const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"name\":");
    json_text(writer, record->name.data, record->name.size);
    json_literal(writer, ",\"priority\":");
    json_signed(writer, record->priority, 0);
    json_literal(writer, ",\"timeout\":");
    json_signed(writer, record->timeout, 0);
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/McLocomotionSpeedBounds. */
static void json_aimdk_msgs_msg_McLocomotionSpeedBounds(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedBounds const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"min_value\":");
    json_float(writer, record->min_value);
    json_literal(writer, ",\"max_value\":");
    json_float(writer, record->max_value);
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/McLocomotionSpeedMode. */
static void json_aimdk_msgs_msg_McLocomotionSpeedMode(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedMode const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"value\":");
    json_signed(writer, record->value, 0);
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/McLocomotionSpeedStatus. */
static void json_aimdk_msgs_msg_McLocomotionSpeedStatus(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_McLocomotionSpeedStatus const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"speed_mode\":");
    json_aimdk_msgs_msg_McLocomotionSpeedMode(writer, &(record->speed_mode));
    json_literal(writer, ",\"forward_bounds\":");
    json_aimdk_msgs_msg_McLocomotionSpeedBounds(writer, &(record->forward_bounds));
    json_literal(writer, ",\"lateral_bounds\":");
    json_aimdk_msgs_msg_McLocomotionSpeedBounds(writer, &(record->lateral_bounds));
    json_literal(writer, ",\"angular_bounds\":");
    json_aimdk_msgs_msg_McLocomotionSpeedBounds(writer, &(record->angular_bounds));
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/McMotionStatus. */
static void json_aimdk_msgs_msg_McMotionStatus(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_McMotionStatus const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"player_state\":");
    json_aimdk_msgs_msg_McPlayerState(writer, &(record->player_state));
    json_literal(writer, ",\"control_area\":");
    json_aimdk_msgs_msg_McControlArea(writer, &(record->control_area));
    json_literal(writer, ",\"motion\":");
    json_text(writer, record->motion.data, record->motion.size);
    json_literal(writer, ",\"type\":");
    json_aimdk_msgs_msg_McMotionType(writer, &(record->type));
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/McMotionType. */
static void json_aimdk_msgs_msg_McMotionType(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_McMotionType const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"value\":");
    json_signed(writer, record->value, 0);
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/McPlayerState. */
static void json_aimdk_msgs_msg_McPlayerState(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_McPlayerState const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"value\":");
    json_unsigned(writer, record->value, 0);
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/McRuntimeModel. */
static void json_aimdk_msgs_msg_McRuntimeModel(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_McRuntimeModel const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"waist_status\":");
    json_literal(writer, record->waist_status ? "true" : "false");
    json_literal(writer, ",\"left_hand_status\":");
    json_aimdk_msgs_msg_McHandStatus(writer, &(record->left_hand_status));
    json_literal(writer, ",\"right_hand_status\":");
    json_aimdk_msgs_msg_McHandStatus(writer, &(record->right_hand_status));
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/McServoStatus. */
static void json_aimdk_msgs_msg_McServoStatus(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_McServoStatus const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"squat_enable\":");
    json_literal(writer, record->squat_enable ? "true" : "false");
    json_literal(writer, ",\"squat_offset\":");
    json_float(writer, record->squat_offset);
    json_literal(writer, ",\"squat_limit\":");
    json_unsigned(writer, record->squat_limit, 0);
    json_literal(writer, ",\"head_yaw_offset\":");
    json_float(writer, record->head_yaw_offset);
    json_literal(writer, ",\"head_pitch_offset\":");
    json_float(writer, record->head_pitch_offset);
    json_literal(writer, ",\"waist_yaw_offset\":");
    json_float(writer, record->waist_yaw_offset);
    json_literal(writer, ",\"waist_pitch_offset\":");
    json_float(writer, record->waist_pitch_offset);
    json_literal(writer, ",\"waist_roll_offset\":");
    json_float(writer, record->waist_roll_offset);
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/MessageHeader. */
static void json_aimdk_msgs_msg_MessageHeader(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_MessageHeader const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"stamp\":");
    json_builtin_interfaces_msg_Time(writer, &(record->stamp));
    json_literal(writer, ",\"frame_id\":");
    json_text(writer, record->frame_id.data, record->frame_id.size);
    json_literal(writer, ",\"sequence\":");
    json_unsigned(writer, record->sequence, 0);
    json_literal(writer, ",\"meas_stamp\":");
    json_builtin_interfaces_msg_Time(writer, &(record->meas_stamp));
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/ResponseHeader. */
static void json_aimdk_msgs_msg_ResponseHeader(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_ResponseHeader const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"stamp\":");
    json_builtin_interfaces_msg_Time(writer, &(record->stamp));
    json_literal(writer, ",\"code\":");
    json_signed(writer, record->code, 1);
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/msg/RobotResource. */
static void json_aimdk_msgs_msg_RobotResource(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_msg_RobotResource const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"resource_key\":");
    json_text(writer, record->resource_key.data, record->resource_key.size);
    json_literal(writer, ",\"current_version\":");
    json_aimdk_msgs_msg_CurrentVersion(writer, &(record->current_version));
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/srv/GetMcAction_Response. */
static void json_aimdk_msgs_srv_GetMcAction_Response(agibot_json_writer* writer, roswasmc_bounded_2_aimdk_msgs_srv_GetMcAction_Response const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"header\":");
    json_aimdk_msgs_msg_ResponseHeader(writer, &(record->header));
    json_literal(writer, ",\"info\":");
    json_aimdk_msgs_msg_McActionInfo(writer, &(record->info));
    json_literal(writer, "}");
}

/** @brief Serialize every original field of aimdk_msgs/srv/GetRobotResources_Response. */
static void json_aimdk_msgs_srv_GetRobotResources_Response(agibot_json_writer* writer,
                                                           roswasmc_bounded_2_aimdk_msgs_srv_GetRobotResources_Response const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"header\":");
    json_aimdk_msgs_msg_CommonResponse(writer, &(record->header));
    json_literal(writer, ",\"robot_resources\":");
    json_literal(writer, "[");
    for(uint32_t index = 0; index < record->robot_resources.size; ++index)
    {
        if(index)
        {
            json_literal(writer, ",");
        }
        json_aimdk_msgs_msg_RobotResource(writer, &(record->robot_resources.data[index]));
    }
    json_literal(writer, "]");
    json_literal(writer, "}");
}

/** @brief Serialize every original field of builtin_interfaces/msg/Time. */
static void json_builtin_interfaces_msg_Time(agibot_json_writer* writer, roswasmc_bounded_2_builtin_interfaces_msg_Time const* record)
{
    json_literal(writer, "{");
    json_literal(writer, "\"sec\":");
    json_signed(writer, record->sec, 0);
    json_literal(writer, ",\"nanosec\":");
    json_unsigned(writer, record->nanosec, 0);
    json_literal(writer, "}");
}
