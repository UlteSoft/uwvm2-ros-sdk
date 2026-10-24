/**
 * @file records.mjs
 * @brief Complete original booster ROS 2 values, codecs and interface catalog.
 * @details Preserve all 27 records and 25 interfaces.
 * Absent native identities remain null; values grant no ROS authority.
 */
import {Record, Registry} from "ros/js/wire";

export const REGISTRY = new Registry();

/**
 * @brief Complete booster_interface/msg/BoosterApiReqMsg value.
 * @details All 2 fields and 0 constants; extent 12..4108 bytes.
 */
export class Ros2Booster_interfaceMsgBoosterApiReqMsg extends Record
{
    /**
     * @brief Original booster_interface/msg/BoosterApiReqMsg.api_id field.
     * @details Type int64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/BoosterApiReqMsg.body field.
     * @details Type string; shape scalar; count/bound 0; text bound 4096 bytes.
     */
    static schema = {
        "type" : "booster_interface/msg/BoosterApiReqMsg",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e2f9b66467bcb40a8194c744694f314e7fca56061f1cf3121eed565f724edd40",
        "minimum": 12,
        "maximum": 4108,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "api_id",
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
                    "default": null
                },
                {
                    "name" : "body",
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

REGISTRY.add(Ros2Booster_interfaceMsgBoosterApiReqMsg);

/**
 * @brief Complete booster_interface/msg/BoosterApiRespMsg value.
 * @details All 2 fields and 0 constants; extent 12..4108 bytes.
 */
export class Ros2Booster_interfaceMsgBoosterApiRespMsg extends Record
{
    /**
     * @brief Original booster_interface/msg/BoosterApiRespMsg.status field.
     * @details Type int64; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/BoosterApiRespMsg.body field.
     * @details Type string; shape scalar; count/bound 0; text bound 4096 bytes.
     */
    static schema = {
        "type" : "booster_interface/msg/BoosterApiRespMsg",
        "native_identity": null,
        "codec_identity": "UWVMROS1_21ce208a51f60843eecb72edbc408e926353b1a6f178424c0b691ac237fed11f",
        "minimum": 12,
        "maximum": 4108,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "status",
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
                    "default": null
                },
                {
                    "name" : "body",
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

REGISTRY.add(Ros2Booster_interfaceMsgBoosterApiRespMsg);

/**
 * @brief Complete booster_interface/msg/ButtonEventMsg value.
 * @details All 2 fields and 8 constants; extent 5..5 bytes.
 */
export class Ros2Booster_interfaceMsgButtonEventMsg extends Record
{
    /**
     * @brief Original booster_interface/msg/ButtonEventMsg.event field.
     * @details Type int8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/ButtonEventMsg.button field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "booster_interface/msg/ButtonEventMsg",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b61682fd9c35bd54c52000224411f4373b8620e16587b31d8a683076e0d14fe4",
        "minimum": 5,
        "maximum": 5,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "event",
                    "type": "int8",
                    "array": "",
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
                    "name" : "button",
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
    /** @brief Original booster_interface/msg/ButtonEventMsg.PRESS_DOWN constant; no instance bytes. */
    static PRESS_DOWN = 0;
    /** @brief Original booster_interface/msg/ButtonEventMsg.PRESS_UP constant; no instance bytes. */
    static PRESS_UP = 1;
    /** @brief Original booster_interface/msg/ButtonEventMsg.SINGLE_CLICK constant; no instance bytes. */
    static SINGLE_CLICK = 0;
    /** @brief Original booster_interface/msg/ButtonEventMsg.DOUBLE_CLICK constant; no instance bytes. */
    static DOUBLE_CLICK = 1;
    /** @brief Original booster_interface/msg/ButtonEventMsg.TRIPLE_CLICK constant; no instance bytes. */
    static TRIPLE_CLICK = 0;
    /** @brief Original booster_interface/msg/ButtonEventMsg.LONG_PRESS_START constant; no instance bytes. */
    static LONG_PRESS_START = 1;
    /** @brief Original booster_interface/msg/ButtonEventMsg.LONG_PRESS_HOLD constant; no instance bytes. */
    static LONG_PRESS_HOLD = 0;
    /** @brief Original booster_interface/msg/ButtonEventMsg.LONG_PRESS_END constant; no instance bytes. */
    static LONG_PRESS_END = 1;
}

REGISTRY.add(Ros2Booster_interfaceMsgButtonEventMsg);

/**
 * @brief Complete booster_interface/msg/FallDownState value.
 * @details All 2 fields and 4 constants; extent 5..5 bytes.
 */
export class Ros2Booster_interfaceMsgFallDownState extends Record
{
    /**
     * @brief Original booster_interface/msg/FallDownState.fall_down_state field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/FallDownState.is_recovery_available field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "booster_interface/msg/FallDownState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_8bf168ccefac72eda6070704c70e12e62776d29ad3db908095cc01220f4b533f",
        "minimum": 5,
        "maximum": 5,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "fall_down_state",
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
                    "name" : "is_recovery_available",
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
    /** @brief Original booster_interface/msg/FallDownState.IS_READY constant; no instance bytes. */
    static IS_READY = 0;
    /** @brief Original booster_interface/msg/FallDownState.IS_FALLING constant; no instance bytes. */
    static IS_FALLING = 1;
    /** @brief Original booster_interface/msg/FallDownState.HAS_FALLEN constant; no instance bytes. */
    static HAS_FALLEN = 2;
    /** @brief Original booster_interface/msg/FallDownState.IS_GETTING_UP constant; no instance bytes. */
    static IS_GETTING_UP = 3;
}

REGISTRY.add(Ros2Booster_interfaceMsgFallDownState);

/**
 * @brief Complete booster_interface/msg/HandParam value.
 * @details All 4 fields and 0 constants; extent 16..16 bytes.
 */
export class Ros2Booster_interfaceMsgHandParam extends Record
{
    /**
     * @brief Original booster_interface/msg/HandParam.angle field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/HandParam.force field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/HandParam.speed field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/HandParam.seq field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "booster_interface/msg/HandParam",
        "native_identity": null,
        "codec_identity": "UWVMROS1_3b91722e751e7c00c773335bb42af34850190ecc26a029e8792c49d912def158",
        "minimum": 16,
        "maximum": 16,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "angle",
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
                    "name" : "force",
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
                    "name" : "speed",
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
                    "name" : "seq",
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

REGISTRY.add(Ros2Booster_interfaceMsgHandParam);

/**
 * @brief Complete booster_interface/msg/HandCommand value.
 * @details All 4 fields and 0 constants; extent 16..528 bytes.
 */
export class Ros2Booster_interfaceMsgHandCommand extends Record
{
    /**
     * @brief Original booster_interface/msg/HandCommand.hand_param field.
     * @details Type booster_interface/msg/HandParam; shape sequence; count/bound 32; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/HandCommand.force_mode field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/HandCommand.hand_index field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/HandCommand.hand_type field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "booster_interface/msg/HandCommand",
        "native_identity": null,
        "codec_identity": "UWVMROS1_06f3d6c0e9bef1da409330038aadbfacfe60b02e099f2ae0c4dcb92a632b20a0",
        "minimum": 16,
        "maximum": 528,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "hand_param",
                    "type": "booster_interface/msg/HandParam",
                    "array": "sequence",
                    "count": 32,
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
                    "name" : "force_mode",
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
                    "name" : "hand_index",
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
                    "name" : "hand_type",
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

REGISTRY.add(Ros2Booster_interfaceMsgHandCommand);

/**
 * @brief Complete booster_interface/msg/HandDdsMsg value.
 * @details All 1 fields and 0 constants; extent 4..1060 bytes.
 */
export class Ros2Booster_interfaceMsgHandDdsMsg extends Record
{
    /**
     * @brief Original booster_interface/msg/HandDdsMsg.hands_vec field.
     * @details Type booster_interface/msg/HandCommand; shape sequence; count/bound 2; text bound 0 bytes.
     */
    static schema = {
        "type" : "booster_interface/msg/HandDdsMsg",
        "native_identity": null,
        "codec_identity": "UWVMROS1_55af9d6f272a72e75e86e1a6164d235aca5f2ce99c2529749c0d5e33d6091397",
        "minimum": 4,
        "maximum": 1060,
        "semantics": "",
        "fields": [ {
            "name" : "hands_vec",
            "type": "booster_interface/msg/HandCommand",
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
        } ]
    };
}

REGISTRY.add(Ros2Booster_interfaceMsgHandDdsMsg);

/**
 * @brief Complete booster_interface/msg/ImuState value.
 * @details All 3 fields and 0 constants; extent 36..36 bytes.
 */
export class Ros2Booster_interfaceMsgImuState extends Record
{
    /**
     * @brief Original booster_interface/msg/ImuState.rpy field.
     * @details Type float32; shape array; count/bound 3; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/ImuState.gyro field.
     * @details Type float32; shape array; count/bound 3; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/ImuState.acc field.
     * @details Type float32; shape array; count/bound 3; text bound 0 bytes.
     */
    static schema = {
        "type" : "booster_interface/msg/ImuState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_838ee8d4b93b0c3673e0b535fd3905913e94be24d6d21a01504dedaaaaa81092",
        "minimum": 36,
        "maximum": 36,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "rpy",
                    "type": "float32",
                    "array": "array",
                    "count": 3,
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
                    "name" : "gyro",
                    "type": "float32",
                    "array": "array",
                    "count": 3,
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
                    "name" : "acc",
                    "type": "float32",
                    "array": "array",
                    "count": 3,
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

REGISTRY.add(Ros2Booster_interfaceMsgImuState);

/**
 * @brief Complete booster_interface/msg/MotorCmd value.
 * @details All 7 fields and 0 constants; extent 25..25 bytes.
 */
export class Ros2Booster_interfaceMsgMotorCmd extends Record
{
    /**
     * @brief Original booster_interface/msg/MotorCmd.mode field.
     * @details Type int8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/MotorCmd.q field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/MotorCmd.dq field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/MotorCmd.tau field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/MotorCmd.kp field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/MotorCmd.kd field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/MotorCmd.weight field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "booster_interface/msg/MotorCmd",
        "native_identity": null,
        "codec_identity": "UWVMROS1_69d814e13595d53dcf44f2a5ccb19df0f8f2be0908c310c3b60cec33bcf27392",
        "minimum": 25,
        "maximum": 25,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "mode",
                    "type": "int8",
                    "array": "",
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
                    "name" : "q",
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
                    "name" : "dq",
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
                    "name" : "tau",
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
                    "name" : "kp",
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
                    "name" : "kd",
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
                    "name" : "weight",
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

REGISTRY.add(Ros2Booster_interfaceMsgMotorCmd);

/**
 * @brief Complete booster_interface/msg/LowCmd value.
 * @details All 2 fields and 2 constants; extent 5..730 bytes.
 */
export class Ros2Booster_interfaceMsgLowCmd extends Record
{
    /**
     * @brief Original booster_interface/msg/LowCmd.cmd_type field.
     * @details Type int8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/LowCmd.motor_cmd field.
     * @details Type booster_interface/msg/MotorCmd; shape sequence; count/bound 29; text bound 0 bytes.
     */
    static schema = {
        "type" : "booster_interface/msg/LowCmd",
        "native_identity": null,
        "codec_identity": "UWVMROS1_845726a14e61d211b493041f4dda56e1556b76b9d30337a2ee5f6319a3d1e870",
        "minimum": 5,
        "maximum": 730,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "cmd_type",
                    "type": "int8",
                    "array": "",
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
                    "name" : "motor_cmd",
                    "type": "booster_interface/msg/MotorCmd",
                    "array": "sequence",
                    "count": 29,
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
    /** @brief Original booster_interface/msg/LowCmd.CMD_TYPE_PARALLEL constant; no instance bytes. */
    static CMD_TYPE_PARALLEL = 0;
    /** @brief Original booster_interface/msg/LowCmd.CMD_TYPE_SERIAL constant; no instance bytes. */
    static CMD_TYPE_SERIAL = 1;
}

REGISTRY.add(Ros2Booster_interfaceMsgLowCmd);

/**
 * @brief Complete booster_interface/msg/MotorState value.
 * @details All 8 fields and 0 constants; extent 30..30 bytes.
 */
export class Ros2Booster_interfaceMsgMotorState extends Record
{
    /**
     * @brief Original booster_interface/msg/MotorState.mode field.
     * @details Type int8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/MotorState.q field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/MotorState.dq field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/MotorState.ddq field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/MotorState.tau_est field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/MotorState.temperature field.
     * @details Type int8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/MotorState.lost field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/MotorState.reserve field.
     * @details Type uint32; shape array; count/bound 2; text bound 0 bytes.
     */
    static schema = {
        "type" : "booster_interface/msg/MotorState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6b19c0e8865e796fff5a498cff731ba268fa92ea2944e6c2c5869009b3aa066b",
        "minimum": 30,
        "maximum": 30,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "mode",
                    "type": "int8",
                    "array": "",
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
                    "name" : "q",
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
                    "name" : "dq",
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
                    "name" : "ddq",
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
                    "name" : "tau_est",
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
                    "name" : "temperature",
                    "type": "int8",
                    "array": "",
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
                    "name" : "lost",
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
                    "name" : "reserve",
                    "type": "uint32",
                    "array": "array",
                    "count": 2,
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

REGISTRY.add(Ros2Booster_interfaceMsgMotorState);

/**
 * @brief Complete booster_interface/msg/LowState value.
 * @details All 3 fields and 0 constants; extent 44..1784 bytes.
 */
export class Ros2Booster_interfaceMsgLowState extends Record
{
    /**
     * @brief Original booster_interface/msg/LowState.imu_state field.
     * @details Type booster_interface/msg/ImuState; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/LowState.motor_state_parallel field.
     * @details Type booster_interface/msg/MotorState; shape sequence; count/bound 29; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/LowState.motor_state_serial field.
     * @details Type booster_interface/msg/MotorState; shape sequence; count/bound 29; text bound 0 bytes.
     */
    static schema = {
        "type" : "booster_interface/msg/LowState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_811db19cab7b790ed48506bca3e3ef512c1a661dc3ac99cbce6234efb6de631f",
        "minimum": 44,
        "maximum": 1784,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "imu_state",
                    "type": "booster_interface/msg/ImuState",
                    "array": "",
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
                    "name" : "motor_state_parallel",
                    "type": "booster_interface/msg/MotorState",
                    "array": "sequence",
                    "count": 29,
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
                    "name" : "motor_state_serial",
                    "type": "booster_interface/msg/MotorState",
                    "array": "sequence",
                    "count": 29,
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

REGISTRY.add(Ros2Booster_interfaceMsgLowState);

/**
 * @brief Complete booster_interface/msg/Odometer value.
 * @details All 3 fields and 0 constants; extent 12..12 bytes.
 */
export class Ros2Booster_interfaceMsgOdometer extends Record
{
    /**
     * @brief Original booster_interface/msg/Odometer.x field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/Odometer.y field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/Odometer.theta field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "booster_interface/msg/Odometer",
        "native_identity": null,
        "codec_identity": "UWVMROS1_4fea33e3e2ae186dbeaf49c6068019b702e742266541087a5d280b9ce42c671a",
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
                    "name" : "theta",
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

REGISTRY.add(Ros2Booster_interfaceMsgOdometer);

/**
 * @brief Complete booster_interface/msg/RawBytesMsg value.
 * @details All 1 fields and 0 constants; extent 4..2052 bytes.
 */
export class Ros2Booster_interfaceMsgRawBytesMsg extends Record
{
    /**
     * @brief Original booster_interface/msg/RawBytesMsg.msg field.
     * @details Type uint8; shape sequence; count/bound 2048; text bound 0 bytes.
     */
    static schema = {
        "type" : "booster_interface/msg/RawBytesMsg",
        "native_identity": null,
        "codec_identity": "UWVMROS1_557e8e79f206c9cc8b820ed7c2ad8cc01e9b01327197b745709993d958b4578c",
        "minimum": 4,
        "maximum": 2052,
        "semantics": "",
        "fields": [ {
            "name" : "msg",
            "type": "uint8",
            "array": "sequence",
            "count": 2048,
            "string_bound": 0,
            "native_string_bound": 0,
            "native_sequence_bound": 0,
            "native_default": null,
            "native_scalar": "char",
            "string_encoding": "utf8",
            "float_policy": "finite",
            "default": null
        } ]
    };
}

REGISTRY.add(Ros2Booster_interfaceMsgRawBytesMsg);

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
 * @details All 2 fields and 0 constants; extent 12..140 bytes.
 */
export class Ros2Std_msgsMsgHeader extends Record
{
    /**
     * @brief Original std_msgs/msg/Header.stamp field.
     * @details Type builtin_interfaces/msg/Time; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original std_msgs/msg/Header.frame_id field.
     * @details Type string; shape scalar; count/bound 0; text bound 128 bytes.
     */
    static schema = {
        "type" : "std_msgs/msg/Header",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96",
        "minimum": 12,
        "maximum": 140,
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
                    "string_bound": 128,
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
 * @brief Complete booster_interface/msg/RawBytesStamped value.
 * @details All 2 fields and 0 constants; extent 16..2192 bytes.
 */
export class Ros2Booster_interfaceMsgRawBytesStamped extends Record
{
    /**
     * @brief Original booster_interface/msg/RawBytesStamped.header field.
     * @details Type std_msgs/msg/Header; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RawBytesStamped.msg field.
     * @details Type uint8; shape sequence; count/bound 2048; text bound 0 bytes.
     */
    static schema = {
        "type" : "booster_interface/msg/RawBytesStamped",
        "native_identity": null,
        "codec_identity": "UWVMROS1_27cddd472b2d8c41c39effb87a8a53261aff309500dbb68df6ebd69a19c7720e",
        "minimum": 16,
        "maximum": 2192,
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
                    "name" : "msg",
                    "type": "uint8",
                    "array": "sequence",
                    "count": 2048,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "char",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null
                }
            ]
    };
}

REGISTRY.add(Ros2Booster_interfaceMsgRawBytesStamped);

/**
 * @brief Complete booster_interface/msg/RemoteControllerState value.
 * @details All 27 fields and 0 constants; extent 42..42 bytes.
 */
export class Ros2Booster_interfaceMsgRemoteControllerState extends Record
{
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.event field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.lx field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.ly field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.rx field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.ry field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.a field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.b field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.x field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.y field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.lb field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.rb field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.lt field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.rt field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.ls field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.rs field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.back field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.start field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.hat_c field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.hat_u field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.hat_d field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.hat_l field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.hat_r field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.hat_lu field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.hat_ld field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.hat_ru field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.hat_rd field.
     * @details Type bool; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original booster_interface/msg/RemoteControllerState.hat_pos field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "booster_interface/msg/RemoteControllerState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f8a21705728862632c27b71d98c044a12bf1f9f9e0c1729fec27afe2c60c48a7",
        "minimum": 42,
        "maximum": 42,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "event",
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
                    "name" : "lx",
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
                    "name" : "ly",
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
                    "name" : "rx",
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
                    "name" : "ry",
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
                    "name" : "a",
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
                    "name" : "b",
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
                    "name" : "x",
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
                    "name" : "y",
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
                    "name" : "lb",
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
                    "name" : "rb",
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
                    "name" : "lt",
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
                    "name" : "rt",
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
                    "name" : "ls",
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
                    "name" : "rs",
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
                    "name" : "back",
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
                    "name" : "start",
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
                    "name" : "hat_c",
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
                    "name" : "hat_u",
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
                    "name" : "hat_d",
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
                    "name" : "hat_l",
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
                    "name" : "hat_r",
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
                    "name" : "hat_lu",
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
                    "name" : "hat_ld",
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
                    "name" : "hat_ru",
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
                    "name" : "hat_rd",
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
                    "name" : "hat_pos",
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
}

REGISTRY.add(Ros2Booster_interfaceMsgRemoteControllerState);

/**
 * @brief Complete booster_interface/srv/AgentService_Request value.
 * @details All 1 fields and 0 constants; extent 4..4100 bytes.
 */
export class Ros2Booster_interfaceSrvAgentService_Request extends Record
{
    /**
     * @brief Original booster_interface/srv/AgentService_Request.body field.
     * @details Type string; shape scalar; count/bound 0; text bound 4096 bytes.
     */
    static schema = {
        "type" : "booster_interface/srv/AgentService_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_d8b972ee6c7f82ee948c03b22354d1073f120ad2616a9e833b578348775404e8",
        "minimum": 4,
        "maximum": 4100,
        "semantics": "",
        "fields": [ {
            "name" : "body",
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
        } ]
    };
}

REGISTRY.add(Ros2Booster_interfaceSrvAgentService_Request);

/**
 * @brief Complete booster_interface/srv/AgentService_Response value.
 * @details All 1 fields and 0 constants; extent 4..4100 bytes.
 */
export class Ros2Booster_interfaceSrvAgentService_Response extends Record
{
    /**
     * @brief Original booster_interface/srv/AgentService_Response.body field.
     * @details Type string; shape scalar; count/bound 0; text bound 4096 bytes.
     */
    static schema = {
        "type" : "booster_interface/srv/AgentService_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_86aecf9ee8652016b5c74e30d2dd4100e8b547542a81a98e7795942b47b87520",
        "minimum": 4,
        "maximum": 4100,
        "semantics": "",
        "fields": [ {
            "name" : "body",
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
        } ]
    };
}

REGISTRY.add(Ros2Booster_interfaceSrvAgentService_Response);

/**
 * @brief Complete booster_interface/srv/RpcService_Request value.
 * @details All 1 fields and 0 constants; extent 12..4108 bytes.
 */
export class Ros2Booster_interfaceSrvRpcService_Request extends Record
{
    /**
     * @brief Original booster_interface/srv/RpcService_Request.msg field.
     * @details Type booster_interface/msg/BoosterApiReqMsg; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "booster_interface/srv/RpcService_Request",
        "native_identity": null,
        "codec_identity": "UWVMROS1_cc8eb67d80bdf131f1878a1be998d68560e235ffef6a539876410dfcd6c00150",
        "minimum": 12,
        "maximum": 4108,
        "semantics": "",
        "fields": [ {
            "name" : "msg",
            "type": "booster_interface/msg/BoosterApiReqMsg",
            "array": "",
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

REGISTRY.add(Ros2Booster_interfaceSrvRpcService_Request);

/**
 * @brief Complete booster_interface/srv/RpcService_Response value.
 * @details All 1 fields and 0 constants; extent 12..4108 bytes.
 */
export class Ros2Booster_interfaceSrvRpcService_Response extends Record
{
    /**
     * @brief Original booster_interface/srv/RpcService_Response.msg field.
     * @details Type booster_interface/msg/BoosterApiRespMsg; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "booster_interface/srv/RpcService_Response",
        "native_identity": null,
        "codec_identity": "UWVMROS1_7aeb7b45542f9f594e1f61be2f715abcde54b1e55efdde15100b0c553ae96322",
        "minimum": 12,
        "maximum": 4108,
        "semantics": "",
        "fields": [ {
            "name" : "msg",
            "type": "booster_interface/msg/BoosterApiRespMsg",
            "array": "",
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

REGISTRY.add(Ros2Booster_interfaceSrvRpcService_Response);

/**
 * @brief Complete uwvm_booster_sdk_bridge/msg/ImuState value.
 * @details All 3 fields and 0 constants; extent 36..36 bytes.
 */
export class Ros2Uwvm_booster_sdk_bridgeMsgImuState extends Record
{
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/ImuState.rpy field.
     * @details Type float32; shape array; count/bound 3; text bound 0 bytes.
     */
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/ImuState.gyro field.
     * @details Type float32; shape array; count/bound 3; text bound 0 bytes.
     */
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/ImuState.acc field.
     * @details Type float32; shape array; count/bound 3; text bound 0 bytes.
     */
    static schema = {
        "type" : "uwvm_booster_sdk_bridge/msg/ImuState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_858ad4a47d2409da6b4e2513178d7d3b0d4568d6ce488729de0b9a220a100f04",
        "minimum": 36,
        "maximum": 36,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "rpy",
                    "type": "float32",
                    "array": "array",
                    "count": 3,
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
                    "name" : "gyro",
                    "type": "float32",
                    "array": "array",
                    "count": 3,
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
                    "name" : "acc",
                    "type": "float32",
                    "array": "array",
                    "count": 3,
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

REGISTRY.add(Ros2Uwvm_booster_sdk_bridgeMsgImuState);

/**
 * @brief Complete uwvm_booster_sdk_bridge/msg/MotorCmd value.
 * @details All 7 fields and 0 constants; extent 25..25 bytes.
 */
export class Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd extends Record
{
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/MotorCmd.mode field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/MotorCmd.q field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/MotorCmd.dq field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/MotorCmd.tau field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/MotorCmd.kp field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/MotorCmd.kd field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/MotorCmd.weight field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    static schema = {
        "type" : "uwvm_booster_sdk_bridge/msg/MotorCmd",
        "native_identity": null,
        "codec_identity": "UWVMROS1_66fec912031dfbd29b8e4e747dcdc2dc465506bd003323bc929929bf6a9d31a4",
        "minimum": 25,
        "maximum": 25,
        "semantics": "",
        "fields":
            [
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
                    "default": null
                },
                {
                    "name" : "q",
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
                    "name" : "dq",
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
                    "name" : "tau",
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
                    "name" : "kp",
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
                    "name" : "kd",
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
                    "name" : "weight",
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

REGISTRY.add(Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd);

/**
 * @brief Complete uwvm_booster_sdk_bridge/msg/MotorState value.
 * @details All 8 fields and 0 constants; extent 30..30 bytes.
 */
export class Ros2Uwvm_booster_sdk_bridgeMsgMotorState extends Record
{
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/MotorState.mode field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/MotorState.q field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/MotorState.dq field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/MotorState.ddq field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/MotorState.tau_est field.
     * @details Type float32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/MotorState.temperature field.
     * @details Type uint8; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/MotorState.lost field.
     * @details Type uint32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/MotorState.reserve field.
     * @details Type uint32; shape array; count/bound 2; text bound 0 bytes.
     */
    static schema = {
        "type" : "uwvm_booster_sdk_bridge/msg/MotorState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_958168dc1e32d50827f255080117a82421d7fb6ae4ad6a05763ce2d3173a30af",
        "minimum": 30,
        "maximum": 30,
        "semantics": "",
        "fields":
            [
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
                    "default": null
                },
                {
                    "name" : "q",
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
                    "name" : "dq",
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
                    "name" : "ddq",
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
                    "name" : "tau_est",
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
                    "name" : "temperature",
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
                    "name" : "lost",
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
                    "name" : "reserve",
                    "type": "uint32",
                    "array": "array",
                    "count": 2,
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

REGISTRY.add(Ros2Uwvm_booster_sdk_bridgeMsgMotorState);

/**
 * @brief Complete uwvm_booster_sdk_bridge/msg/LowCmd value.
 * @details All 2 fields and 0 constants; extent 8..733 bytes.
 */
export class Ros2Uwvm_booster_sdk_bridgeMsgLowCmd extends Record
{
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/LowCmd.cmd_type field.
     * @details Type int32; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/LowCmd.motor_cmd field.
     * @details Type uwvm_booster_sdk_bridge/msg/MotorCmd; shape sequence; count/bound 29; text bound 0 bytes.
     */
    static schema = {
        "type" : "uwvm_booster_sdk_bridge/msg/LowCmd",
        "native_identity": null,
        "codec_identity": "UWVMROS1_3324a161b056f9282ffa8dce3254a1456b75f6eae5f4a067e844e125e94cba3a",
        "minimum": 8,
        "maximum": 733,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "cmd_type",
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
                    "name" : "motor_cmd",
                    "type": "uwvm_booster_sdk_bridge/msg/MotorCmd",
                    "array": "sequence",
                    "count": 29,
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

REGISTRY.add(Ros2Uwvm_booster_sdk_bridgeMsgLowCmd);

/**
 * @brief Complete uwvm_booster_sdk_bridge/msg/LowState value.
 * @details All 3 fields and 0 constants; extent 44..1784 bytes.
 */
export class Ros2Uwvm_booster_sdk_bridgeMsgLowState extends Record
{
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/LowState.imu_state field.
     * @details Type uwvm_booster_sdk_bridge/msg/ImuState; shape scalar; count/bound 0; text bound 0 bytes.
     */
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/LowState.motor_state_parallel field.
     * @details Type uwvm_booster_sdk_bridge/msg/MotorState; shape sequence; count/bound 29; text bound 0 bytes.
     */
    /**
     * @brief Original uwvm_booster_sdk_bridge/msg/LowState.motor_state_serial field.
     * @details Type uwvm_booster_sdk_bridge/msg/MotorState; shape sequence; count/bound 29; text bound 0 bytes.
     */
    static schema = {
        "type" : "uwvm_booster_sdk_bridge/msg/LowState",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ca4bcb79077b0e026cf45a389981622ff9c80570ee813ff5633c605fe5021a58",
        "minimum": 44,
        "maximum": 1784,
        "semantics": "",
        "fields":
            [
                {
                    "name" : "imu_state",
                    "type": "uwvm_booster_sdk_bridge/msg/ImuState",
                    "array": "",
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
                    "name" : "motor_state_parallel",
                    "type": "uwvm_booster_sdk_bridge/msg/MotorState",
                    "array": "sequence",
                    "count": 29,
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
                    "name" : "motor_state_serial",
                    "type": "uwvm_booster_sdk_bridge/msg/MotorState",
                    "array": "sequence",
                    "count": 29,
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

REGISTRY.add(Ros2Uwvm_booster_sdk_bridgeMsgLowState);

/** @brief Complete original interface names, component roles and identities. */
export const INTERFACES = {
    "booster_interface/msg/BoosterApiReqMsg" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_e2f9b66467bcb40a8194c744694f314e7fca56061f1cf3121eed565f724edd40",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Booster_interfaceMsgBoosterApiReqMsg"}
    },
    "booster_interface/msg/BoosterApiRespMsg" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_21ce208a51f60843eecb72edbc408e926353b1a6f178424c0b691ac237fed11f",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Booster_interfaceMsgBoosterApiRespMsg"}
    },
    "booster_interface/msg/ButtonEventMsg" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_b61682fd9c35bd54c52000224411f4373b8620e16587b31d8a683076e0d14fe4",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Booster_interfaceMsgButtonEventMsg"}
    },
    "booster_interface/msg/FallDownState" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_8bf168ccefac72eda6070704c70e12e62776d29ad3db908095cc01220f4b533f",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Booster_interfaceMsgFallDownState"}
    },
    "booster_interface/msg/HandCommand" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_06f3d6c0e9bef1da409330038aadbfacfe60b02e099f2ae0c4dcb92a632b20a0",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Booster_interfaceMsgHandCommand"}
    },
    "booster_interface/msg/HandDdsMsg" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_55af9d6f272a72e75e86e1a6164d235aca5f2ce99c2529749c0d5e33d6091397",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Booster_interfaceMsgHandDdsMsg"}
    },
    "booster_interface/msg/HandParam" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_3b91722e751e7c00c773335bb42af34850190ecc26a029e8792c49d912def158",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Booster_interfaceMsgHandParam"}
    },
    "booster_interface/msg/ImuState" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_838ee8d4b93b0c3673e0b535fd3905913e94be24d6d21a01504dedaaaaa81092",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Booster_interfaceMsgImuState"}
    },
    "booster_interface/msg/LowCmd" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_845726a14e61d211b493041f4dda56e1556b76b9d30337a2ee5f6319a3d1e870",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Booster_interfaceMsgLowCmd"}
    },
    "booster_interface/msg/LowState" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_811db19cab7b790ed48506bca3e3ef512c1a661dc3ac99cbce6234efb6de631f",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Booster_interfaceMsgLowState"}
    },
    "booster_interface/msg/MotorCmd" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_69d814e13595d53dcf44f2a5ccb19df0f8f2be0908c310c3b60cec33bcf27392",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Booster_interfaceMsgMotorCmd"}
    },
    "booster_interface/msg/MotorState" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_6b19c0e8865e796fff5a498cff731ba268fa92ea2944e6c2c5869009b3aa066b",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Booster_interfaceMsgMotorState"}
    },
    "booster_interface/msg/Odometer" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_4fea33e3e2ae186dbeaf49c6068019b702e742266541087a5d280b9ce42c671a",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Booster_interfaceMsgOdometer"}
    },
    "booster_interface/msg/RawBytesMsg" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_557e8e79f206c9cc8b820ed7c2ad8cc01e9b01327197b745709993d958b4578c",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Booster_interfaceMsgRawBytesMsg"}
    },
    "booster_interface/msg/RawBytesStamped" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_27cddd472b2d8c41c39effb87a8a53261aff309500dbb68df6ebd69a19c7720e",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Booster_interfaceMsgRawBytesStamped"}
    },
    "booster_interface/msg/RemoteControllerState" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_f8a21705728862632c27b71d98c044a12bf1f9f9e0c1729fec27afe2c60c48a7",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Booster_interfaceMsgRemoteControllerState"}
    },
    "booster_interface/srv/AgentService" : {
                                                "kind" : "service",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_3a612d975894437a954b8d197895c1dc07d1cab3a35b8912d63b0308a0fd9bd3",
                                                "registered" : true,
                                                "components" : {"request" : "Ros2Booster_interfaceSrvAgentService_Request", "response" : "Ros2Booster_interfaceSrvAgentService_Response"}
    },
    "booster_interface/srv/RpcService" : {
                                                "kind" : "service",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_08c19ac1f3b5280e9d1fc4662e19a56d3c2512e8b63127e92c4676cd7b32b04f",
                                                "registered" : true,
                                                "components" : {"request" : "Ros2Booster_interfaceSrvRpcService_Request", "response" : "Ros2Booster_interfaceSrvRpcService_Response"}
    },
    "std_msgs/msg/Header" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96",
                                                "registered" : false,
                                                "components" : {"message" : "Ros2Std_msgsMsgHeader"}
    },
    "builtin_interfaces/msg/Time" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
                                                "registered" : false,
                                                "components" : {"message" : "Ros2Builtin_interfacesMsgTime"}
    },
    "uwvm_booster_sdk_bridge/msg/ImuState" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_858ad4a47d2409da6b4e2513178d7d3b0d4568d6ce488729de0b9a220a100f04",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Uwvm_booster_sdk_bridgeMsgImuState"}
    },
    "uwvm_booster_sdk_bridge/msg/MotorCmd" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_66fec912031dfbd29b8e4e747dcdc2dc465506bd003323bc929929bf6a9d31a4",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Uwvm_booster_sdk_bridgeMsgMotorCmd"}
    },
    "uwvm_booster_sdk_bridge/msg/MotorState" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_958168dc1e32d50827f255080117a82421d7fb6ae4ad6a05763ce2d3173a30af",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Uwvm_booster_sdk_bridgeMsgMotorState"}
    },
    "uwvm_booster_sdk_bridge/msg/LowCmd" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_3324a161b056f9282ffa8dce3254a1456b75f6eae5f4a067e844e125e94cba3a",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Uwvm_booster_sdk_bridgeMsgLowCmd"}
    },
    "uwvm_booster_sdk_bridge/msg/LowState" : {
                                                "kind" : "message",
                                                "native_identity" : null,
                                                "codec_identity" : "UWVMROS1_ca4bcb79077b0e026cf45a389981622ff9c80570ee813ff5633c605fe5021a58",
                                                "registered" : true,
                                                "components" : {"message" : "Ros2Uwvm_booster_sdk_bridgeMsgLowState"}
    }
};
