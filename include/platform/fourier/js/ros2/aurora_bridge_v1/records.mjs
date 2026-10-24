/**
 * @file records.mjs
 * @brief All original records over the shared genuine JavaScript codec.
 * @details No native resource or permission is acquired by a schema.
 */
import {Record, Registry} from "ros/js/wire";

export const REGISTRY = new Registry();

/** @brief Complete uwvm_fourier_bridge/msg/GroupState owning value. */
export class Ros2Uwvm_fourier_bridgeMsgGroupState extends Record
{
    static schema = {
        "minimum" : 20,
        "maximum": 1684,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4",
        "type": "uwvm_fourier_bridge/msg/GroupState",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "group",
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
                    "element_minimum": 8
                },
                {
                    "name" : "velocity",
                    "type": "float64",
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
                    "element_minimum": 8
                },
                {
                    "name" : "effort",
                    "type": "float64",
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
                    "element_minimum": 8
                },
                {
                    "name" : "motion_state",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeMsgGroupState);

/** @brief Complete uwvm_fourier_bridge/msg/GroupValues owning value. */
export class Ros2Uwvm_fourier_bridgeMsgGroupValues extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 648,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3",
        "type": "uwvm_fourier_bridge/msg/GroupValues",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "group",
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
                    "name" : "values",
                    "type": "float64",
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
                    "element_minimum": 8
                }
            ]
    };
}

REGISTRY.add(Ros2Uwvm_fourier_bridgeMsgGroupValues);

/** @brief Complete uwvm_fourier_bridge/msg/MotionRecipe owning value. */
export class Ros2Uwvm_fourier_bridgeMsgMotionRecipe extends Record
{
    static schema = {
        "minimum" : 18,
        "maximum": 1170,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14",
        "type": "uwvm_fourier_bridge/msg/MotionRecipe",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "move_type",
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
                    "name" : "group",
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
                    "element_minimum": 8
                },
                {
                    "name" : "has_velocity",
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
                    "name" : "velocity",
                    "type": "float64",
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
                    "element_minimum": 8
                },
                {
                    "name" : "expected_velocity",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeMsgMotionRecipe);

/** @brief Complete uwvm_fourier_bridge/msg/Status owning value. */
export class Ros2Uwvm_fourier_bridgeMsgStatus extends Record
{
    static schema = {
        "minimum" : 32,
        "maximum": 14400,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e",
        "type": "uwvm_fourier_bridge/msg/Status",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "fsm_state",
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
                    "name" : "fsm_name",
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
                    "name" : "upper_fsm_state",
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
                    "name" : "upper_fsm_name",
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
                    "name" : "velocity_source",
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
                    "name" : "velocity_source_name",
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
                    "name" : "stand_pose",
                    "type": "float64",
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
                    "element_minimum": 8
                },
                {
                    "name" : "groups",
                    "type": "uwvm_fourier_bridge/msg/GroupState",
                    "array": "sequence",
                    "count": 8,
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeMsgStatus);

/** @brief Complete uwvm_fourier_bridge/msg/VelocityCommand owning value. */
export class Ros2Uwvm_fourier_bridgeMsgVelocityCommand extends Record
{
    static schema = {
        "minimum" : 40,
        "maximum": 40,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d",
        "type": "uwvm_fourier_bridge/msg/VelocityCommand",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "sequence",
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
                    "name" : "vx",
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
                    "name" : "vy",
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
                    "name" : "yaw",
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
                    "name" : "duration",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeMsgVelocityCommand);

/** @brief Complete uwvm_fourier_bridge/srv/ExecuteMove_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 9372,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b",
        "type": "uwvm_fourier_bridge/srv/ExecuteMove_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "sequence",
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
                    "name" : "moves",
                    "type": "uwvm_fourier_bridge/msg/MotionRecipe",
                    "array": "sequence",
                    "count": 8,
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request);

/** @brief Complete uwvm_fourier_bridge/srv/ExecuteMove_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 136,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab",
        "type": "uwvm_fourier_bridge/srv/ExecuteMove_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response);

/** @brief Complete uwvm_fourier_bridge/srv/GetBaseData_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f",
        "type": "uwvm_fourier_bridge/srv/GetBaseData_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "sequence",
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
                    "name" : "key",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request);

/** @brief Complete uwvm_fourier_bridge/srv/GetBaseData_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 652,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804",
        "type": "uwvm_fourier_bridge/srv/GetBaseData_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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
                    "name" : "values",
                    "type": "float64",
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
                    "element_minimum": 8
                }
            ]
    };
}

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response);

/** @brief Complete uwvm_fourier_bridge/srv/GetCartesianState_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request extends Record
{
    static schema = {
        "minimum" : 16,
        "maximum": 272,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee",
        "type": "uwvm_fourier_bridge/srv/GetCartesianState_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "sequence",
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
                    "name" : "group",
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
                    "name" : "key",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request);

/** @brief Complete uwvm_fourier_bridge/srv/GetCartesianState_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 652,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40",
        "type": "uwvm_fourier_bridge/srv/GetCartesianState_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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
                    "name" : "values",
                    "type": "float64",
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
                    "element_minimum": 8
                }
            ]
    };
}

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response);

/** @brief Complete uwvm_fourier_bridge/srv/GetContactData_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetContactData_Request extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0",
        "type": "uwvm_fourier_bridge/srv/GetContactData_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "sequence",
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
                    "name" : "key",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetContactData_Request);

/** @brief Complete uwvm_fourier_bridge/srv/GetContactData_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetContactData_Response extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 652,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e",
        "type": "uwvm_fourier_bridge/srv/GetContactData_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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
                    "name" : "values",
                    "type": "float64",
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
                    "element_minimum": 8
                }
            ]
    };
}

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetContactData_Response);

/** @brief Complete uwvm_fourier_bridge/srv/GetFsmName_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100",
        "type": "uwvm_fourier_bridge/srv/GetFsmName_Request",
        "ros_version": 2,
        "fields": [ {
            "name" : "sequence",
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
        } ]
    };
}

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request);

/** @brief Complete uwvm_fourier_bridge/srv/GetFsmName_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 268,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e",
        "type": "uwvm_fourier_bridge/srv/GetFsmName_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response);

/** @brief Complete uwvm_fourier_bridge/srv/GetFsmState_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0",
        "type": "uwvm_fourier_bridge/srv/GetFsmState_Request",
        "ros_version": 2,
        "fields": [ {
            "name" : "sequence",
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
        } ]
    };
}

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request);

/** @brief Complete uwvm_fourier_bridge/srv/GetFsmState_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4",
        "type": "uwvm_fourier_bridge/srv/GetFsmState_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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
                }
            ]
    };
}

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response);

/** @brief Complete uwvm_fourier_bridge/srv/GetGroupMotionState_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae",
        "type": "uwvm_fourier_bridge/srv/GetGroupMotionState_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "sequence",
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
                    "name" : "group",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request);

/** @brief Complete uwvm_fourier_bridge/srv/GetGroupMotionState_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7",
        "type": "uwvm_fourier_bridge/srv/GetGroupMotionState_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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
                }
            ]
    };
}

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response);

/** @brief Complete uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request extends Record
{
    static schema = {
        "minimum" : 16,
        "maximum": 272,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a",
        "type": "uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "sequence",
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
                    "name" : "group",
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
                    "name" : "key",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request);

/** @brief Complete uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 652,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868",
        "type": "uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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
                    "name" : "values",
                    "type": "float64",
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
                    "element_minimum": 8
                }
            ]
    };
}

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response);

/** @brief Complete uwvm_fourier_bridge/srv/GetGroupState_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request extends Record
{
    static schema = {
        "minimum" : 16,
        "maximum": 272,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9",
        "type": "uwvm_fourier_bridge/srv/GetGroupState_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "sequence",
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
                    "name" : "group",
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
                    "name" : "key",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request);

/** @brief Complete uwvm_fourier_bridge/srv/GetGroupState_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 652,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d",
        "type": "uwvm_fourier_bridge/srv/GetGroupState_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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
                    "name" : "values",
                    "type": "float64",
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
                    "element_minimum": 8
                }
            ]
    };
}

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response);

/** @brief Complete uwvm_fourier_bridge/srv/GetSnapshot_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58",
        "type": "uwvm_fourier_bridge/srv/GetSnapshot_Request",
        "ros_version": 2,
        "fields": [ {
            "name" : "sequence",
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
        } ]
    };
}

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request);

/** @brief Complete uwvm_fourier_bridge/srv/GetSnapshot_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response extends Record
{
    static schema = {
        "minimum" : 40,
        "maximum": 14536,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3",
        "type": "uwvm_fourier_bridge/srv/GetSnapshot_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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
                    "name" : "value",
                    "type": "uwvm_fourier_bridge/msg/Status",
                    "array": "",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response);

/** @brief Complete uwvm_fourier_bridge/srv/GetStandPose_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044",
        "type": "uwvm_fourier_bridge/srv/GetStandPose_Request",
        "ros_version": 2,
        "fields": [ {
            "name" : "sequence",
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
        } ]
    };
}

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request);

/** @brief Complete uwvm_fourier_bridge/srv/GetStandPose_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 652,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2",
        "type": "uwvm_fourier_bridge/srv/GetStandPose_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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
                    "name" : "values",
                    "type": "float64",
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
                    "element_minimum": 8
                }
            ]
    };
}

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response);

/** @brief Complete uwvm_fourier_bridge/srv/GetUpperFsmName_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412",
        "type": "uwvm_fourier_bridge/srv/GetUpperFsmName_Request",
        "ros_version": 2,
        "fields": [ {
            "name" : "sequence",
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
        } ]
    };
}

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request);

/** @brief Complete uwvm_fourier_bridge/srv/GetUpperFsmName_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 268,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed",
        "type": "uwvm_fourier_bridge/srv/GetUpperFsmName_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response);

/** @brief Complete uwvm_fourier_bridge/srv/GetUpperFsmState_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98",
        "type": "uwvm_fourier_bridge/srv/GetUpperFsmState_Request",
        "ros_version": 2,
        "fields": [ {
            "name" : "sequence",
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
        } ]
    };
}

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request);

/** @brief Complete uwvm_fourier_bridge/srv/GetUpperFsmState_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9",
        "type": "uwvm_fourier_bridge/srv/GetUpperFsmState_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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
                }
            ]
    };
}

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response);

/** @brief Complete uwvm_fourier_bridge/srv/GetVelocitySource_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c",
        "type": "uwvm_fourier_bridge/srv/GetVelocitySource_Request",
        "ros_version": 2,
        "fields": [ {
            "name" : "sequence",
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
        } ]
    };
}

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request);

/** @brief Complete uwvm_fourier_bridge/srv/GetVelocitySource_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53",
        "type": "uwvm_fourier_bridge/srv/GetVelocitySource_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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
                }
            ]
    };
}

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response);

/** @brief Complete uwvm_fourier_bridge/srv/GetVelocitySourceName_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1",
        "type": "uwvm_fourier_bridge/srv/GetVelocitySourceName_Request",
        "ros_version": 2,
        "fields": [ {
            "name" : "sequence",
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
        } ]
    };
}

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request);

/** @brief Complete uwvm_fourier_bridge/srv/GetVelocitySourceName_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 268,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40",
        "type": "uwvm_fourier_bridge/srv/GetVelocitySourceName_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response);

/** @brief Complete uwvm_fourier_bridge/srv/SetFsmState_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 12,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d",
        "type": "uwvm_fourier_bridge/srv/SetFsmState_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "sequence",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request);

/** @brief Complete uwvm_fourier_bridge/srv/SetFsmState_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 136,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70",
        "type": "uwvm_fourier_bridge/srv/SetFsmState_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response);

/** @brief Complete uwvm_fourier_bridge/srv/SetGroupCommand_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request extends Record
{
    static schema = {
        "minimum" : 20,
        "maximum": 15572,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9",
        "type": "uwvm_fourier_bridge/srv/SetGroupCommand_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "sequence",
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
                    "name" : "position",
                    "type": "uwvm_fourier_bridge/msg/GroupValues",
                    "array": "sequence",
                    "count": 8,
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
                    "type": "uwvm_fourier_bridge/msg/GroupValues",
                    "array": "sequence",
                    "count": 8,
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
                    "name" : "torque",
                    "type": "uwvm_fourier_bridge/msg/GroupValues",
                    "array": "sequence",
                    "count": 8,
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request);

/** @brief Complete uwvm_fourier_bridge/srv/SetGroupCommand_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 136,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290",
        "type": "uwvm_fourier_bridge/srv/SetGroupCommand_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response);

/** @brief Complete uwvm_fourier_bridge/srv/SetMotorCfgPd_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request extends Record
{
    static schema = {
        "minimum" : 16,
        "maximum": 10384,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de",
        "type": "uwvm_fourier_bridge/srv/SetMotorCfgPd_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "sequence",
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
                    "name" : "kp",
                    "type": "uwvm_fourier_bridge/msg/GroupValues",
                    "array": "sequence",
                    "count": 8,
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
                    "name" : "kd",
                    "type": "uwvm_fourier_bridge/msg/GroupValues",
                    "array": "sequence",
                    "count": 8,
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request);

/** @brief Complete uwvm_fourier_bridge/srv/SetMotorCfgPd_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 136,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804",
        "type": "uwvm_fourier_bridge/srv/SetMotorCfgPd_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response);

/** @brief Complete uwvm_fourier_bridge/srv/SetStandPose_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request extends Record
{
    static schema = {
        "minimum" : 32,
        "maximum": 32,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211",
        "type": "uwvm_fourier_bridge/srv/SetStandPose_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "sequence",
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
                    "name" : "delta_z",
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
                    "name" : "delta_pitch",
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
                    "name" : "delta_yaw",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request);

/** @brief Complete uwvm_fourier_bridge/srv/SetStandPose_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 136,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f",
        "type": "uwvm_fourier_bridge/srv/SetStandPose_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response);

/** @brief Complete uwvm_fourier_bridge/srv/SetUpperFsmState_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 12,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182",
        "type": "uwvm_fourier_bridge/srv/SetUpperFsmState_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "sequence",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request);

/** @brief Complete uwvm_fourier_bridge/srv/SetUpperFsmState_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 136,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8",
        "type": "uwvm_fourier_bridge/srv/SetUpperFsmState_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response);

/** @brief Complete uwvm_fourier_bridge/srv/SetVelocity_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request extends Record
{
    static schema = {
        "minimum" : 40,
        "maximum": 40,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44",
        "type": "uwvm_fourier_bridge/srv/SetVelocity_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "sequence",
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
                    "name" : "vx",
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
                    "name" : "vy",
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
                    "name" : "yaw",
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
                    "name" : "duration",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request);

/** @brief Complete uwvm_fourier_bridge/srv/SetVelocity_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 136,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307",
        "type": "uwvm_fourier_bridge/srv/SetVelocity_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response);

/** @brief Complete uwvm_fourier_bridge/srv/SetVelocitySource_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 12,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c",
        "type": "uwvm_fourier_bridge/srv/SetVelocitySource_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "sequence",
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
                    "name" : "source",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request);

/** @brief Complete uwvm_fourier_bridge/srv/SetVelocitySource_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 136,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7",
        "type": "uwvm_fourier_bridge/srv/SetVelocitySource_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response);

/** @brief Complete uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request owning value. */
export class Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request extends Record
{
    static schema = {
        "minimum" : 28,
        "maximum": 1084,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202",
        "type": "uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "sequence",
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
                    "name" : "groups",
                    "type": "string",
                    "array": "sequence",
                    "count": 8,
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
                    "name" : "timeout_seconds",
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
                    "name" : "poll_seconds",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request);

/** @brief Complete uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response owning value. */
export class Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response extends Record
{
    static schema = {
        "minimum" : 9,
        "maximum": 137,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f",
        "type": "uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response",
        "ros_version": 2,
        "fields":
            [
                {
                    "name" : "status",
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
                    "name" : "error",
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
                    "name" : "complete",
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

REGISTRY.add(Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response);

