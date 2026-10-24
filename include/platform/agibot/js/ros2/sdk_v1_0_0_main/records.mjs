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
        "codec_identity": "UWVMROS1_d46b7979d687f30a04b2d96d2cfde9efeedb18a3b311e43fd3af362d7323102c",
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
    /** @brief Original declared constant; no instance bytes. */
    static AGENT_PROPERTY_SITE_SWITCH = 8;
    /** @brief Original declared constant; no instance bytes. */
    static AGENT_PROPERTY_LANGUAGE_LIST = 9;
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
        "codec_identity": "UWVMROS1_f5886bcdffa17bde1622e0441b0e05562826ea27c5e393a85e255d4dd6ac32bb",
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
        "codec_identity": "UWVMROS1_5c1d34cab6d73c22fa0c9555ff67309d3ad05002b19d814ea03e576a1298f4aa",
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

/** @brief Complete aimdk_msgs/msg/AudioInfo owning value. */
export class Ros2Aimdk_msgsMsgAudioInfo extends Record
{
    static schema = {
        "minimum" : 17,
        "maximum": 273,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_c58c89e03376e7f8beb8df02fe189fb1f6059825c5ff6924c4199b24fdb440be",
        "type": "aimdk_msgs/msg/AudioInfo",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "channels",
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
                    "name" : "size",
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
                    "name" : "sample_format",
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
                    "name" : "coding_format",
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

REGISTRY.add(Ros2Aimdk_msgsMsgAudioInfo);

/** @brief Complete aimdk_msgs/msg/AudioData owning value. */
export class Ros2Aimdk_msgsMsgAudioData extends Record
{
    static schema = {
        "minimum" : 4,
        "maximum": 260,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_547da1b39105416d63222ff082398cfeec0804a7c7ad28199168f1107c6844e8",
        "type": "aimdk_msgs/msg/AudioData",
        "ros_version": 2,
        "fields": [ {
            "name" : "data",
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
        } ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgAudioData);

/** @brief Complete aimdk_msgs/msg/AudioCapture owning value. */
export class Ros2Aimdk_msgsMsgAudioCapture extends Record
{
    static schema = {
        "minimum" : 35,
        "maximum": 675,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_de7db19093964d4783811019e6cc12c952a58364561be2a0a81ae874766e937c",
        "type": "aimdk_msgs/msg/AudioCapture",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "stamps",
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
                    "name" : "mic_channels",
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
                    "name" : "ref_channels",
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
                    "name" : "info",
                    "type": "aimdk_msgs/msg/AudioInfo",
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
                    "element_minimum": 17
                },
                {
                    "name" : "data",
                    "type": "aimdk_msgs/msg/AudioData",
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
                    "name" : "pkg_name",
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

REGISTRY.add(Ros2Aimdk_msgsMsgAudioCapture);

/** @brief Complete aimdk_msgs/msg/AudioFile owning value. */
export class Ros2Aimdk_msgsMsgAudioFile extends Record
{
    static schema = {
        "minimum" : 37,
        "maximum": 677,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ed9aeffc24c98e014fe431b9e5e814bf21a474a777f70cf3ac989537b431995d",
        "type": "aimdk_msgs/msg/AudioFile",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "pkg_name",
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
                    "name" : "file_path",
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
                    "name" : "info",
                    "type": "aimdk_msgs/msg/AudioInfo",
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
                    "element_minimum": 17
                },
                {
                    "name" : "priority",
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
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgAudioFile);

/** @brief Complete aimdk_msgs/msg/AudioPlayback owning value. */
export class Ros2Aimdk_msgsMsgAudioPlayback extends Record
{
    static schema = {
        "minimum" : 37,
        "maximum": 805,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_1262b4dd07b332e6d10c5968292f29928e43fd6f6ea2faa2be1f48482e2dc499",
        "type": "aimdk_msgs/msg/AudioPlayback",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "stamps",
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
                    "name" : "info",
                    "type": "aimdk_msgs/msg/AudioInfo",
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
                    "element_minimum": 17
                },
                {
                    "name" : "data",
                    "type": "aimdk_msgs/msg/AudioData",
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
                    "name" : "pkg_name",
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
                    "name" : "token_id",
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

REGISTRY.add(Ros2Aimdk_msgsMsgAudioPlayback);

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

/** @brief Complete aimdk_msgs/msg/CurrentVersion owning value. */
export class Ros2Aimdk_msgsMsgCurrentVersion extends Record
{
    static schema = {
        "minimum" : 20,
        "maximum": 2388,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0a8226d6e3af0a098ee88498274e2a166f40df85162a67d38ebcb1fcba5e87cd",
        "type": "aimdk_msgs/msg/CurrentVersion",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "version",
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
                    "name" : "files",
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
                    "name" : "download_timestamp_seconds",
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
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgCurrentVersion);

/** @brief Complete aimdk_msgs/msg/DomainErrorState owning value. */
export class Ros2Aimdk_msgsMsgDomainErrorState extends Record
{
    static schema = {
        "minimum" : 1,
        "maximum": 1,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231",
        "type": "aimdk_msgs/msg/DomainErrorState",
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
    static DAMPING = 1;
    /** @brief Original declared constant; no instance bytes. */
    static POWERDOWN = 2;
    /** @brief Original declared constant; no instance bytes. */
    static DISABLE = 3;
    /** @brief Original declared constant; no instance bytes. */
    static DISCONNECT = 4;
}

REGISTRY.add(Ros2Aimdk_msgsMsgDomainErrorState);

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

/** @brief Complete aimdk_msgs/msg/FocusRequester owning value. */
export class Ros2Aimdk_msgsMsgFocusRequester extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9b41f0b3a3cafa6b190ede3107f8cf802c1cbacf1eb81e075a376ceaf37fa186",
        "type": "aimdk_msgs/msg/FocusRequester",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "pkg_name",
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
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgFocusRequester);

/** @brief Complete aimdk_msgs/msg/FocusResponse owning value. */
export class Ros2Aimdk_msgsMsgFocusResponse extends Record
{
    static schema = {
        "minimum" : 5,
        "maximum": 133,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_16047b8b9e9f131f8aa44fc4e0960ce81446788d557b055be1f6b2542db3a87c",
        "type": "aimdk_msgs/msg/FocusResponse",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "pkg_name",
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
                    "name" : "focus_gain",
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

REGISTRY.add(Ros2Aimdk_msgsMsgFocusResponse);

/** @brief Complete geometry_msgs/msg/Point owning value. */
export class Ros2Geometry_msgsMsgPoint extends Record
{
    static schema = {
        "minimum" : 24,
        "maximum": 24,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616",
        "type": "geometry_msgs/msg/Point",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "x",
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
                    "name" : "y",
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
                    "name" : "z",
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

REGISTRY.add(Ros2Geometry_msgsMsgPoint);

/** @brief Complete geometry_msgs/msg/Quaternion owning value. */
export class Ros2Geometry_msgsMsgQuaternion extends Record
{
    static schema = {
        "minimum" : 32,
        "maximum": 32,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
        "type": "geometry_msgs/msg/Quaternion",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "x",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": "0.0",
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": 0.0,
                    "element_minimum": 8
                },
                {
                    "name" : "y",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": "0.0",
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": 0.0,
                    "element_minimum": 8
                },
                {
                    "name" : "z",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": "0.0",
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": 0.0,
                    "element_minimum": 8
                },
                {
                    "name" : "w",
                    "type": "float64",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": "1.0",
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": 1.0,
                    "element_minimum": 8
                }
            ]
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgQuaternion);

/** @brief Complete geometry_msgs/msg/Pose owning value. */
export class Ros2Geometry_msgsMsgPose extends Record
{
    static schema = {
        "minimum" : 56,
        "maximum": 56,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777",
        "type": "geometry_msgs/msg/Pose",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "position",
                    "type": "geometry_msgs/msg/Point",
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
                    "name" : "orientation",
                    "type": "geometry_msgs/msg/Quaternion",
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
                    "element_minimum": 32
                }
            ]
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgPose);

/** @brief Complete aimdk_msgs/msg/QRCode owning value. */
export class Ros2Aimdk_msgsMsgQRCode extends Record
{
    static schema = {
        "minimum" : 60,
        "maximum": 60,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_51293e3c7ee25b1a265c4a57539a11060563e89005ceaf4aaa0891481ab803cd",
        "type": "aimdk_msgs/msg/QRCode",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "code",
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
                    "name" : "pose",
                    "type": "geometry_msgs/msg/Pose",
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
                    "element_minimum": 56
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgQRCode);

/** @brief Complete aimdk_msgs/msg/HRPoint owning value. */
export class Ros2Aimdk_msgsMsgHRPoint extends Record
{
    static schema = {
        "minimum" : 65,
        "maximum": 305,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_070874f4fea77298b6d66d02ee40026e86b4f48ee03e6d9acffcaddb387b3645",
        "type": "aimdk_msgs/msg/HRPoint",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "point_id",
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
                    "name" : "pose",
                    "type": "geometry_msgs/msg/Pose",
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
                    "element_minimum": 56
                },
                {
                    "name" : "qr_list",
                    "type": "aimdk_msgs/msg/QRCode",
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
                    "element_minimum": 60
                },
                {
                    "name" : "use_head",
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

REGISTRY.add(Ros2Aimdk_msgsMsgHRPoint);

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
        "codec_identity": "UWVMROS1_be593e2d647a922b02f6f81e52fbfaa805837d6ef6a156de500d4dc40f1fc5bb",
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
    static LEISAI_NIMBLE_HANDS = 3;
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
        "codec_identity": "UWVMROS1_d7f46a8aa55d6ef296aa86d6522b7add84f4c8e7e3009d1454d573a8af1d17d5",
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

/** @brief Complete aimdk_msgs/msg/HandTouchSensorData owning value. */
export class Ros2Aimdk_msgsMsgHandTouchSensorData extends Record
{
    static schema = {
        "minimum" : 152,
        "maximum": 152,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_573ab7611c65bde831172350c3cf49dd73cf4bfcbefabff7aa874845b828e4a0",
        "type": "aimdk_msgs/msg/HandTouchSensorData",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "palm_touch_data",
                    "type": "uint8",
                    "array": "array",
                    "count": 36,
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
                    "name" : "back_of_hand_touch_data",
                    "type": "uint8",
                    "array": "array",
                    "count": 36,
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
                    "name" : "thumb_touch_data",
                    "type": "uint8",
                    "array": "array",
                    "count": 16,
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
                    "name" : "index_finger_touch_data",
                    "type": "uint8",
                    "array": "array",
                    "count": 16,
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
                    "name" : "middle_finger_touch_data",
                    "type": "uint8",
                    "array": "array",
                    "count": 16,
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
                    "name" : "ring_finger_touch_data",
                    "type": "uint8",
                    "array": "array",
                    "count": 16,
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
                    "name" : "little_finger_touch_data",
                    "type": "uint8",
                    "array": "array",
                    "count": 16,
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

REGISTRY.add(Ros2Aimdk_msgsMsgHandTouchSensorData);

/** @brief Complete aimdk_msgs/msg/HandStateArray owning value. */
export class Ros2Aimdk_msgsMsgHandStateArray extends Record
{
    static schema = {
        "minimum" : 338,
        "maximum": 1778,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0ea5f872d42818af468d20b20670067c07631691b5988e45dc5e87caf137efb3",
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
                    "name" : "left_touch_sensors",
                    "type": "aimdk_msgs/msg/HandTouchSensorData",
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
                    "element_minimum": 152
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
                },
                {
                    "name" : "right_touch_sensors",
                    "type": "aimdk_msgs/msg/HandTouchSensorData",
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
                    "element_minimum": 152
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
        "minimum" : 30,
        "maximum": 158,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53",
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
                    "name" : "error_code",
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

REGISTRY.add(Ros2Aimdk_msgsMsgJointState);

/** @brief Complete aimdk_msgs/msg/JointStateArray owning value. */
export class Ros2Aimdk_msgsMsgJointStateArray extends Record
{
    static schema = {
        "minimum" : 29,
        "maximum": 10269,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e",
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
                    "name" : "state",
                    "type": "aimdk_msgs/msg/DomainErrorState",
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
                    "element_minimum": 30
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

/** @brief Complete geometry_msgs/msg/Pose2D owning value. */
export class Ros2Geometry_msgsMsgPose2D extends Record
{
    static schema = {
        "minimum" : 24,
        "maximum": 24,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_5926ccd43f868ca13520625e24e283abe2e6f6418dacaa136eed5951064d8bce",
        "type": "geometry_msgs/msg/Pose2D",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "x",
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
                    "name" : "y",
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
                    "name" : "theta",
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

REGISTRY.add(Ros2Geometry_msgsMsgPose2D);

/** @brief Complete aimdk_msgs/msg/NaviPoint owning value. */
export class Ros2Aimdk_msgsMsgNaviPoint extends Record
{
    static schema = {
        "minimum" : 28,
        "maximum": 28,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e1613f1cc3f2e23dffba8c4b2414f5eaba7ef8909aa4d032f13f6f514484694e",
        "type": "aimdk_msgs/msg/NaviPoint",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "point_id",
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
                    "name" : "navi_point",
                    "type": "geometry_msgs/msg/Pose2D",
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
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgNaviPoint);

/** @brief Complete aimdk_msgs/msg/Path owning value. */
export class Ros2Aimdk_msgsMsgPath extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 104,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_88efeee6a105a4a88d155242fcd6f5be0866f4c0eadfc0b90243ca0eb020f27d",
        "type": "aimdk_msgs/msg/Path",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "path_id",
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
                    "name" : "points",
                    "type": "geometry_msgs/msg/Pose2D",
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
                    "element_minimum": 24
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgPath);

/** @brief Complete aimdk_msgs/msg/PlayStateType owning value. */
export class Ros2Aimdk_msgsMsgPlayStateType extends Record
{
    static schema = {
        "minimum" : 1,
        "maximum": 1,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_a103f60f1b75030272dea3bcf7da76ac8fdc214c3a38721fa2b09c507cc47946",
        "type": "aimdk_msgs/msg/PlayStateType",
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
    static PLAYER_STATE_CLOSED = 0;
    /** @brief Original declared constant; no instance bytes. */
    static PLAYER_STATE_PLAYING = 1;
    /** @brief Original declared constant; no instance bytes. */
    static PLAYER_STATE_STOPED = 2;
}

REGISTRY.add(Ros2Aimdk_msgsMsgPlayStateType);

/** @brief Complete aimdk_msgs/msg/PlayStateChange owning value. */
export class Ros2Aimdk_msgsMsgPlayStateChange extends Record
{
    static schema = {
        "minimum" : 5,
        "maximum": 133,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_62c2a232fb57ebab6a0fce42a84e12d8a25dc21e40fb5420201ef6337894f41c",
        "type": "aimdk_msgs/msg/PlayStateChange",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "pkg_name",
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
                    "name" : "state",
                    "type": "aimdk_msgs/msg/PlayStateType",
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

REGISTRY.add(Ros2Aimdk_msgsMsgPlayStateChange);

/** @brief Complete aimdk_msgs/msg/TtsPriorityLevel owning value. */
export class Ros2Aimdk_msgsMsgTtsPriorityLevel extends Record
{
    static schema = {
        "minimum" : 1,
        "maximum": 1,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6e19302f3df2152dabda478d48e0506d483427f946a552d364a206fee9687507",
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
    static SYSTEM_L7 = 7;
    /** @brief Original declared constant; no instance bytes. */
    static WARNING_L8 = 8;
    /** @brief Original declared constant; no instance bytes. */
    static SAFETY_L10 = 10;
}

REGISTRY.add(Ros2Aimdk_msgsMsgTtsPriorityLevel);

/** @brief Complete aimdk_msgs/msg/PlayTtsRequest owning value. */
export class Ros2Aimdk_msgsMsgPlayTtsRequest extends Record
{
    static schema = {
        "minimum" : 18,
        "maximum": 402,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f5c7b9646cefc4c4d7a3a2ddac3e1ebed6d6aa789c03be06d89ffdf6fd023b72",
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
        "codec_identity": "UWVMROS1_ace6fc9356d764c1f456687c3a05c24f514167cc2b48787bda62413353b8ec82",
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
        "minimum" : 218,
        "maximum": 1114,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_bb828bf3667ae8a8909a7e98b20e789d9dfc6b954fe2ab7fc3adbc306c9ebbbd",
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
                    "name" : "fan_speed",
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
                    "name" : "fan_pecentage",
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
                    "name" : "pmu_temperature",
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

/** @brief Complete aimdk_msgs/msg/QRPoint owning value. */
export class Ros2Aimdk_msgsMsgQRPoint extends Record
{
    static schema = {
        "minimum" : 64,
        "maximum": 64,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b158d016b9e3607a1345df207459476cf88c9817dfd3ee7560b5635c7a81863e",
        "type": "aimdk_msgs/msg/QRPoint",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "point_id",
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
                    "name" : "qr_code",
                    "type": "aimdk_msgs/msg/QRCode",
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
                    "element_minimum": 60
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgQRPoint);

/** @brief Complete geometry_msgs/msg/Point32 owning value. */
export class Ros2Geometry_msgsMsgPoint32 extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 12,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_8ca11f8b9c00af9c95e3eebbeb6073227af8dee04b57f84e120a024e7f8539f9",
        "type": "geometry_msgs/msg/Point32",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "x",
                    "type": "float32",
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
                    "name" : "y",
                    "type": "float32",
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
                    "name" : "z",
                    "type": "float32",
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

REGISTRY.add(Ros2Geometry_msgsMsgPoint32);

/** @brief Complete geometry_msgs/msg/Polygon owning value. */
export class Ros2Geometry_msgsMsgPolygon extends Record
{
    static schema = {
        "minimum" : 4,
        "maximum": 52,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b5492d33b802b68eea062a74ffe7f336b1f392161b183e67c3bf24bb0a7d0aa8",
        "type": "geometry_msgs/msg/Polygon",
        "ros_version": 2,
        "fields": [ {
            "name" : "points",
            "type": "geometry_msgs/msg/Point32",
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
            "element_minimum": 12
        } ]
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgPolygon);

/** @brief Complete aimdk_msgs/msg/Region owning value. */
export class Ros2Aimdk_msgsMsgRegion extends Record
{
    static schema = {
        "minimum" : 10,
        "maximum": 186,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_161bb9787ae2df5a45015946bc386a2c4cf310701fa4970cf447c6445c85f1ce",
        "type": "aimdk_msgs/msg/Region",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "type",
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
                    "name" : "drawing_type",
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
                    "name" : "polygon",
                    "type": "geometry_msgs/msg/Polygon",
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
    static REGION_UNDEFINED = 0;
    /** @brief Original declared constant; no instance bytes. */
    static REGION_WORKING_SPACE = 1;
    /** @brief Original declared constant; no instance bytes. */
    static REGION_VIRTUAL_WALL = 2;
    /** @brief Original declared constant; no instance bytes. */
    static REGION_DRAWING_UNDEFINED = 0;
    /** @brief Original declared constant; no instance bytes. */
    static REGION_DRAWING_CLOSURE = 1;
    /** @brief Original declared constant; no instance bytes. */
    static REGION_DRAWING_LINES = 2;
}

REGISTRY.add(Ros2Aimdk_msgsMsgRegion);

/** @brief Complete aimdk_msgs/msg/RobotResource owning value. */
export class Ros2Aimdk_msgsMsgRobotResource extends Record
{
    static schema = {
        "minimum" : 24,
        "maximum": 2520,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_abc49dc6dd4cc0b0c59cd0ddb01d19897a51018752e3d9eb39aa6bcc684ad34d",
        "type": "aimdk_msgs/msg/RobotResource",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "resource_key",
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
                    "name" : "current_version",
                    "type": "aimdk_msgs/msg/CurrentVersion",
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
                    "element_minimum": 20
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgRobotResource);

/** @brief Complete aimdk_msgs/msg/SlaveDevice owning value. */
export class Ros2Aimdk_msgsMsgSlaveDevice extends Record
{
    static schema = {
        "minimum" : 4,
        "maximum": 132,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_36af580c9887ea808824106a14966193c9a639f6825a2cb3f94cbde369bd3255",
        "type": "aimdk_msgs/msg/SlaveDevice",
        "ros_version": 2,
        "fields": [ {
            "name" : "ip",
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
        } ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgSlaveDevice);

/** @brief Complete aimdk_msgs/msg/SystemStatus owning value. */
export class Ros2Aimdk_msgsMsgSystemStatus extends Record
{
    static schema = {
        "minimum" : 1,
        "maximum": 1,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_94275d3d0a1e83e4cc8e45b166b2cb111c9eccd4eabfe7410795b9c1fd69c6f1",
        "type": "aimdk_msgs/msg/SystemStatus",
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
    static IN_INITIAL = 0;
    /** @brief Original declared constant; no instance bytes. */
    static IN_READY = 1;
    /** @brief Original declared constant; no instance bytes. */
    static IN_MOVE = 2;
    /** @brief Original declared constant; no instance bytes. */
    static IN_ROLLBACK = 3;
    /** @brief Original declared constant; no instance bytes. */
    static IN_FALLBACK = 4;
    /** @brief Original declared constant; no instance bytes. */
    static IN_FALLBACK_MOVE = 5;
}

REGISTRY.add(Ros2Aimdk_msgsMsgSystemStatus);

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

/** @brief Complete aimdk_msgs/srv/AbandonAudioFocus_Request owning value. */
export class Ros2Aimdk_msgsSrvAbandonAudioFocus_Request extends Record
{
    static schema = {
        "minimum" : 20,
        "maximum": 148,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_c49f508915d7e28b09d6b4e21da757ec4457f96f7bced6861caecf00b5e68ce5",
        "type": "aimdk_msgs/srv/AbandonAudioFocus_Request",
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
                    "name" : "focus_requester",
                    "type": "aimdk_msgs/msg/FocusRequester",
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

REGISTRY.add(Ros2Aimdk_msgsSrvAbandonAudioFocus_Request);

/** @brief Complete aimdk_msgs/srv/AbandonAudioFocus_Response owning value. */
export class Ros2Aimdk_msgsSrvAbandonAudioFocus_Response extends Record
{
    static schema = {
        "minimum" : 29,
        "maximum": 285,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6a26581d66d35c5e6d04720935a163a6f527c036cb9c774e130bce242e47f376",
        "type": "aimdk_msgs/srv/AbandonAudioFocus_Response",
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
                    "name" : "focus_response",
                    "type": "aimdk_msgs/msg/FocusResponse",
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
                    "element_minimum": 5
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvAbandonAudioFocus_Response);

/** @brief Complete aimdk_msgs/srv/ExecuteActionResource_Request owning value. */
export class Ros2Aimdk_msgsSrvExecuteActionResource_Request extends Record
{
    static schema = {
        "minimum" : 24,
        "maximum": 936,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_4fa82b039bfd5804bf1591c04cf4c874c78a8f2b25d2a39cd55e8ce877f6ce56",
        "type": "aimdk_msgs/srv/ExecuteActionResource_Request",
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
                    "name" : "resource_key",
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
                    "name" : "resource_version",
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
                    "name" : "slaves",
                    "type": "aimdk_msgs/msg/SlaveDevice",
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
                    "element_minimum": 4
                },
                {
                    "name" : "meta",
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

REGISTRY.add(Ros2Aimdk_msgsSrvExecuteActionResource_Request);

/** @brief Complete aimdk_msgs/srv/ExecuteActionResource_Response owning value. */
export class Ros2Aimdk_msgsSrvExecuteActionResource_Response extends Record
{
    static schema = {
        "minimum" : 24,
        "maximum": 152,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_40e147ad6f1534415f232269043f52e6566a1023f728ad31851bbd6aa8651011",
        "type": "aimdk_msgs/srv/ExecuteActionResource_Response",
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

REGISTRY.add(Ros2Aimdk_msgsSrvExecuteActionResource_Response);

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
        "maximum": 2696,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_7b5d2c7e0d8c1f9a7beb98289b933a2f4466c4d08e9340a816e9e65d7a8151f2",
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
                    "element_minimum": 30
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
                    "element_minimum": 30
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
                    "element_minimum": 30
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
                    "element_minimum": 30
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
        "codec_identity": "UWVMROS1_23332f9f7853b7c67f0263a4cbfc9e6f3df2aa4a7c540906f0cf304e06ec9555",
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

/** @brief Complete aimdk_msgs/srv/GetMicSourceRequest_Request owning value. */
export class Ros2Aimdk_msgsSrvGetMicSourceRequest_Request extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_da81fa95ff0da422aaabb2412f11371452bac4c9b658682884b91fece94171cc",
        "type": "aimdk_msgs/srv/GetMicSourceRequest_Request",
        "ros_version": 2,
        "fields": [ {
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
        } ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvGetMicSourceRequest_Request);

/** @brief Complete aimdk_msgs/srv/GetMicSourceRequest_Response owning value. */
export class Ros2Aimdk_msgsSrvGetMicSourceRequest_Response extends Record
{
    static schema = {
        "minimum" : 28,
        "maximum": 156,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_86637a091357add483c69aa331eb4305632f3701ff9d77dc8e00e8bc19b6f1f6",
        "type": "aimdk_msgs/srv/GetMicSourceRequest_Response",
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
                    "name" : "mic_source",
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

REGISTRY.add(Ros2Aimdk_msgsSrvGetMicSourceRequest_Response);

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

/** @brief Complete aimdk_msgs/srv/GetRobotResources_Request owning value. */
export class Ros2Aimdk_msgsSrvGetRobotResources_Request extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0d086d105a54d7feea306182350c962ecebe145b8f9c45ca1216a88e6aaec86b",
        "type": "aimdk_msgs/srv/GetRobotResources_Request",
        "ros_version": 2,
        "fields": [ {
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
        } ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvGetRobotResources_Request);

/** @brief Complete aimdk_msgs/srv/GetRobotResources_Response owning value. */
export class Ros2Aimdk_msgsSrvGetRobotResources_Response extends Record
{
    static schema = {
        "minimum" : 28,
        "maximum": 10236,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ec4e3d0e6c502b60e70a3ba18f41d885e108fd4fe530ef2a9136ca0b32edda91",
        "type": "aimdk_msgs/srv/GetRobotResources_Response",
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
                    "name" : "robot_resources",
                    "type": "aimdk_msgs/msg/RobotResource",
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
                    "element_minimum": 24
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvGetRobotResources_Response);

/** @brief Complete std_msgs/msg/Header owning value. */
export class Ros2Std_msgsMsgHeader extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96",
        "type": "std_msgs/msg/Header",
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
                }
            ]
    };
}

REGISTRY.add(Ros2Std_msgsMsgHeader);

/** @brief Complete aimdk_msgs/srv/GetStoredMapByName_Request owning value. */
export class Ros2Aimdk_msgsSrvGetStoredMapByName_Request extends Record
{
    static schema = {
        "minimum" : 16,
        "maximum": 272,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_4c33fbe7dbfe4cb2c06345046eb36d470530ff775ae5eee9b89f69fa5ec2fbc3",
        "type": "aimdk_msgs/srv/GetStoredMapByName_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "header",
                    "type": "std_msgs/msg/Header",
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
                },
                {
                    "name" : "map_name",
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

REGISTRY.add(Ros2Aimdk_msgsSrvGetStoredMapByName_Request);

/** @brief Complete nav_msgs/msg/MapMetaData owning value. */
export class Ros2Nav_msgsMsgMapMetaData extends Record
{
    static schema = {
        "minimum" : 76,
        "maximum": 76,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_494874ea5dbbb03876e0405f6d06b5d7cc5b1727e61dcb8ff9e449735b800009",
        "type": "nav_msgs/msg/MapMetaData",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "map_load_time",
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
                    "name" : "resolution",
                    "type": "float32",
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
                    "name" : "width",
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
                    "name" : "height",
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
                    "name" : "origin",
                    "type": "geometry_msgs/msg/Pose",
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
                    "element_minimum": 56
                }
            ]
    };
}

REGISTRY.add(Ros2Nav_msgsMsgMapMetaData);

/** @brief Complete aimdk_msgs/srv/GetStoredMapByName_Response owning value. */
export class Ros2Aimdk_msgsSrvGetStoredMapByName_Response extends Record
{
    static schema = {
        "minimum" : 140,
        "maximum": 3400,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_66ba1fb25a02dc55b4c5f46bdb5e090d134ea5fa9ff2a47f4934b0af382c61fb",
        "type": "aimdk_msgs/srv/GetStoredMapByName_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "code",
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
                    "name" : "header",
                    "type": "std_msgs/msg/Header",
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
                },
                {
                    "name" : "map_info",
                    "type": "nav_msgs/msg/MapMetaData",
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
                    "element_minimum": 76
                },
                {
                    "name" : "map_version",
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
                    "name" : "map_path",
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
                    "name" : "data",
                    "type": "int8",
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
                },
                {
                    "name" : "navi_points",
                    "type": "aimdk_msgs/msg/NaviPoint",
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
                    "element_minimum": 28
                },
                {
                    "name" : "qr_points",
                    "type": "aimdk_msgs/msg/QRPoint",
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
                    "element_minimum": 64
                },
                {
                    "name" : "hr_points",
                    "type": "aimdk_msgs/msg/HRPoint",
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
                    "element_minimum": 65
                },
                {
                    "name" : "paths",
                    "type": "aimdk_msgs/msg/Path",
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
                    "element_minimum": 8
                },
                {
                    "name" : "regions",
                    "type": "aimdk_msgs/msg/Region",
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
                    "element_minimum": 10
                },
                {
                    "name" : "map_id",
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
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvGetStoredMapByName_Response);

/** @brief Complete aimdk_msgs/srv/GetSystemState_Request owning value. */
export class Ros2Aimdk_msgsSrvGetSystemState_Request extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_abc62c31fea241d08d99a5a726199b29b995c0cadb688e5aa480ab70d173bf1f",
        "type": "aimdk_msgs/srv/GetSystemState_Request",
        "ros_version": 2,
        "fields": [ {
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
        } ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvGetSystemState_Request);

/** @brief Complete aimdk_msgs/srv/GetSystemState_Response owning value. */
export class Ros2Aimdk_msgsSrvGetSystemState_Response extends Record
{
    static schema = {
        "minimum" : 29,
        "maximum": 285,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_8ea41f1383183b566d3c4457bee27191c9ac986a7c42e0b98aab05ab500c9039",
        "type": "aimdk_msgs/srv/GetSystemState_Response",
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
                    "name" : "cur_state",
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
                    "name" : "curr_status",
                    "type": "aimdk_msgs/msg/SystemStatus",
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

REGISTRY.add(Ros2Aimdk_msgsSrvGetSystemState_Response);

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

/** @brief Complete aimdk_msgs/srv/MigrateSystemState_Request owning value. */
export class Ros2Aimdk_msgsSrvMigrateSystemState_Request extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_02131f85cee3462c507bef0c8f54e75adbb1c8318551cfaef8efc59d693a415b",
        "type": "aimdk_msgs/srv/MigrateSystemState_Request",
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
                    "name" : "state",
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

REGISTRY.add(Ros2Aimdk_msgsSrvMigrateSystemState_Request);

/** @brief Complete aimdk_msgs/srv/MigrateSystemState_Response owning value. */
export class Ros2Aimdk_msgsSrvMigrateSystemState_Response extends Record
{
    static schema = {
        "minimum" : 24,
        "maximum": 152,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_7d4901fe8d9ab86c9f42b643604809a73e07ea77877b955764b4311d6f585802",
        "type": "aimdk_msgs/srv/MigrateSystemState_Response",
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

REGISTRY.add(Ros2Aimdk_msgsSrvMigrateSystemState_Response);

/** @brief Complete aimdk_msgs/srv/PlayAudioFile_Request owning value. */
export class Ros2Aimdk_msgsSrvPlayAudioFile_Request extends Record
{
    static schema = {
        "minimum" : 53,
        "maximum": 693,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_710a4db7c9c3792601fd958615acbd3e413ed1b1ca98aec0a7b04aff79c59cb1",
        "type": "aimdk_msgs/srv/PlayAudioFile_Request",
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
                    "name" : "file",
                    "type": "aimdk_msgs/msg/AudioFile",
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
                    "element_minimum": 37
                },
                {
                    "name" : "play_stamps",
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

REGISTRY.add(Ros2Aimdk_msgsSrvPlayAudioFile_Request);

/** @brief Complete aimdk_msgs/srv/PlayAudioFile_Response owning value. */
export class Ros2Aimdk_msgsSrvPlayAudioFile_Response extends Record
{
    static schema = {
        "minimum" : 24,
        "maximum": 152,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_988d360e84f041bc5a53a6d085709ba31e7e3836115e40d890534f44e62b0b85",
        "type": "aimdk_msgs/srv/PlayAudioFile_Response",
        "ros_version": 2,
        "fields": [ {
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
        } ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvPlayAudioFile_Response);

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

/** @brief Complete aimdk_msgs/srv/PlayTts_Request owning value. */
export class Ros2Aimdk_msgsSrvPlayTts_Request extends Record
{
    static schema = {
        "minimum" : 26,
        "maximum": 410,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_33f223039d43b52c64efebade4db48eb23c734f57094ed9f354a624927326989",
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
        "codec_identity": "UWVMROS1_80d6f75ec35cccce215b1ab1321eabeae2e6668eb29a7249c8f8fad77e59bcc6",
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

/** @brief Complete aimdk_msgs/srv/PlayVideoGroup_Request owning value. */
export class Ros2Aimdk_msgsSrvPlayVideoGroup_Request extends Record
{
    static schema = {
        "minimum" : 17,
        "maximum": 2129,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_3c55649a41758dca0eeb22b090ae63a38bb4720d6b55342ac5204ec1a3696473",
        "type": "aimdk_msgs/srv/PlayVideoGroup_Request",
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
                    "name" : "video_path_list",
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

REGISTRY.add(Ros2Aimdk_msgsSrvPlayVideoGroup_Request);

/** @brief Complete aimdk_msgs/srv/PlayVideoGroup_Response owning value. */
export class Ros2Aimdk_msgsSrvPlayVideoGroup_Response extends Record
{
    static schema = {
        "minimum" : 29,
        "maximum": 285,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_eb57edaed02ddee9424ba10f7c783e9e6147fa0990043059f2b4102d0d0a5a19",
        "type": "aimdk_msgs/srv/PlayVideoGroup_Response",
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

REGISTRY.add(Ros2Aimdk_msgsSrvPlayVideoGroup_Response);

/** @brief Complete aimdk_msgs/srv/RequestAudioFocus_Request owning value. */
export class Ros2Aimdk_msgsSrvRequestAudioFocus_Request extends Record
{
    static schema = {
        "minimum" : 20,
        "maximum": 148,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b6354e6109618f66c9c52fc67351c687e60ad1bf5f4b77a8e326755deca7ae8a",
        "type": "aimdk_msgs/srv/RequestAudioFocus_Request",
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
                    "name" : "focus_requester",
                    "type": "aimdk_msgs/msg/FocusRequester",
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

REGISTRY.add(Ros2Aimdk_msgsSrvRequestAudioFocus_Request);

/** @brief Complete aimdk_msgs/srv/RequestAudioFocus_Response owning value. */
export class Ros2Aimdk_msgsSrvRequestAudioFocus_Response extends Record
{
    static schema = {
        "minimum" : 29,
        "maximum": 285,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_41f9d4bcd2021b66e092897b1c587be4359d28b9bac69ea4058d429c5cf88180",
        "type": "aimdk_msgs/srv/RequestAudioFocus_Response",
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
                    "name" : "focus_response",
                    "type": "aimdk_msgs/msg/FocusResponse",
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
                    "element_minimum": 5
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsSrvRequestAudioFocus_Response);

/** @brief Complete aimdk_msgs/srv/SetAgentPropertiesRequest_Request owning value. */
export class Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 544,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b05248c104afdd5331b9afb7a029923b03d3a984ba53633b0e42a70395f96fb8",
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
        "minimum" : 20,
        "maximum": 276,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ba4bc79d2f30a969feb655cc441955119aee8c5d0dc56be32639c9c3e682e246",
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
        "minimum" : 29,
        "maximum": 157,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_d16880d0ae7ae0801056a3e9632a8a272813d0e206420199c9463987586b2547",
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
                },
                {
                    "name" : "play_timestamp",
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

/** @brief Complete aimdk_msgs/srv/SetMicSourceRequest_Request owning value. */
export class Ros2Aimdk_msgsSrvSetMicSourceRequest_Request extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 12,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_01f1bcb54c816c25f1a88eb4392e8bedc4943d39a5b09974d7859c20ad1ca5e5",
        "type": "aimdk_msgs/srv/SetMicSourceRequest_Request",
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
                    "name" : "mic_source",
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

REGISTRY.add(Ros2Aimdk_msgsSrvSetMicSourceRequest_Request);

/** @brief Complete aimdk_msgs/srv/SetMicSourceRequest_Response owning value. */
export class Ros2Aimdk_msgsSrvSetMicSourceRequest_Response extends Record
{
    static schema = {
        "minimum" : 24,
        "maximum": 152,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ee6caccf202dae100928dacc71303c536144d76458cf7c9b4facc6b88405ba02",
        "type": "aimdk_msgs/srv/SetMicSourceRequest_Response",
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

REGISTRY.add(Ros2Aimdk_msgsSrvSetMicSourceRequest_Response);

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

/** @brief Complete aimdk_msgs/srv/SetPmuLed_Request owning value. */
export class Ros2Aimdk_msgsSrvSetPmuLed_Request extends Record
{
    static schema = {
        "minimum" : 21,
        "maximum": 149,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_015ab71547b25baf5658c13781f8e78e5f6ed19692a6a30d191d7f39c962357e",
        "type": "aimdk_msgs/srv/SetPmuLed_Request",
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
                    "name" : "reset_priority",
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

REGISTRY.add(Ros2Aimdk_msgsSrvSetPmuLed_Request);

/** @brief Complete aimdk_msgs/srv/SetPmuLed_Response owning value. */
export class Ros2Aimdk_msgsSrvSetPmuLed_Response extends Record
{
    static schema = {
        "minimum" : 18,
        "maximum": 18,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0408d54ce93e19d7299d79ee7797dc9b3511b3f5c37fd97a3b3d7d193cefcd28",
        "type": "aimdk_msgs/srv/SetPmuLed_Response",
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

REGISTRY.add(Ros2Aimdk_msgsSrvSetPmuLed_Response);

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

