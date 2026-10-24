/**
 * @file records.mjs
 * @brief All original records over the shared genuine JavaScript codec.
 * @details No native resource or permission is acquired by a schema.
 */
import {Record, Registry} from "ros/js/wire";

export const REGISTRY = new Registry();

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

/** @brief Complete aimdk_msgs/msg/ModuleChannelInfo owning value. */
export class Ros2Aimdk_msgsMsgModuleChannelInfo extends Record
{
    static schema = {
        "minimum" : 58,
        "maximum": 586,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_d6cfacaf7cd28f18d14ef270b868b354e896f937181c8d29279e1eac21990696",
        "type": "aimdk_msgs/msg/ModuleChannelInfo",
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
                    "name" : "type",
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
                    "name" : "frequency",
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
                    "name" : "min_time_diff",
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
                    "name" : "max_time_diff",
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
                    "name" : "std_dev",
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
                    "name" : "window_size",
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
                    "name" : "timeout_threshold",
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
                    "name" : "is_active",
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
                    "name" : "is_timeout",
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
                    "name" : "backends",
                    "type": "string",
                    "array": "sequence",
                    "count": 4,
                    "string_bound": 64,
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

REGISTRY.add(Ros2Aimdk_msgsMsgModuleChannelInfo);

/** @brief Complete aimdk_msgs/msg/ModuleRpcInfo owning value. */
export class Ros2Aimdk_msgsMsgModuleRpcInfo extends Record
{
    static schema = {
        "minimum" : 16,
        "maximum": 672,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e06e5cd98eaa4f17cebd95db53f6aa175cdc3682f3912f365947f8f8950d02d8",
        "type": "aimdk_msgs/msg/ModuleRpcInfo",
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
                    "name" : "req_type",
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
                    "name" : "res_type",
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
                    "name" : "backends",
                    "type": "string",
                    "array": "sequence",
                    "count": 4,
                    "string_bound": 64,
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

REGISTRY.add(Ros2Aimdk_msgsMsgModuleRpcInfo);

/** @brief Complete aimdk_msgs/msg/ModuleResourceInfo owning value. */
export class Ros2Aimdk_msgsMsgModuleResourceInfo extends Record
{
    static schema = {
        "minimum" : 20,
        "maximum": 5180,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_de2a3067e5bff40e7bd9949ce9923b6be34c8f822f74a036402a9253717aaa8f",
        "type": "aimdk_msgs/msg/ModuleResourceInfo",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "module_name",
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
                    "name" : "rpc_clients",
                    "type": "aimdk_msgs/msg/ModuleRpcInfo",
                    "array": "sequence",
                    "count": 2,
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
                    "name" : "rpc_services",
                    "type": "aimdk_msgs/msg/ModuleRpcInfo",
                    "array": "sequence",
                    "count": 2,
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
                    "name" : "pub_channels",
                    "type": "aimdk_msgs/msg/ModuleChannelInfo",
                    "array": "sequence",
                    "count": 2,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 58
                },
                {
                    "name" : "sub_channels",
                    "type": "aimdk_msgs/msg/ModuleChannelInfo",
                    "array": "sequence",
                    "count": 2,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 58
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgModuleResourceInfo);

/** @brief Complete aimdk_msgs/msg/ThreadResourceInfo owning value. */
export class Ros2Aimdk_msgsMsgThreadResourceInfo extends Record
{
    static schema = {
        "minimum" : 32,
        "maximum": 352,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_7232a79e41b62d823fd87d761df60759839543aedbe5fa338fb46816687a0a15",
        "type": "aimdk_msgs/msg/ThreadResourceInfo",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "thread_id",
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
                    "name" : "thread_name",
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
                    "name" : "cpu_usage_ratio",
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
                    "name" : "cpu_sched_policy",
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
                    "name" : "cpu_sched_priority",
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
                    "name" : "bounding_cpus",
                    "type": "int32",
                    "array": "sequence",
                    "count": 16,
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

REGISTRY.add(Ros2Aimdk_msgsMsgThreadResourceInfo);

/** @brief Complete aimdk_msgs/msg/ProcessResourceInfo owning value. */
export class Ros2Aimdk_msgsMsgProcessResourceInfo extends Record
{
    static schema = {
        "minimum" : 48,
        "maximum": 1584,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_90b5f60525abc33814dfc7e3f7e6af23c7f43a232d74a904bd06f20d27ef9550",
        "type": "aimdk_msgs/msg/ProcessResourceInfo",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "process_id",
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
                    "name" : "process_name",
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
                    "name" : "process_mem_usage",
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
                    "name" : "process_mem_usage_ratio",
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
                    "name" : "process_cpu_usage_ratio",
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
                    "name" : "thread_count",
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
                    "name" : "threads",
                    "type": "aimdk_msgs/msg/ThreadResourceInfo",
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
                    "element_minimum": 32
                }
            ]
    };
}

REGISTRY.add(Ros2Aimdk_msgsMsgProcessResourceInfo);

/** @brief Complete aimdk_msgs/msg/ProcessInfo owning value. */
export class Ros2Aimdk_msgsMsgProcessInfo extends Record
{
    static schema = {
        "minimum" : 80,
        "maximum": 12232,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_190d10dc74d66eecf65495e2795525b4f6016bb3efde2f16310e54287e703996",
        "type": "aimdk_msgs/msg/ProcessInfo",
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
                    "name" : "app_name",
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
                    "name" : "resource",
                    "type": "aimdk_msgs/msg/ProcessResourceInfo",
                    "array": "",
                    "count": 0,
                    "string_bound": 0,
                    "native_string_bound": 0,
                    "native_sequence_bound": 0,
                    "native_default": null,
                    "native_scalar": "",
                    "string_encoding": "utf8",
                    "float_policy": "finite",
                    "default": null,
                    "element_minimum": 48
                },
                {
                    "name" : "modules",
                    "type": "aimdk_msgs/msg/ModuleResourceInfo",
                    "array": "sequence",
                    "count": 2,
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

REGISTRY.add(Ros2Aimdk_msgsMsgProcessInfo);

