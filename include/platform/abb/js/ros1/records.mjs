/**
 * @file records.mjs
 * @brief Complete original ABB ROS 1 values, codecs and interface catalog.
 * @details Preserve all 79 records and 53 interfaces.
 * Absent native identities remain null; values grant no ROS authority.
 */
import {Record, Registry} from "ros/js/wire";

export const REGISTRY = new Registry();

/**
 * @brief Complete abb_egm_msgs/EGMChannelState value.
 * @details All 7 fields and 10 constants; extent 17..81 bytes.
 */
export class Ros1Abb_egm_msgsEGMChannelState extends Record
{
    /**
     * @brief Original abb_egm_msgs/EGMChannelState.name field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    /**
     * @brief Original abb_egm_msgs/EGMChannelState.active field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_egm_msgs/EGMChannelState.egm_convergence_met field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_egm_msgs/EGMChannelState.egm_client_state field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_egm_msgs/EGMChannelState.motor_state field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_egm_msgs/EGMChannelState.rapid_execution_state field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_egm_msgs/EGMChannelState.utilization_rate field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_egm_msgs/EGMChannelState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_452d2adde3b1475fe3ff09ea11ff2ec7105a58c32e20d764e0c2ff152cb432f2",
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
    /** @brief Original abb_egm_msgs/EGMChannelState.EGM_UNDEFINED constant; no instance bytes. */
    static EGM_UNDEFINED = 1;
    /** @brief Original abb_egm_msgs/EGMChannelState.EGM_ERROR constant; no instance bytes. */
    static EGM_ERROR = 2;
    /** @brief Original abb_egm_msgs/EGMChannelState.EGM_STOPPED constant; no instance bytes. */
    static EGM_STOPPED = 3;
    /** @brief Original abb_egm_msgs/EGMChannelState.EGM_RUNNING constant; no instance bytes. */
    static EGM_RUNNING = 4;
    /** @brief Original abb_egm_msgs/EGMChannelState.MOTORS_UNDEFINED constant; no instance bytes. */
    static MOTORS_UNDEFINED = 1;
    /** @brief Original abb_egm_msgs/EGMChannelState.MOTORS_ON constant; no instance bytes. */
    static MOTORS_ON = 2;
    /** @brief Original abb_egm_msgs/EGMChannelState.MOTORS_OFF constant; no instance bytes. */
    static MOTORS_OFF = 3;
    /** @brief Original abb_egm_msgs/EGMChannelState.RAPID_UNDEFINED constant; no instance bytes. */
    static RAPID_UNDEFINED = 1;
    /** @brief Original abb_egm_msgs/EGMChannelState.RAPID_STOPPED constant; no instance bytes. */
    static RAPID_STOPPED = 2;
    /** @brief Original abb_egm_msgs/EGMChannelState.RAPID_RUNNING constant; no instance bytes. */
    static RAPID_RUNNING = 3;
}

REGISTRY.add(Ros1Abb_egm_msgsEGMChannelState);

/**
 * @brief Complete time value.
 * @details All 2 fields and 0 constants; extent 8..8 bytes.
 */
export class Ros1Time extends Record
{
    /**
     * @brief Original time.sec field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original time.nsec field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "time",
        "native_identity": null,
        "codec_identity": "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0",
        "minimum": 8,
        "maximum": 8,
        "semantics": "normalized-time",
        "fields":
            [
                {
                    "name" : "sec",
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
                },
                {
                    "name" : "nsec",
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

REGISTRY.add(Ros1Time);

/**
 * @brief Complete std_msgs/Header value.
 * @details All 3 fields and 0 constants; extent 16..80 bytes.
 */
export class Ros1Std_msgsHeader extends Record
{
    /**
     * @brief Original std_msgs/Header.seq field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original std_msgs/Header.stamp field.
     * @details Type time; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original std_msgs/Header.frame_id field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    static schema = {
        "type" : "std_msgs/Header",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ca1b8ffce276bdc4f86dccae58ede9f860ffe8778c6d4ffe0fb70675777801db",
        "minimum": 16,
        "maximum": 80,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "seq",
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
                },
                {
                    "name" : "stamp",
                    "type": "time",
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

REGISTRY.add(Ros1Std_msgsHeader);

/**
 * @brief Complete abb_egm_msgs/EGMState value.
 * @details All 2 fields and 0 constants; extent 20..1380 bytes.
 */
export class Ros1Abb_egm_msgsEGMState extends Record
{
    /**
     * @brief Original abb_egm_msgs/EGMState.header field.
     * @details Type std_msgs/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_egm_msgs/EGMState.egm_channels field.
     * @details Type abb_egm_msgs/EGMChannelState; shape sequence; count/bound 16; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_egm_msgs/EGMState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f7fe1d3924dc4e497c58aab27da69cfa6ab1a11f64b970b42e2d040a1312c4d8",
        "minimum": 20,
        "maximum": 1380,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "header",
                    "type": "std_msgs/Header",
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
                    "type": "abb_egm_msgs/EGMChannelState",
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

REGISTRY.add(Ros1Abb_egm_msgsEGMState);

/**
 * @brief Complete abb_rapid_msgs/ConfData value.
 * @details All 4 fields and 0 constants; extent 16..16 bytes.
 */
export class Ros1Abb_rapid_msgsConfData extends Record
{
    /**
     * @brief Original abb_rapid_msgs/ConfData.cf1 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/ConfData.cf4 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/ConfData.cf6 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/ConfData.cfx field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/ConfData",
        "native_identity": null,
        "codec_identity": "UWVMROS1_293eb01e8fa150a8a3c741626b76804255d0eb321a0484aac402201447392af2",
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

REGISTRY.add(Ros1Abb_rapid_msgsConfData);

/**
 * @brief Complete abb_rapid_msgs/ExtJoint value.
 * @details All 6 fields and 0 constants; extent 24..24 bytes.
 */
export class Ros1Abb_rapid_msgsExtJoint extends Record
{
    /**
     * @brief Original abb_rapid_msgs/ExtJoint.eax_a field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/ExtJoint.eax_b field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/ExtJoint.eax_c field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/ExtJoint.eax_d field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/ExtJoint.eax_e field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/ExtJoint.eax_f field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/ExtJoint",
        "native_identity": null,
        "codec_identity": "UWVMROS1_653a47c44ab85151fd9e6215901fb154962c32fe1082386733ec6205eaae613a",
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

REGISTRY.add(Ros1Abb_rapid_msgsExtJoint);

/**
 * @brief Complete abb_rapid_msgs/RobJoint value.
 * @details All 6 fields and 0 constants; extent 24..24 bytes.
 */
export class Ros1Abb_rapid_msgsRobJoint extends Record
{
    /**
     * @brief Original abb_rapid_msgs/RobJoint.rax_1 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/RobJoint.rax_2 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/RobJoint.rax_3 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/RobJoint.rax_4 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/RobJoint.rax_5 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/RobJoint.rax_6 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/RobJoint",
        "native_identity": null,
        "codec_identity": "UWVMROS1_5d45bc0efae8c4f5b26e4043fe537e163c4cc4c6458d1eac9be429c37aaf82f0",
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

REGISTRY.add(Ros1Abb_rapid_msgsRobJoint);

/**
 * @brief Complete abb_rapid_msgs/JointTarget value.
 * @details All 2 fields and 0 constants; extent 48..48 bytes.
 */
export class Ros1Abb_rapid_msgsJointTarget extends Record
{
    /**
     * @brief Original abb_rapid_msgs/JointTarget.robax field.
     * @details Type abb_rapid_msgs/RobJoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/JointTarget.extax field.
     * @details Type abb_rapid_msgs/ExtJoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/JointTarget",
        "native_identity": null,
        "codec_identity": "UWVMROS1_4a1cc175468da9204c5f2f399b76712617daec21a0d1675a6e73c84ff170dc24",
        "minimum": 48,
        "maximum": 48,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "robax",
                    "type": "abb_rapid_msgs/RobJoint",
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
                    "type": "abb_rapid_msgs/ExtJoint",
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

REGISTRY.add(Ros1Abb_rapid_msgsJointTarget);

/**
 * @brief Complete abb_rapid_msgs/Pos value.
 * @details All 3 fields and 0 constants; extent 12..12 bytes.
 */
export class Ros1Abb_rapid_msgsPos extends Record
{
    /**
     * @brief Original abb_rapid_msgs/Pos.x field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/Pos.y field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/Pos.z field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/Pos",
        "native_identity": null,
        "codec_identity": "UWVMROS1_79edd4553fad8a8f833a3399e354c93538d4971bc3820cc14cf540e960356c01",
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

REGISTRY.add(Ros1Abb_rapid_msgsPos);

/**
 * @brief Complete abb_rapid_msgs/Orient value.
 * @details All 4 fields and 0 constants; extent 16..16 bytes.
 */
export class Ros1Abb_rapid_msgsOrient extends Record
{
    /**
     * @brief Original abb_rapid_msgs/Orient.q1 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/Orient.q2 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/Orient.q3 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/Orient.q4 field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/Orient",
        "native_identity": null,
        "codec_identity": "UWVMROS1_5a9c29323a5e3bc0c4c0afa7d305738cd52b49ae339e72f6b34b35b165f3d270",
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

REGISTRY.add(Ros1Abb_rapid_msgsOrient);

/**
 * @brief Complete abb_rapid_msgs/LoadData value.
 * @details All 6 fields and 0 constants; extent 44..44 bytes.
 */
export class Ros1Abb_rapid_msgsLoadData extends Record
{
    /**
     * @brief Original abb_rapid_msgs/LoadData.mass field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/LoadData.cog field.
     * @details Type abb_rapid_msgs/Pos; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/LoadData.aom field.
     * @details Type abb_rapid_msgs/Orient; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/LoadData.ix field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/LoadData.iy field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/LoadData.iz field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/LoadData",
        "native_identity": null,
        "codec_identity": "UWVMROS1_2cc985cc188a03e7c6de3d22310802cac1e0a748bae7f828d957436c1e03303d",
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
                    "type": "abb_rapid_msgs/Pos",
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
                    "type": "abb_rapid_msgs/Orient",
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

REGISTRY.add(Ros1Abb_rapid_msgsLoadData);

/**
 * @brief Complete abb_rapid_msgs/Pose value.
 * @details All 2 fields and 0 constants; extent 28..28 bytes.
 */
export class Ros1Abb_rapid_msgsPose extends Record
{
    /**
     * @brief Original abb_rapid_msgs/Pose.trans field.
     * @details Type abb_rapid_msgs/Pos; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/Pose.rot field.
     * @details Type abb_rapid_msgs/Orient; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/Pose",
        "native_identity": null,
        "codec_identity": "UWVMROS1_3e0cfbb7e25376639d1ff6e555a86e69f8c9ed177c1ef14b301d90b206a19c99",
        "minimum": 28,
        "maximum": 28,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "trans",
                    "type": "abb_rapid_msgs/Pos",
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
                    "type": "abb_rapid_msgs/Orient",
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

REGISTRY.add(Ros1Abb_rapid_msgsPose);

/**
 * @brief Complete abb_rapid_msgs/RobTarget value.
 * @details All 4 fields and 0 constants; extent 68..68 bytes.
 */
export class Ros1Abb_rapid_msgsRobTarget extends Record
{
    /**
     * @brief Original abb_rapid_msgs/RobTarget.trans field.
     * @details Type abb_rapid_msgs/Pos; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/RobTarget.rot field.
     * @details Type abb_rapid_msgs/Orient; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/RobTarget.robconf field.
     * @details Type abb_rapid_msgs/ConfData; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/RobTarget.extax field.
     * @details Type abb_rapid_msgs/ExtJoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/RobTarget",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0abb3aee8b1303ccf9419f2774829d1231de3ac033e4b644d585f195972f09ce",
        "minimum": 68,
        "maximum": 68,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "trans",
                    "type": "abb_rapid_msgs/Pos",
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
                    "type": "abb_rapid_msgs/Orient",
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
                    "type": "abb_rapid_msgs/ConfData",
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
                    "type": "abb_rapid_msgs/ExtJoint",
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

REGISTRY.add(Ros1Abb_rapid_msgsRobTarget);

/**
 * @brief Complete abb_rapid_msgs/ToolData value.
 * @details All 3 fields and 0 constants; extent 73..73 bytes.
 */
export class Ros1Abb_rapid_msgsToolData extends Record
{
    /**
     * @brief Original abb_rapid_msgs/ToolData.robhold field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/ToolData.tframe field.
     * @details Type abb_rapid_msgs/Pose; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/ToolData.tload field.
     * @details Type abb_rapid_msgs/LoadData; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/ToolData",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e2feaee4bda891f594542384d70883184262777e359fb037a648b7526ef76cba",
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
                    "type": "abb_rapid_msgs/Pose",
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
                    "type": "abb_rapid_msgs/LoadData",
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

REGISTRY.add(Ros1Abb_rapid_msgsToolData);

/**
 * @brief Complete abb_rapid_msgs/WObjData value.
 * @details All 5 fields and 0 constants; extent 62..574 bytes.
 */
export class Ros1Abb_rapid_msgsWObjData extends Record
{
    /**
     * @brief Original abb_rapid_msgs/WObjData.robhold field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/WObjData.ufprog field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/WObjData.ufmec field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/WObjData.uframe field.
     * @details Type abb_rapid_msgs/Pose; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_msgs/WObjData.oframe field.
     * @details Type abb_rapid_msgs/Pose; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_msgs/WObjData",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6de4cf654a15ef3b63d9b0f3d0984438f21963c10ffd1b00238113b6fae8454f",
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
                    "type": "abb_rapid_msgs/Pose",
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
                    "type": "abb_rapid_msgs/Pose",
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

REGISTRY.add(Ros1Abb_rapid_msgsWObjData);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/EGMActivateSettings value.
 * @details All 8 fields and 0 constants; extent 204..716 bytes.
 */
export class Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.tool field.
     * @details Type abb_rapid_msgs/ToolData; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.wobj field.
     * @details Type abb_rapid_msgs/WObjData; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.correction_frame field.
     * @details Type abb_rapid_msgs/Pose; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.sensor_frame field.
     * @details Type abb_rapid_msgs/Pose; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.cond_min_max field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.lp_filter field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.sample_rate field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.max_speed_deviation field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/EGMActivateSettings",
        "native_identity": null,
        "codec_identity": "UWVMROS1_c50be5682021e5d1a7a938e6fe3595cec7c0b0ae727070c0924da731c2c73d4d",
        "minimum": 204,
        "maximum": 716,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "tool",
                    "type": "abb_rapid_msgs/ToolData",
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
                    "type": "abb_rapid_msgs/WObjData",
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
                    "type": "abb_rapid_msgs/Pose",
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
                    "type": "abb_rapid_msgs/Pose",
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

REGISTRY.add(Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/EGMRunSettings value.
 * @details All 4 fields and 0 constants; extent 40..40 bytes.
 */
export class Ros1Abb_rapid_sm_addin_msgsEGMRunSettings extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.cond_time field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.ramp_in_time field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.offset field.
     * @details Type abb_rapid_msgs/Pose; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.pos_corr_gain field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/EGMRunSettings",
        "native_identity": null,
        "codec_identity": "UWVMROS1_09a843da7aa89c60e6404f8d36b9a1a57f75e330329ac043449fd438b7029506",
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
                    "type": "abb_rapid_msgs/Pose",
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

REGISTRY.add(Ros1Abb_rapid_sm_addin_msgsEGMRunSettings);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/EGMSetupSettings value.
 * @details All 2 fields and 0 constants; extent 5..5 bytes.
 */
export class Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMSetupSettings.use_filtering field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMSetupSettings.comm_timeout field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/EGMSetupSettings",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ece31a7631bb3bb248aece52d4d5f6e190a94dcc3052b2761b759bed24513779",
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

REGISTRY.add(Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/EGMStopSettings value.
 * @details All 1 fields and 0 constants; extent 4..4 bytes.
 */
export class Ros1Abb_rapid_sm_addin_msgsEGMStopSettings extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMStopSettings.ramp_out_time field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/EGMStopSettings",
        "native_identity": null,
        "codec_identity": "UWVMROS1_64009cc452b9b2b12b3501d150e8c88c9cc07c796df06775195fa17c2a103a08",
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

REGISTRY.add(Ros1Abb_rapid_sm_addin_msgsEGMStopSettings);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/EGMSettings value.
 * @details All 6 fields and 0 constants; extent 255..767 bytes.
 */
export class Ros1Abb_rapid_sm_addin_msgsEGMSettings extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMSettings.allow_egm_motions field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMSettings.use_presync field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMSettings.setup_uc field.
     * @details Type abb_rapid_sm_addin_msgs/EGMSetupSettings; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMSettings.activate field.
     * @details Type abb_rapid_sm_addin_msgs/EGMActivateSettings; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMSettings.run field.
     * @details Type abb_rapid_sm_addin_msgs/EGMRunSettings; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/EGMSettings.stop field.
     * @details Type abb_rapid_sm_addin_msgs/EGMStopSettings; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/EGMSettings",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ebc0ca24a54451f863964c74bf0257b5b25546d0d4b8a75ac75c265e1d62317b",
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
                    "type": "abb_rapid_sm_addin_msgs/EGMSetupSettings",
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
                    "type": "abb_rapid_sm_addin_msgs/EGMActivateSettings",
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
                    "type": "abb_rapid_sm_addin_msgs/EGMRunSettings",
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
                    "type": "abb_rapid_sm_addin_msgs/EGMStopSettings",
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

REGISTRY.add(Ros1Abb_rapid_sm_addin_msgsEGMSettings);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/GetEGMSettingsRequest value.
 * @details All 1 fields and 0 constants; extent 4..68 bytes.
 */
export class Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsRequest.task field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/GetEGMSettingsRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_42cca857367e08720f989416d18d6a1f7d677f7e5bf49435b9735a9eb10a8f9c",
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

REGISTRY.add(Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/GetEGMSettingsResponse value.
 * @details All 3 fields and 0 constants; extent 261..1285 bytes.
 */
export class Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.settings field.
     * @details Type abb_rapid_sm_addin_msgs/EGMSettings; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/GetEGMSettingsResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_094fd8b0b992c26d708bbd09952d36a3921ad5e5e66f45edb9d19af5ec3472bc",
        "minimum": 261,
        "maximum": 1285,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "settings",
                    "type": "abb_rapid_sm_addin_msgs/EGMSettings",
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

REGISTRY.add(Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/StateMachineState value.
 * @details All 3 fields and 12 constants; extent 6..518 bytes.
 */
export class Ros1Abb_rapid_sm_addin_msgsStateMachineState extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/StateMachineState.rapid_task field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/StateMachineState.sm_state field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/StateMachineState.egm_action field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/StateMachineState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9ef8cc3a0438ad892acc1a2f485039ca49abce6fedf40cc5d9b2fe03dd9490bb",
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
    /** @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_UNKNOWN constant; no instance bytes. */
    static SM_STATE_UNKNOWN = 1;
    /** @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_IDLE constant; no instance bytes. */
    static SM_STATE_IDLE = 2;
    /** @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_INITIALIZE constant; no instance bytes. */
    static SM_STATE_INITIALIZE = 3;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_RUN_RAPID_ROUTINE constant; no instance
     * bytes.
     */
    static SM_STATE_RUN_RAPID_ROUTINE = 4;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_RUN_EGM_ROUTINE constant; no instance bytes.
     */
    static SM_STATE_RUN_EGM_ROUTINE = 5;
    /** @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_UNKNOWN constant; no instance bytes. */
    static EGM_ACTION_UNKNOWN = 1;
    /** @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_NONE constant; no instance bytes. */
    static EGM_ACTION_NONE = 2;
    /** @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_RUN_JOINT constant; no instance bytes. */
    static EGM_ACTION_RUN_JOINT = 3;
    /** @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_RUN_POSE constant; no instance bytes. */
    static EGM_ACTION_RUN_POSE = 4;
    /** @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_STOP constant; no instance bytes. */
    static EGM_ACTION_STOP = 5;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_START_STREAM constant; no instance bytes.
     */
    static EGM_ACTION_START_STREAM = 6;
    /** @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_STOP_STREAM constant; no instance bytes. */
    static EGM_ACTION_STOP_STREAM = 7;
}

REGISTRY.add(Ros1Abb_rapid_sm_addin_msgsStateMachineState);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/RuntimeState value.
 * @details All 2 fields and 0 constants; extent 20..8372 bytes.
 */
export class Ros1Abb_rapid_sm_addin_msgsRuntimeState extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/RuntimeState.header field.
     * @details Type std_msgs/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/RuntimeState.state_machines field.
     * @details Type abb_rapid_sm_addin_msgs/StateMachineState; shape sequence; count/bound 16; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/RuntimeState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_50d7eab2eed3ce0b55160e85b44b4108d966290f6b8f126980ee452846f3660c",
        "minimum": 20,
        "maximum": 8372,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "header",
                    "type": "std_msgs/Header",
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
                    "type": "abb_rapid_sm_addin_msgs/StateMachineState",
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

REGISTRY.add(Ros1Abb_rapid_sm_addin_msgsRuntimeState);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/SetEGMSettingsRequest value.
 * @details All 2 fields and 0 constants; extent 259..835 bytes.
 */
export class Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.task field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.settings field.
     * @details Type abb_rapid_sm_addin_msgs/EGMSettings; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/SetEGMSettingsRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_fe85c34f8dff2c0a547f89385d75771af13a03d997b880ab7be2eb84ea800155",
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
                    "type": "abb_rapid_sm_addin_msgs/EGMSettings",
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

REGISTRY.add(Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/SetEGMSettingsResponse value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/SetEGMSettingsResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_c0d4e594a51a6cdd245ad03b6e27bbdc298c5c9fbe26cc25fa3594deef9b2591",
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

REGISTRY.add(Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest value.
 * @details All 2 fields and 0 constants; extent 8..584 bytes.
 */
export class Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.task field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.routine field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b16ba3e98ee1d45864532b01f914746f041e49463b9330ef6056e427d199a5a3",
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

REGISTRY.add(Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_44de2385f12a8612fa75ca7c3f97b07f22d04e920bdeca0f0bd7fed5322c680e",
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

REGISTRY.add(Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/SetSGCommandRequest value.
 * @details All 3 fields and 15 constants; extent 9..73 bytes.
 */
export class Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.task field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.command field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.target_position field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/SetSGCommandRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e39d7fee66c1efb9ea963216823f6e10bd632d78634d8c47f3283a1a1779f0c2",
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
    /** @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_UNKNOWN constant; no instance bytes. */
    static SG_COMMAND_UNKNOWN = 1;
    /** @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_NONE constant; no instance bytes. */
    static SG_COMMAND_NONE = 2;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_INITIALIZE constant; no instance bytes.
     */
    static SG_COMMAND_INITIALIZE = 3;
    /** @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_CALIBRATE constant; no instance bytes. */
    static SG_COMMAND_CALIBRATE = 4;
    /** @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_MOVE_TO constant; no instance bytes. */
    static SG_COMMAND_MOVE_TO = 5;
    /** @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_GRIP_IN constant; no instance bytes. */
    static SG_COMMAND_GRIP_IN = 6;
    /** @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_GRIP_OUT constant; no instance bytes. */
    static SG_COMMAND_GRIP_OUT = 7;
    /** @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_ON_1 constant; no instance bytes. */
    static SG_COMMAND_BLOW_ON_1 = 8;
    /** @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_ON_2 constant; no instance bytes. */
    static SG_COMMAND_BLOW_ON_2 = 9;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_OFF_1 constant; no instance bytes.
     */
    static SG_COMMAND_BLOW_OFF_1 = 10;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_OFF_2 constant; no instance bytes.
     */
    static SG_COMMAND_BLOW_OFF_2 = 11;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_ON_1 constant; no instance bytes.
     */
    static SG_COMMAND_VACUUM_ON_1 = 12;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_ON_2 constant; no instance bytes.
     */
    static SG_COMMAND_VACUUM_ON_2 = 13;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_OFF_1 constant; no instance bytes.
     */
    static SG_COMMAND_VACUUM_OFF_1 = 14;
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_OFF_2 constant; no instance bytes.
     */
    static SG_COMMAND_VACUUM_OFF_2 = 15;
}

REGISTRY.add(Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest);

/**
 * @brief Complete abb_rapid_sm_addin_msgs/SetSGCommandResponse value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse extends Record
{
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetSGCommandResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_rapid_sm_addin_msgs/SetSGCommandResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_rapid_sm_addin_msgs/SetSGCommandResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_2f22b2098d86dd0764277247eb7f64dccecebf0cddce85654b01c1928eb9c192",
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

REGISTRY.add(Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse);

/**
 * @brief Complete abb_robot_msgs/GetFileContentsRequest value.
 * @details All 1 fields and 0 constants; extent 4..516 bytes.
 */
export class Ros1Abb_robot_msgsGetFileContentsRequest extends Record
{
    /**
     * @brief Original abb_robot_msgs/GetFileContentsRequest.filename field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/GetFileContentsRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_75f5802b385cc1efb524fadea657fda1d5cc4298c5720222d33cd3dd39656f21",
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

REGISTRY.add(Ros1Abb_robot_msgsGetFileContentsRequest);

/**
 * @brief Complete abb_robot_msgs/GetFileContentsResponse value.
 * @details All 3 fields and 0 constants; extent 10..4618 bytes.
 */
export class Ros1Abb_robot_msgsGetFileContentsResponse extends Record
{
    /**
     * @brief Original abb_robot_msgs/GetFileContentsResponse.contents field.
     * @details Type string; shape scalar; count/bound 0; text bound 4096 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/GetFileContentsResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/GetFileContentsResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/GetFileContentsResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_693b53ed168f81a7c93ac8083977c4f8bd6f4a3999d079f5b47029699ba68fdb",
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

REGISTRY.add(Ros1Abb_robot_msgsGetFileContentsResponse);

/**
 * @brief Complete abb_robot_msgs/GetIOSignalRequest value.
 * @details All 1 fields and 0 constants; extent 4..516 bytes.
 */
export class Ros1Abb_robot_msgsGetIOSignalRequest extends Record
{
    /**
     * @brief Original abb_robot_msgs/GetIOSignalRequest.signal field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/GetIOSignalRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_d98f7577756b476cac0dd325d45f333fcd2b735df7dce58fb660790b5a91f83b",
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

REGISTRY.add(Ros1Abb_robot_msgsGetIOSignalRequest);

/**
 * @brief Complete abb_robot_msgs/GetIOSignalResponse value.
 * @details All 3 fields and 0 constants; extent 10..1034 bytes.
 */
export class Ros1Abb_robot_msgsGetIOSignalResponse extends Record
{
    /**
     * @brief Original abb_robot_msgs/GetIOSignalResponse.value field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/GetIOSignalResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/GetIOSignalResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/GetIOSignalResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_10a66146c4815b0d758ec81dde1c552695c97a8727ee995299018b23f129d79e",
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

REGISTRY.add(Ros1Abb_robot_msgsGetIOSignalResponse);

/**
 * @brief Complete abb_robot_msgs/RAPIDSymbolPath value.
 * @details All 3 fields and 0 constants; extent 12..204 bytes.
 */
export class Ros1Abb_robot_msgsRAPIDSymbolPath extends Record
{
    /**
     * @brief Original abb_robot_msgs/RAPIDSymbolPath.task field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/RAPIDSymbolPath.module field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/RAPIDSymbolPath.symbol field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/RAPIDSymbolPath",
        "native_identity": null,
        "codec_identity": "UWVMROS1_07308d9ce1e71a02f5cc3546cdbaaa0b24a06534a55aa3ee3354b498038faad2",
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

REGISTRY.add(Ros1Abb_robot_msgsRAPIDSymbolPath);

/**
 * @brief Complete abb_robot_msgs/GetRAPIDBoolRequest value.
 * @details All 1 fields and 0 constants; extent 12..204 bytes.
 */
export class Ros1Abb_robot_msgsGetRAPIDBoolRequest extends Record
{
    /**
     * @brief Original abb_robot_msgs/GetRAPIDBoolRequest.path field.
     * @details Type abb_robot_msgs/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/GetRAPIDBoolRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_46e49c0d6796175d0c56460dd4c7d2557deaa8db4f1a3bec40b53636d3b44b96",
        "minimum": 12,
        "maximum": 204,
        "semantics": "",
        "fields": [ {
            "name" : "path",
            "type": "abb_robot_msgs/RAPIDSymbolPath",
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

REGISTRY.add(Ros1Abb_robot_msgsGetRAPIDBoolRequest);

/**
 * @brief Complete abb_robot_msgs/GetRAPIDBoolResponse value.
 * @details All 3 fields and 0 constants; extent 7..519 bytes.
 */
export class Ros1Abb_robot_msgsGetRAPIDBoolResponse extends Record
{
    /**
     * @brief Original abb_robot_msgs/GetRAPIDBoolResponse.value field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/GetRAPIDBoolResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/GetRAPIDBoolResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/GetRAPIDBoolResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_bfe21e95cb79f1d9bc1bc1dc2f61c744a2a7dc49e5a5ed07b6c8619344b97b3f",
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

REGISTRY.add(Ros1Abb_robot_msgsGetRAPIDBoolResponse);

/**
 * @brief Complete abb_robot_msgs/GetRAPIDDnumRequest value.
 * @details All 1 fields and 0 constants; extent 12..204 bytes.
 */
export class Ros1Abb_robot_msgsGetRAPIDDnumRequest extends Record
{
    /**
     * @brief Original abb_robot_msgs/GetRAPIDDnumRequest.path field.
     * @details Type abb_robot_msgs/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/GetRAPIDDnumRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9058d8774de0da657344a00d75a7f75878da2b0453bf25708bc8ed7f45c90c9d",
        "minimum": 12,
        "maximum": 204,
        "semantics": "",
        "fields": [ {
            "name" : "path",
            "type": "abb_robot_msgs/RAPIDSymbolPath",
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

REGISTRY.add(Ros1Abb_robot_msgsGetRAPIDDnumRequest);

/**
 * @brief Complete abb_robot_msgs/GetRAPIDDnumResponse value.
 * @details All 3 fields and 0 constants; extent 14..526 bytes.
 */
export class Ros1Abb_robot_msgsGetRAPIDDnumResponse extends Record
{
    /**
     * @brief Original abb_robot_msgs/GetRAPIDDnumResponse.value field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/GetRAPIDDnumResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/GetRAPIDDnumResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/GetRAPIDDnumResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9c209b4b12d733e33b76cc33ae93b6d561ce1eb7f8864429a56bd073317a01b3",
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

REGISTRY.add(Ros1Abb_robot_msgsGetRAPIDDnumResponse);

/**
 * @brief Complete abb_robot_msgs/GetRAPIDNumRequest value.
 * @details All 1 fields and 0 constants; extent 12..204 bytes.
 */
export class Ros1Abb_robot_msgsGetRAPIDNumRequest extends Record
{
    /**
     * @brief Original abb_robot_msgs/GetRAPIDNumRequest.path field.
     * @details Type abb_robot_msgs/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/GetRAPIDNumRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_a316395c8a19b7c0a9c3a555e625fffc7d647c7b567f38c53b1c3735b50ee910",
        "minimum": 12,
        "maximum": 204,
        "semantics": "",
        "fields": [ {
            "name" : "path",
            "type": "abb_robot_msgs/RAPIDSymbolPath",
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

REGISTRY.add(Ros1Abb_robot_msgsGetRAPIDNumRequest);

/**
 * @brief Complete abb_robot_msgs/GetRAPIDNumResponse value.
 * @details All 3 fields and 0 constants; extent 10..522 bytes.
 */
export class Ros1Abb_robot_msgsGetRAPIDNumResponse extends Record
{
    /**
     * @brief Original abb_robot_msgs/GetRAPIDNumResponse.value field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/GetRAPIDNumResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/GetRAPIDNumResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/GetRAPIDNumResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_1573cba9a9046a6b304a49e3a77266fa0d6f615d2ea9a24692c25616970fd9b0",
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

REGISTRY.add(Ros1Abb_robot_msgsGetRAPIDNumResponse);

/**
 * @brief Complete abb_robot_msgs/GetRAPIDStringRequest value.
 * @details All 1 fields and 0 constants; extent 12..204 bytes.
 */
export class Ros1Abb_robot_msgsGetRAPIDStringRequest extends Record
{
    /**
     * @brief Original abb_robot_msgs/GetRAPIDStringRequest.path field.
     * @details Type abb_robot_msgs/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/GetRAPIDStringRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_56514142e9e064aa43d09078b49ed8ee0366189727c35a9bc130b35007da4c9c",
        "minimum": 12,
        "maximum": 204,
        "semantics": "",
        "fields": [ {
            "name" : "path",
            "type": "abb_robot_msgs/RAPIDSymbolPath",
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

REGISTRY.add(Ros1Abb_robot_msgsGetRAPIDStringRequest);

/**
 * @brief Complete abb_robot_msgs/GetRAPIDStringResponse value.
 * @details All 3 fields and 0 constants; extent 10..1034 bytes.
 */
export class Ros1Abb_robot_msgsGetRAPIDStringResponse extends Record
{
    /**
     * @brief Original abb_robot_msgs/GetRAPIDStringResponse.value field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/GetRAPIDStringResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/GetRAPIDStringResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/GetRAPIDStringResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_d1188827af3c307a721f8128b6f14fa6020f3187afce8a4162ce6562cdd1c854",
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

REGISTRY.add(Ros1Abb_robot_msgsGetRAPIDStringResponse);

/**
 * @brief Complete abb_robot_msgs/GetRAPIDSymbolRequest value.
 * @details All 1 fields and 0 constants; extent 12..204 bytes.
 */
export class Ros1Abb_robot_msgsGetRAPIDSymbolRequest extends Record
{
    /**
     * @brief Original abb_robot_msgs/GetRAPIDSymbolRequest.path field.
     * @details Type abb_robot_msgs/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/GetRAPIDSymbolRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_31302ad912a8ff39b56a429bc9dae22cbfc2c2101b8cd05162d00d9206aecf5b",
        "minimum": 12,
        "maximum": 204,
        "semantics": "",
        "fields": [ {
            "name" : "path",
            "type": "abb_robot_msgs/RAPIDSymbolPath",
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

REGISTRY.add(Ros1Abb_robot_msgsGetRAPIDSymbolRequest);

/**
 * @brief Complete abb_robot_msgs/GetRAPIDSymbolResponse value.
 * @details All 3 fields and 0 constants; extent 10..1034 bytes.
 */
export class Ros1Abb_robot_msgsGetRAPIDSymbolResponse extends Record
{
    /**
     * @brief Original abb_robot_msgs/GetRAPIDSymbolResponse.value field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/GetRAPIDSymbolResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/GetRAPIDSymbolResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/GetRAPIDSymbolResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_182dc465ea5fb9543791b6fb76520313cee1ed472ab0296c8ef7a9ed3d4d110f",
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

REGISTRY.add(Ros1Abb_robot_msgsGetRAPIDSymbolResponse);

/**
 * @brief Complete abb_robot_msgs/GetRobotControllerDescriptionRequest value.
 * @details All 0 fields and 0 constants; extent 0..0 bytes.
 */
export class Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest extends Record
{
    static schema = {
        "type" : "abb_robot_msgs/GetRobotControllerDescriptionRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_bc5f87f4d0f33cbc640c8188fbb15c9b0f43b3067f2406700d6f5bd2475089b6",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
}

REGISTRY.add(Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest);

/**
 * @brief Complete abb_robot_msgs/GetRobotControllerDescriptionResponse value.
 * @details All 3 fields and 0 constants; extent 10..4618 bytes.
 */
export class Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse extends Record
{
    /**
     * @brief Original abb_robot_msgs/GetRobotControllerDescriptionResponse.description field.
     * @details Type string; shape scalar; count/bound 0; text bound 4096 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/GetRobotControllerDescriptionResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/GetRobotControllerDescriptionResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/GetRobotControllerDescriptionResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_7db41283fbe12a010e526b87d77a5bb7faecdf85595ef2dc13f14bfed56b6e39",
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

REGISTRY.add(Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse);

/**
 * @brief Complete abb_robot_msgs/GetSpeedRatioRequest value.
 * @details All 0 fields and 0 constants; extent 0..0 bytes.
 */
export class Ros1Abb_robot_msgsGetSpeedRatioRequest extends Record
{
    static schema = {
        "type" : "abb_robot_msgs/GetSpeedRatioRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_82230aebf6fa923e09bcd413ecb3b4803a6f1cfd3e8334e0ce0c496b73008373",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
}

REGISTRY.add(Ros1Abb_robot_msgsGetSpeedRatioRequest);

/**
 * @brief Complete abb_robot_msgs/GetSpeedRatioResponse value.
 * @details All 3 fields and 0 constants; extent 7..519 bytes.
 */
export class Ros1Abb_robot_msgsGetSpeedRatioResponse extends Record
{
    /**
     * @brief Original abb_robot_msgs/GetSpeedRatioResponse.speed_ratio field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/GetSpeedRatioResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/GetSpeedRatioResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/GetSpeedRatioResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_7784360ddafa1b8ad9626fde0afa2b2335f6a294507036c3aee953df99e91940",
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

REGISTRY.add(Ros1Abb_robot_msgsGetSpeedRatioResponse);

/**
 * @brief Complete abb_robot_msgs/MechanicalUnitState value.
 * @details All 2 fields and 0 constants; extent 5..69 bytes.
 */
export class Ros1Abb_robot_msgsMechanicalUnitState extends Record
{
    /**
     * @brief Original abb_robot_msgs/MechanicalUnitState.name field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/MechanicalUnitState.activated field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/MechanicalUnitState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_872cc6e8bdf32426bb9e24322c951452aab6ebcbc1f2998f4fb19c34abece8fa",
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

REGISTRY.add(Ros1Abb_robot_msgsMechanicalUnitState);

/**
 * @brief Complete abb_robot_msgs/RAPIDTaskState value.
 * @details All 4 fields and 5 constants; extent 7..71 bytes.
 */
export class Ros1Abb_robot_msgsRAPIDTaskState extends Record
{
    /**
     * @brief Original abb_robot_msgs/RAPIDTaskState.name field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/RAPIDTaskState.activated field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/RAPIDTaskState.execution_state field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/RAPIDTaskState.motion_task field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/RAPIDTaskState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ab1245cc352efa91cdcc8de801392857e25a4101a141439554b761525b31b947",
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
    /** @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_UNKNOWN constant; no instance bytes. */
    static EXECUTION_STATE_UNKNOWN = 1;
    /** @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_READY constant; no instance bytes. */
    static EXECUTION_STATE_READY = 2;
    /** @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_STOPPED constant; no instance bytes. */
    static EXECUTION_STATE_STOPPED = 3;
    /** @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_STARTED constant; no instance bytes. */
    static EXECUTION_STATE_STARTED = 4;
    /** @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_UNINITIALIZED constant; no instance bytes. */
    static EXECUTION_STATE_UNINITIALIZED = 5;
}

REGISTRY.add(Ros1Abb_robot_msgsRAPIDTaskState);

/**
 * @brief Complete abb_robot_msgs/ServiceResponses value.
 * @details All 0 fields and 32 constants; extent 0..0 bytes.
 */
export class Ros1Abb_robot_msgsServiceResponses extends Record
{
    static schema = {
        "type" : "abb_robot_msgs/ServiceResponses",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f0a3c4b160bf0ca52dbbb4e26d2c8a7d3c6a40ac70787ba59cf181945e4276d4",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
    /** @brief Original abb_robot_msgs/ServiceResponses.SUCCESS constant; no instance bytes. */
    static SUCCESS = "";
    /** @brief Original abb_robot_msgs/ServiceResponses.RC_SUCCESS constant; no instance bytes. */
    static RC_SUCCESS = 1;
    /** @brief Original abb_robot_msgs/ServiceResponses.FAILED constant; no instance bytes. */
    static FAILED = "Service failed (e.g. timeout or resource not found, see the DEBUG log for details)";
    /** @brief Original abb_robot_msgs/ServiceResponses.RC_FAILED constant; no instance bytes. */
    static RC_FAILED = 2;
    /** @brief Original abb_robot_msgs/ServiceResponses.SERVER_IS_BUSY constant; no instance bytes. */
    static SERVER_IS_BUSY = "Server is busy";
    /** @brief Original abb_robot_msgs/ServiceResponses.RC_SERVER_IS_BUSY constant; no instance bytes. */
    static RC_SERVER_IS_BUSY = 1001;
    /** @brief Original abb_robot_msgs/ServiceResponses.EMPTY_FILENAME constant; no instance bytes. */
    static EMPTY_FILENAME = "Filename is empty";
    /** @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_FILENAME constant; no instance bytes. */
    static RC_EMPTY_FILENAME = 2001;
    /** @brief Original abb_robot_msgs/ServiceResponses.EMPTY_SIGNAL_NAME constant; no instance bytes. */
    static EMPTY_SIGNAL_NAME = "Signal name is empty";
    /** @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_SIGNAL_NAME constant; no instance bytes. */
    static RC_EMPTY_SIGNAL_NAME = 2002;
    /** @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_TASK_NAME constant; no instance bytes. */
    static EMPTY_RAPID_TASK_NAME = "RAPID task name is empty";
    /** @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_TASK_NAME constant; no instance bytes. */
    static RC_EMPTY_RAPID_TASK_NAME = 2003;
    /** @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_MODULE_NAME constant; no instance bytes. */
    static EMPTY_RAPID_MODULE_NAME = "RAPID module name is empty";
    /** @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_MODULE_NAME constant; no instance bytes. */
    static RC_EMPTY_RAPID_MODULE_NAME = 2004;
    /** @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_SYMBOL_NAME constant; no instance bytes. */
    static EMPTY_RAPID_SYMBOL_NAME = "RAPID symbol name is empty";
    /** @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_SYMBOL_NAME constant; no instance bytes. */
    static RC_EMPTY_RAPID_SYMBOL_NAME = 2005;
    /** @brief Original abb_robot_msgs/ServiceResponses.NOT_IN_AUTO_MODE constant; no instance bytes. */
    static NOT_IN_AUTO_MODE = "Robot controller is not in AUTO mode";
    /** @brief Original abb_robot_msgs/ServiceResponses.RC_NOT_IN_AUTO_MODE constant; no instance bytes. */
    static RC_NOT_IN_AUTO_MODE = 3001;
    /** @brief Original abb_robot_msgs/ServiceResponses.MOTORS_ARE_OFF constant; no instance bytes. */
    static MOTORS_ARE_OFF = "Motors are off";
    /** @brief Original abb_robot_msgs/ServiceResponses.RC_MOTORS_ARE_OFF constant; no instance bytes. */
    static RC_MOTORS_ARE_OFF = 3002;
    /** @brief Original abb_robot_msgs/ServiceResponses.MOTORS_ARE_ON constant; no instance bytes. */
    static MOTORS_ARE_ON = "Motors are on";
    /** @brief Original abb_robot_msgs/ServiceResponses.RC_MOTORS_ARE_ON constant; no instance bytes. */
    static RC_MOTORS_ARE_ON = 3003;
    /** @brief Original abb_robot_msgs/ServiceResponses.RAPID_NOT_STOPPED constant; no instance bytes. */
    static RAPID_NOT_STOPPED = "RAPID has not been stopped";
    /** @brief Original abb_robot_msgs/ServiceResponses.RC_RAPID_NOT_STOPPED constant; no instance bytes. */
    static RC_RAPID_NOT_STOPPED = 3004;
    /** @brief Original abb_robot_msgs/ServiceResponses.RAPID_NOT_RUNNING constant; no instance bytes. */
    static RAPID_NOT_RUNNING = "RAPID is not running";
    /** @brief Original abb_robot_msgs/ServiceResponses.RC_RAPID_NOT_RUNNING constant; no instance bytes. */
    static RC_RAPID_NOT_RUNNING = 3005;
    /** @brief Original abb_robot_msgs/ServiceResponses.SM_RUNTIME_STATES_MISSING constant; no instance bytes. */
    static SM_RUNTIME_STATES_MISSING = "No runtime states received for any StateMachine Add-In instance";
    /** @brief Original abb_robot_msgs/ServiceResponses.RC_SM_RUNTIME_STATES_MISSING constant; no instance bytes. */
    static RC_SM_RUNTIME_STATES_MISSING = 4001;
    /** @brief Original abb_robot_msgs/ServiceResponses.SM_UNKNOWN_RAPID_TASK constant; no instance bytes. */
    static SM_UNKNOWN_RAPID_TASK = "RAPID task not found among known StateMachine Add-In instances";
    /** @brief Original abb_robot_msgs/ServiceResponses.RC_SM_UNKNOWN_RAPID_TASK constant; no instance bytes. */
    static RC_SM_UNKNOWN_RAPID_TASK = 4002;
    /** @brief Original abb_robot_msgs/ServiceResponses.SM_UNINITIALIZED constant; no instance bytes. */
    static SM_UNINITIALIZED = "StateMachine Add-In instance has not been initialized";
    /** @brief Original abb_robot_msgs/ServiceResponses.RC_SM_UNINITIALIZED constant; no instance bytes. */
    static RC_SM_UNINITIALIZED = 4003;
}

REGISTRY.add(Ros1Abb_robot_msgsServiceResponses);

/**
 * @brief Complete abb_robot_msgs/SetFileContentsRequest value.
 * @details All 2 fields and 0 constants; extent 8..4616 bytes.
 */
export class Ros1Abb_robot_msgsSetFileContentsRequest extends Record
{
    /**
     * @brief Original abb_robot_msgs/SetFileContentsRequest.filename field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SetFileContentsRequest.contents field.
     * @details Type string; shape scalar; count/bound 0; text bound 4096 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/SetFileContentsRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f764448d9754e9ebc5e5fab64f0c8ebb01c534ec7b95751ed7d58e8ce0bd3012",
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

REGISTRY.add(Ros1Abb_robot_msgsSetFileContentsRequest);

/**
 * @brief Complete abb_robot_msgs/SetFileContentsResponse value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros1Abb_robot_msgsSetFileContentsResponse extends Record
{
    /**
     * @brief Original abb_robot_msgs/SetFileContentsResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SetFileContentsResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/SetFileContentsResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_3de2a08b8e158e0612898880d6d9c98f1995828eb53bd5639b47f730c6cbefd0",
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

REGISTRY.add(Ros1Abb_robot_msgsSetFileContentsResponse);

/**
 * @brief Complete abb_robot_msgs/SetIOSignalRequest value.
 * @details All 2 fields and 0 constants; extent 8..1032 bytes.
 */
export class Ros1Abb_robot_msgsSetIOSignalRequest extends Record
{
    /**
     * @brief Original abb_robot_msgs/SetIOSignalRequest.signal field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SetIOSignalRequest.value field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/SetIOSignalRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_57a0197e2a5de7efd2fc91d945d699be24559baec6651179a1256f1d9d35bbc9",
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

REGISTRY.add(Ros1Abb_robot_msgsSetIOSignalRequest);

/**
 * @brief Complete abb_robot_msgs/SetIOSignalResponse value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros1Abb_robot_msgsSetIOSignalResponse extends Record
{
    /**
     * @brief Original abb_robot_msgs/SetIOSignalResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SetIOSignalResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/SetIOSignalResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_becc0f844ce6a7fabd8a683175edd8033ba5c943c2de152991755ee112b460e5",
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

REGISTRY.add(Ros1Abb_robot_msgsSetIOSignalResponse);

/**
 * @brief Complete abb_robot_msgs/SetRAPIDBoolRequest value.
 * @details All 2 fields and 0 constants; extent 13..205 bytes.
 */
export class Ros1Abb_robot_msgsSetRAPIDBoolRequest extends Record
{
    /**
     * @brief Original abb_robot_msgs/SetRAPIDBoolRequest.path field.
     * @details Type abb_robot_msgs/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SetRAPIDBoolRequest.value field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/SetRAPIDBoolRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_d8e5420678fe5feeffa20ad9ab8431678ec346f764c94871c4496c62e9dd8e8d",
        "minimum": 13,
        "maximum": 205,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "path",
                    "type": "abb_robot_msgs/RAPIDSymbolPath",
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

REGISTRY.add(Ros1Abb_robot_msgsSetRAPIDBoolRequest);

/**
 * @brief Complete abb_robot_msgs/SetRAPIDBoolResponse value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros1Abb_robot_msgsSetRAPIDBoolResponse extends Record
{
    /**
     * @brief Original abb_robot_msgs/SetRAPIDBoolResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SetRAPIDBoolResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/SetRAPIDBoolResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_da2ae1231cb0c1ec452fb2733d5c99dcae78ad0bfd10771241708931b271bf13",
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

REGISTRY.add(Ros1Abb_robot_msgsSetRAPIDBoolResponse);

/**
 * @brief Complete abb_robot_msgs/SetRAPIDDnumRequest value.
 * @details All 2 fields and 0 constants; extent 20..212 bytes.
 */
export class Ros1Abb_robot_msgsSetRAPIDDnumRequest extends Record
{
    /**
     * @brief Original abb_robot_msgs/SetRAPIDDnumRequest.path field.
     * @details Type abb_robot_msgs/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SetRAPIDDnumRequest.value field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/SetRAPIDDnumRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0f17e3068f86bca6effb99f3bc850234b0163028f372340c450fce31657b9cf9",
        "minimum": 20,
        "maximum": 212,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "path",
                    "type": "abb_robot_msgs/RAPIDSymbolPath",
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

REGISTRY.add(Ros1Abb_robot_msgsSetRAPIDDnumRequest);

/**
 * @brief Complete abb_robot_msgs/SetRAPIDDnumResponse value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros1Abb_robot_msgsSetRAPIDDnumResponse extends Record
{
    /**
     * @brief Original abb_robot_msgs/SetRAPIDDnumResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SetRAPIDDnumResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/SetRAPIDDnumResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_1905aed9683e03494baa54627ddbaf4aed0b92357823c0c042f9b7c6a970c8ed",
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

REGISTRY.add(Ros1Abb_robot_msgsSetRAPIDDnumResponse);

/**
 * @brief Complete abb_robot_msgs/SetRAPIDNumRequest value.
 * @details All 2 fields and 0 constants; extent 16..208 bytes.
 */
export class Ros1Abb_robot_msgsSetRAPIDNumRequest extends Record
{
    /**
     * @brief Original abb_robot_msgs/SetRAPIDNumRequest.path field.
     * @details Type abb_robot_msgs/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SetRAPIDNumRequest.value field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/SetRAPIDNumRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9982d02cb0b6ee5813f5fb38072d665226b7885aeb90517af881f4fc990f392f",
        "minimum": 16,
        "maximum": 208,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "path",
                    "type": "abb_robot_msgs/RAPIDSymbolPath",
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

REGISTRY.add(Ros1Abb_robot_msgsSetRAPIDNumRequest);

/**
 * @brief Complete abb_robot_msgs/SetRAPIDNumResponse value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros1Abb_robot_msgsSetRAPIDNumResponse extends Record
{
    /**
     * @brief Original abb_robot_msgs/SetRAPIDNumResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SetRAPIDNumResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/SetRAPIDNumResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_af1181242b4afdb6d387d39c24d0bc343e872fb9ab21c0ec1e451785786a4e64",
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

REGISTRY.add(Ros1Abb_robot_msgsSetRAPIDNumResponse);

/**
 * @brief Complete abb_robot_msgs/SetRAPIDStringRequest value.
 * @details All 2 fields and 0 constants; extent 16..720 bytes.
 */
export class Ros1Abb_robot_msgsSetRAPIDStringRequest extends Record
{
    /**
     * @brief Original abb_robot_msgs/SetRAPIDStringRequest.path field.
     * @details Type abb_robot_msgs/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SetRAPIDStringRequest.value field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/SetRAPIDStringRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e06839324f8abfa8780b683386f87bab1ec04f1e6463e63c0599f5c2f8a75f0c",
        "minimum": 16,
        "maximum": 720,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "path",
                    "type": "abb_robot_msgs/RAPIDSymbolPath",
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

REGISTRY.add(Ros1Abb_robot_msgsSetRAPIDStringRequest);

/**
 * @brief Complete abb_robot_msgs/SetRAPIDStringResponse value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros1Abb_robot_msgsSetRAPIDStringResponse extends Record
{
    /**
     * @brief Original abb_robot_msgs/SetRAPIDStringResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SetRAPIDStringResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/SetRAPIDStringResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e175bdff5a150722b8c50cf2e1c0f28a99289a0b148339efdee4b034ea3b96b4",
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

REGISTRY.add(Ros1Abb_robot_msgsSetRAPIDStringResponse);

/**
 * @brief Complete abb_robot_msgs/SetRAPIDSymbolRequest value.
 * @details All 2 fields and 0 constants; extent 16..720 bytes.
 */
export class Ros1Abb_robot_msgsSetRAPIDSymbolRequest extends Record
{
    /**
     * @brief Original abb_robot_msgs/SetRAPIDSymbolRequest.path field.
     * @details Type abb_robot_msgs/RAPIDSymbolPath; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SetRAPIDSymbolRequest.value field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/SetRAPIDSymbolRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0654a5a8e5ec42f4feab54b086a008e02a74d44df65d2fcf60f007736e3fec7d",
        "minimum": 16,
        "maximum": 720,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "path",
                    "type": "abb_robot_msgs/RAPIDSymbolPath",
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

REGISTRY.add(Ros1Abb_robot_msgsSetRAPIDSymbolRequest);

/**
 * @brief Complete abb_robot_msgs/SetRAPIDSymbolResponse value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros1Abb_robot_msgsSetRAPIDSymbolResponse extends Record
{
    /**
     * @brief Original abb_robot_msgs/SetRAPIDSymbolResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SetRAPIDSymbolResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/SetRAPIDSymbolResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_a4ca0a8821337d1f16ba1f2ad2b232aceaba419308ca03b27f43dac427a32846",
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

REGISTRY.add(Ros1Abb_robot_msgsSetRAPIDSymbolResponse);

/**
 * @brief Complete abb_robot_msgs/SetSpeedRatioRequest value.
 * @details All 1 fields and 0 constants; extent 1..1 bytes.
 */
export class Ros1Abb_robot_msgsSetSpeedRatioRequest extends Record
{
    /**
     * @brief Original abb_robot_msgs/SetSpeedRatioRequest.speed_ratio field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/SetSpeedRatioRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_a6ac368d243d488901b03d5e4303600d5f0eaf62150801103e5f5f9c0863fab5",
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

REGISTRY.add(Ros1Abb_robot_msgsSetSpeedRatioRequest);

/**
 * @brief Complete abb_robot_msgs/SetSpeedRatioResponse value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros1Abb_robot_msgsSetSpeedRatioResponse extends Record
{
    /**
     * @brief Original abb_robot_msgs/SetSpeedRatioResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SetSpeedRatioResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/SetSpeedRatioResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9775dc1029993d1dfdf5f3080e6ae4262177ba96cdc0fbe9851dc4fea16c70d8",
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

REGISTRY.add(Ros1Abb_robot_msgsSetSpeedRatioResponse);

/**
 * @brief Complete abb_robot_msgs/SystemState value.
 * @details All 6 fields and 0 constants; extent 27..2331 bytes.
 */
export class Ros1Abb_robot_msgsSystemState extends Record
{
    /**
     * @brief Original abb_robot_msgs/SystemState.header field.
     * @details Type std_msgs/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SystemState.motors_on field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SystemState.auto_mode field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SystemState.rapid_running field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SystemState.rapid_tasks field.
     * @details Type abb_robot_msgs/RAPIDTaskState; shape sequence; count/bound 16; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/SystemState.mechanical_units field.
     * @details Type abb_robot_msgs/MechanicalUnitState; shape sequence; count/bound 16; text bound 0 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/SystemState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b57aa1fdf098aa78c51a96bd2978e02f97cbae67148c0028557d2a3e1e8630f2",
        "minimum": 27,
        "maximum": 2331,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "header",
                    "type": "std_msgs/Header",
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
                    "type": "abb_robot_msgs/RAPIDTaskState",
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
                    "type": "abb_robot_msgs/MechanicalUnitState",
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

REGISTRY.add(Ros1Abb_robot_msgsSystemState);

/**
 * @brief Complete abb_robot_msgs/TriggerWithResultCodeRequest value.
 * @details All 0 fields and 0 constants; extent 0..0 bytes.
 */
export class Ros1Abb_robot_msgsTriggerWithResultCodeRequest extends Record
{
    static schema = {
        "type" : "abb_robot_msgs/TriggerWithResultCodeRequest",
        "native_identity": null,
        "codec_identity": "UWVMROS1_999f63504788e522f7d0108a895cf35cd101e9a50856e480ae9edabf791bcf94",
        "minimum": 0,
        "maximum": 0,
        "semantics": "",
        "fields": []
    };
}

REGISTRY.add(Ros1Abb_robot_msgsTriggerWithResultCodeRequest);

/**
 * @brief Complete abb_robot_msgs/TriggerWithResultCodeResponse value.
 * @details All 2 fields and 0 constants; extent 6..518 bytes.
 */
export class Ros1Abb_robot_msgsTriggerWithResultCodeResponse extends Record
{
    /**
     * @brief Original abb_robot_msgs/TriggerWithResultCodeResponse.result_code field.
     * @details Type uint16; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original abb_robot_msgs/TriggerWithResultCodeResponse.message field.
     * @details Type string; shape scalar; count/bound 0; text bound 512 bytes.
     */
    static schema = {
        "type" : "abb_robot_msgs/TriggerWithResultCodeResponse",
        "native_identity": null,
        "codec_identity": "UWVMROS1_4ef5c987592e849766b82b7fd99a65b7a1e17605f3e3341c99803181887967ff",
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

REGISTRY.add(Ros1Abb_robot_msgsTriggerWithResultCodeResponse);

/**
 * @brief Complete duration value.
 * @details All 2 fields and 0 constants; extent 8..8 bytes.
 */
export class Ros1Duration extends Record
{
    /**
     * @brief Original duration.sec field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original duration.nsec field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "duration",
        "native_identity": null,
        "codec_identity": "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8",
        "minimum": 8,
        "maximum": 8,
        "semantics": "normalized-duration",
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
                    "name" : "nsec",
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
                }
            ]
    };
}

REGISTRY.add(Ros1Duration);

/**
 * @brief Complete trajectory_msgs/JointTrajectoryPoint value.
 * @details All 5 fields and 0 constants; extent 24..408 bytes.
 */
export class Ros1Trajectory_msgsJointTrajectoryPoint extends Record
{
    /**
     * @brief Original trajectory_msgs/JointTrajectoryPoint.positions field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/JointTrajectoryPoint.velocities field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/JointTrajectoryPoint.accelerations field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/JointTrajectoryPoint.effort field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/JointTrajectoryPoint.time_from_start field.
     * @details Type duration; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "trajectory_msgs/JointTrajectoryPoint",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9773572fff8616235c4d7e23fccbe01f28dcfa62c7c80323a65c8c305feba3c5",
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
                    "type": "duration",
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

REGISTRY.add(Ros1Trajectory_msgsJointTrajectoryPoint);

/**
 * @brief Complete trajectory_msgs/JointTrajectory value.
 * @details All 3 fields and 0 constants; extent 24..4168 bytes.
 */
export class Ros1Trajectory_msgsJointTrajectory extends Record
{
    /**
     * @brief Original trajectory_msgs/JointTrajectory.header field.
     * @details Type std_msgs/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original trajectory_msgs/JointTrajectory.joint_names field.
     * @details Type string; shape sequence; count/bound 12; text bound 64 bytes.
     */
    /**
     * @brief Original trajectory_msgs/JointTrajectory.points field.
     * @details Type trajectory_msgs/JointTrajectoryPoint; shape sequence; count/bound 8; text bound 0 bytes.
     */
    static schema = {
        "type" : "trajectory_msgs/JointTrajectory",
        "native_identity": null,
        "codec_identity": "UWVMROS1_079e6c432f0a858d6bd47c87aaf353a8b0676706809e0f984705b1a688de282b",
        "minimum": 24,
        "maximum": 4168,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "header",
                    "type": "std_msgs/Header",
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
                    "type": "trajectory_msgs/JointTrajectoryPoint",
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

REGISTRY.add(Ros1Trajectory_msgsJointTrajectory);

/**
 * @brief Complete control_msgs/JointTolerance value.
 * @details All 4 fields and 0 constants; extent 28..92 bytes.
 */
export class Ros1Control_msgsJointTolerance extends Record
{
    /**
     * @brief Original control_msgs/JointTolerance.name field.
     * @details Type string; shape scalar; count/bound 0; text bound 64 bytes.
     */
    /**
     * @brief Original control_msgs/JointTolerance.position field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/JointTolerance.velocity field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/JointTolerance.acceleration field.
     * @details Type float64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "control_msgs/JointTolerance",
        "native_identity": null,
        "codec_identity": "UWVMROS1_c9f71f98726d4a6621dcc8db96a394a24941a79d9041c8ad7a07724ee64d3c88",
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

REGISTRY.add(Ros1Control_msgsJointTolerance);

/**
 * @brief Complete control_msgs/FollowJointTrajectoryGoal value.
 * @details All 4 fields and 0 constants; extent 40..6392 bytes.
 */
export class Ros1Control_msgsFollowJointTrajectoryGoal extends Record
{
    /**
     * @brief Original control_msgs/FollowJointTrajectoryGoal.trajectory field.
     * @details Type trajectory_msgs/JointTrajectory; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/FollowJointTrajectoryGoal.path_tolerance field.
     * @details Type control_msgs/JointTolerance; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/FollowJointTrajectoryGoal.goal_tolerance field.
     * @details Type control_msgs/JointTolerance; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/FollowJointTrajectoryGoal.goal_time_tolerance field.
     * @details Type duration; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "control_msgs/FollowJointTrajectoryGoal",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e9fda6f9e732450f2cf1af046ceb67815e6e1a22105eda2fee38f8f470252d40",
        "minimum": 40,
        "maximum": 6392,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "trajectory",
                    "type": "trajectory_msgs/JointTrajectory",
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
                    "type": "control_msgs/JointTolerance",
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
                    "type": "control_msgs/JointTolerance",
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
                    "type": "duration",
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

REGISTRY.add(Ros1Control_msgsFollowJointTrajectoryGoal);

/**
 * @brief Complete control_msgs/FollowJointTrajectoryResult value.
 * @details All 2 fields and 6 constants; extent 8..4104 bytes.
 */
export class Ros1Control_msgsFollowJointTrajectoryResult extends Record
{
    /**
     * @brief Original control_msgs/FollowJointTrajectoryResult.error_code field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/FollowJointTrajectoryResult.error_string field.
     * @details Type string; shape scalar; count/bound 0; text bound 4096 bytes.
     */
    static schema = {
        "type" : "control_msgs/FollowJointTrajectoryResult",
        "native_identity": null,
        "codec_identity": "UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281",
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
    /** @brief Original control_msgs/FollowJointTrajectoryResult.SUCCESSFUL constant; no instance bytes. */
    static SUCCESSFUL = 0;
    /** @brief Original control_msgs/FollowJointTrajectoryResult.INVALID_GOAL constant; no instance bytes. */
    static INVALID_GOAL = -1;
    /** @brief Original control_msgs/FollowJointTrajectoryResult.INVALID_JOINTS constant; no instance bytes. */
    static INVALID_JOINTS = -2;
    /** @brief Original control_msgs/FollowJointTrajectoryResult.OLD_HEADER_TIMESTAMP constant; no instance bytes. */
    static OLD_HEADER_TIMESTAMP = -3;
    /** @brief Original control_msgs/FollowJointTrajectoryResult.PATH_TOLERANCE_VIOLATED constant; no instance bytes. */
    static PATH_TOLERANCE_VIOLATED = -4;
    /** @brief Original control_msgs/FollowJointTrajectoryResult.GOAL_TOLERANCE_VIOLATED constant; no instance bytes. */
    static GOAL_TOLERANCE_VIOLATED = -5;
}

REGISTRY.add(Ros1Control_msgsFollowJointTrajectoryResult);

/**
 * @brief Complete control_msgs/FollowJointTrajectoryFeedback value.
 * @details All 5 fields and 0 constants; extent 92..2124 bytes.
 */
export class Ros1Control_msgsFollowJointTrajectoryFeedback extends Record
{
    /**
     * @brief Original control_msgs/FollowJointTrajectoryFeedback.header field.
     * @details Type std_msgs/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/FollowJointTrajectoryFeedback.joint_names field.
     * @details Type string; shape sequence; count/bound 12; text bound 64 bytes.
     */
    /**
     * @brief Original control_msgs/FollowJointTrajectoryFeedback.desired field.
     * @details Type trajectory_msgs/JointTrajectoryPoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/FollowJointTrajectoryFeedback.actual field.
     * @details Type trajectory_msgs/JointTrajectoryPoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original control_msgs/FollowJointTrajectoryFeedback.error field.
     * @details Type trajectory_msgs/JointTrajectoryPoint; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "control_msgs/FollowJointTrajectoryFeedback",
        "native_identity": null,
        "codec_identity": "UWVMROS1_a1ad5a1f8a00b60f97d06209737993bd395d83d1a008705d65193b63933b62a8",
        "minimum": 92,
        "maximum": 2124,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "header",
                    "type": "std_msgs/Header",
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
                    "type": "trajectory_msgs/JointTrajectoryPoint",
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
                    "type": "trajectory_msgs/JointTrajectoryPoint",
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
                    "type": "trajectory_msgs/JointTrajectoryPoint",
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

REGISTRY.add(Ros1Control_msgsFollowJointTrajectoryFeedback);

/**
 * @brief Complete sensor_msgs/JointState value.
 * @details All 5 fields and 0 constants; extent 32..1200 bytes.
 */
export class Ros1Sensor_msgsJointState extends Record
{
    /**
     * @brief Original sensor_msgs/JointState.header field.
     * @details Type std_msgs/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original sensor_msgs/JointState.name field.
     * @details Type string; shape sequence; count/bound 12; text bound 64 bytes.
     */
    /**
     * @brief Original sensor_msgs/JointState.position field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original sensor_msgs/JointState.velocity field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    /**
     * @brief Original sensor_msgs/JointState.effort field.
     * @details Type float64; shape sequence; count/bound 12; text bound 0 bytes.
     */
    static schema = {
        "type" : "sensor_msgs/JointState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_8d1bb9c4903dd4b070a5ab157b3590815722d6b574d610c9b9fb5ead8be7a057",
        "minimum": 32,
        "maximum": 1200,
        "semantics": "joint-state-optional-equal-length-arrays",
        "fields":
            [
                {
                    "name" : "header",
                    "type": "std_msgs/Header",
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

REGISTRY.add(Ros1Sensor_msgsJointState);

/** @brief Complete original interface names, component roles and identities. */
export const INTERFACES = {
    "abb_egm_msgs/EGMChannelState" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_452d2adde3b1475fe3ff09ea11ff2ec7105a58c32e20d764e0c2ff152cb432f2",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_egm_msgsEGMChannelState"}
    },
    "abb_egm_msgs/EGMState" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_f7fe1d3924dc4e497c58aab27da69cfa6ab1a11f64b970b42e2d040a1312c4d8",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_egm_msgsEGMState"}
    },
    "abb_rapid_msgs/ConfData" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_293eb01e8fa150a8a3c741626b76804255d0eb321a0484aac402201447392af2",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_rapid_msgsConfData"}
    },
    "abb_rapid_msgs/ExtJoint" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_653a47c44ab85151fd9e6215901fb154962c32fe1082386733ec6205eaae613a",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_rapid_msgsExtJoint"}
    },
    "abb_rapid_msgs/JointTarget" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_4a1cc175468da9204c5f2f399b76712617daec21a0d1675a6e73c84ff170dc24",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_rapid_msgsJointTarget"}
    },
    "abb_rapid_msgs/LoadData" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_2cc985cc188a03e7c6de3d22310802cac1e0a748bae7f828d957436c1e03303d",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_rapid_msgsLoadData"}
    },
    "abb_rapid_msgs/Orient" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_5a9c29323a5e3bc0c4c0afa7d305738cd52b49ae339e72f6b34b35b165f3d270",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_rapid_msgsOrient"}
    },
    "abb_rapid_msgs/Pos" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_79edd4553fad8a8f833a3399e354c93538d4971bc3820cc14cf540e960356c01",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_rapid_msgsPos"}
    },
    "abb_rapid_msgs/Pose" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_3e0cfbb7e25376639d1ff6e555a86e69f8c9ed177c1ef14b301d90b206a19c99",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_rapid_msgsPose"}
    },
    "abb_rapid_msgs/RobJoint" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_5d45bc0efae8c4f5b26e4043fe537e163c4cc4c6458d1eac9be429c37aaf82f0",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_rapid_msgsRobJoint"}
    },
    "abb_rapid_msgs/RobTarget" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_0abb3aee8b1303ccf9419f2774829d1231de3ac033e4b644d585f195972f09ce",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_rapid_msgsRobTarget"}
    },
    "abb_rapid_msgs/ToolData" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_e2feaee4bda891f594542384d70883184262777e359fb037a648b7526ef76cba",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_rapid_msgsToolData"}
    },
    "abb_rapid_msgs/WObjData" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_6de4cf654a15ef3b63d9b0f3d0984438f21963c10ffd1b00238113b6fae8454f",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_rapid_msgsWObjData"}
    },
    "abb_rapid_sm_addin_msgs/EGMActivateSettings" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_c50be5682021e5d1a7a938e6fe3595cec7c0b0ae727070c0924da731c2c73d4d",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings"}
    },
    "abb_rapid_sm_addin_msgs/EGMRunSettings" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_09a843da7aa89c60e6404f8d36b9a1a57f75e330329ac043449fd438b7029506",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_rapid_sm_addin_msgsEGMRunSettings"}
    },
    "abb_rapid_sm_addin_msgs/EGMSettings" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_ebc0ca24a54451f863964c74bf0257b5b25546d0d4b8a75ac75c265e1d62317b",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_rapid_sm_addin_msgsEGMSettings"}
    },
    "abb_rapid_sm_addin_msgs/EGMSetupSettings" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_ece31a7631bb3bb248aece52d4d5f6e190a94dcc3052b2761b759bed24513779",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings"}
    },
    "abb_rapid_sm_addin_msgs/EGMStopSettings" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_64009cc452b9b2b12b3501d150e8c88c9cc07c796df06775195fa17c2a103a08",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_rapid_sm_addin_msgsEGMStopSettings"}
    },
    "abb_rapid_sm_addin_msgs/GetEGMSettings" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_0253027efaf2571537e2c984f07e6142fea0b9fcf5c92f7a2ff3f523ac7b8ef5",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest", "response" : "Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse"}
    },
    "abb_rapid_sm_addin_msgs/RuntimeState" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_50d7eab2eed3ce0b55160e85b44b4108d966290f6b8f126980ee452846f3660c",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_rapid_sm_addin_msgsRuntimeState"}
    },
    "abb_rapid_sm_addin_msgs/SetEGMSettings" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_9aec8cde2ed1ce2d454df1aa284bf6a2113fded4b3d2d7a45427edcf0a2f6855",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest", "response" : "Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse"}
    },
    "abb_rapid_sm_addin_msgs/SetRAPIDRoutine" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_bcd1f315393a4b291d9ad86528938844a7483bf7385f40849e0ca918e66be1ed",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest", "response" : "Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse"}
    },
    "abb_rapid_sm_addin_msgs/SetSGCommand" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_6e5da5a8605f0f37cbd5a408b01c313cfb1179c572dc389ff51bae9cd1ebc1ff",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest", "response" : "Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse"}
    },
    "abb_rapid_sm_addin_msgs/StateMachineState" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_9ef8cc3a0438ad892acc1a2f485039ca49abce6fedf40cc5d9b2fe03dd9490bb",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_rapid_sm_addin_msgsStateMachineState"}
    },
    "abb_robot_msgs/GetFileContents" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_04b138b00b5a3edf5039a157017e54e6891c359ee0f12c7a72ee8422d56e3f9f",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_robot_msgsGetFileContentsRequest", "response" : "Ros1Abb_robot_msgsGetFileContentsResponse"}
    },
    "abb_robot_msgs/GetIOSignal" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_036fef3e3d5eb67bde7e4d8ee2d18e560b596339f4bf4be03d9cdf5576f9689f",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_robot_msgsGetIOSignalRequest", "response" : "Ros1Abb_robot_msgsGetIOSignalResponse"}
    },
    "abb_robot_msgs/GetRAPIDBool" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_182a675f61922c9dc50b22e4a3ed26d91c48310a89f35984929f177b3a3c28e9",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_robot_msgsGetRAPIDBoolRequest", "response" : "Ros1Abb_robot_msgsGetRAPIDBoolResponse"}
    },
    "abb_robot_msgs/GetRAPIDDnum" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_e87bf91cee65dba3d10a4b472869bd963a9aa6af745462937de5977ef6d5a449",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_robot_msgsGetRAPIDDnumRequest", "response" : "Ros1Abb_robot_msgsGetRAPIDDnumResponse"}
    },
    "abb_robot_msgs/GetRAPIDNum" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_c35b8a47d36559867fe63d94cfecb62bfad30640bacec4827b392e21d9fa96e6",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_robot_msgsGetRAPIDNumRequest", "response" : "Ros1Abb_robot_msgsGetRAPIDNumResponse"}
    },
    "abb_robot_msgs/GetRAPIDString" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_1281ff249af9139dab85872208e457616bd1ce0a2e467c57b67b39731eb04b44",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_robot_msgsGetRAPIDStringRequest", "response" : "Ros1Abb_robot_msgsGetRAPIDStringResponse"}
    },
    "abb_robot_msgs/GetRAPIDSymbol" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_7986012d8ad079e263d9b3c64b58e2a9df4e11fa0888aeccfb5bd5e4a37d60e7",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_robot_msgsGetRAPIDSymbolRequest", "response" : "Ros1Abb_robot_msgsGetRAPIDSymbolResponse"}
    },
    "abb_robot_msgs/GetRobotControllerDescription" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_2b6a26336ee541bda91cf0a87657fffccaa128dca88870405939d475351f277f",
                                      "registered" : true,
                                      "components" :
            {"request" : "Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest", "response" : "Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse"}
    },
    "abb_robot_msgs/GetSpeedRatio" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_9b8666adc03ec3d5542d4e7a14bbfb521881dec822629550296ab7413a1178c7",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_robot_msgsGetSpeedRatioRequest", "response" : "Ros1Abb_robot_msgsGetSpeedRatioResponse"}
    },
    "abb_robot_msgs/MechanicalUnitState" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_872cc6e8bdf32426bb9e24322c951452aab6ebcbc1f2998f4fb19c34abece8fa",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_robot_msgsMechanicalUnitState"}
    },
    "abb_robot_msgs/RAPIDSymbolPath" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_07308d9ce1e71a02f5cc3546cdbaaa0b24a06534a55aa3ee3354b498038faad2",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_robot_msgsRAPIDSymbolPath"}
    },
    "abb_robot_msgs/RAPIDTaskState" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_ab1245cc352efa91cdcc8de801392857e25a4101a141439554b761525b31b947",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_robot_msgsRAPIDTaskState"}
    },
    "abb_robot_msgs/ServiceResponses" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_f0a3c4b160bf0ca52dbbb4e26d2c8a7d3c6a40ac70787ba59cf181945e4276d4",
                                      "registered" : false,
                                      "components" : {"message" : "Ros1Abb_robot_msgsServiceResponses"}
    },
    "abb_robot_msgs/SetFileContents" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_ff990d5dc508f98a3da7be8a384058a19d333f9e4838e86b71091e24bff7eb64",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_robot_msgsSetFileContentsRequest", "response" : "Ros1Abb_robot_msgsSetFileContentsResponse"}
    },
    "abb_robot_msgs/SetIOSignal" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_8ff8f149fadfaffd6f582f2090fd182a16b9a3d43858ae66d042d7365a880839",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_robot_msgsSetIOSignalRequest", "response" : "Ros1Abb_robot_msgsSetIOSignalResponse"}
    },
    "abb_robot_msgs/SetRAPIDBool" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_5b029cc2edc4850b305ff775050ae8f0034e8220c6e2b5c7296459154c4dcf3f",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_robot_msgsSetRAPIDBoolRequest", "response" : "Ros1Abb_robot_msgsSetRAPIDBoolResponse"}
    },
    "abb_robot_msgs/SetRAPIDDnum" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_97eda55ed270b85a3bdb51b8ab78871daff9d633b3b78d3c8a2ec2548ebe6d6d",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_robot_msgsSetRAPIDDnumRequest", "response" : "Ros1Abb_robot_msgsSetRAPIDDnumResponse"}
    },
    "abb_robot_msgs/SetRAPIDNum" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_7dd40d2cdd66be9f56dd41e2b78e3b80df54dcbfd7443ba69d11a9329754476e",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_robot_msgsSetRAPIDNumRequest", "response" : "Ros1Abb_robot_msgsSetRAPIDNumResponse"}
    },
    "abb_robot_msgs/SetRAPIDString" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_b352ad129019c8685cb84955b6d97e01ffe11e420cb3a6e49036e710435facdd",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_robot_msgsSetRAPIDStringRequest", "response" : "Ros1Abb_robot_msgsSetRAPIDStringResponse"}
    },
    "abb_robot_msgs/SetRAPIDSymbol" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_44ff20c39fd153e71cb0241fde5920443443d3647af86b456665c1110313bdbf",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_robot_msgsSetRAPIDSymbolRequest", "response" : "Ros1Abb_robot_msgsSetRAPIDSymbolResponse"}
    },
    "abb_robot_msgs/SetSpeedRatio" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_759ba188de8b29ddf84bb52f7a628e39ae89e05f522077531efc1c6ed0241bb6",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_robot_msgsSetSpeedRatioRequest", "response" : "Ros1Abb_robot_msgsSetSpeedRatioResponse"}
    },
    "abb_robot_msgs/SystemState" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_b57aa1fdf098aa78c51a96bd2978e02f97cbae67148c0028557d2a3e1e8630f2",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Abb_robot_msgsSystemState"}
    },
    "abb_robot_msgs/TriggerWithResultCode" : {
                                      "kind" : "service",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_5c859961ac03d6fafad46d79023a88cda8e5e609c341cd57659fa8effe7c367c",
                                      "registered" : true,
                                      "components" : {"request" : "Ros1Abb_robot_msgsTriggerWithResultCodeRequest", "response" : "Ros1Abb_robot_msgsTriggerWithResultCodeResponse"}
    },
    "control_msgs/FollowJointTrajectory" : {
                                      "kind" : "action",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_a0838ba66a1bcbcc3313564322c7ded0504bc86cb7138a77e7b8e22c94b3b2d2",
                                      "registered" : true,
                                      "components" : {
            "goal" : "Ros1Control_msgsFollowJointTrajectoryGoal",
            "result" : "Ros1Control_msgsFollowJointTrajectoryResult",
            "feedback" : "Ros1Control_msgsFollowJointTrajectoryFeedback"
        }
    },
    "control_msgs/JointTolerance" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_c9f71f98726d4a6621dcc8db96a394a24941a79d9041c8ad7a07724ee64d3c88",
                                      "registered" : false,
                                      "components" : {"message" : "Ros1Control_msgsJointTolerance"}
    },
    "sensor_msgs/JointState" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_8d1bb9c4903dd4b070a5ab157b3590815722d6b574d610c9b9fb5ead8be7a057",
                                      "registered" : true,
                                      "components" : {"message" : "Ros1Sensor_msgsJointState"}
    },
    "std_msgs/Header" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_ca1b8ffce276bdc4f86dccae58ede9f860ffe8778c6d4ffe0fb70675777801db",
                                      "registered" : false,
                                      "components" : {"message" : "Ros1Std_msgsHeader"}
    },
    "trajectory_msgs/JointTrajectory" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_079e6c432f0a858d6bd47c87aaf353a8b0676706809e0f984705b1a688de282b",
                                      "registered" : false,
                                      "components" : {"message" : "Ros1Trajectory_msgsJointTrajectory"}
    },
    "trajectory_msgs/JointTrajectoryPoint" : {
                                      "kind" : "message",
                                      "native_identity" : null,
                                      "codec_identity" : "UWVMROS1_9773572fff8616235c4d7e23fccbe01f28dcfa62c7c80323a65c8c305feba3c5",
                                      "registered" : false,
                                      "components" : {"message" : "Ros1Trajectory_msgsJointTrajectoryPoint"}
    }
};
