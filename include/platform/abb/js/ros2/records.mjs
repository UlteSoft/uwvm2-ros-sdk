/**
 * @file records.mjs
 * @brief Complete original ABB ROS 2 values, codecs and interface catalog.
 * @details Preserve all 88 records and 63 interfaces.
 * Absent native identities remain null; values grant no ROS authority.
 */
import {Record, Registry} from "ros/js/wire";

export const REGISTRY = new Registry();

/**
 * @brief Complete abb_egm_msgs/msg/EGMChannelState value.
 * @details All 7 fields and 10 constants; extent 17..81 bytes.
 */
export class Ros2Abb_egm_msgsMsgEGMChannelState extends Record
{
    /**
     * @brief Original abb_egm_msgs/msg/EGMChannelState.name field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    /**
     * @brief Original abb_egm_msgs/msg/EGMChannelState.active field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_egm_msgs/msg/EGMChannelState.egm_convergence_met field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_egm_msgs/msg/EGMChannelState.egm_client_state field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_egm_msgs/msg/EGMChannelState.motor_state field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_egm_msgs/msg/EGMChannelState.rapid_execution_state field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_egm_msgs/msg/EGMChannelState.utilization_rate field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_egm_msgs/msg/EGMChannelState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_fbd288b93963fccc92aa114570c0a4f6a1fdc5b473cb8e252922720f5d88b519",
        "minimum": 17,
        "maximum": 81,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "name",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "active",
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
                    "default": null
                },
                {
                    "name" : "egm_convergence_met",
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
                    "default": null
                },
                {
                    "name" : "egm_client_state",
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
                    "default": null
                },
                {
                    "name" : "motor_state",
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
                    "default": null
                },
                {
                    "name" : "rapid_execution_state",
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
                    "default": null
                },
                {
                    "name" : "utilization_rate",
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
                    "default": null
                }
            ]
    };
    /** @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_UNDEFINED constant; no instance bytes. */
    static EGM_UNDEFINED = 1;
    /** @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_ERROR constant; no instance bytes. */
    static EGM_ERROR = 2;
    /** @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_STOPPED constant; no instance bytes. */
    static EGM_STOPPED = 3;
    /** @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_RUNNING constant; no instance bytes. */
    static EGM_RUNNING = 4;
    /** @brief Original abb_egm_msgs/msg/EGMChannelState.MOTORS_UNDEFINED constant; no instance bytes. */
    static MOTORS_UNDEFINED = 1;
    /** @brief Original abb_egm_msgs/msg/EGMChannelState.MOTORS_ON constant; no instance bytes. */
    static MOTORS_ON = 2;
    /** @brief Original abb_egm_msgs/msg/EGMChannelState.MOTORS_OFF constant; no instance bytes. */
    static MOTORS_OFF = 3;
    /** @brief Original abb_egm_msgs/msg/EGMChannelState.RAPID_UNDEFINED constant; no instance bytes. */
    static RAPID_UNDEFINED = 1;
    /** @brief Original abb_egm_msgs/msg/EGMChannelState.RAPID_STOPPED constant; no instance bytes. */
    static RAPID_STOPPED = 2;
    /** @brief Original abb_egm_msgs/msg/EGMChannelState.RAPID_RUNNING constant; no instance bytes. */
    static RAPID_RUNNING = 3;
}

REGISTRY.add(Ros2Abb_egm_msgsMsgEGMChannelState);

/**
 * @brief Complete builtin_interfaces/msg/Time value.
 * @details All 2 fields and 0 constants; extent 8..8 bytes.
 */
export class Ros2Builtin_interfacesMsgTime extends Record
{
    /**
     * @brief Original builtin_interfaces/msg/Time.sec field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original builtin_interfaces/msg/Time.nanosec field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "builtin_interfaces/msg/Time",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
        "minimum": 8,
        "maximum": 8,
        "semantics": "normalized-time",
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
                    "default": null
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Builtin_interfacesMsgTime);

/**
 * @brief Complete std_msgs/msg/Header value.
 * @details All 2 fields and 0 constants; extent 12..76 bytes.
 */
export class Ros2Std_msgsMsgHeader extends Record
{
    /**
     * @brief Original std_msgs/msg/Header.stamp field.
     * @details Type builtin_interfaces/msg/Time; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original std_msgs/msg/Header.frame_id field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    static schema = {
        "type" : "std_msgs/msg/Header",
        "native_identity": null,
        "codec_identity": "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396",
        "minimum": 12,
        "maximum": 76,
        "semantics": "",
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
                    "default": null
                },
                {
                    "name" : "frame_id",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Std_msgsMsgHeader);

/**
 * @brief Complete abb_egm_msgs/msg/EGMState value.
 * @details All 2 fields and 0 constants; extent 16..1376 bytes.
 */
export class Ros2Abb_egm_msgsMsgEGMState extends Record
{
    /**
     * @brief Original abb_egm_msgs/msg/EGMState.header field.
     * @details Type std_msgs/msg/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_egm_msgs/msg/EGMState.egm_channels field.
     * @details Type abb_egm_msgs/msg/EGMChannelState; shape sequence; count/bound 16; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_egm_msgs/msg/EGMState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_5b10efb13c3be7290c7e391d55679a174969887edd1b8baca682edac311a8e5d",
        "minimum": 16,
        "maximum": 1376,
        "semantics": "",
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
                    "default": null
                },
                {
                    "name" : "egm_channels",
                    "type": "abb_egm_msgs/msg/EGMChannelState",
                    "array": "sequence",
                    "count": 16,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_egm_msgsMsgEGMState);

/**
 * @brief Complete abb_rapid_msgs/msg/ConfData value.
 * @details All 4 fields and 0 constants; extent 16..16 bytes.
 */
export class Ros2Abb_rapid_msgsMsgConfData extends Record
{
    /**
     * @brief Original abb_rapid_msgs/msg/ConfData.cf1 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/ConfData.cf4 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/ConfData.cf6 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/ConfData.cfx field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/msg/ConfData",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0c22cc29db62f5001ef20ea7b131de63099e31ac5f150d3e9f0bb62120d60571",
        "minimum": 16,
        "maximum": 16,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "cf1",
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
                    "default": null
                },
                {
                    "name" : "cf4",
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
                    "default": null
                },
                {
                    "name" : "cf6",
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
                    "default": null
                },
                {
                    "name" : "cfx",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_msgsMsgConfData);

/**
 * @brief Complete abb_rapid_msgs/msg/ExtJoint value.
 * @details All 6 fields and 0 constants; extent 24..24 bytes.
 */
export class Ros2Abb_rapid_msgsMsgExtJoint extends Record
{
    /**
     * @brief Original abb_rapid_msgs/msg/ExtJoint.eax_a field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/ExtJoint.eax_b field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/ExtJoint.eax_c field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/ExtJoint.eax_d field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/ExtJoint.eax_e field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/ExtJoint.eax_f field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/msg/ExtJoint",
        "native_identity": null,
        "codec_identity": "UWVMROS1_8b799c6bec9e4eab0900a633a93375a7792e49fde0bf302f6752115a001a4ae2",
        "minimum": 24,
        "maximum": 24,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "eax_a",
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
                    "default": null
                },
                {
                    "name" : "eax_b",
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
                    "default": null
                },
                {
                    "name" : "eax_c",
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
                    "default": null
                },
                {
                    "name" : "eax_d",
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
                    "default": null
                },
                {
                    "name" : "eax_e",
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
                    "default": null
                },
                {
                    "name" : "eax_f",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_msgsMsgExtJoint);

/**
 * @brief Complete abb_rapid_msgs/msg/RobJoint value.
 * @details All 6 fields and 0 constants; extent 24..24 bytes.
 */
export class Ros2Abb_rapid_msgsMsgRobJoint extends Record
{
    /**
     * @brief Original abb_rapid_msgs/msg/RobJoint.rax_1 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/RobJoint.rax_2 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/RobJoint.rax_3 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/RobJoint.rax_4 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/RobJoint.rax_5 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/RobJoint.rax_6 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/msg/RobJoint",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6d842aebc0a3b222a727063a41ef7e96f2b8c14ffbba5c8d6e140ba2890e69cd",
        "minimum": 24,
        "maximum": 24,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "rax_1",
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
                    "default": null
                },
                {
                    "name" : "rax_2",
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
                    "default": null
                },
                {
                    "name" : "rax_3",
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
                    "default": null
                },
                {
                    "name" : "rax_4",
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
                    "default": null
                },
                {
                    "name" : "rax_5",
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
                    "default": null
                },
                {
                    "name" : "rax_6",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_msgsMsgRobJoint);

/**
 * @brief Complete abb_rapid_msgs/msg/JointTarget value.
 * @details All 2 fields and 0 constants; extent 48..48 bytes.
 */
export class Ros2Abb_rapid_msgsMsgJointTarget extends Record
{
    /**
     * @brief Original abb_rapid_msgs/msg/JointTarget.robax field.
     * @details Type abb_rapid_msgs/msg/RobJoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/JointTarget.extax field.
     * @details Type abb_rapid_msgs/msg/ExtJoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/msg/JointTarget",
        "native_identity": null,
        "codec_identity": "UWVMROS1_5949cf0121391646c1f04b54d8f7deaae0497f4920f7817739fc25bfddc4e540",
        "minimum": 48,
        "maximum": 48,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "robax",
                    "type": "abb_rapid_msgs/msg/RobJoint",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "extax",
                    "type": "abb_rapid_msgs/msg/ExtJoint",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_msgsMsgJointTarget);

/**
 * @brief Complete abb_rapid_msgs/msg/Pos value.
 * @details All 3 fields and 0 constants; extent 12..12 bytes.
 */
export class Ros2Abb_rapid_msgsMsgPos extends Record
{
    /**
     * @brief Original abb_rapid_msgs/msg/Pos.x field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/Pos.y field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/Pos.z field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/msg/Pos",
        "native_identity": null,
        "codec_identity": "UWVMROS1_31d490d6ead5a1a78295dc4e934f0b89e74e4732da2b57d28d297477bf4cbdd2",
        "minimum": 12,
        "maximum": 12,
        "semantics": "",
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
                    "default": null
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
                    "default": null
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_msgsMsgPos);

/**
 * @brief Complete abb_rapid_msgs/msg/Orient value.
 * @details All 4 fields and 0 constants; extent 16..16 bytes.
 */
export class Ros2Abb_rapid_msgsMsgOrient extends Record
{
    /**
     * @brief Original abb_rapid_msgs/msg/Orient.q1 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/Orient.q2 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/Orient.q3 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/Orient.q4 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/msg/Orient",
        "native_identity": null,
        "codec_identity": "UWVMROS1_821d887b88298422f9466aaf3926db580f878e964055fbd72226b7f76f2f536e",
        "minimum": 16,
        "maximum": 16,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "q1",
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
                    "default": null
                },
                {
                    "name" : "q2",
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
                    "default": null
                },
                {
                    "name" : "q3",
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
                    "default": null
                },
                {
                    "name" : "q4",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_msgsMsgOrient);

/**
 * @brief Complete abb_rapid_msgs/msg/LoadData value.
 * @details All 6 fields and 0 constants; extent 44..44 bytes.
 */
export class Ros2Abb_rapid_msgsMsgLoadData extends Record
{
    /**
     * @brief Original abb_rapid_msgs/msg/LoadData.mass field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/LoadData.cog field.
     * @details Type abb_rapid_msgs/msg/Pos; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/LoadData.aom field.
     * @details Type abb_rapid_msgs/msg/Orient; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/LoadData.ix field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/LoadData.iy field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/LoadData.iz field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/msg/LoadData",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f73e480a0e6746a4df8f4d62bc123d68d01d3dc48f0bc5f0eac51b859a0750f9",
        "minimum": 44,
        "maximum": 44,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "mass",
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
                    "default": null
                },
                {
                    "name" : "cog",
                    "type": "abb_rapid_msgs/msg/Pos",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "aom",
                    "type": "abb_rapid_msgs/msg/Orient",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "ix",
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
                    "default": null
                },
                {
                    "name" : "iy",
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
                    "default": null
                },
                {
                    "name" : "iz",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_msgsMsgLoadData);

/**
 * @brief Complete abb_rapid_msgs/msg/Pose value.
 * @details All 2 fields and 0 constants; extent 28..28 bytes.
 */
export class Ros2Abb_rapid_msgsMsgPose extends Record
{
    /**
     * @brief Original abb_rapid_msgs/msg/Pose.trans field.
     * @details Type abb_rapid_msgs/msg/Pos; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/Pose.rot field.
     * @details Type abb_rapid_msgs/msg/Orient; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/msg/Pose",
        "native_identity": null,
        "codec_identity": "UWVMROS1_8f1535fe21326706fd0b16314857162d36bca91ce8e8f6a8bec3864dafb9e2f2",
        "minimum": 28,
        "maximum": 28,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "trans",
                    "type": "abb_rapid_msgs/msg/Pos",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "rot",
                    "type": "abb_rapid_msgs/msg/Orient",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_msgsMsgPose);

/**
 * @brief Complete abb_rapid_msgs/msg/RobTarget value.
 * @details All 4 fields and 0 constants; extent 68..68 bytes.
 */
export class Ros2Abb_rapid_msgsMsgRobTarget extends Record
{
    /**
     * @brief Original abb_rapid_msgs/msg/RobTarget.trans field.
     * @details Type abb_rapid_msgs/msg/Pos; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/RobTarget.rot field.
     * @details Type abb_rapid_msgs/msg/Orient; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/RobTarget.robconf field.
     * @details Type abb_rapid_msgs/msg/ConfData; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/RobTarget.extax field.
     * @details Type abb_rapid_msgs/msg/ExtJoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/msg/RobTarget",
        "native_identity": null,
        "codec_identity": "UWVMROS1_8decb56e8faf0a6a954af974adfea5c500aea8392e6a778ae7394174323489d8",
        "minimum": 68,
        "maximum": 68,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "trans",
                    "type": "abb_rapid_msgs/msg/Pos",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "rot",
                    "type": "abb_rapid_msgs/msg/Orient",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "robconf",
                    "type": "abb_rapid_msgs/msg/ConfData",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "extax",
                    "type": "abb_rapid_msgs/msg/ExtJoint",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_msgsMsgRobTarget);

/**
 * @brief Complete abb_rapid_msgs/msg/ToolData value.
 * @details All 3 fields and 0 constants; extent 73..73 bytes.
 */
export class Ros2Abb_rapid_msgsMsgToolData extends Record
{
    /**
     * @brief Original abb_rapid_msgs/msg/ToolData.robhold field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/ToolData.tframe field.
     * @details Type abb_rapid_msgs/msg/Pose; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/ToolData.tload field.
     * @details Type abb_rapid_msgs/msg/LoadData; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/msg/ToolData",
        "native_identity": null,
        "codec_identity": "UWVMROS1_948fa0bbaaf95f0d88ca03cad687f16102261f54b0da889ae8bca82042fc5237",
        "minimum": 73,
        "maximum": 73,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "robhold",
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
                    "default": null
                },
                {
                    "name" : "tframe",
                    "type": "abb_rapid_msgs/msg/Pose",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "tload",
                    "type": "abb_rapid_msgs/msg/LoadData",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_msgsMsgToolData);

/**
 * @brief Complete abb_rapid_msgs/msg/WObjData value.
 * @details All 5 fields and 0 constants; extent 62..574 bytes.
 */
export class Ros2Abb_rapid_msgsMsgWObjData extends Record
{
    /**
     * @brief Original abb_rapid_msgs/msg/WObjData.robhold field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/WObjData.ufprog field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/WObjData.ufmec field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/WObjData.uframe field.
     * @details Type abb_rapid_msgs/msg/Pose; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/msg/WObjData.oframe field.
     * @details Type abb_rapid_msgs/msg/Pose; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/msg/WObjData",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b36f0448512fab6028431d19b39a8ae31b7b81b2615ffc8311139f63b5d8e7cd",
        "minimum": 62,
        "maximum": 574,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "robhold",
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
                    "default": null
                },
                {
                    "name" : "ufprog",
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
                    "default": null
                },
                {
                    "name" : "ufmec",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "uframe",
                    "type": "abb_rapid_msgs/msg/Pose",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "oframe",
                    "type": "abb_rapid_msgs/msg/Pose",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_msgsMsgWObjData);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/msg/EGMActivateSettings value.
 * @details All 8 fields and 0 constants; extent 204..716 bytes.
 */
export class Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.tool field.
     * @details Type abb_rapid_msgs/msg/ToolData; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.wobj field.
     * @details Type abb_rapid_msgs/msg/WObjData; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.correction_frame field.
     * @details Type abb_rapid_msgs/msg/Pose; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.sensor_frame field.
     * @details Type abb_rapid_msgs/msg/Pose; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.cond_min_max field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.lp_filter field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.sample_rate field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.max_speed_deviation field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/msg/EGMActivateSettings",
        "native_identity": null,
        "codec_identity": "UWVMROS1_fce73aea80d9b8a299b8e2ab742602871146b3ebbd624a2e807e25c1ac107cfa",
        "minimum": 204,
        "maximum": 716,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "tool",
                    "type": "abb_rapid_msgs/msg/ToolData",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "wobj",
                    "type": "abb_rapid_msgs/msg/WObjData",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "correction_frame",
                    "type": "abb_rapid_msgs/msg/Pose",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "sensor_frame",
                    "type": "abb_rapid_msgs/msg/Pose",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "cond_min_max",
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
                    "default": null
                },
                {
                    "name" : "lp_filter",
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
                    "default": null
                },
                {
                    "name" : "sample_rate",
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
                    "default": null
                },
                {
                    "name" : "max_speed_deviation",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/msg/EGMRunSettings value.
 * @details All 4 fields and 0 constants; extent 40..40 bytes.
 */
export class Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.cond_time field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.ramp_in_time field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.offset field.
     * @details Type abb_rapid_msgs/msg/Pose; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.pos_corr_gain field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/msg/EGMRunSettings",
        "native_identity": null,
        "codec_identity": "UWVMROS1_92a2a654eb2eda89077933f955f04ed87884827b8875cf563570eed5d211b0e2",
        "minimum": 40,
        "maximum": 40,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "cond_time",
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
                    "default": null
                },
                {
                    "name" : "ramp_in_time",
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
                    "default": null
                },
                {
                    "name" : "offset",
                    "type": "abb_rapid_msgs/msg/Pose",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "pos_corr_gain",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/msg/EGMSetupSettings value.
 * @details All 2 fields and 0 constants; extent 5..5 bytes.
 */
export class Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.use_filtering field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.comm_timeout field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/msg/EGMSetupSettings",
        "native_identity": null,
        "codec_identity": "UWVMROS1_2565bed5b83b132c69f37d7294c69181800ad2974ddc54f60868da57e28e782c",
        "minimum": 5,
        "maximum": 5,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "use_filtering",
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
                    "default": null
                },
                {
                    "name" : "comm_timeout",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/msg/EGMStopSettings value.
 * @details All 1 fields and 0 constants; extent 4..4 bytes.
 */
export class Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMStopSettings.ramp_out_time field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/msg/EGMStopSettings",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0f3f2f6034567a7d49dd140ff9ff620e8567548139597b9b823e63a947673cee",
        "minimum": 4,
        "maximum": 4,
        "semantics": "",
        "fields": [ {
            "name" : "ramp_out_time",
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
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/msg/EGMSettings value.
 * @details All 6 fields and 0 constants; extent 255..767 bytes.
 */
export class Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.allow_egm_motions field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.use_presync field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.setup_uc field.
     * @details Type abb_rapid_sm_addin_msgs/msg/EGMSetupSettings; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.activate field.
     * @details Type abb_rapid_sm_addin_msgs/msg/EGMActivateSettings; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.run field.
     * @details Type abb_rapid_sm_addin_msgs/msg/EGMRunSettings; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.stop field.
     * @details Type abb_rapid_sm_addin_msgs/msg/EGMStopSettings; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/msg/EGMSettings",
        "native_identity": null,
        "codec_identity": "UWVMROS1_622d3a975eecb11f7729aecfadc161cada271208d6fe7599f455750b90144ef3",
        "minimum": 255,
        "maximum": 767,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "allow_egm_motions",
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
                    "default": null
                },
                {
                    "name" : "use_presync",
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
                    "default": null
                },
                {
                    "name" : "setup_uc",
                    "type": "abb_rapid_sm_addin_msgs/msg/EGMSetupSettings",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "activate",
                    "type": "abb_rapid_sm_addin_msgs/msg/EGMActivateSettings",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "run",
                    "type": "abb_rapid_sm_addin_msgs/msg/EGMRunSettings",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "stop",
                    "type": "abb_rapid_sm_addin_msgs/msg/EGMStopSettings",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/msg/StateMachineState value.
 * @details All 3 fields and 12 constants; extent 6..518 bytes.
 */
export class Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.rapid_task field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.sm_state field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.egm_action field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/msg/StateMachineState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ff2a09e4b6e8ef26cbdc3ecdffdceb33d6b2c82f0d51ed2c38ce9648c6f47711",
        "minimum": 6,
        "maximum": 518,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "rapid_task",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "sm_state",
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
                    "default": null
                },
                {
                    "name" : "egm_action",
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
                    "default": null
                }
            ]
    };
    /** @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_UNKNOWN constant; no instance bytes. */
    static SM_STATE_UNKNOWN = 1;
    /** @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_IDLE constant; no instance bytes. */
    static SM_STATE_IDLE = 2;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_INITIALIZE constant; no instance bytes.
     */
    static SM_STATE_INITIALIZE = 3;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_RUN_RAPID_ROUTINE constant; no instance
     * bytes.
     */
    static SM_STATE_RUN_RAPID_ROUTINE = 4;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_RUN_EGM_ROUTINE constant; no instance
     * bytes.
     */
    static SM_STATE_RUN_EGM_ROUTINE = 5;
    /** @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_UNKNOWN constant; no instance bytes. */
    static EGM_ACTION_UNKNOWN = 1;
    /** @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_NONE constant; no instance bytes. */
    static EGM_ACTION_NONE = 2;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_RUN_JOINT constant; no instance bytes.
     */
    static EGM_ACTION_RUN_JOINT = 3;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_RUN_POSE constant; no instance bytes.
     */
    static EGM_ACTION_RUN_POSE = 4;
    /** @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_STOP constant; no instance bytes. */
    static EGM_ACTION_STOP = 5;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_START_STREAM constant; no instance
     * bytes.
     */
    static EGM_ACTION_START_STREAM = 6;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_STOP_STREAM constant; no instance
     * bytes.
     */
    static EGM_ACTION_STOP_STREAM = 7;
}

REGISTRY.add(Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/msg/RuntimeState value.
 * @details All 2 fields and 0 constants; extent 16..8368 bytes.
 */
export class Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/RuntimeState.header field.
     * @details Type std_msgs/msg/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/msg/RuntimeState.state_machines field.
     * @details Type abb_rapid_sm_addin_msgs/msg/StateMachineState; shape sequence; count/bound 16; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/msg/RuntimeState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_3c0f157544fa82c4e206a4fb42f8ba7f67213d19533f79b77c66dec6fd0460d9",
        "minimum": 16,
        "maximum": 8368,
        "semantics": "",
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
                    "default": null
                },
                {
                    "name" : "state_machines",
                    "type": "abb_rapid_sm_addin_msgs/msg/StateMachineState",
                    "array": "sequence",
                    "count": 16,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request value.
 * @details All 1 fields and 0 constants; extent 4..68 bytes.
 */
export class Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request.task field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_363be2459fcc9c475c6305cbcfebf7689e891eb27645b7667960aace23d56e8e",
        "minimum": 4,
        "maximum": 68,
        "semantics": "",
        "fields": [ {
            "name" : "task",
            "type": "string",
            "array": "",
            "count": 0,
            "string_bound": 64,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response value.
 * @details All 3 fields and 0 constants; extent 261..1285 bytes.
 */
export class Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.settings field.
     * @details Type abb_rapid_sm_addin_msgs/msg/EGMSettings; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_d8f340e1c6d78fc0a782c3279efb34ae5e11df175a82f9dd5ee82e603d6b2ffb",
        "minimum": 261,
        "maximum": 1285,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "settings",
                    "type": "abb_rapid_sm_addin_msgs/msg/EGMSettings",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request value.
 * @details All 2 fields and 0 constants; extent 259..835 bytes.
 */
export class Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.task field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.settings field.
     * @details Type abb_rapid_sm_addin_msgs/msg/EGMSettings; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_c2f3dd535e9475526bf18bdffa0e9a839049d315c9aebb150f8561ee3361a2bd",
        "minimum": 259,
        "maximum": 835,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "task",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "settings",
                    "type": "abb_rapid_sm_addin_msgs/msg/EGMSettings",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6a1adeebe31dfe101a6d57019e26ee2f1144b9a6ce30aee08d4c6fe56ea6838d",
        "minimum": 6,
        "maximum": 518,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request value.
 * @details All 2 fields and 0 constants; extent 8..584 bytes.
 */
export class Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.task field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.routine field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_4561b7e5e296a1a329d5f5684bcbde1ef41324554a34e9a79a85824286dd477c",
        "minimum": 8,
        "maximum": 584,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "task",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "routine",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_980d2a16536289f446161acdf2fc57d459baa2290d74f1dd5aaf8129126cbba1",
        "minimum": 6,
        "maximum": 518,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request value.
 * @details All 3 fields and 15 constants; extent 9..73 bytes.
 */
export class Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.task field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.command field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.target_position field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_5d6983aa85c2c52f8ec06cbd723d5929cfc381db2e0bfffb4c27078497d86c90",
        "minimum": 9,
        "maximum": 73,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "task",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "command",
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
                    "default": null
                },
                {
                    "name" : "target_position",
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
                    "default": null
                }
            ]
    };
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_UNKNOWN constant; no instance bytes.
     */
    static SG_COMMAND_UNKNOWN = 1;
    /** @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_NONE constant; no instance bytes. */
    static SG_COMMAND_NONE = 2;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_INITIALIZE constant; no instance
     * bytes.
     */
    static SG_COMMAND_INITIALIZE = 3;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_CALIBRATE constant; no instance
     * bytes.
     */
    static SG_COMMAND_CALIBRATE = 4;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_MOVE_TO constant; no instance bytes.
     */
    static SG_COMMAND_MOVE_TO = 5;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_GRIP_IN constant; no instance bytes.
     */
    static SG_COMMAND_GRIP_IN = 6;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_GRIP_OUT constant; no instance
     * bytes.
     */
    static SG_COMMAND_GRIP_OUT = 7;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_ON_1 constant; no instance
     * bytes.
     */
    static SG_COMMAND_BLOW_ON_1 = 8;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_ON_2 constant; no instance
     * bytes.
     */
    static SG_COMMAND_BLOW_ON_2 = 9;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_OFF_1 constant; no instance
     * bytes.
     */
    static SG_COMMAND_BLOW_OFF_1 = 10;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_OFF_2 constant; no instance
     * bytes.
     */
    static SG_COMMAND_BLOW_OFF_2 = 11;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_ON_1 constant; no instance
     * bytes.
     */
    static SG_COMMAND_VACUUM_ON_1 = 12;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_ON_2 constant; no instance
     * bytes.
     */
    static SG_COMMAND_VACUUM_ON_2 = 13;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_OFF_1 constant; no instance
     * bytes.
     */
    static SG_COMMAND_VACUUM_OFF_1 = 14;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_OFF_2 constant; no instance
     * bytes.
     */
    static SG_COMMAND_VACUUM_OFF_2 = 15;
}

REGISTRY.add(Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_87cdc41c81d49930dce7193d4b7af98add266a6e9a7cf5e69457d01ded388cf8",
        "minimum": 6,
        "maximum": 518,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response);

/**
 * @brief Complete abb_robot_msgs/msg/MechanicalUnitState value.
 * @details All 2 fields and 0 constants; extent 5..69 bytes.
 */
export class Ros2Abb_robot_msgsMsgMechanicalUnitState extends Record
{
    /**
     * @brief Original abb_robot_msgs/msg/MechanicalUnitState.name field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/msg/MechanicalUnitState.activated field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/msg/MechanicalUnitState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_1dc7a7dcbaa19e78cd6419f8844287a7fbd9d7a839ab1a8ad97ef0be34f3a3a8",
        "minimum": 5,
        "maximum": 69,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "name",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "activated",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsMsgMechanicalUnitState);

/**
 * @brief Complete abb_robot_msgs/msg/RAPIDSymbolPath value.
 * @details All 3 fields and 0 constants; extent 12..204 bytes.
 */
export class Ros2Abb_robot_msgsMsgRAPIDSymbolPath extends Record
{
    /**
     * @brief Original abb_robot_msgs/msg/RAPIDSymbolPath.task field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/msg/RAPIDSymbolPath.module field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/msg/RAPIDSymbolPath.symbol field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/msg/RAPIDSymbolPath",
        "native_identity": null,
        "codec_identity": "UWVMROS1_249523197567fbf638f30487a7f5b8d8ff5ea746fcd4a65a35f2dbb18a3adf0e",
        "minimum": 12,
        "maximum": 204,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "task",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "module",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "symbol",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsMsgRAPIDSymbolPath);

/**
 * @brief Complete abb_robot_msgs/msg/RAPIDTaskState value.
 * @details All 4 fields and 5 constants; extent 7..71 bytes.
 */
export class Ros2Abb_robot_msgsMsgRAPIDTaskState extends Record
{
    /**
     * @brief Original abb_robot_msgs/msg/RAPIDTaskState.name field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/msg/RAPIDTaskState.activated field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/msg/RAPIDTaskState.execution_state field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/msg/RAPIDTaskState.motion_task field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/msg/RAPIDTaskState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ff698e375b0ff33026cfd248c1ac734f939763aba25a6c4f7cac628d445422fd",
        "minimum": 7,
        "maximum": 71,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "name",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "activated",
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
                    "default": null
                },
                {
                    "name" : "execution_state",
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
                    "default": null
                },
                {
                    "name" : "motion_task",
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
                    "default": null
                }
            ]
    };
    /** @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_UNKNOWN constant; no instance bytes. */
    static EXECUTION_STATE_UNKNOWN = 1;
    /** @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_READY constant; no instance bytes. */
    static EXECUTION_STATE_READY = 2;
    /** @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_STOPPED constant; no instance bytes. */
    static EXECUTION_STATE_STOPPED = 3;
    /** @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_STARTED constant; no instance bytes. */
    static EXECUTION_STATE_STARTED = 4;
    /** @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_UNINITIALIZED constant; no instance bytes. */
    static EXECUTION_STATE_UNINITIALIZED = 5;
}

REGISTRY.add(Ros2Abb_robot_msgsMsgRAPIDTaskState);

/**
 * @brief Complete abb_robot_msgs/msg/ServiceResponses value.
 * @details All 0 fields and 32 constants; extent 0..0 bytes.
 */
export class Ros2Abb_robot_msgsMsgServiceResponses extends Record
{
    static schema = {
        "type" : "abb_robot_msgs/msg/ServiceResponses",
        "native_identity": null,
        "codec_identity": "UWVMROS1_4e01b972b67454e851801f28aee09c0774b67907d2241cc67cae7d045c18f646",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.SUCCESS constant; no instance bytes. */
    static SUCCESS = "";
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SUCCESS constant; no instance bytes. */
    static RC_SUCCESS = 1;
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.FAILED constant; no instance bytes. */
    static FAILED = "Service failed (e.g. timeout or resource not found, see the DEBUG log for details)";
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.RC_FAILED constant; no instance bytes. */
    static RC_FAILED = 2;
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.SERVER_IS_BUSY constant; no instance bytes. */
    static SERVER_IS_BUSY = "Server is busy";
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SERVER_IS_BUSY constant; no instance bytes. */
    static RC_SERVER_IS_BUSY = 1001;
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_FILENAME constant; no instance bytes. */
    static EMPTY_FILENAME = "Filename is empty";
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_FILENAME constant; no instance bytes. */
    static RC_EMPTY_FILENAME = 2001;
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_SIGNAL_NAME constant; no instance bytes. */
    static EMPTY_SIGNAL_NAME = "Signal name is empty";
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_SIGNAL_NAME constant; no instance bytes. */
    static RC_EMPTY_SIGNAL_NAME = 2002;
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_RAPID_TASK_NAME constant; no instance bytes. */
    static EMPTY_RAPID_TASK_NAME = "RAPID task name is empty";
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_RAPID_TASK_NAME constant; no instance bytes. */
    static RC_EMPTY_RAPID_TASK_NAME = 2003;
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_RAPID_MODULE_NAME constant; no instance bytes. */
    static EMPTY_RAPID_MODULE_NAME = "RAPID module name is empty";
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_RAPID_MODULE_NAME constant; no instance bytes. */
    static RC_EMPTY_RAPID_MODULE_NAME = 2004;
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_RAPID_SYMBOL_NAME constant; no instance bytes. */
    static EMPTY_RAPID_SYMBOL_NAME = "RAPID symbol name is empty";
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_RAPID_SYMBOL_NAME constant; no instance bytes. */
    static RC_EMPTY_RAPID_SYMBOL_NAME = 2005;
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.NOT_IN_AUTO_MODE constant; no instance bytes. */
    static NOT_IN_AUTO_MODE = "Robot controller is not in AUTO mode";
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.RC_NOT_IN_AUTO_MODE constant; no instance bytes. */
    static RC_NOT_IN_AUTO_MODE = 3001;
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.MOTORS_ARE_OFF constant; no instance bytes. */
    static MOTORS_ARE_OFF = "Motors are off";
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.RC_MOTORS_ARE_OFF constant; no instance bytes. */
    static RC_MOTORS_ARE_OFF = 3002;
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.MOTORS_ARE_ON constant; no instance bytes. */
    static MOTORS_ARE_ON = "Motors are on";
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.RC_MOTORS_ARE_ON constant; no instance bytes. */
    static RC_MOTORS_ARE_ON = 3003;
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.RAPID_NOT_STOPPED constant; no instance bytes. */
    static RAPID_NOT_STOPPED = "RAPID has not been stopped";
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.RC_RAPID_NOT_STOPPED constant; no instance bytes. */
    static RC_RAPID_NOT_STOPPED = 3004;
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.RAPID_NOT_RUNNING constant; no instance bytes. */
    static RAPID_NOT_RUNNING = "RAPID is not running";
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.RC_RAPID_NOT_RUNNING constant; no instance bytes. */
    static RC_RAPID_NOT_RUNNING = 3005;
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.SM_RUNTIME_STATES_MISSING constant; no instance bytes. */
    static SM_RUNTIME_STATES_MISSING = "No runtime states received for any StateMachine Add-In instance";
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SM_RUNTIME_STATES_MISSING constant; no instance bytes. */
    static RC_SM_RUNTIME_STATES_MISSING = 4001;
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.SM_UNKNOWN_RAPID_TASK constant; no instance bytes. */
    static SM_UNKNOWN_RAPID_TASK = "RAPID task not found among known StateMachine Add-In instances";
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SM_UNKNOWN_RAPID_TASK constant; no instance bytes. */
    static RC_SM_UNKNOWN_RAPID_TASK = 4002;
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.SM_UNINITIALIZED constant; no instance bytes. */
    static SM_UNINITIALIZED = "StateMachine Add-In instance has not been initialized";
    /** @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SM_UNINITIALIZED constant; no instance bytes. */
    static RC_SM_UNINITIALIZED = 4003;
}

REGISTRY.add(Ros2Abb_robot_msgsMsgServiceResponses);

/**
 * @brief Complete abb_robot_msgs/msg/SystemState value.
 * @details All 6 fields and 0 constants; extent 23..2327 bytes.
 */
export class Ros2Abb_robot_msgsMsgSystemState extends Record
{
    /**
     * @brief Original abb_robot_msgs/msg/SystemState.header field.
     * @details Type std_msgs/msg/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/msg/SystemState.motors_on field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/msg/SystemState.auto_mode field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/msg/SystemState.rapid_running field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/msg/SystemState.rapid_tasks field.
     * @details Type abb_robot_msgs/msg/RAPIDTaskState; shape sequence; count/bound 16; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/msg/SystemState.mechanical_units field.
     * @details Type abb_robot_msgs/msg/MechanicalUnitState; shape sequence; count/bound 16; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/msg/SystemState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_c1cdbf0e578fddc5bf70cc2cc181d786f3e8189afc6a67962de6eb273973a38f",
        "minimum": 23,
        "maximum": 2327,
        "semantics": "",
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
                    "default": null
                },
                {
                    "name" : "motors_on",
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
                    "default": null
                },
                {
                    "name" : "auto_mode",
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
                    "default": null
                },
                {
                    "name" : "rapid_running",
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
                    "default": null
                },
                {
                    "name" : "rapid_tasks",
                    "type": "abb_robot_msgs/msg/RAPIDTaskState",
                    "array": "sequence",
                    "count": 16,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "mechanical_units",
                    "type": "abb_robot_msgs/msg/MechanicalUnitState",
                    "array": "sequence",
                    "count": 16,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsMsgSystemState);

/**
 * @brief Complete abb_robot_msgs/srv/GetFileContents_Request value.
 * @details All 1 fields and 0 constants; extent 4..516 bytes.
 */
export class Ros2Abb_robot_msgsSrvGetFileContents_Request extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/GetFileContents_Request.filename field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/GetFileContents_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_bdcf73a965bd05356e48019b74d633176fdeda62452bc7185d6b6ff30576016b",
        "minimum": 4,
        "maximum": 516,
        "semantics": "",
        "fields": [ {
            "name" : "filename",
            "type": "string",
            "array": "",
            "count": 0,
            "string_bound": 512,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvGetFileContents_Request);

/**
 * @brief Complete abb_robot_msgs/srv/GetFileContents_Response value.
 * @details All 3 fields and 0 constants; extent 10..4618 bytes.
 */
export class Ros2Abb_robot_msgsSrvGetFileContents_Response extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/GetFileContents_Response.contents field.
     * @details Type string; shape scalar; count/bound 0; text bound 4096 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/GetFileContents_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/GetFileContents_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/GetFileContents_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f05617145a40043e87cbc251f833274d2a962bd7cdaabc5f9a8e4591bd56e107",
        "minimum": 10,
        "maximum": 4618,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "contents",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 4096,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvGetFileContents_Response);

/**
 * @brief Complete abb_robot_msgs/srv/GetIOSignal_Request value.
 * @details All 1 fields and 0 constants; extent 4..516 bytes.
 */
export class Ros2Abb_robot_msgsSrvGetIOSignal_Request extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/GetIOSignal_Request.signal field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/GetIOSignal_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_2406d53c2fce44e72ad7e6f1c9e75ea19c4df694ff9f00917229ec758209b1f5",
        "minimum": 4,
        "maximum": 516,
        "semantics": "",
        "fields": [ {
            "name" : "signal",
            "type": "string",
            "array": "",
            "count": 0,
            "string_bound": 512,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvGetIOSignal_Request);

/**
 * @brief Complete abb_robot_msgs/srv/GetIOSignal_Response value.
 * @details All 3 fields and 0 constants; extent 10..1034 bytes.
 */
export class Ros2Abb_robot_msgsSrvGetIOSignal_Response extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/GetIOSignal_Response.value field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/GetIOSignal_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/GetIOSignal_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/GetIOSignal_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_1f668ef78c353f2ec8defdac619d349cda731576f2429cf07107b9b56ba9030e",
        "minimum": 10,
        "maximum": 1034,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "value",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvGetIOSignal_Response);

/**
 * @brief Complete abb_robot_msgs/srv/GetRAPIDBool_Request value.
 * @details All 1 fields and 0 constants; extent 12..204 bytes.
 */
export class Ros2Abb_robot_msgsSrvGetRAPIDBool_Request extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDBool_Request.path field.
     * @details Type abb_robot_msgs/msg/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/GetRAPIDBool_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_c381080d235c78216a8e64275819ff3fb97e1b1de96e7da758c4889630b8e0ff",
        "minimum": 12,
        "maximum": 204,
        "semantics": "",
        "fields": [ {
            "name" : "path",
            "type": "abb_robot_msgs/msg/RAPIDSymbolPath",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvGetRAPIDBool_Request);

/**
 * @brief Complete abb_robot_msgs/srv/GetRAPIDBool_Response value.
 * @details All 3 fields and 0 constants; extent 7..519 bytes.
 */
export class Ros2Abb_robot_msgsSrvGetRAPIDBool_Response extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDBool_Response.value field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDBool_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDBool_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/GetRAPIDBool_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b853e212489fb815866fa29b165eea474a977483158b6203699c4a1293aa6acd",
        "minimum": 7,
        "maximum": 519,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "value",
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
                    "default": null
                },
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvGetRAPIDBool_Response);

/**
 * @brief Complete abb_robot_msgs/srv/GetRAPIDDnum_Request value.
 * @details All 1 fields and 0 constants; extent 12..204 bytes.
 */
export class Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Request.path field.
     * @details Type abb_robot_msgs/msg/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/GetRAPIDDnum_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_71057c2fe44bc96505ec6e05d998fcb6323b281fff40808ce990207c48626979",
        "minimum": 12,
        "maximum": 204,
        "semantics": "",
        "fields": [ {
            "name" : "path",
            "type": "abb_robot_msgs/msg/RAPIDSymbolPath",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request);

/**
 * @brief Complete abb_robot_msgs/srv/GetRAPIDDnum_Response value.
 * @details All 3 fields and 0 constants; extent 14..526 bytes.
 */
export class Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Response.value field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/GetRAPIDDnum_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_af0420c126368a7e45b728c7fef76062b5ef2f0adea7535ad38e4771244edd56",
        "minimum": 14,
        "maximum": 526,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "value",
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
                    "default": null
                },
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response);

/**
 * @brief Complete abb_robot_msgs/srv/GetRAPIDNum_Request value.
 * @details All 1 fields and 0 constants; extent 12..204 bytes.
 */
export class Ros2Abb_robot_msgsSrvGetRAPIDNum_Request extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDNum_Request.path field.
     * @details Type abb_robot_msgs/msg/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/GetRAPIDNum_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_03d5da34af8d90ed8a20f8ca38fa75d9e777496828978f0f348e3c1c8f67d0a5",
        "minimum": 12,
        "maximum": 204,
        "semantics": "",
        "fields": [ {
            "name" : "path",
            "type": "abb_robot_msgs/msg/RAPIDSymbolPath",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvGetRAPIDNum_Request);

/**
 * @brief Complete abb_robot_msgs/srv/GetRAPIDNum_Response value.
 * @details All 3 fields and 0 constants; extent 10..522 bytes.
 */
export class Ros2Abb_robot_msgsSrvGetRAPIDNum_Response extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDNum_Response.value field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDNum_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDNum_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/GetRAPIDNum_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_a0da03014dd001e58efc4a5b274cd5c62016e7fa257af1120a8142a79635220d",
        "minimum": 10,
        "maximum": 522,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "value",
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
                    "default": null
                },
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvGetRAPIDNum_Response);

/**
 * @brief Complete abb_robot_msgs/srv/GetRAPIDString_Request value.
 * @details All 1 fields and 0 constants; extent 12..204 bytes.
 */
export class Ros2Abb_robot_msgsSrvGetRAPIDString_Request extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDString_Request.path field.
     * @details Type abb_robot_msgs/msg/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/GetRAPIDString_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_c7bc9c788301e619a165c18a1cdb0aca80df8def5be31da5dbf34c0038e73596",
        "minimum": 12,
        "maximum": 204,
        "semantics": "",
        "fields": [ {
            "name" : "path",
            "type": "abb_robot_msgs/msg/RAPIDSymbolPath",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvGetRAPIDString_Request);

/**
 * @brief Complete abb_robot_msgs/srv/GetRAPIDString_Response value.
 * @details All 3 fields and 0 constants; extent 10..1034 bytes.
 */
export class Ros2Abb_robot_msgsSrvGetRAPIDString_Response extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDString_Response.value field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDString_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDString_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/GetRAPIDString_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_cf7bfdb2af5b91eb58b19b909f7fa3357dc1dad02716f8fa4465b53f3f4a1458",
        "minimum": 10,
        "maximum": 1034,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "value",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvGetRAPIDString_Response);

/**
 * @brief Complete abb_robot_msgs/srv/GetRAPIDSymbol_Request value.
 * @details All 1 fields and 0 constants; extent 12..204 bytes.
 */
export class Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Request.path field.
     * @details Type abb_robot_msgs/msg/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/GetRAPIDSymbol_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e216a54cdae70f8147489928ff05a4b172ba4fc47e9ed5df4828b070354ac469",
        "minimum": 12,
        "maximum": 204,
        "semantics": "",
        "fields": [ {
            "name" : "path",
            "type": "abb_robot_msgs/msg/RAPIDSymbolPath",
            "array": "",
            "count": 0,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request);

/**
 * @brief Complete abb_robot_msgs/srv/GetRAPIDSymbol_Response value.
 * @details All 3 fields and 0 constants; extent 10..1034 bytes.
 */
export class Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Response.value field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/GetRAPIDSymbol_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b1f6de7ad0640f5645678d327804dc7e732bdad38805e642b13ed7294c21d602",
        "minimum": 10,
        "maximum": 1034,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "value",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response);

/**
 * @brief Complete abb_robot_msgs/srv/GetRobotControllerDescription_Request value.
 * @details All 0 fields and 0 constants; extent 0..0 bytes.
 */
export class Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request extends Record
{
    static schema = {
        "type" : "abb_robot_msgs/srv/GetRobotControllerDescription_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_caf70e11b386a933f62d06a433ca1cedaa3c8ecc75b7e8de8c1d5ae00a29f03e",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request);

/**
 * @brief Complete abb_robot_msgs/srv/GetRobotControllerDescription_Response value.
 * @details All 3 fields and 0 constants; extent 10..4618 bytes.
 */
export class Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/GetRobotControllerDescription_Response.description field.
     * @details Type string; shape scalar; count/bound 0; text bound 4096 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/GetRobotControllerDescription_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/GetRobotControllerDescription_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/GetRobotControllerDescription_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_1af2591f035379597f376ed1e2343f73a89f9fef5c29269aa420243a82e6c368",
        "minimum": 10,
        "maximum": 4618,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "description",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 4096,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response);

/**
 * @brief Complete abb_robot_msgs/srv/GetSpeedRatio_Request value.
 * @details All 0 fields and 0 constants; extent 0..0 bytes.
 */
export class Ros2Abb_robot_msgsSrvGetSpeedRatio_Request extends Record
{
    static schema = {
        "type" : "abb_robot_msgs/srv/GetSpeedRatio_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_54ee2c897e2bf2f39c96cc42246ffe5997c8df280280433e8748b3bcf24c299c",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvGetSpeedRatio_Request);

/**
 * @brief Complete abb_robot_msgs/srv/GetSpeedRatio_Response value.
 * @details All 3 fields and 0 constants; extent 7..519 bytes.
 */
export class Ros2Abb_robot_msgsSrvGetSpeedRatio_Response extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/GetSpeedRatio_Response.speed_ratio field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/GetSpeedRatio_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/GetSpeedRatio_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/GetSpeedRatio_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_baa271a258c7ca274e0145fea1abb7cbc43e98c82b8e40d67c4743237a19910b",
        "minimum": 7,
        "maximum": 519,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "speed_ratio",
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
                    "default": null
                },
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvGetSpeedRatio_Response);

/**
 * @brief Complete abb_robot_msgs/srv/SetFileContents_Request value.
 * @details All 2 fields and 0 constants; extent 8..4616 bytes.
 */
export class Ros2Abb_robot_msgsSrvSetFileContents_Request extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/SetFileContents_Request.filename field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/SetFileContents_Request.contents field.
     * @details Type string; shape scalar; count/bound 0; text bound 4096 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/SetFileContents_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_3bfa8ad1846fc31acae47a875d3555a78a64b777923eb9b62e87a836f041b26b",
        "minimum": 8,
        "maximum": 4616,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "filename",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "contents",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 4096,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvSetFileContents_Request);

/**
 * @brief Complete abb_robot_msgs/srv/SetFileContents_Response value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros2Abb_robot_msgsSrvSetFileContents_Response extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/SetFileContents_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/SetFileContents_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/SetFileContents_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_1586344401d43055460b49f2487567638f66838cfe5cac99a47e0a39c0b06ede",
        "minimum": 6,
        "maximum": 518,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvSetFileContents_Response);

/**
 * @brief Complete abb_robot_msgs/srv/SetIOSignal_Request value.
 * @details All 2 fields and 0 constants; extent 8..1032 bytes.
 */
export class Ros2Abb_robot_msgsSrvSetIOSignal_Request extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/SetIOSignal_Request.signal field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/SetIOSignal_Request.value field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/SetIOSignal_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_2d206d0020179263e83e745a428616ed53d809b0c65a79ad495cb882ae9e49b7",
        "minimum": 8,
        "maximum": 1032,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "signal",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "value",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvSetIOSignal_Request);

/**
 * @brief Complete abb_robot_msgs/srv/SetIOSignal_Response value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros2Abb_robot_msgsSrvSetIOSignal_Response extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/SetIOSignal_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/SetIOSignal_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/SetIOSignal_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_1fa28cc3160d51f71d0740cbe145663ec360d6fa488c2a6bf14ad6ab92004a75",
        "minimum": 6,
        "maximum": 518,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvSetIOSignal_Response);

/**
 * @brief Complete abb_robot_msgs/srv/SetRAPIDBool_Request value.
 * @details All 2 fields and 0 constants; extent 13..205 bytes.
 */
export class Ros2Abb_robot_msgsSrvSetRAPIDBool_Request extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDBool_Request.path field.
     * @details Type abb_robot_msgs/msg/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDBool_Request.value field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/SetRAPIDBool_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_4e707e429acc860d032d216bcd2c1eb1a0f731fad7e7c0bef7beed810c6e4a52",
        "minimum": 13,
        "maximum": 205,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "path",
                    "type": "abb_robot_msgs/msg/RAPIDSymbolPath",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "value",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvSetRAPIDBool_Request);

/**
 * @brief Complete abb_robot_msgs/srv/SetRAPIDBool_Response value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros2Abb_robot_msgsSrvSetRAPIDBool_Response extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDBool_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDBool_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/SetRAPIDBool_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_80d2b31c93771cfa8a19ff82a3d9d63951bf9d28c039d2725017327fa3b0114a",
        "minimum": 6,
        "maximum": 518,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvSetRAPIDBool_Response);

/**
 * @brief Complete abb_robot_msgs/srv/SetRAPIDDnum_Request value.
 * @details All 2 fields and 0 constants; extent 20..212 bytes.
 */
export class Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Request.path field.
     * @details Type abb_robot_msgs/msg/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Request.value field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/SetRAPIDDnum_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_cece086311a908f12c0b0ab3988ca829e891749c74687c717d2a52bfb8ceaf76",
        "minimum": 20,
        "maximum": 212,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "path",
                    "type": "abb_robot_msgs/msg/RAPIDSymbolPath",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "value",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request);

/**
 * @brief Complete abb_robot_msgs/srv/SetRAPIDDnum_Response value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/SetRAPIDDnum_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e5f77fe9850f109d873a2784b9690c8aa0632b9e91d158ed4d14daf1aaf90ea6",
        "minimum": 6,
        "maximum": 518,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response);

/**
 * @brief Complete abb_robot_msgs/srv/SetRAPIDNum_Request value.
 * @details All 2 fields and 0 constants; extent 16..208 bytes.
 */
export class Ros2Abb_robot_msgsSrvSetRAPIDNum_Request extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDNum_Request.path field.
     * @details Type abb_robot_msgs/msg/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDNum_Request.value field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/SetRAPIDNum_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_a5bee9a64be69dc4246f68837a44362f52795ae3c6420a2df47685606283ea02",
        "minimum": 16,
        "maximum": 208,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "path",
                    "type": "abb_robot_msgs/msg/RAPIDSymbolPath",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "value",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvSetRAPIDNum_Request);

/**
 * @brief Complete abb_robot_msgs/srv/SetRAPIDNum_Response value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros2Abb_robot_msgsSrvSetRAPIDNum_Response extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDNum_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDNum_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/SetRAPIDNum_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_744f3c5fac58ff098c96cedcea94fe6fa87c88ceb89674449f50fbdcd1ca30bb",
        "minimum": 6,
        "maximum": 518,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvSetRAPIDNum_Response);

/**
 * @brief Complete abb_robot_msgs/srv/SetRAPIDString_Request value.
 * @details All 2 fields and 0 constants; extent 16..720 bytes.
 */
export class Ros2Abb_robot_msgsSrvSetRAPIDString_Request extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDString_Request.path field.
     * @details Type abb_robot_msgs/msg/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDString_Request.value field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/SetRAPIDString_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f21c45f3f8cd4c0b50781bdd487fdc6ec0c0b35adbc7e36e9ca5b7cc47c3d461",
        "minimum": 16,
        "maximum": 720,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "path",
                    "type": "abb_robot_msgs/msg/RAPIDSymbolPath",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "value",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvSetRAPIDString_Request);

/**
 * @brief Complete abb_robot_msgs/srv/SetRAPIDString_Response value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros2Abb_robot_msgsSrvSetRAPIDString_Response extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDString_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDString_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/SetRAPIDString_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_1496ef4f4ffe48fe74b9e25b925c19f10f0e171a9d33fa2e56c15aa5cfbe4774",
        "minimum": 6,
        "maximum": 518,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvSetRAPIDString_Response);

/**
 * @brief Complete abb_robot_msgs/srv/SetRAPIDSymbol_Request value.
 * @details All 2 fields and 0 constants; extent 16..720 bytes.
 */
export class Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Request.path field.
     * @details Type abb_robot_msgs/msg/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Request.value field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/SetRAPIDSymbol_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_928d427801b79775595fed6e3779f9ba9e7e8e27f2de66cf79610cb51bb72bcf",
        "minimum": 16,
        "maximum": 720,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "path",
                    "type": "abb_robot_msgs/msg/RAPIDSymbolPath",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "value",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request);

/**
 * @brief Complete abb_robot_msgs/srv/SetRAPIDSymbol_Response value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/SetRAPIDSymbol_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e156616a51bf4691a1c3853d62a8b0c43bb17d1a330cd4e7a58eceb5fe442382",
        "minimum": 6,
        "maximum": 518,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response);

/**
 * @brief Complete abb_robot_msgs/srv/SetSpeedRatio_Request value.
 * @details All 1 fields and 0 constants; extent 1..1 bytes.
 */
export class Ros2Abb_robot_msgsSrvSetSpeedRatio_Request extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/SetSpeedRatio_Request.speed_ratio field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/SetSpeedRatio_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_da30970377ba1bc151b544560773f02e17f4eaed56eb4c8d791de72bdef04355",
        "minimum": 1,
        "maximum": 1,
        "semantics": "",
        "fields": [ {
            "name" : "speed_ratio",
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
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvSetSpeedRatio_Request);

/**
 * @brief Complete abb_robot_msgs/srv/SetSpeedRatio_Response value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros2Abb_robot_msgsSrvSetSpeedRatio_Response extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/SetSpeedRatio_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/SetSpeedRatio_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/SetSpeedRatio_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_25e6d7edaa0503a4d45d893e886db4215bfd0af8711307c141bc63552609e3a5",
        "minimum": 6,
        "maximum": 518,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvSetSpeedRatio_Response);

/**
 * @brief Complete abb_robot_msgs/srv/TriggerWithResultCode_Request value.
 * @details All 0 fields and 0 constants; extent 0..0 bytes.
 */
export class Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request extends Record
{
    static schema = {
        "type" : "abb_robot_msgs/srv/TriggerWithResultCode_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_fd1d49c3b4e489464c6662f306210137f71d15192f64cd8a8abf93acd5fbff8d",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request);

/**
 * @brief Complete abb_robot_msgs/srv/TriggerWithResultCode_Response value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response extends Record
{
    /**
     * @brief Original abb_robot_msgs/srv/TriggerWithResultCode_Response.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/srv/TriggerWithResultCode_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/srv/TriggerWithResultCode_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e38422b2a008f07e108505ac3ce65c24189a1d6657e88a6289e17d7d4ae38d51",
        "minimum": 6,
        "maximum": 518,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "result_code",
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response);

/**
 * @brief Complete builtin_interfaces/msg/Duration value.
 * @details All 2 fields and 0 constants; extent 8..8 bytes.
 */
export class Ros2Builtin_interfacesMsgDuration extends Record
{
    /**
     * @brief Original builtin_interfaces/msg/Duration.sec field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original builtin_interfaces/msg/Duration.nanosec field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "builtin_interfaces/msg/Duration",
        "native_identity": null,
        "codec_identity": "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4",
        "minimum": 8,
        "maximum": 8,
        "semantics": "normalized-time",
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
                    "default": null
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Builtin_interfacesMsgDuration);

/**
 * @brief Complete trajectory_msgs/msg/JointTrajectoryPoint value.
 * @details All 5 fields and 0 constants; extent 24..408 bytes.
 */
export class Ros2Trajectory_msgsMsgJointTrajectoryPoint extends Record
{
    /**
     * @brief Original trajectory_msgs/msg/JointTrajectoryPoint.positions field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/JointTrajectoryPoint.velocities field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/JointTrajectoryPoint.effort field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/JointTrajectoryPoint.time_from_start field.
     * @details Type builtin_interfaces/msg/Duration; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "trajectory_msgs/msg/JointTrajectoryPoint",
        "native_identity": null,
        "codec_identity": "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5",
        "minimum": 24,
        "maximum": 408,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "positions",
                    "type": "float64",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "velocities",
                    "type": "float64",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "accelerations",
                    "type": "float64",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "effort",
                    "type": "float64",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "time_from_start",
                    "type": "builtin_interfaces/msg/Duration",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Trajectory_msgsMsgJointTrajectoryPoint);

/**
 * @brief Complete trajectory_msgs/msg/JointTrajectory value.
 * @details All 3 fields and 0 constants; extent 20..4164 bytes.
 */
export class Ros2Trajectory_msgsMsgJointTrajectory extends Record
{
    /**
     * @brief Original trajectory_msgs/msg/JointTrajectory.header field.
     * @details Type std_msgs/msg/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/JointTrajectory.joint_names field.
     * @details Type string; shape sequence; count/bound 12; text bound 64 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/JointTrajectory.points field.
     * @details Type trajectory_msgs/msg/JointTrajectoryPoint; shape sequence; count/bound 8; text bound 0 bytes.
     */
    static schema = {
        "type" : "trajectory_msgs/msg/JointTrajectory",
        "native_identity": null,
        "codec_identity": "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0",
        "minimum": 20,
        "maximum": 4164,
        "semantics": "",
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
                    "default": null
                },
                {
                    "name" : "joint_names",
                    "type": "string",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "points",
                    "type": "trajectory_msgs/msg/JointTrajectoryPoint",
                    "array": "sequence",
                    "count": 8,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Trajectory_msgsMsgJointTrajectory);

/**
 * @brief Complete geometry_msgs/msg/Vector3 value.
 * @details All 3 fields and 0 constants; extent 24..24 bytes.
 */
export class Ros2Geometry_msgsMsgVector3 extends Record
{
    /**
     * @brief Original geometry_msgs/msg/Vector3.x field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original geometry_msgs/msg/Vector3.y field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original geometry_msgs/msg/Vector3.z field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "geometry_msgs/msg/Vector3",
        "native_identity": null,
        "codec_identity": "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e",
        "minimum": 24,
        "maximum": 24,
        "semantics": "",
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
                    "default": null
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
                    "default": null
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgVector3);

/**
 * @brief Complete geometry_msgs/msg/Quaternion value.
 * @details All 4 fields and 0 constants; extent 32..32 bytes.
 */
export class Ros2Geometry_msgsMsgQuaternion extends Record
{
    /**
     * @brief Original geometry_msgs/msg/Quaternion.x field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original geometry_msgs/msg/Quaternion.y field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original geometry_msgs/msg/Quaternion.z field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original geometry_msgs/msg/Quaternion.w field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "geometry_msgs/msg/Quaternion",
        "native_identity": null,
        "codec_identity": "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
        "minimum": 32,
        "maximum": 32,
        "semantics": "",
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
                    "default": 0.0
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
                    "default": 0.0
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
                    "default": 0.0
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
                    "default": 1.0
                }
            ]
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgQuaternion);

/**
 * @brief Complete geometry_msgs/msg/Transform value.
 * @details All 2 fields and 0 constants; extent 56..56 bytes.
 */
export class Ros2Geometry_msgsMsgTransform extends Record
{
    /**
     * @brief Original geometry_msgs/msg/Transform.translation field.
     * @details Type geometry_msgs/msg/Vector3; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original geometry_msgs/msg/Transform.rotation field.
     * @details Type geometry_msgs/msg/Quaternion; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "geometry_msgs/msg/Transform",
        "native_identity": null,
        "codec_identity": "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b",
        "minimum": 56,
        "maximum": 56,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "translation",
                    "type": "geometry_msgs/msg/Vector3",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "rotation",
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgTransform);

/**
 * @brief Complete geometry_msgs/msg/Twist value.
 * @details All 2 fields and 0 constants; extent 48..48 bytes.
 */
export class Ros2Geometry_msgsMsgTwist extends Record
{
    /**
     * @brief Original geometry_msgs/msg/Twist.linear field.
     * @details Type geometry_msgs/msg/Vector3; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original geometry_msgs/msg/Twist.angular field.
     * @details Type geometry_msgs/msg/Vector3; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "geometry_msgs/msg/Twist",
        "native_identity": null,
        "codec_identity": "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e",
        "minimum": 48,
        "maximum": 48,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "linear",
                    "type": "geometry_msgs/msg/Vector3",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "angular",
                    "type": "geometry_msgs/msg/Vector3",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Geometry_msgsMsgTwist);

/**
 * @brief Complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
 * @details All 4 fields and 0 constants; extent 20..324 bytes.
 */
export class Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint extends Record
{
    /**
     * @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms field.
     * @details Type geometry_msgs/msg/Transform; shape sequence; count/bound 2; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities field.
     * @details Type geometry_msgs/msg/Twist; shape sequence; count/bound 2; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations field.
     * @details Type geometry_msgs/msg/Twist; shape sequence; count/bound 2; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start field.
     * @details Type builtin_interfaces/msg/Duration; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242",
        "minimum": 20,
        "maximum": 324,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "transforms",
                    "type": "geometry_msgs/msg/Transform",
                    "array": "sequence",
                    "count": 2,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "velocities",
                    "type": "geometry_msgs/msg/Twist",
                    "array": "sequence",
                    "count": 2,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "accelerations",
                    "type": "geometry_msgs/msg/Twist",
                    "array": "sequence",
                    "count": 2,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "time_from_start",
                    "type": "builtin_interfaces/msg/Duration",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint);

/**
 * @brief Complete trajectory_msgs/msg/MultiDOFJointTrajectory value.
 * @details All 3 fields and 0 constants; extent 20..1516 bytes.
 */
export class Ros2Trajectory_msgsMsgMultiDOFJointTrajectory extends Record
{
    /**
     * @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.header field.
     * @details Type std_msgs/msg/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names field.
     * @details Type string; shape sequence; count/bound 2; text bound 64 bytes.
     */
    /**
     * @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.points field.
     * @details Type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint; shape sequence; count/bound 4; text bound 0
     * bytes.
     */
    static schema = {
        "type" : "trajectory_msgs/msg/MultiDOFJointTrajectory",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401",
        "minimum": 20,
        "maximum": 1516,
        "semantics": "",
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
                    "default": null
                },
                {
                    "name" : "joint_names",
                    "type": "string",
                    "array": "sequence",
                    "count": 2,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "points",
                    "type": "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
                    "array": "sequence",
                    "count": 4,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Trajectory_msgsMsgMultiDOFJointTrajectory);

/**
 * @brief Complete control_msgs/msg/JointTolerance value.
 * @details All 4 fields and 0 constants; extent 28..92 bytes.
 */
export class Ros2Control_msgsMsgJointTolerance extends Record
{
    /**
     * @brief Original control_msgs/msg/JointTolerance.name field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    /**
     * @brief Original control_msgs/msg/JointTolerance.position field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/msg/JointTolerance.velocity field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/msg/JointTolerance.acceleration field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "control_msgs/msg/JointTolerance",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2",
        "minimum": 28,
        "maximum": 92,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "name",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
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
                    "default": null
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
                    "default": null
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
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Control_msgsMsgJointTolerance);

/**
 * @brief Complete control_msgs/msg/JointComponentTolerance value.
 * @details All 5 fields and 5 constants; extent 30..542 bytes.
 */
export class Ros2Control_msgsMsgJointComponentTolerance extends Record
{
    /**
     * @brief Original control_msgs/msg/JointComponentTolerance.joint_name field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original control_msgs/msg/JointComponentTolerance.component field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/msg/JointComponentTolerance.position field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/msg/JointComponentTolerance.velocity field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/msg/JointComponentTolerance.acceleration field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "control_msgs/msg/JointComponentTolerance",
        "native_identity": null,
        "codec_identity": "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342",
        "minimum": 30,
        "maximum": 542,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "joint_name",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "component",
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
                    "default": null
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
                    "default": null
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
                    "default": null
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
                    "default": null
                }
            ]
    };
    /** @brief Original control_msgs/msg/JointComponentTolerance.X_AXIS constant; no instance bytes. */
    static X_AXIS = 1;
    /** @brief Original control_msgs/msg/JointComponentTolerance.Y_AXIS constant; no instance bytes. */
    static Y_AXIS = 2;
    /** @brief Original control_msgs/msg/JointComponentTolerance.Z_AXIS constant; no instance bytes. */
    static Z_AXIS = 3;
    /** @brief Original control_msgs/msg/JointComponentTolerance.TRANSLATION constant; no instance bytes. */
    static TRANSLATION = 4;
    /** @brief Original control_msgs/msg/JointComponentTolerance.ROTATION constant; no instance bytes. */
    static ROTATION = 5;
}

REGISTRY.add(Ros2Control_msgsMsgJointComponentTolerance);

/**
 * @brief Complete control_msgs/action/FollowJointTrajectory_Goal value.
 * @details All 7 fields and 0 constants; extent 64..20920 bytes.
 */
export class Ros2Control_msgsActionFollowJointTrajectory_Goal extends Record
{
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Goal.trajectory field.
     * @details Type trajectory_msgs/msg/JointTrajectory; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory field.
     * @details Type trajectory_msgs/msg/MultiDOFJointTrajectory; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Goal.path_tolerance field.
     * @details Type control_msgs/msg/JointTolerance; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance field.
     * @details Type control_msgs/msg/JointComponentTolerance; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance field.
     * @details Type control_msgs/msg/JointTolerance; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance field.
     * @details Type control_msgs/msg/JointComponentTolerance; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance field.
     * @details Type builtin_interfaces/msg/Duration; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "control_msgs/action/FollowJointTrajectory_Goal",
        "native_identity": null,
        "codec_identity": "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16",
        "minimum": 64,
        "maximum": 20920,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "trajectory",
                    "type": "trajectory_msgs/msg/JointTrajectory",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "multi_dof_trajectory",
                    "type": "trajectory_msgs/msg/MultiDOFJointTrajectory",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "path_tolerance",
                    "type": "control_msgs/msg/JointTolerance",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "component_path_tolerance",
                    "type": "control_msgs/msg/JointComponentTolerance",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "goal_tolerance",
                    "type": "control_msgs/msg/JointTolerance",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "component_goal_tolerance",
                    "type": "control_msgs/msg/JointComponentTolerance",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "goal_time_tolerance",
                    "type": "builtin_interfaces/msg/Duration",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Control_msgsActionFollowJointTrajectory_Goal);

/**
 * @brief Complete control_msgs/action/FollowJointTrajectory_Result value.
 * @details All 2 fields and 6 constants; extent 8..4104 bytes.
 */
export class Ros2Control_msgsActionFollowJointTrajectory_Result extends Record
{
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Result.error_code field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Result.error_string field.
     * @details Type string; shape scalar; count/bound 0; text bound 4096 bytes.
     */
    static schema = {
        "type" : "control_msgs/action/FollowJointTrajectory_Result",
        "native_identity": null,
        "codec_identity": "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70",
        "minimum": 8,
        "maximum": 4104,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "error_code",
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
                    "default": null
                },
                {
                    "name" : "error_string",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 4096,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
    /** @brief Original control_msgs/action/FollowJointTrajectory_Result.SUCCESSFUL constant; no instance bytes. */
    static SUCCESSFUL = 0;
    /** @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_GOAL constant; no instance bytes. */
    static INVALID_GOAL = -1;
    /** @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_JOINTS constant; no instance bytes. */
    static INVALID_JOINTS = -2;
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Result.OLD_HEADER_TIMESTAMP constant; no instance
     * bytes.
     */
    static OLD_HEADER_TIMESTAMP = -3;
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Result.PATH_TOLERANCE_VIOLATED constant; no instance
     * bytes.
     */
    static PATH_TOLERANCE_VIOLATED = -4;
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Result.GOAL_TOLERANCE_VIOLATED constant; no instance
     * bytes.
     */
    static GOAL_TOLERANCE_VIOLATED = -5;
}

REGISTRY.add(Ros2Control_msgsActionFollowJointTrajectory_Result);

/**
 * @brief Complete control_msgs/action/FollowJointTrajectory_Feedback value.
 * @details All 9 fields and 0 constants; extent 152..4128 bytes.
 */
export class Ros2Control_msgsActionFollowJointTrajectory_Feedback extends Record
{
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Feedback.header field.
     * @details Type std_msgs/msg/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Feedback.joint_names field.
     * @details Type string; shape sequence; count/bound 12; text bound 64 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Feedback.desired field.
     * @details Type trajectory_msgs/msg/JointTrajectoryPoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Feedback.actual field.
     * @details Type trajectory_msgs/msg/JointTrajectoryPoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Feedback.error field.
     * @details Type trajectory_msgs/msg/JointTrajectoryPoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names field.
     * @details Type string; shape sequence; count/bound 2; text bound 512 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired field.
     * @details Type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual field.
     * @details Type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error field.
     * @details Type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "control_msgs/action/FollowJointTrajectory_Feedback",
        "native_identity": null,
        "codec_identity": "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb",
        "minimum": 152,
        "maximum": 4128,
        "semantics": "",
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
                    "default": null
                },
                {
                    "name" : "joint_names",
                    "type": "string",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "desired",
                    "type": "trajectory_msgs/msg/JointTrajectoryPoint",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "actual",
                    "type": "trajectory_msgs/msg/JointTrajectoryPoint",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "error",
                    "type": "trajectory_msgs/msg/JointTrajectoryPoint",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "multi_dof_joint_names",
                    "type": "string",
                    "array": "sequence",
                    "count": 2,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "multi_dof_desired",
                    "type": "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "multi_dof_actual",
                    "type": "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "multi_dof_error",
                    "type": "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Control_msgsActionFollowJointTrajectory_Feedback);

/**
 * @brief Complete sensor_msgs/msg/JointState value.
 * @details All 5 fields and 0 constants; extent 28..1196 bytes.
 */
export class Ros2Sensor_msgsMsgJointState extends Record
{
    /**
     * @brief Original sensor_msgs/msg/JointState.header field.
     * @details Type std_msgs/msg/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original sensor_msgs/msg/JointState.name field.
     * @details Type string; shape sequence; count/bound 12; text bound 64 bytes.
     */
    /**
     * @brief Original sensor_msgs/msg/JointState.position field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original sensor_msgs/msg/JointState.velocity field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original sensor_msgs/msg/JointState.effort field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    static schema = {
        "type" : "sensor_msgs/msg/JointState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884",
        "minimum": 28,
        "maximum": 1196,
        "semantics": "joint-state-optional-equal-length-arrays",
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
                    "default": null
                },
                {
                    "name" : "name",
                    "type": "string",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 64,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "position",
                    "type": "float64",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "velocity",
                    "type": "float64",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                },
                {
                    "name" : "effort",
                    "type": "float64",
                    "array": "sequence",
                    "count": 12,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Sensor_msgsMsgJointState);

/**
 * @brief Complete std_srvs/srv/Trigger_Request value.
 * @details All 0 fields and 0 constants; extent 0..0 bytes.
 */
export class Ros2Std_srvsSrvTrigger_Request extends Record
{
    static schema = {
        "type" : "std_srvs/srv/Trigger_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
}

REGISTRY.add(Ros2Std_srvsSrvTrigger_Request);

/**
 * @brief Complete std_srvs/srv/Trigger_Response value.
 * @details All 2 fields and 0 constants; extent 5..517 bytes.
 */
export class Ros2Std_srvsSrvTrigger_Response extends Record
{
    /**
     * @brief Original std_srvs/srv/Trigger_Response.success field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original std_srvs/srv/Trigger_Response.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "std_srvs/srv/Trigger_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d",
        "minimum": 5,
        "maximum": 517,
        "semantics": "",
        "fields":
            [
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
                    "default": null
                },
                {
                    "name" : "message",
                    "type": "string",
                    "array": "",
                    "count": 0,
                    "string_bound": 512,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Std_srvsSrvTrigger_Response);

/** @brief Complete original interface names, component roles and identities. */
export const INTERFACES = {
    "abb_egm_msgs/msg/EGMChannelState" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_fbd288b93963fccc92aa114570c0a4f6a1fdc5b473cb8e252922720f5d88b519",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_egm_msgsMsgEGMChannelState"}
    },
    "abb_egm_msgs/msg/EGMState" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_5b10efb13c3be7290c7e391d55679a174969887edd1b8baca682edac311a8e5d",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_egm_msgsMsgEGMState"}
    },
    "abb_rapid_msgs/msg/ConfData" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_0c22cc29db62f5001ef20ea7b131de63099e31ac5f150d3e9f0bb62120d60571",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_rapid_msgsMsgConfData"}
    },
    "abb_rapid_msgs/msg/ExtJoint" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_8b799c6bec9e4eab0900a633a93375a7792e49fde0bf302f6752115a001a4ae2",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_rapid_msgsMsgExtJoint"}
    },
    "abb_rapid_msgs/msg/JointTarget" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_5949cf0121391646c1f04b54d8f7deaae0497f4920f7817739fc25bfddc4e540",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_rapid_msgsMsgJointTarget"}
    },
    "abb_rapid_msgs/msg/LoadData" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_f73e480a0e6746a4df8f4d62bc123d68d01d3dc48f0bc5f0eac51b859a0750f9",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_rapid_msgsMsgLoadData"}
    },
    "abb_rapid_msgs/msg/Orient" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_821d887b88298422f9466aaf3926db580f878e964055fbd72226b7f76f2f536e",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_rapid_msgsMsgOrient"}
    },
    "abb_rapid_msgs/msg/Pos" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_31d490d6ead5a1a78295dc4e934f0b89e74e4732da2b57d28d297477bf4cbdd2",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_rapid_msgsMsgPos"}
    },
    "abb_rapid_msgs/msg/Pose" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_8f1535fe21326706fd0b16314857162d36bca91ce8e8f6a8bec3864dafb9e2f2",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_rapid_msgsMsgPose"}
    },
    "abb_rapid_msgs/msg/RobJoint" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_6d842aebc0a3b222a727063a41ef7e96f2b8c14ffbba5c8d6e140ba2890e69cd",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_rapid_msgsMsgRobJoint"}
    },
    "abb_rapid_msgs/msg/RobTarget" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_8decb56e8faf0a6a954af974adfea5c500aea8392e6a778ae7394174323489d8",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_rapid_msgsMsgRobTarget"}
    },
    "abb_rapid_msgs/msg/ToolData" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_948fa0bbaaf95f0d88ca03cad687f16102261f54b0da889ae8bca82042fc5237",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_rapid_msgsMsgToolData"}
    },
    "abb_rapid_msgs/msg/WObjData" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_b36f0448512fab6028431d19b39a8ae31b7b81b2615ffc8311139f63b5d8e7cd",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_rapid_msgsMsgWObjData"}
    },
    "abb_rapid_sm_addin_msgs/msg/EGMActivateSettings" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_fce73aea80d9b8a299b8e2ab742602871146b3ebbd624a2e807e25c1ac107cfa",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings"}
    },
    "abb_rapid_sm_addin_msgs/msg/EGMRunSettings" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_92a2a654eb2eda89077933f955f04ed87884827b8875cf563570eed5d211b0e2",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings"}
    },
    "abb_rapid_sm_addin_msgs/msg/EGMSettings" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_622d3a975eecb11f7729aecfadc161cada271208d6fe7599f455750b90144ef3",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings"}
    },
    "abb_rapid_sm_addin_msgs/msg/EGMSetupSettings" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_2565bed5b83b132c69f37d7294c69181800ad2974ddc54f60868da57e28e782c",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings"}
    },
    "abb_rapid_sm_addin_msgs/msg/EGMStopSettings" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_0f3f2f6034567a7d49dd140ff9ff620e8567548139597b9b823e63a947673cee",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings"}
    },
    "abb_rapid_sm_addin_msgs/msg/RuntimeState" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_3c0f157544fa82c4e206a4fb42f8ba7f67213d19533f79b77c66dec6fd0460d9",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState"}
    },
    "abb_rapid_sm_addin_msgs/msg/StateMachineState" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_ff2a09e4b6e8ef26cbdc3ecdffdceb33d6b2c82f0d51ed2c38ce9648c6f47711",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState"}
    },
    "abb_rapid_sm_addin_msgs/srv/GetEGMSettings" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_629da1466b9fb1d5619c9ed7cb72af63f1abf8edffca98b76253939cd6c85b13",
                                          "registered" : true,
                                          "components" :
            {"request" : "Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request", "response" : "Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response"}
    },
    "abb_rapid_sm_addin_msgs/srv/SetEGMSettings" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_63ebd3925a4dcccddc17fd99f01aecd0380241b441391bb15b0b7179b78c907d",
                                          "registered" : true,
                                          "components" :
            {"request" : "Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request", "response" : "Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response"}
    },
    "abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_fece71adbfbaa38621a9440e9d453164e326cc12ce7b4f62ae8f5208a446a428",
                                          "registered" : true,
                                          "components" :
            {"request" : "Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request", "response" : "Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response"}
    },
    "abb_rapid_sm_addin_msgs/srv/SetSGCommand" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_263a3706bdfe6388b6a466be4dcaebe86241a5f0a93d9c874c41252a05fba1fe",
                                          "registered" : true,
                                          "components" : {"request" : "Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request", "response" : "Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response"}
    },
    "abb_robot_msgs/msg/MechanicalUnitState" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_1dc7a7dcbaa19e78cd6419f8844287a7fbd9d7a839ab1a8ad97ef0be34f3a3a8",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_robot_msgsMsgMechanicalUnitState"}
    },
    "abb_robot_msgs/msg/RAPIDSymbolPath" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_249523197567fbf638f30487a7f5b8d8ff5ea746fcd4a65a35f2dbb18a3adf0e",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_robot_msgsMsgRAPIDSymbolPath"}
    },
    "abb_robot_msgs/msg/RAPIDTaskState" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_ff698e375b0ff33026cfd248c1ac734f939763aba25a6c4f7cac628d445422fd",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_robot_msgsMsgRAPIDTaskState"}
    },
    "abb_robot_msgs/msg/ServiceResponses" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_4e01b972b67454e851801f28aee09c0774b67907d2241cc67cae7d045c18f646",
                                          "registered" : false,
                                          "components" : {"message" : "Ros2Abb_robot_msgsMsgServiceResponses"}
    },
    "abb_robot_msgs/msg/SystemState" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_c1cdbf0e578fddc5bf70cc2cc181d786f3e8189afc6a67962de6eb273973a38f",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Abb_robot_msgsMsgSystemState"}
    },
    "abb_robot_msgs/srv/GetFileContents" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_c7b97ec9f395c089ef8b57e8ee2516eab9e6ed3f9634e6b0bef7e2c775372254",
                                          "registered" : true,
                                          "components" : {"request" : "Ros2Abb_robot_msgsSrvGetFileContents_Request", "response" : "Ros2Abb_robot_msgsSrvGetFileContents_Response"}
    },
    "abb_robot_msgs/srv/GetIOSignal" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_eb316d69fb5a32c8f6420013e9129bfdd22c468233686b3cd59715f1a0d4ea2e",
                                          "registered" : true,
                                          "components" : {"request" : "Ros2Abb_robot_msgsSrvGetIOSignal_Request", "response" : "Ros2Abb_robot_msgsSrvGetIOSignal_Response"}
    },
    "abb_robot_msgs/srv/GetRAPIDBool" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_95dd04c7da1d3bacf8966cc5edc81610db309d4d9b742bc60aaeec8e37958496",
                                          "registered" : true,
                                          "components" : {"request" : "Ros2Abb_robot_msgsSrvGetRAPIDBool_Request", "response" : "Ros2Abb_robot_msgsSrvGetRAPIDBool_Response"}
    },
    "abb_robot_msgs/srv/GetRAPIDDnum" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_05ef910e3b349c82858b78b07d492c20ea94fe654237ef84aa5381b773e7205c",
                                          "registered" : true,
                                          "components" : {"request" : "Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request", "response" : "Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response"}
    },
    "abb_robot_msgs/srv/GetRAPIDNum" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_94575e630f48c602029406b42b68dce108ab4f6dfa7b472f1fc5790ac12b4c42",
                                          "registered" : true,
                                          "components" : {"request" : "Ros2Abb_robot_msgsSrvGetRAPIDNum_Request", "response" : "Ros2Abb_robot_msgsSrvGetRAPIDNum_Response"}
    },
    "abb_robot_msgs/srv/GetRAPIDString" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_d10ac5ec86f441f67de7a2ee840c24111f0a50d5db6978a723499015a60489be",
                                          "registered" : true,
                                          "components" : {"request" : "Ros2Abb_robot_msgsSrvGetRAPIDString_Request", "response" : "Ros2Abb_robot_msgsSrvGetRAPIDString_Response"}
    },
    "abb_robot_msgs/srv/GetRAPIDSymbol" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_aa9eafab83cb6ef87e5a066ed003e2ea981e12c08d94247acaab926ef6a0744b",
                                          "registered" : true,
                                          "components" : {"request" : "Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request", "response" : "Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response"}
    },
    "abb_robot_msgs/srv/GetRobotControllerDescription" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_e619dfd61cfa53caaf1f68654265dc55840f22c9e0f0aba4bf13ab113c7e8807",
                                          "registered" : true,
                                          "components" : {
            "request" : "Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request",
            "response" : "Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response"
        }
    },
    "abb_robot_msgs/srv/GetSpeedRatio" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_f60207d7d91d2ec182aca36906b656362af00b0295fd571cb251396c112bad22",
                                          "registered" : true,
                                          "components" : {"request" : "Ros2Abb_robot_msgsSrvGetSpeedRatio_Request", "response" : "Ros2Abb_robot_msgsSrvGetSpeedRatio_Response"}
    },
    "abb_robot_msgs/srv/SetFileContents" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_668b5831104ea9a62c8a17bbf472e1ed41bdbdff8eb8198668d7fce3cd0904a4",
                                          "registered" : true,
                                          "components" : {"request" : "Ros2Abb_robot_msgsSrvSetFileContents_Request", "response" : "Ros2Abb_robot_msgsSrvSetFileContents_Response"}
    },
    "abb_robot_msgs/srv/SetIOSignal" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_203b99505ba5e8687db76351a993eebfc19cfceb6b020f53a7ea6ed5883b7b77",
                                          "registered" : true,
                                          "components" : {"request" : "Ros2Abb_robot_msgsSrvSetIOSignal_Request", "response" : "Ros2Abb_robot_msgsSrvSetIOSignal_Response"}
    },
    "abb_robot_msgs/srv/SetRAPIDBool" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_bbbcf522450086ae2504598275b38bb4c693837878adcbef88a8eba146b7cba9",
                                          "registered" : true,
                                          "components" : {"request" : "Ros2Abb_robot_msgsSrvSetRAPIDBool_Request", "response" : "Ros2Abb_robot_msgsSrvSetRAPIDBool_Response"}
    },
    "abb_robot_msgs/srv/SetRAPIDDnum" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_921a02212c775748bb0efa41c1a099d01f8a365cbaa2c6b848f308ea8343773c",
                                          "registered" : true,
                                          "components" : {"request" : "Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request", "response" : "Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response"}
    },
    "abb_robot_msgs/srv/SetRAPIDNum" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_f53f6854ac9971f826db237909035a28694c08d99470685504bf7961c9ec718d",
                                          "registered" : true,
                                          "components" : {"request" : "Ros2Abb_robot_msgsSrvSetRAPIDNum_Request", "response" : "Ros2Abb_robot_msgsSrvSetRAPIDNum_Response"}
    },
    "abb_robot_msgs/srv/SetRAPIDString" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_869a873b853404f55cf2089141feb4f02b635cfc7d41379119e1cbd27e803024",
                                          "registered" : true,
                                          "components" : {"request" : "Ros2Abb_robot_msgsSrvSetRAPIDString_Request", "response" : "Ros2Abb_robot_msgsSrvSetRAPIDString_Response"}
    },
    "abb_robot_msgs/srv/SetRAPIDSymbol" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_1e56d1bd5cce820b2de1ab138d1cfa04d86a0d533ecae924af6399e4361b7d8d",
                                          "registered" : true,
                                          "components" : {"request" : "Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request", "response" : "Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response"}
    },
    "abb_robot_msgs/srv/SetSpeedRatio" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_71c8ed938f11420b01451d43b7487212b1745061cd5016e65f5b33e1cac61c6b",
                                          "registered" : true,
                                          "components" : {"request" : "Ros2Abb_robot_msgsSrvSetSpeedRatio_Request", "response" : "Ros2Abb_robot_msgsSrvSetSpeedRatio_Response"}
    },
    "abb_robot_msgs/srv/TriggerWithResultCode" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_4fa47b1ad67153250f276ad1bcd7ab8f30d32e150715d2856caabb40261deb5c",
                                          "registered" : true,
                                          "components" : {"request" : "Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request", "response" : "Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response"}
    },
    "builtin_interfaces/msg/Duration" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4",
                                          "registered" : false,
                                          "components" : {"message" : "Ros2Builtin_interfacesMsgDuration"}
    },
    "builtin_interfaces/msg/Time" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
                                          "registered" : false,
                                          "components" : {"message" : "Ros2Builtin_interfacesMsgTime"}
    },
    "control_msgs/action/FollowJointTrajectory" : {
                                          "kind" : "action",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_bd40771444c5441b79e63bdf5f2d5829d2c8b7ea0ccfd285baba8867cdc43757",
                                          "registered" : true,
                                          "components" : {
            "goal" : "Ros2Control_msgsActionFollowJointTrajectory_Goal",
            "result" : "Ros2Control_msgsActionFollowJointTrajectory_Result",
            "feedback" : "Ros2Control_msgsActionFollowJointTrajectory_Feedback"
        }
    },
    "control_msgs/msg/JointComponentTolerance" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342",
                                          "registered" : false,
                                          "components" : {"message" : "Ros2Control_msgsMsgJointComponentTolerance"}
    },
    "control_msgs/msg/JointTolerance" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2",
                                          "registered" : false,
                                          "components" : {"message" : "Ros2Control_msgsMsgJointTolerance"}
    },
    "geometry_msgs/msg/Quaternion" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
                                          "registered" : false,
                                          "components" : {"message" : "Ros2Geometry_msgsMsgQuaternion"}
    },
    "geometry_msgs/msg/Transform" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b",
                                          "registered" : false,
                                          "components" : {"message" : "Ros2Geometry_msgsMsgTransform"}
    },
    "geometry_msgs/msg/Twist" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e",
                                          "registered" : false,
                                          "components" : {"message" : "Ros2Geometry_msgsMsgTwist"}
    },
    "geometry_msgs/msg/Vector3" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e",
                                          "registered" : false,
                                          "components" : {"message" : "Ros2Geometry_msgsMsgVector3"}
    },
    "sensor_msgs/msg/JointState" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884",
                                          "registered" : true,
                                          "components" : {"message" : "Ros2Sensor_msgsMsgJointState"}
    },
    "std_msgs/msg/Header" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396",
                                          "registered" : false,
                                          "components" : {"message" : "Ros2Std_msgsMsgHeader"}
    },
    "std_srvs/srv/Trigger" : {
                                          "kind" : "service",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_2bafba62f4b166a5e736d6b5f0a5db9a8f8c2f02dc21daa0779ff56f8b87e583",
                                          "registered" : false,
                                          "components" : {"request" : "Ros2Std_srvsSrvTrigger_Request", "response" : "Ros2Std_srvsSrvTrigger_Response"}
    },
    "trajectory_msgs/msg/JointTrajectory" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0",
                                          "registered" : false,
                                          "components" : {"message" : "Ros2Trajectory_msgsMsgJointTrajectory"}
    },
    "trajectory_msgs/msg/JointTrajectoryPoint" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5",
                                          "registered" : false,
                                          "components" : {"message" : "Ros2Trajectory_msgsMsgJointTrajectoryPoint"}
    },
    "trajectory_msgs/msg/MultiDOFJointTrajectory" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401",
                                          "registered" : false,
                                          "components" : {"message" : "Ros2Trajectory_msgsMsgMultiDOFJointTrajectory"}
    },
    "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint" : {
                                          "kind" : "message",
                                          "native_identity" : null,
                                          "codec_identity" : "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242",
                                          "registered" : false,
                                          "components" : {"message" : "Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint"}
    }
};
