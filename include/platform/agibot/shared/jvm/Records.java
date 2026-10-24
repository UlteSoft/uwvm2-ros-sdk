/**
 * @file Records.java
 * @brief Provide the complete agibot Records.java source contract.
 * @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
 * encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
 */
package agibot.shared.jvm;

import uwvm.ros.Wire;

/**
 * @brief Complete original AimDK 1.1.0 main record codecs generated from the pinned schema.
 * @details Every original field is retained. The reader borrows canonical input; JSON owns
 * its text. Truncation, trailing data, bounds, UTF-8, NUL and nonfinite values are rejected.
 * Signed/unsigned 64-bit JSON values use exact decimal strings. No I/O is performed.
 */
public final class Records
{
    private Records()
    {
    }

    /** @brief Escape one owned Unicode scalar string as JSON. */
    private static void quote(StringBuilder output, String value)
    {
        output.append('"');
        for(int index = 0; index < value.length(); ++index)
        {
            char item = value.charAt(index);
            if(item < 32 || item == '"' || item == '\\')
            {
                output.append("\\u");
                for(int shift = 12; shift >= 0; shift -= 4)
                {
                    output.append("0123456789abcdef".charAt((item >>> shift) & 15));
                }
            }
            else
            {
                output.append(item);
            }
        }
        output.append('"');
    }

    /** @brief Reject NUL after the generic reader validates strict UTF-8. */
    private static String text(String value)
    {
        if(value.indexOf('\0') >= 0)
        {
            throw new IllegalArgumentException("NUL canonical string");
        }
        return value;
    }

    /** @brief Keep finite IEEE values round-trippable in JSON. */
    private static double finite(double value)
    {
        if(!Double.isFinite(value))
        {
            throw new IllegalArgumentException("Nonfinite canonical float");
        }
        return value;
    }

    /**
     * @brief Decode complete original fields under one explicit operation schema.
     * @param operation One query, two state, three resource enumeration.
     * @param bytes Borrowed capacity buffer containing complete canonical bytes.
     * @param length Exact initialized byte count, at most 32768.
     * @return Owned full JSON after complete consumption.
     * @throws IllegalArgumentException Invalid operation, extent or canonical data.
     */
    public static String decode(int operation, byte[] bytes, int length)
    {
        if(bytes == null || length < 0 || length > 32768)
        {
            throw new IllegalArgumentException("Invalid payload");
        }
        Wire.Reader input = new Wire.Reader(bytes, length);
        StringBuilder output = new StringBuilder();
        switch(operation)
        {
            case 1: record26(input, output); break;
            case 2: record8(input, output); break;
            case 3: record28(input, output); break;
            default: throw new IllegalArgumentException("Unknown observation");
        }
        input.finish();
        return output.toString();
    }

    /** @brief Retain every original field of aimdk_msgs/msg/CommonRequest. */
    private static void record0(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"header\":");
        record22(input, output);
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/CommonResponse. */
    private static void record1(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"header\":");
        record23(input, output);
        output.append(",\"status\":");
        record2(input, output);
        output.append(",\"message\":");
        quote(output, text(input.string(128)));
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/CommonState. */
    private static void record2(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"value\":");
        output.append(input.i32());
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/CurrentVersion. */
    private static void record3(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"version\":");
        quote(output, text(input.string(128)));
        output.append(",\"name\":");
        quote(output, text(input.string(128)));
        output.append(",\"files\":");
        {
            int count = input.count(16);
            output.append('[');
            for(int index = 0; index < count; ++index)
            {
                if(index != 0)
                {
                    output.append(',');
                }
                quote(output, text(input.string(128)));
            }
            output.append(']');
        }
        output.append(",\"download_timestamp_seconds\":");
        quote(output, Long.toUnsignedString(input.i64()));
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/McAction. */
    private static void record4(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"value\":");
        output.append(input.i32());
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/McActionInfo. */
    private static void record5(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"current_action\":");
        record4(input, output);
        output.append(",\"action_desc\":");
        quote(output, text(input.string(128)));
        output.append(",\"status\":");
        record6(input, output);
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/McActionStatus. */
    private static void record6(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"value\":");
        output.append(input.i32());
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/McBodyPoseStatus. */
    private static void record7(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"value\":");
        output.append(input.i32());
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/McCommonState. */
    private static void record8(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"header\":");
        record21(input, output);
        output.append(",\"input_source\":");
        record12(input, output);
        output.append(",\"action_info\":");
        record5(input, output);
        output.append(",\"runtime_model\":");
        record19(input, output);
        output.append(",\"motion_status\":");
        record16(input, output);
        output.append(",\"servo_status\":");
        record20(input, output);
        output.append(",\"fsm_state\":");
        record10(input, output);
        output.append(",\"body_status\":");
        record7(input, output);
        output.append(",\"speed_status\":");
        record15(input, output);
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/McControlArea. */
    private static void record9(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"value\":");
        output.append(input.i32());
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/McFsmState. */
    private static void record10(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"current_state\":");
        output.append(input.u32());
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/McHandStatus. */
    private static void record11(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"value\":");
        output.append(input.i32());
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/McInputSource. */
    private static void record12(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"name\":");
        quote(output, text(input.string(128)));
        output.append(",\"priority\":");
        output.append(input.i32());
        output.append(",\"timeout\":");
        output.append(input.i32());
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/McLocomotionSpeedBounds. */
    private static void record13(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"min_value\":");
        output.append(finite(input.f64()));
        output.append(",\"max_value\":");
        output.append(finite(input.f64()));
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/McLocomotionSpeedMode. */
    private static void record14(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"value\":");
        output.append(input.i32());
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/McLocomotionSpeedStatus. */
    private static void record15(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"speed_mode\":");
        record14(input, output);
        output.append(",\"forward_bounds\":");
        record13(input, output);
        output.append(",\"lateral_bounds\":");
        record13(input, output);
        output.append(",\"angular_bounds\":");
        record13(input, output);
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/McMotionStatus. */
    private static void record16(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"player_state\":");
        record18(input, output);
        output.append(",\"control_area\":");
        record9(input, output);
        output.append(",\"motion\":");
        quote(output, text(input.string(128)));
        output.append(",\"type\":");
        record17(input, output);
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/McMotionType. */
    private static void record17(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"value\":");
        output.append(input.i32());
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/McPlayerState. */
    private static void record18(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"value\":");
        output.append(input.u32());
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/McRuntimeModel. */
    private static void record19(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"waist_status\":");
        output.append(input.bool());
        output.append(",\"left_hand_status\":");
        record11(input, output);
        output.append(",\"right_hand_status\":");
        record11(input, output);
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/McServoStatus. */
    private static void record20(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"squat_enable\":");
        output.append(input.bool());
        output.append(",\"squat_offset\":");
        output.append(finite(input.f64()));
        output.append(",\"squat_limit\":");
        output.append(input.u32());
        output.append(",\"head_yaw_offset\":");
        output.append(finite(input.f64()));
        output.append(",\"head_pitch_offset\":");
        output.append(finite(input.f64()));
        output.append(",\"waist_yaw_offset\":");
        output.append(finite(input.f64()));
        output.append(",\"waist_pitch_offset\":");
        output.append(finite(input.f64()));
        output.append(",\"waist_roll_offset\":");
        output.append(finite(input.f64()));
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/MessageHeader. */
    private static void record21(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"stamp\":");
        record29(input, output);
        output.append(",\"frame_id\":");
        quote(output, text(input.string(128)));
        output.append(",\"sequence\":");
        output.append(input.u32());
        output.append(",\"meas_stamp\":");
        record29(input, output);
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/RequestHeader. */
    private static void record22(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"stamp\":");
        record29(input, output);
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/ResponseHeader. */
    private static void record23(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"stamp\":");
        record29(input, output);
        output.append(",\"code\":");
        quote(output, Long.toString(input.i64()));
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/msg/RobotResource. */
    private static void record24(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"resource_key\":");
        quote(output, text(input.string(128)));
        output.append(",\"current_version\":");
        record3(input, output);
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/srv/GetMcAction_Request. */
    private static void record25(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"request\":");
        record0(input, output);
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/srv/GetMcAction_Response. */
    private static void record26(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"header\":");
        record23(input, output);
        output.append(",\"info\":");
        record5(input, output);
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/srv/GetRobotResources_Request. */
    private static void record27(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"header\":");
        record0(input, output);
        output.append('}');
    }

    /** @brief Retain every original field of aimdk_msgs/srv/GetRobotResources_Response. */
    private static void record28(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"header\":");
        record1(input, output);
        output.append(",\"robot_resources\":");
        {
            int count = input.count(4);
            output.append('[');
            for(int index = 0; index < count; ++index)
            {
                if(index != 0)
                {
                    output.append(',');
                }
                record24(input, output);
            }
            output.append(']');
        }
        output.append('}');
    }

    /** @brief Retain every original field of builtin_interfaces/msg/Time. */
    private static void record29(Wire.Reader input, StringBuilder output)
    {
        output.append('{');
        output.append("\"sec\":");
        output.append(input.i32());
        output.append(",\"nanosec\":");
        output.append(input.u32());
        output.append('}');
    }
}
