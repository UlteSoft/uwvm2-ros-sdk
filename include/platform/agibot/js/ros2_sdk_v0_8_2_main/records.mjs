/**
 * @file records.mjs
 * @brief All original records over the shared genuine JavaScript codec.
 * @details No native resource or permission is acquired by a schema.
 */
import {Record, Registry} from "ros/js/wire";

export const REGISTRY = new Registry();

/** @brief Complete aimdk_msgs/msg/AgentPropertyIdType owning value. */
export class Ros2Aimdk_msgsMsgAgentPropertyIdType extends Record
{
    static schema = {
        "minimum" : 1,
        "maximum": 1,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_96958ff52528b07c7f9bc239e80676edc77b27faa077a3bed7222cf32d1ebf0b",
        "type": "aimdk_msgs/msg/AgentPropertyIdType",
        "ros_version": 2,
        "fields": [ {
            "name" : "value",
            "type": "uint8",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 1
        } ]
    };
    /** @brief Original declared constant; no instance bytes. */
    static AGENT_PROPERTY_UNDEFINED = 0;
    /** @brief Original declared constant; no instance bytes. */
    static AGENT_PROPERTY_LANGUAGE = 1;
    /** @brief Original declared constant; no instance bytes. */
    static AGENT_PROPERTY_RUN_MODE = 2;
    /** @brief Original declared constant; no instance bytes. */
    static AGENT_PROPERTY_GREET = 3;
    /** @brief Original declared constant; no instance bytes. */
    static AGENT_PROPERTY_HEAD_FOLLOW = 4;
    /** @brief Original declared constant; no instance bytes. */
    static AGENT_PROPERTY_DUPLEX_TIMEOUT = 5;
    /** @brief Original declared constant; no instance bytes. */
    static AGENT_PROPERTY_ENVIRONMENT_SWITCH = 6;
    /** @brief Original declared constant; no instance bytes. */
    static AGENT_PROPERTY_WELCOME_STATUS = 7;
}

REGISTRY.add(Ros2Aimdk_msgsMsgAgentPropertyIdType);

/** @brief Complete aimdk_msgs/msg/AgentPropertiesValue owning value. */
export class Ros2Aimdk_msgsMsgAgentPropertiesValue extends Record
{
    static schema = {
        "minimum" : 5,
        "maximum": 133,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_c7ec8887e5fb223291cb324c1ae21f20490955108ee137db384c6775fb332c6a",
        "type": "aimdk_msgs/msg/AgentPropertiesValue",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "key",
                    "type": "aimdk_msgs/msg/AgentPropertyIdType",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "value",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgAgentPropertiesValue);

/** @brief Complete aimdk_msgs/msg/AgentProperties owning value. */
export class Ros2Aimdk_msgsMsgAgentProperties extends Record
{
    static schema = {
        "minimum" : 4,
        "maximum": 536,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e729493bf2dfbd5ed1f726a95ac39d42f33a28f476edd13f66e75f9cb591694f",
        "type": "aimdk_msgs/msg/AgentProperties",
        "ros_version": 2,
        "fields": [ {
            "name" : "properties",
            "type": "aimdk_msgs/msg/AgentPropertiesValue",
            "array": "sequence",
            "count": 4,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 5
        } ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgAgentProperties);

/** @brief Complete aimdk_msgs/msg/AudioVadStateType owning value. */
export class Ros2Aimdk_msgsMsgAudioVadStateType extends Record
{
    static schema = {
        "minimum" : 1,
        "maximum": 1,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526",
        "type": "aimdk_msgs/msg/AudioVadStateType",
        "ros_version": 2,
        "fields": [ {
            "name" : "value",
            "type": "uint8",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 1
        } ]
    };
    /** @brief Original declared constant; no instance bytes. */
    static AUDIO_VAD_STATE_NONE = 0;
    /** @brief Original declared constant; no instance bytes. */
    static AUDIO_VAD_STATE_BEGIN = 1;
    /** @brief Original declared constant; no instance bytes. */
    static AUDIO_VAD_STATE_PROCESSING = 2;
    /** @brief Original declared constant; no instance bytes. */
    static AUDIO_VAD_STATE_END = 3;
}

REGISTRY.add(Ros2Aimdk_msgsMsgAudioVadStateType);

/** @brief Complete builtin_interfaces/msg/Time owning value. */
export class Ros2Builtin_interfacesMsgTime extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "normalized-time",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
        "type": "builtin_interfaces/msg/Time",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "sec",
                    "type": "int32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "nanosec",
                    "type": "uint32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Builtin_interfacesMsgTime);

/** @brief Complete aimdk_msgs/msg/RequestHeader owning value. */
export class Ros2Aimdk_msgsMsgRequestHeader extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000",
        "type": "aimdk_msgs/msg/RequestHeader",
        "ros_version": 2,
        "fields": [ {
            "name" : "stamp",
            "type": "builtin_interfaces/msg/Time",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 8
        } ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgRequestHeader);

/** @brief Complete aimdk_msgs/msg/CommonRequest owning value. */
export class Ros2Aimdk_msgsMsgCommonRequest extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7",
        "type": "aimdk_msgs/msg/CommonRequest",
        "ros_version": 2,
        "fields": [ {
            "name" : "header",
            "type": "aimdk_msgs/msg/RequestHeader",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 8
        } ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgCommonRequest);

/** @brief Complete aimdk_msgs/msg/ResponseHeader owning value. */
export class Ros2Aimdk_msgsMsgResponseHeader extends Record
{
    static schema = {
        "minimum" : 16,
        "maximum": 16,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90",
        "type": "aimdk_msgs/msg/ResponseHeader",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "stamp",
                    "type": "builtin_interfaces/msg/Time",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "code",
                    "type": "int64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgResponseHeader);

/** @brief Complete aimdk_msgs/msg/CommonState owning value. */
export class Ros2Aimdk_msgsMsgCommonState extends Record
{
    static schema = {
        "minimum" : 4,
        "maximum": 4,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e",
        "type": "aimdk_msgs/msg/CommonState",
        "ros_version": 2,
        "fields": [ {
            "name" : "value",
            "type": "int32",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 4
        } ]
    };
    /** @brief Original declared constant; no instance bytes. */
    static UNKNOWN = 0;
    /** @brief Original declared constant; no instance bytes. */
    static SUCCESS = 1;
    /** @brief Original declared constant; no instance bytes. */
    static FAILURE = 2;
    /** @brief Original declared constant; no instance bytes. */
    static ABORTED = 3;
    /** @brief Original declared constant; no instance bytes. */
    static TIMEOUT = 4;
    /** @brief Original declared constant; no instance bytes. */
    static INVALID = 5;
    /** @brief Original declared constant; no instance bytes. */
    static IN_MANUAL = 6;
    /** @brief Original declared constant; no instance bytes. */
    static NOT_READY = 100;
    /** @brief Original declared constant; no instance bytes. */
    static PENDING = 200;
    /** @brief Original declared constant; no instance bytes. */
    static CREATED = 300;
    /** @brief Original declared constant; no instance bytes. */
    static RUNNING = 400;
}

REGISTRY.add(Ros2Aimdk_msgsMsgCommonState);

/** @brief Complete aimdk_msgs/msg/CommonResponse owning value. */
export class Ros2Aimdk_msgsMsgCommonResponse extends Record
{
    static schema = {
        "minimum" : 24,
        "maximum": 152,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6",
        "type": "aimdk_msgs/msg/CommonResponse",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/ResponseHeader",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 16
                },
                {
                    "name" : "status",
                    "type": "aimdk_msgs/msg/CommonState",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgCommonResponse);

/** @brief Complete aimdk_msgs/msg/CommonTaskResponse owning value. */
export class Ros2Aimdk_msgsMsgCommonTaskResponse extends Record
{
    static schema = {
        "minimum" : 28,
        "maximum": 28,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2",
        "type": "aimdk_msgs/msg/CommonTaskResponse",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/ResponseHeader",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 16
                },
                {
                    "name" : "task_id",
                    "type": "uint64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "state",
                    "type": "aimdk_msgs/msg/CommonState",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgCommonTaskResponse);

/** @brief Complete aimdk_msgs/msg/MessageHeader owning value. */
export class Ros2Aimdk_msgsMsgMessageHeader extends Record
{
    static schema = {
        "minimum" : 24,
        "maximum": 152,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496",
        "type": "aimdk_msgs/msg/MessageHeader",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "stamp",
                    "type": "builtin_interfaces/msg/Time",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "frame_id",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "sequence",
                    "type": "uint32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "meas_stamp",
                    "type": "builtin_interfaces/msg/Time",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgMessageHeader);

/** @brief Complete aimdk_msgs/msg/FaceEmojiStatus owning value. */
export class Ros2Aimdk_msgsMsgFaceEmojiStatus extends Record
{
    static schema = {
        "minimum" : 47,
        "maximum": 2415,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7",
        "type": "aimdk_msgs/msg/FaceEmojiStatus",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/MessageHeader",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 24
                },
                {
                    "name" : "e_path",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "e_path_list",
                    "type": "string",
                    "array": "sequence",
                    "count": 16,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "e_id",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "mode",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "priority",
                    "type": "int32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "status",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "time_to_end_ms",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                }
            ]
    };
    /** @brief Original declared constant; no instance bytes. */
    static STATUS_IDLE = 0;
    /** @brief Original declared constant; no instance bytes. */
    static STATUS_START = 1;
    /** @brief Original declared constant; no instance bytes. */
    static STATUS_RUNNING = 2;
    /** @brief Original declared constant; no instance bytes. */
    static STATUS_FINISHED = 3;
    /** @brief Original declared constant; no instance bytes. */
    static STATUS_STOPPED = 4;
}

REGISTRY.add(Ros2Aimdk_msgsMsgFaceEmojiStatus);

/** @brief Complete aimdk_msgs/msg/HandCommand owning value. */
export class Ros2Aimdk_msgsMsgHandCommand extends Record
{
    static schema = {
        "minimum" : 44,
        "maximum": 172,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8",
        "type": "aimdk_msgs/msg/HandCommand",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "name",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "position",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "velocity",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "acceleration",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "deceleration",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "effort",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgHandCommand);

/** @brief Complete aimdk_msgs/msg/HandType owning value. */
export class Ros2Aimdk_msgsMsgHandType extends Record
{
    static schema = {
        "minimum" : 1,
        "maximum": 1,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6",
        "type": "aimdk_msgs/msg/HandType",
        "ros_version": 2,
        "fields": [ {
            "name" : "value",
            "type": "uint8",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 1
        } ]
    };
    /** @brief Original declared constant; no instance bytes. */
    static NONE = 0;
    /** @brief Original declared constant; no instance bytes. */
    static NIMBLE_HANDS = 1;
    /** @brief Original declared constant; no instance bytes. */
    static CLAW = 2;
    /** @brief Original declared constant; no instance bytes. */
    static ERROR = 255;
}

REGISTRY.add(Ros2Aimdk_msgsMsgHandType);

/** @brief Complete aimdk_msgs/msg/HandCommandArray owning value. */
export class Ros2Aimdk_msgsMsgHandCommandArray extends Record
{
    static schema = {
        "minimum" : 34,
        "maximum": 1538,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e",
        "type": "aimdk_msgs/msg/HandCommandArray",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/MessageHeader",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 24
                },
                {
                    "name" : "left_hand_type",
                    "type": "aimdk_msgs/msg/HandType",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "left_hands",
                    "type": "aimdk_msgs/msg/HandCommand",
                    "array": "sequence",
                    "count": 4,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 44
                },
                {
                    "name" : "right_hand_type",
                    "type": "aimdk_msgs/msg/HandType",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "right_hands",
                    "type": "aimdk_msgs/msg/HandCommand",
                    "array": "sequence",
                    "count": 4,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 44
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgHandCommandArray);

/** @brief Complete aimdk_msgs/msg/HandState owning value. */
export class Ros2Aimdk_msgsMsgHandState extends Record
{
    static schema = {
        "minimum" : 36,
        "maximum": 164,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c",
        "type": "aimdk_msgs/msg/HandState",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "name",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "position",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "velocity",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "effort",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "state",
                    "type": "int32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "faultcode",
                    "type": "int32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgHandState);

/** @brief Complete aimdk_msgs/msg/HandStateArray owning value. */
export class Ros2Aimdk_msgsMsgHandStateArray extends Record
{
    static schema = {
        "minimum" : 34,
        "maximum": 1474,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d",
        "type": "aimdk_msgs/msg/HandStateArray",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/MessageHeader",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 24
                },
                {
                    "name" : "left_hand_type",
                    "type": "aimdk_msgs/msg/HandType",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "left_hands",
                    "type": "aimdk_msgs/msg/HandState",
                    "array": "sequence",
                    "count": 4,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 36
                },
                {
                    "name" : "right_hand_type",
                    "type": "aimdk_msgs/msg/HandType",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "right_hands",
                    "type": "aimdk_msgs/msg/HandState",
                    "array": "sequence",
                    "count": 4,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 36
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgHandStateArray);

/** @brief Complete aimdk_msgs/msg/JointCommand owning value. */
export class Ros2Aimdk_msgsMsgJointCommand extends Record
{
    static schema = {
        "minimum" : 44,
        "maximum": 172,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f",
        "type": "aimdk_msgs/msg/JointCommand",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "name",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "position",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "velocity",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "effort",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "stiffness",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "damping",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgJointCommand);

/** @brief Complete aimdk_msgs/msg/JointCommandArray owning value. */
export class Ros2Aimdk_msgsMsgJointCommandArray extends Record
{
    static schema = {
        "minimum" : 28,
        "maximum": 11164,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6",
        "type": "aimdk_msgs/msg/JointCommandArray",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/MessageHeader",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 24
                },
                {
                    "name" : "joints",
                    "type": "aimdk_msgs/msg/JointCommand",
                    "array": "sequence",
                    "count": 64,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 44
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgJointCommandArray);

/** @brief Complete aimdk_msgs/msg/JointState owning value. */
export class Ros2Aimdk_msgsMsgJointState extends Record
{
    static schema = {
        "minimum" : 31,
        "maximum": 159,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f",
        "type": "aimdk_msgs/msg/JointState",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "name",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "position",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "velocity",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "effort",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "coil_temp",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "motor_temp",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "motor_vol",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgJointState);

/** @brief Complete aimdk_msgs/msg/JointStateArray owning value. */
export class Ros2Aimdk_msgsMsgJointStateArray extends Record
{
    static schema = {
        "minimum" : 28,
        "maximum": 10332,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6bf212a55e2cbe59e4e1bd675bdb41d3461db28e11d91244c21bac45070683fa",
        "type": "aimdk_msgs/msg/JointStateArray",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/MessageHeader",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 24
                },
                {
                    "name" : "joints",
                    "type": "aimdk_msgs/msg/JointState",
                    "array": "sequence",
                    "count": 64,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 31
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgJointStateArray);

/** @brief Complete aimdk_msgs/msg/McAction owning value. */
export class Ros2Aimdk_msgsMsgMcAction extends Record
{
    static schema = {
        "minimum" : 4,
        "maximum": 4,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b",
        "type": "aimdk_msgs/msg/McAction",
        "ros_version": 2,
        "fields": [ {
            "name" : "value",
            "type": "int32",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 4
        } ]
    };
    /** @brief Original declared constant; no instance bytes. */
    static PASSIVE_DEFAULT = 1;
    /** @brief Original declared constant; no instance bytes. */
    static SOFT_EMERGENCY_STOP = 2;
    /** @brief Original declared constant; no instance bytes. */
    static DAMPING_DEFAULT = 3;
    /** @brief Original declared constant; no instance bytes. */
    static ZERO_TORQUE_DEFAULT = 4;
    /** @brief Original declared constant; no instance bytes. */
    static JOINT_DEFAULT = 100;
    /** @brief Original declared constant; no instance bytes. */
    static JOINT_FREEZE = 101;
    /** @brief Original declared constant; no instance bytes. */
    static STAND_DEFAULT = 200;
    /** @brief Original declared constant; no instance bytes. */
    static STAND_BODY_CONTROL = 201;
    /** @brief Original declared constant; no instance bytes. */
    static LOCOMOTION_DEFAULT = 300;
    /** @brief Original declared constant; no instance bytes. */
    static RUN_DEFAULT = 301;
    /** @brief Original declared constant; no instance bytes. */
    static LOCOMOTION_STEP = 302;
    /** @brief Original declared constant; no instance bytes. */
    static VR_REMOTE_CONTROLLER = 400;
    /** @brief Original declared constant; no instance bytes. */
    static SIT_DOWN_DEFAULT = 2000;
    /** @brief Original declared constant; no instance bytes. */
    static CROUCH_DOWN_DEFAULT = 2002;
    /** @brief Original declared constant; no instance bytes. */
    static LIE_DOWN_DEFAULT = 2004;
    /** @brief Original declared constant; no instance bytes. */
    static STAND_UP_DEFAULT = 2005;
    /** @brief Original declared constant; no instance bytes. */
    static ASCEND_STAIRS = 2006;
    /** @brief Original declared constant; no instance bytes. */
    static DESCEND_STAIRS = 2008;
}

REGISTRY.add(Ros2Aimdk_msgsMsgMcAction);

/** @brief Complete aimdk_msgs/msg/McActionCommand owning value. */
export class Ros2Aimdk_msgsMsgMcActionCommand extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 136,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648",
        "type": "aimdk_msgs/msg/McActionCommand",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "action",
                    "type": "aimdk_msgs/msg/McAction",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "action_desc",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgMcActionCommand);

/** @brief Complete aimdk_msgs/msg/McActionStatus owning value. */
export class Ros2Aimdk_msgsMsgMcActionStatus extends Record
{
    static schema = {
        "minimum" : 4,
        "maximum": 4,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48",
        "type": "aimdk_msgs/msg/McActionStatus",
        "ros_version": 2,
        "fields": [ {
            "name" : "value",
            "type": "int32",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 4
        } ]
    };
    /** @brief Original declared constant; no instance bytes. */
    static IDLE = 0;
    /** @brief Original declared constant; no instance bytes. */
    static RUNNING = 100;
    /** @brief Original declared constant; no instance bytes. */
    static TRANSITION = 200;
}

REGISTRY.add(Ros2Aimdk_msgsMsgMcActionStatus);

/** @brief Complete aimdk_msgs/msg/McActionInfo owning value. */
export class Ros2Aimdk_msgsMsgMcActionInfo extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9",
        "type": "aimdk_msgs/msg/McActionInfo",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "current_action",
                    "type": "aimdk_msgs/msg/McAction",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "action_desc",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "status",
                    "type": "aimdk_msgs/msg/McActionStatus",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgMcActionInfo);

/** @brief Complete aimdk_msgs/msg/McControlArea owning value. */
export class Ros2Aimdk_msgsMsgMcControlArea extends Record
{
    static schema = {
        "minimum" : 4,
        "maximum": 4,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9",
        "type": "aimdk_msgs/msg/McControlArea",
        "ros_version": 2,
        "fields": [ {
            "name" : "value",
            "type": "int32",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 4
        } ]
    };
    /** @brief Original declared constant; no instance bytes. */
    static NONE = 0;
    /** @brief Original declared constant; no instance bytes. */
    static LEFT_HAND = 1;
    /** @brief Original declared constant; no instance bytes. */
    static RIGHT_HAND = 2;
    /** @brief Original declared constant; no instance bytes. */
    static HEAD = 4;
    /** @brief Original declared constant; no instance bytes. */
    static WAIST = 8;
}

REGISTRY.add(Ros2Aimdk_msgsMsgMcControlArea);

/** @brief Complete aimdk_msgs/msg/McInputAction owning value. */
export class Ros2Aimdk_msgsMsgMcInputAction extends Record
{
    static schema = {
        "minimum" : 4,
        "maximum": 4,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9",
        "type": "aimdk_msgs/msg/McInputAction",
        "ros_version": 2,
        "fields": [ {
            "name" : "value",
            "type": "int32",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 4
        } ]
    };
    /** @brief Original declared constant; no instance bytes. */
    static INPUTACTION_ADD = 1001;
    /** @brief Original declared constant; no instance bytes. */
    static INPUTACTION_MODIFY = 1002;
    /** @brief Original declared constant; no instance bytes. */
    static INPUTACTION_DELETE = 1003;
    /** @brief Original declared constant; no instance bytes. */
    static INPUTACTION_ENABLE = 2001;
    /** @brief Original declared constant; no instance bytes. */
    static INPUTACTION_DISABLE = 2002;
}

REGISTRY.add(Ros2Aimdk_msgsMsgMcInputAction);

/** @brief Complete aimdk_msgs/msg/McInputSource owning value. */
export class Ros2Aimdk_msgsMsgMcInputSource extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd",
        "type": "aimdk_msgs/msg/McInputSource",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "name",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "priority",
                    "type": "int32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "timeout",
                    "type": "int32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgMcInputSource);

/** @brief Complete aimdk_msgs/msg/McLocomotionVelocity owning value. */
export class Ros2Aimdk_msgsMsgMcLocomotionVelocity extends Record
{
    static schema = {
        "minimum" : 52,
        "maximum": 308,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00",
        "type": "aimdk_msgs/msg/McLocomotionVelocity",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/MessageHeader",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 24
                },
                {
                    "name" : "source",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "forward_velocity",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "lateral_velocity",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "angular_velocity",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgMcLocomotionVelocity);

/** @brief Complete aimdk_msgs/msg/McPresetMotion owning value. */
export class Ros2Aimdk_msgsMsgMcPresetMotion extends Record
{
    static schema = {
        "minimum" : 4,
        "maximum": 4,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153",
        "type": "aimdk_msgs/msg/McPresetMotion",
        "ros_version": 2,
        "fields": [ {
            "name" : "value",
            "type": "int32",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 4
        } ]
    };
    /** @brief Original declared constant; no instance bytes. */
    static RAISE_HAND = 1001;
    /** @brief Original declared constant; no instance bytes. */
    static WAVE_HAND = 1002;
    /** @brief Original declared constant; no instance bytes. */
    static SHAKE_HAND = 1003;
    /** @brief Original declared constant; no instance bytes. */
    static FLYING_KISS_HAND = 1004;
    /** @brief Original declared constant; no instance bytes. */
    static CLAP_HAND = 1008;
    /** @brief Original declared constant; no instance bytes. */
    static TURN_WAVE_HAND = 2001;
    /** @brief Original declared constant; no instance bytes. */
    static INTERACTION_BOW = 3001;
    /** @brief Original declared constant; no instance bytes. */
    static INTERACTION_LIKE = 3002;
    /** @brief Original declared constant; no instance bytes. */
    static INTERACTION_YE = 3003;
    /** @brief Original declared constant; no instance bytes. */
    static INTERACTION_SWEATHEART = 3004;
    /** @brief Original declared constant; no instance bytes. */
    static SALUTE = 1013;
    /** @brief Original declared constant; no instance bytes. */
    static INTERACTION_SAD = 3006;
    /** @brief Original declared constant; no instance bytes. */
    static INTERACTION_LIGHTWAVE = 3007;
    /** @brief Original declared constant; no instance bytes. */
    static INTERACTION_HUG = 3008;
    /** @brief Original declared constant; no instance bytes. */
    static INTERACTION_HANDX = 3009;
    /** @brief Original declared constant; no instance bytes. */
    static INTERACTION_CHESTWAVE = 3010;
    /** @brief Original declared constant; no instance bytes. */
    static INTERACTION_CHEER = 3011;
    /** @brief Original declared constant; no instance bytes. */
    static INTERACTION_BLOWKISS = 3012;
    /** @brief Original declared constant; no instance bytes. */
    static INTERACTION_BASSDANCE1 = 3013;
    /** @brief Original declared constant; no instance bytes. */
    static INTERACTION_BASSDANCE2 = 3014;
    /** @brief Original declared constant; no instance bytes. */
    static HITCLAP = 3015;
    /** @brief Original declared constant; no instance bytes. */
    static INTERACTION_SPEAK = 3016;
    /** @brief Original declared constant; no instance bytes. */
    static CLIPFIST = 1009;
    /** @brief Original declared constant; no instance bytes. */
    static INTERACTION_PHOTOPOSTURE = 3018;
    /** @brief Original declared constant; no instance bytes. */
    static INTERACTION_PHOTOTRIPPLEPOSTURE = 3019;
    /** @brief Original declared constant; no instance bytes. */
    static POINT_HEAD = 4001;
    /** @brief Original declared constant; no instance bytes. */
    static SHAKE_HEAD = 4002;
}

REGISTRY.add(Ros2Aimdk_msgsMsgMcPresetMotion);

/** @brief Complete aimdk_msgs/msg/TtsPriorityLevel owning value. */
export class Ros2Aimdk_msgsMsgTtsPriorityLevel extends Record
{
    static schema = {
        "minimum" : 1,
        "maximum": 1,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_38bce7b033528697c6667c348c66d327a0d63f176b519189d3720279591cd90a",
        "type": "aimdk_msgs/msg/TtsPriorityLevel",
        "ros_version": 2,
        "fields": [ {
            "name" : "value",
            "type": "uint8",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 1
        } ]
    };
    /** @brief Original declared constant; no instance bytes. */
    static UNKNOWN = 0;
    /** @brief Original declared constant; no instance bytes. */
    static BACKGROUND_L1 = 1;
    /** @brief Original declared constant; no instance bytes. */
    static SERVICE_L2 = 2;
    /** @brief Original declared constant; no instance bytes. */
    static MISSION_L4 = 4;
    /** @brief Original declared constant; no instance bytes. */
    static INTERACTION_L6 = 6;
    /** @brief Original declared constant; no instance bytes. */
    static WARNING_L8 = 8;
    /** @brief Original declared constant; no instance bytes. */
    static SAFETY_L10 = 10;
}

REGISTRY.add(Ros2Aimdk_msgsMsgTtsPriorityLevel);

/** @brief Complete aimdk_msgs/msg/PlayMediaFileRequest owning value. */
export class Ros2Aimdk_msgsMsgPlayMediaFileRequest extends Record
{
    static schema = {
        "minimum" : 22,
        "maximum": 406,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_de5d1ad3e7b16b0aaac78736982e24c1a1f3366952cb1b08f59a86bfaf70d254",
        "type": "aimdk_msgs/msg/PlayMediaFileRequest",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "file_name",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "sample_rate",
                    "type": "uint32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "priority_level",
                    "type": "aimdk_msgs/msg/TtsPriorityLevel",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "priority_weight",
                    "type": "uint32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "domain",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "trace_id",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "is_interrupted",
                    "type": "bool",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgPlayMediaFileRequest);

/** @brief Complete aimdk_msgs/msg/PlayTtsRequest owning value. */
export class Ros2Aimdk_msgsMsgPlayTtsRequest extends Record
{
    static schema = {
        "minimum" : 18,
        "maximum": 402,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_d6410f21a03f560429a39216f36ce03ad040323054f5775b75586b3890802bbd",
        "type": "aimdk_msgs/msg/PlayTtsRequest",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "text",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "priority_level",
                    "type": "aimdk_msgs/msg/TtsPriorityLevel",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "priority_weight",
                    "type": "uint32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "domain",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "trace_id",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "is_interrupted",
                    "type": "bool",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgPlayTtsRequest);

/** @brief Complete aimdk_msgs/msg/PlayTtsResponse owning value. */
export class Ros2Aimdk_msgsMsgPlayTtsResponse extends Record
{
    static schema = {
        "minimum" : 26,
        "maximum": 538,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_8347d2c5ae04c1db9ea2fd0c6afdffcb5e1327a170e15a7e861a00a08c8a8af3",
        "type": "aimdk_msgs/msg/PlayTtsResponse",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "text",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "priority_level",
                    "type": "aimdk_msgs/msg/TtsPriorityLevel",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "priority_weight",
                    "type": "uint32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "domain",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "trace_id",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "is_success",
                    "type": "bool",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "error_message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "estimated_duration",
                    "type": "uint32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgPlayTtsResponse);

/** @brief Complete aimdk_msgs/msg/PmuState owning value. */
export class Ros2Aimdk_msgsMsgPmuState extends Record
{
    static schema = {
        "minimum" : 201,
        "maximum": 1097,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c",
        "type": "aimdk_msgs/msg/PmuState",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "pmu_software_version",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "pmu_hardware_version",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "pmu_protocol_version",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "pmu_bool_status",
                    "type": "uint32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "head_power_current",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "output_48v_current",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "rk3588_current",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "output_12v_current",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "bus_48v_current",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "orin_current",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "bus_48v_pmos_voltage",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "battery_voltage",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "fan_voltage",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "output_12v_voltage",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "output_48v_voltage",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "bus_48v_voltage",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "head_power_voltage",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "orin_voltage",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "rk3588_voltage",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "bms_manufacturer",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "bms_serial_number",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "bms_hardware_version",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "bms_software_version",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "bms_status_bits",
                    "type": "uint32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "battery_balance_line_resistance",
                    "type": "uint16",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 2
                },
                {
                    "name" : "battery_pack_voltage",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "battery_current",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "battery_output_power",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "battery_temperature",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "battery_remaining_capacity",
                    "type": "uint32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "battery_remaining_capacity_percentage",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "battery_cycle_count",
                    "type": "uint16",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 2
                },
                {
                    "name" : "battery_cycle_total_capacity",
                    "type": "uint32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgPmuState);

/** @brief Complete aimdk_msgs/msg/ProcessedAudioOutput owning value. */
export class Ros2Aimdk_msgsMsgProcessedAudioOutput extends Record
{
    static schema = {
        "minimum" : 33,
        "maximum": 417,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30",
        "type": "aimdk_msgs/msg/ProcessedAudioOutput",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/MessageHeader",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 24
                },
                {
                    "name" : "stream_id",
                    "type": "uint32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "audio_vad_state",
                    "type": "aimdk_msgs/msg/AudioVadStateType",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "audio_data",
                    "type": "uint8",
                    "array": "sequence",
                    "count": 256,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgProcessedAudioOutput);

/** @brief Complete aimdk_msgs/msg/TouchState owning value. */
export class Ros2Aimdk_msgsMsgTouchState extends Record
{
    static schema = {
        "minimum" : 97,
        "maximum": 225,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564",
        "type": "aimdk_msgs/msg/TouchState",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/MessageHeader",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 24
                },
                {
                    "name" : "event_type",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "data",
                    "type": "uint32",
                    "array": "array",
                    "count": 8,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "threshold",
                    "type": "uint32",
                    "array": "array",
                    "count": 8,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "is_touched",
                    "type": "bool",
                    "array": "array",
                    "count": 8,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                }
            ]
    };
    /** @brief Original declared constant; no instance bytes. */
    static UNKNOWN = 0;
    /** @brief Original declared constant; no instance bytes. */
    static IDLE = 1;
    /** @brief Original declared constant; no instance bytes. */
    static TOUCH = 2;
    /** @brief Original declared constant; no instance bytes. */
    static SLIDE = 3;
    /** @brief Original declared constant; no instance bytes. */
    static PAT_ONCE = 4;
    /** @brief Original declared constant; no instance bytes. */
    static PAT_TWICE = 5;
    /** @brief Original declared constant; no instance bytes. */
    static PAT_TRIPLE = 6;
}

REGISTRY.add(Ros2Aimdk_msgsMsgTouchState);

/** @brief Complete aimdk_msgs/srv/GetAllJointState_Request owning value. */
export class Ros2Aimdk_msgsSrvGetAllJointState_Request extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260",
        "type": "aimdk_msgs/srv/GetAllJointState_Request",
        "ros_version": 2,
        "fields": [ {
            "name" : "request",
            "type": "aimdk_msgs/msg/CommonRequest",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 8
        } ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvGetAllJointState_Request);

/** @brief Complete aimdk_msgs/srv/GetAllJointState_Response owning value. */
export class Ros2Aimdk_msgsSrvGetAllJointState_Response extends Record
{
    static schema = {
        "minimum" : 40,
        "maximum": 2712,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793",
        "type": "aimdk_msgs/srv/GetAllJointState_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "reponse",
                    "type": "aimdk_msgs/msg/CommonResponse",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 24
                },
                {
                    "name" : "head_joints",
                    "type": "aimdk_msgs/msg/JointState",
                    "array": "sequence",
                    "count": 4,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 31
                },
                {
                    "name" : "arm_joints",
                    "type": "aimdk_msgs/msg/JointState",
                    "array": "sequence",
                    "count": 4,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 31
                },
                {
                    "name" : "waist_joints",
                    "type": "aimdk_msgs/msg/JointState",
                    "array": "sequence",
                    "count": 4,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 31
                },
                {
                    "name" : "leg_joints",
                    "type": "aimdk_msgs/msg/JointState",
                    "array": "sequence",
                    "count": 4,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 31
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvGetAllJointState_Response);

/** @brief Complete aimdk_msgs/srv/GetCurrentInputSource_Request owning value. */
export class Ros2Aimdk_msgsSrvGetCurrentInputSource_Request extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a",
        "type": "aimdk_msgs/srv/GetCurrentInputSource_Request",
        "ros_version": 2,
        "fields": [ {
            "name" : "request",
            "type": "aimdk_msgs/msg/CommonRequest",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 8
        } ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvGetCurrentInputSource_Request);

/** @brief Complete aimdk_msgs/srv/GetCurrentInputSource_Response owning value. */
export class Ros2Aimdk_msgsSrvGetCurrentInputSource_Response extends Record
{
    static schema = {
        "minimum" : 40,
        "maximum": 168,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e",
        "type": "aimdk_msgs/srv/GetCurrentInputSource_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "response",
                    "type": "aimdk_msgs/msg/CommonTaskResponse",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 28
                },
                {
                    "name" : "input_source",
                    "type": "aimdk_msgs/msg/McInputSource",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 12
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvGetCurrentInputSource_Response);

/** @brief Complete aimdk_msgs/srv/GetHandType_Request owning value. */
export class Ros2Aimdk_msgsSrvGetHandType_Request extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470",
        "type": "aimdk_msgs/srv/GetHandType_Request",
        "ros_version": 2,
        "fields": [ {
            "name" : "request",
            "type": "aimdk_msgs/msg/CommonRequest",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 8
        } ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvGetHandType_Request);

/** @brief Complete aimdk_msgs/srv/GetHandType_Response owning value. */
export class Ros2Aimdk_msgsSrvGetHandType_Response extends Record
{
    static schema = {
        "minimum" : 26,
        "maximum": 154,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c",
        "type": "aimdk_msgs/srv/GetHandType_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "reponse",
                    "type": "aimdk_msgs/msg/CommonResponse",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 24
                },
                {
                    "name" : "left_hands_type",
                    "type": "aimdk_msgs/msg/HandType",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "right_hands_type",
                    "type": "aimdk_msgs/msg/HandType",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvGetHandType_Response);

/** @brief Complete aimdk_msgs/srv/GetMcAction_Request owning value. */
export class Ros2Aimdk_msgsSrvGetMcAction_Request extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe",
        "type": "aimdk_msgs/srv/GetMcAction_Request",
        "ros_version": 2,
        "fields": [ {
            "name" : "request",
            "type": "aimdk_msgs/msg/CommonRequest",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 8
        } ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvGetMcAction_Request);

/** @brief Complete aimdk_msgs/srv/GetMcAction_Response owning value. */
export class Ros2Aimdk_msgsSrvGetMcAction_Response extends Record
{
    static schema = {
        "minimum" : 28,
        "maximum": 156,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f",
        "type": "aimdk_msgs/srv/GetMcAction_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/ResponseHeader",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 16
                },
                {
                    "name" : "info",
                    "type": "aimdk_msgs/msg/McActionInfo",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 12
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvGetMcAction_Response);

/** @brief Complete aimdk_msgs/srv/GetMute_Request owning value. */
export class Ros2Aimdk_msgsSrvGetMute_Request extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5",
        "type": "aimdk_msgs/srv/GetMute_Request",
        "ros_version": 2,
        "fields": [ {
            "name" : "request",
            "type": "aimdk_msgs/msg/CommonRequest",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 8
        } ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvGetMute_Request);

/** @brief Complete aimdk_msgs/srv/GetMute_Response owning value. */
export class Ros2Aimdk_msgsSrvGetMute_Response extends Record
{
    static schema = {
        "minimum" : 25,
        "maximum": 153,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42",
        "type": "aimdk_msgs/srv/GetMute_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "reponse",
                    "type": "aimdk_msgs/msg/CommonResponse",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 24
                },
                {
                    "name" : "is_mute",
                    "type": "bool",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvGetMute_Response);

/** @brief Complete aimdk_msgs/srv/GetVolume_Request owning value. */
export class Ros2Aimdk_msgsSrvGetVolume_Request extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b",
        "type": "aimdk_msgs/srv/GetVolume_Request",
        "ros_version": 2,
        "fields": [ {
            "name" : "request",
            "type": "aimdk_msgs/msg/CommonRequest",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 8
        } ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvGetVolume_Request);

/** @brief Complete aimdk_msgs/srv/GetVolume_Response owning value. */
export class Ros2Aimdk_msgsSrvGetVolume_Response extends Record
{
    static schema = {
        "minimum" : 28,
        "maximum": 156,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266",
        "type": "aimdk_msgs/srv/GetVolume_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "reponse",
                    "type": "aimdk_msgs/msg/CommonResponse",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 24
                },
                {
                    "name" : "audio_volume",
                    "type": "uint32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvGetVolume_Response);

/** @brief Complete aimdk_msgs/srv/LedStripCommand_Request owning value. */
export class Ros2Aimdk_msgsSrvLedStripCommand_Request extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 12,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6",
        "type": "aimdk_msgs/srv/LedStripCommand_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "request",
                    "type": "aimdk_msgs/msg/CommonRequest",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "led_strip_mode",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "r",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "g",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "b",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                }
            ]
    };
    /** @brief Original declared constant; no instance bytes. */
    static LED_STRIP_MODE_CONSTANT = 0;
    /** @brief Original declared constant; no instance bytes. */
    static LED_STRIP_MODE_BREATH = 1;
    /** @brief Original declared constant; no instance bytes. */
    static LED_STRIP_MODE_FLASH = 2;
    /** @brief Original declared constant; no instance bytes. */
    static LED_STRIP_MODE_FLOW = 3;
    /** @brief Original declared constant; no instance bytes. */
    static LED_STRIP_MODE_MAX = 4;
}

REGISTRY.add(Ros2Aimdk_msgsSrvLedStripCommand_Request);

/** @brief Complete aimdk_msgs/srv/LedStripCommand_Response owning value. */
export class Ros2Aimdk_msgsSrvLedStripCommand_Response extends Record
{
    static schema = {
        "minimum" : 18,
        "maximum": 18,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9",
        "type": "aimdk_msgs/srv/LedStripCommand_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/ResponseHeader",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 16
                },
                {
                    "name" : "status_code",
                    "type": "uint16",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 2
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvLedStripCommand_Response);

/** @brief Complete aimdk_msgs/srv/PlayEmoji_Request owning value. */
export class Ros2Aimdk_msgsSrvPlayEmoji_Request extends Record
{
    static schema = {
        "minimum" : 14,
        "maximum": 14,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43",
        "type": "aimdk_msgs/srv/PlayEmoji_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/CommonRequest",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "emotion_id",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "mode",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "priority",
                    "type": "int32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_UNKNOWN = 0;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_IDLE_BLINK = 1;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_IDLE_CALM_1 = 10;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_IDLE_CALM_2 = 11;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_IDLE_GAME = 20;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_IDLE_CUTE_1 = 30;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_IDLE_CUTE_2 = 31;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_IDLE_CUTE_3 = 32;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_IDLE_CUTE_4 = 33;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_CLOSE = 40;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_OPEN = 50;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_BORING_1 = 60;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_ABNORMAL = 70;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_SLEEPY = 80;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_HAPPY = 90;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_EXTREMEHAPPY_1 = 100;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_EXTREMEHAPPY_2 = 101;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_SAD = 110;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_SYMPATHY = 120;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_CONFUSE = 130;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_SHOCK = 140;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_ACTCUTE = 150;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_SERIOUS = 160;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_THINKING = 170;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_ANGRY = 180;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_EXTREMEANGRY = 190;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_ADORE = 200;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_EXTREMEADORE = 210;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_EYE_CHARGE = 220;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_MODE_ONCE = 1;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_MODE_LOOP = 2;
}

REGISTRY.add(Ros2Aimdk_msgsSrvPlayEmoji_Request);

/** @brief Complete aimdk_msgs/srv/PlayEmoji_Response owning value. */
export class Ros2Aimdk_msgsSrvPlayEmoji_Response extends Record
{
    static schema = {
        "minimum" : 29,
        "maximum": 285,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9",
        "type": "aimdk_msgs/srv/PlayEmoji_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/CommonResponse",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 24
                },
                {
                    "name" : "success",
                    "type": "bool",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvPlayEmoji_Response);

/** @brief Complete aimdk_msgs/srv/PlayMediaFile_Request owning value. */
export class Ros2Aimdk_msgsSrvPlayMediaFile_Request extends Record
{
    static schema = {
        "minimum" : 30,
        "maximum": 414,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_546706b9797f99c98a014f9849171aef262775e8ab702cfe6517d92f5047247c",
        "type": "aimdk_msgs/srv/PlayMediaFile_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/CommonRequest",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "media_file_req",
                    "type": "aimdk_msgs/msg/PlayMediaFileRequest",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 22
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvPlayMediaFile_Request);

/** @brief Complete aimdk_msgs/srv/PlayMediaFile_Response owning value. */
export class Ros2Aimdk_msgsSrvPlayMediaFile_Response extends Record
{
    static schema = {
        "minimum" : 50,
        "maximum": 690,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_124871324704ab61f208168e64d4789376b3935b34895e824996e07561795099",
        "type": "aimdk_msgs/srv/PlayMediaFile_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/CommonResponse",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 24
                },
                {
                    "name" : "tts_resp",
                    "type": "aimdk_msgs/msg/PlayTtsResponse",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 26
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvPlayMediaFile_Response);

/** @brief Complete aimdk_msgs/srv/PlayTts_Request owning value. */
export class Ros2Aimdk_msgsSrvPlayTts_Request extends Record
{
    static schema = {
        "minimum" : 26,
        "maximum": 410,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_2325b475e9d2777afe139aff54b29254f3e0ac0fd1fa499db049cf535810c6f7",
        "type": "aimdk_msgs/srv/PlayTts_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/CommonRequest",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "tts_req",
                    "type": "aimdk_msgs/msg/PlayTtsRequest",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 18
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvPlayTts_Request);

/** @brief Complete aimdk_msgs/srv/PlayTts_Response owning value. */
export class Ros2Aimdk_msgsSrvPlayTts_Response extends Record
{
    static schema = {
        "minimum" : 50,
        "maximum": 690,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_a0587cd9d9294f30dc27c095bfc1acdf54d98b47cf4ac8ddd77b6b75530c290a",
        "type": "aimdk_msgs/srv/PlayTts_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/CommonResponse",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 24
                },
                {
                    "name" : "tts_resp",
                    "type": "aimdk_msgs/msg/PlayTtsResponse",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 26
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvPlayTts_Response);

/** @brief Complete aimdk_msgs/srv/PlayVideo_Request owning value. */
export class Ros2Aimdk_msgsSrvPlayVideo_Request extends Record
{
    static schema = {
        "minimum" : 17,
        "maximum": 145,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878",
        "type": "aimdk_msgs/srv/PlayVideo_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/CommonRequest",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "video_path",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "mode",
                    "type": "uint8",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "priority",
                    "type": "int32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_MODE_ONCE = 1;
    /** @brief Original declared constant; no instance bytes. */
    static EMOTION_MODE_LOOP = 2;
}

REGISTRY.add(Ros2Aimdk_msgsSrvPlayVideo_Request);

/** @brief Complete aimdk_msgs/srv/PlayVideo_Response owning value. */
export class Ros2Aimdk_msgsSrvPlayVideo_Response extends Record
{
    static schema = {
        "minimum" : 29,
        "maximum": 285,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627",
        "type": "aimdk_msgs/srv/PlayVideo_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/CommonResponse",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 24
                },
                {
                    "name" : "success",
                    "type": "bool",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvPlayVideo_Response);

/** @brief Complete aimdk_msgs/srv/SetAgentPropertiesRequest_Request owning value. */
export class Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 544,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_965af85f35239b728d7b2ea3c8e995a7cd54d3254bc1e89d3eeb36612ada5dec",
        "type": "aimdk_msgs/srv/SetAgentPropertiesRequest_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/CommonRequest",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "contents",
                    "type": "aimdk_msgs/msg/AgentProperties",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request);

/** @brief Complete aimdk_msgs/srv/SetAgentPropertiesRequest_Response owning value. */
export class Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response extends Record
{
    static schema = {
        "minimum" : 24,
        "maximum": 152,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b",
        "type": "aimdk_msgs/srv/SetAgentPropertiesRequest_Response",
        "ros_version": 2,
        "fields": [ {
            "name" : "header",
            "type": "aimdk_msgs/msg/CommonResponse",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 24
        } ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response);

/** @brief Complete aimdk_msgs/srv/SetMcAction_Request owning value. */
export class Ros2Aimdk_msgsSrvSetMcAction_Request extends Record
{
    static schema = {
        "minimum" : 16,
        "maximum": 144,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6ad0e14f9aefc0ae34c383eec4498c556c97757f03eb315b74977327691489d5",
        "type": "aimdk_msgs/srv/SetMcAction_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/RequestHeader",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "command",
                    "type": "aimdk_msgs/msg/McActionCommand",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvSetMcAction_Request);

/** @brief Complete aimdk_msgs/srv/SetMcAction_Response owning value. */
export class Ros2Aimdk_msgsSrvSetMcAction_Response extends Record
{
    static schema = {
        "minimum" : 24,
        "maximum": 152,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f",
        "type": "aimdk_msgs/srv/SetMcAction_Response",
        "ros_version": 2,
        "fields": [ {
            "name" : "response",
            "type": "aimdk_msgs/msg/CommonResponse",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 24
        } ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvSetMcAction_Response);

/** @brief Complete aimdk_msgs/srv/SetMcInputSource_Request owning value. */
export class Ros2Aimdk_msgsSrvSetMcInputSource_Request extends Record
{
    static schema = {
        "minimum" : 24,
        "maximum": 152,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021",
        "type": "aimdk_msgs/srv/SetMcInputSource_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "request",
                    "type": "aimdk_msgs/msg/CommonRequest",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "action",
                    "type": "aimdk_msgs/msg/McInputAction",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "input_source",
                    "type": "aimdk_msgs/msg/McInputSource",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 12
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvSetMcInputSource_Request);

/** @brief Complete aimdk_msgs/srv/SetMcInputSource_Response owning value. */
export class Ros2Aimdk_msgsSrvSetMcInputSource_Response extends Record
{
    static schema = {
        "minimum" : 28,
        "maximum": 28,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb",
        "type": "aimdk_msgs/srv/SetMcInputSource_Response",
        "ros_version": 2,
        "fields": [ {
            "name" : "response",
            "type": "aimdk_msgs/msg/CommonTaskResponse",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 28
        } ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvSetMcInputSource_Response);

/** @brief Complete aimdk_msgs/srv/SetMcPresetMotion_Request owning value. */
export class Ros2Aimdk_msgsSrvSetMcPresetMotion_Request extends Record
{
    static schema = {
        "minimum" : 21,
        "maximum": 149,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea",
        "type": "aimdk_msgs/srv/SetMcPresetMotion_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "aimdk_msgs/msg/RequestHeader",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "area",
                    "type": "aimdk_msgs/msg/McControlArea",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "motion",
                    "type": "aimdk_msgs/msg/McPresetMotion",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                },
                {
                    "name" : "interrupt",
                    "type": "bool",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                },
                {
                    "name" : "ani_path",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 128,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvSetMcPresetMotion_Request);

/** @brief Complete aimdk_msgs/srv/SetMcPresetMotion_Response owning value. */
export class Ros2Aimdk_msgsSrvSetMcPresetMotion_Response extends Record
{
    static schema = {
        "minimum" : 28,
        "maximum": 28,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85",
        "type": "aimdk_msgs/srv/SetMcPresetMotion_Response",
        "ros_version": 2,
        "fields": [ {
            "name" : "response",
            "type": "aimdk_msgs/msg/CommonTaskResponse",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null,
            "element_minimum": 28
        } ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvSetMcPresetMotion_Response);

/** @brief Complete aimdk_msgs/srv/SetMute_Request owning value. */
export class Ros2Aimdk_msgsSrvSetMute_Request extends Record
{
    static schema = {
        "minimum" : 9,
        "maximum": 9,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3",
        "type": "aimdk_msgs/srv/SetMute_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "request",
                    "type": "aimdk_msgs/msg/CommonRequest",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "is_mute",
                    "type": "bool",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvSetMute_Request);

/** @brief Complete aimdk_msgs/srv/SetMute_Response owning value. */
export class Ros2Aimdk_msgsSrvSetMute_Response extends Record
{
    static schema = {
        "minimum" : 25,
        "maximum": 153,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50",
        "type": "aimdk_msgs/srv/SetMute_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "reponse",
                    "type": "aimdk_msgs/msg/CommonResponse",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 24
                },
                {
                    "name" : "is_mute",
                    "type": "bool",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 1
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvSetMute_Response);

/** @brief Complete aimdk_msgs/srv/SetVolume_Request owning value. */
export class Ros2Aimdk_msgsSrvSetVolume_Request extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 12,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad",
        "type": "aimdk_msgs/srv/SetVolume_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "request",
                    "type": "aimdk_msgs/msg/CommonRequest",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 8
                },
                {
                    "name" : "audio_volume",
                    "type": "uint32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvSetVolume_Request);

/** @brief Complete aimdk_msgs/srv/SetVolume_Response owning value. */
export class Ros2Aimdk_msgsSrvSetVolume_Response extends Record
{
    static schema = {
        "minimum" : 28,
        "maximum": 156,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e",
        "type": "aimdk_msgs/srv/SetVolume_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "reponse",
                    "type": "aimdk_msgs/msg/CommonResponse",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 24
                },
                {
                    "name" : "audio_volume",
                    "type": "uint32",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvSetVolume_Response);

