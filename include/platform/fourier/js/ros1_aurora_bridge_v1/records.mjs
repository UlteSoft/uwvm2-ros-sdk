/**
 * @file records.mjs
 * @brief All original records over the shared genuine JavaScript codec.
 * @details No native resource or permission is acquired by a schema.
 */
import {Record, Registry} from "ros/js/wire";

export const REGISTRY = new Registry();

/** @brief Complete uwvm_fourier_bridge/MotionRecipe owning value. */
export class Ros1Uwvm_fourier_bridgeMotionRecipe extends Record
{
    static schema = {
        "minimum" : 18,
        "maximum": 1170,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a",
        "type": "uwvm_fourier_bridge/MotionRecipe",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeMotionRecipe);

/** @brief Complete uwvm_fourier_bridge/ExecuteMoveRequest owning value. */
export class Ros1Uwvm_fourier_bridgeExecuteMoveRequest extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 9372,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_25e369f6b32bdc9983664fd4d857000a6a664364cb8bd0ff3d123cbc3c87e61b",
        "type": "uwvm_fourier_bridge/ExecuteMoveRequest",
        "ros_version": 1,
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
                    "type": "uwvm_fourier_bridge/MotionRecipe",
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeExecuteMoveRequest);

/** @brief Complete uwvm_fourier_bridge/ExecuteMoveResponse owning value. */
export class Ros1Uwvm_fourier_bridgeExecuteMoveResponse extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 136,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9a801e77130d12c30d67a874cb1e8c5a7cc912a2968af304d1cfd263e6242115",
        "type": "uwvm_fourier_bridge/ExecuteMoveResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeExecuteMoveResponse);

/** @brief Complete uwvm_fourier_bridge/GetBaseDataRequest owning value. */
export class Ros1Uwvm_fourier_bridgeGetBaseDataRequest extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_17883b19f1dcc3d68263b6196eb5ec7afb8c902b8ab4f9b7eb66a58ef5e78528",
        "type": "uwvm_fourier_bridge/GetBaseDataRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetBaseDataRequest);

/** @brief Complete uwvm_fourier_bridge/GetBaseDataResponse owning value. */
export class Ros1Uwvm_fourier_bridgeGetBaseDataResponse extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 652,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e8928e07d6dd18cfa8a7031e0a947fa6b2f36bb608f5d2178ec01b92bb78b79a",
        "type": "uwvm_fourier_bridge/GetBaseDataResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetBaseDataResponse);

/** @brief Complete uwvm_fourier_bridge/GetCartesianStateRequest owning value. */
export class Ros1Uwvm_fourier_bridgeGetCartesianStateRequest extends Record
{
    static schema = {
        "minimum" : 16,
        "maximum": 272,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_658626f7fbd0f788149208230f03cef299bcb2a6ca4cf96d4e3af807d9b336ae",
        "type": "uwvm_fourier_bridge/GetCartesianStateRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetCartesianStateRequest);

/** @brief Complete uwvm_fourier_bridge/GetCartesianStateResponse owning value. */
export class Ros1Uwvm_fourier_bridgeGetCartesianStateResponse extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 652,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_a4fcd5f01a992b9aed4089b2c77ecda4656fe9aeb11c40777603805af964f671",
        "type": "uwvm_fourier_bridge/GetCartesianStateResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetCartesianStateResponse);

/** @brief Complete uwvm_fourier_bridge/GetContactDataRequest owning value. */
export class Ros1Uwvm_fourier_bridgeGetContactDataRequest extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_38d1fa3409948748e19fdff39259fbb51503a98e03e996addb560cb404931787",
        "type": "uwvm_fourier_bridge/GetContactDataRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetContactDataRequest);

/** @brief Complete uwvm_fourier_bridge/GetContactDataResponse owning value. */
export class Ros1Uwvm_fourier_bridgeGetContactDataResponse extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 652,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_c4381d31ad73640e2f4302bd200d4507cd5a1a4ca4ee180ad009589864f3f293",
        "type": "uwvm_fourier_bridge/GetContactDataResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetContactDataResponse);

/** @brief Complete uwvm_fourier_bridge/GetFsmNameRequest owning value. */
export class Ros1Uwvm_fourier_bridgeGetFsmNameRequest extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_4257279fd241dee60ef24d1d5ebdcadbc84701b2e8709a6e269d2259b9293b33",
        "type": "uwvm_fourier_bridge/GetFsmNameRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetFsmNameRequest);

/** @brief Complete uwvm_fourier_bridge/GetFsmNameResponse owning value. */
export class Ros1Uwvm_fourier_bridgeGetFsmNameResponse extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 268,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_9016d706e2afed027dd150f1534e615e551c3f26d581313bb3d36a279e1d7c55",
        "type": "uwvm_fourier_bridge/GetFsmNameResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetFsmNameResponse);

/** @brief Complete uwvm_fourier_bridge/GetFsmStateRequest owning value. */
export class Ros1Uwvm_fourier_bridgeGetFsmStateRequest extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_573f497168578dce3680e1d423f64993e9fccf7774cc2fc0db38ccce8286ee3e",
        "type": "uwvm_fourier_bridge/GetFsmStateRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetFsmStateRequest);

/** @brief Complete uwvm_fourier_bridge/GetFsmStateResponse owning value. */
export class Ros1Uwvm_fourier_bridgeGetFsmStateResponse extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_1d25f46d335312a766f3c0a7f410a45f283515396c8c6bfc4a49bcf6bc37a812",
        "type": "uwvm_fourier_bridge/GetFsmStateResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetFsmStateResponse);

/** @brief Complete uwvm_fourier_bridge/GetGroupMotionStateRequest owning value. */
export class Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_a2b6c77c903d5d4dc5ca20805e1ed2fa7dfa0852bc3f590638a577cec9d7248f",
        "type": "uwvm_fourier_bridge/GetGroupMotionStateRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest);

/** @brief Complete uwvm_fourier_bridge/GetGroupMotionStateResponse owning value. */
export class Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e41b911990c306e8f264f1f9d961b822fb6669ad1ca5ee8f81609ba13a0fc8a2",
        "type": "uwvm_fourier_bridge/GetGroupMotionStateResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse);

/** @brief Complete uwvm_fourier_bridge/GetGroupMotorCfgRequest owning value. */
export class Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest extends Record
{
    static schema = {
        "minimum" : 16,
        "maximum": 272,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_bbcfb5561a970d7d086aa5a3a832dfbd8c3e2c2a9b4c5e9bea8224c6c7fc0576",
        "type": "uwvm_fourier_bridge/GetGroupMotorCfgRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest);

/** @brief Complete uwvm_fourier_bridge/GetGroupMotorCfgResponse owning value. */
export class Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 652,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_cf7f2a81246842d851104edb7d422ff5342fc65dc56e573d552b10d02c81ad72",
        "type": "uwvm_fourier_bridge/GetGroupMotorCfgResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse);

/** @brief Complete uwvm_fourier_bridge/GetGroupStateRequest owning value. */
export class Ros1Uwvm_fourier_bridgeGetGroupStateRequest extends Record
{
    static schema = {
        "minimum" : 16,
        "maximum": 272,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_d24ebea89b1c6e7963c8058109704033c9e1f1f74673732093412c5ac453b8fc",
        "type": "uwvm_fourier_bridge/GetGroupStateRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetGroupStateRequest);

/** @brief Complete uwvm_fourier_bridge/GetGroupStateResponse owning value. */
export class Ros1Uwvm_fourier_bridgeGetGroupStateResponse extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 652,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e21f17f91821b5a3154e108d0bcdb027a320b948d32e5637d20745c85edb0acb",
        "type": "uwvm_fourier_bridge/GetGroupStateResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetGroupStateResponse);

/** @brief Complete uwvm_fourier_bridge/GetSnapshotRequest owning value. */
export class Ros1Uwvm_fourier_bridgeGetSnapshotRequest extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_384b9be938d41321afe3ef0765bdd442baa4f0c10049efd656c52d5ac1c89d4c",
        "type": "uwvm_fourier_bridge/GetSnapshotRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetSnapshotRequest);

/** @brief Complete uwvm_fourier_bridge/GroupState owning value. */
export class Ros1Uwvm_fourier_bridgeGroupState extends Record
{
    static schema = {
        "minimum" : 20,
        "maximum": 1684,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855",
        "type": "uwvm_fourier_bridge/GroupState",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGroupState);

/** @brief Complete uwvm_fourier_bridge/Status owning value. */
export class Ros1Uwvm_fourier_bridgeStatus extends Record
{
    static schema = {
        "minimum" : 32,
        "maximum": 14400,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e",
        "type": "uwvm_fourier_bridge/Status",
        "ros_version": 1,
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
                    "type": "uwvm_fourier_bridge/GroupState",
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeStatus);

/** @brief Complete uwvm_fourier_bridge/GetSnapshotResponse owning value. */
export class Ros1Uwvm_fourier_bridgeGetSnapshotResponse extends Record
{
    static schema = {
        "minimum" : 40,
        "maximum": 14536,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_3b8b79195d53d3e0d22ac318e8f0898cb774cfaed35bebbc5210288273137c6a",
        "type": "uwvm_fourier_bridge/GetSnapshotResponse",
        "ros_version": 1,
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
                    "type": "uwvm_fourier_bridge/Status",
                    "array": "",
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetSnapshotResponse);

/** @brief Complete uwvm_fourier_bridge/GetStandPoseRequest owning value. */
export class Ros1Uwvm_fourier_bridgeGetStandPoseRequest extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_5c3b18c383a9a9a162bf3b656007f56e791c26125e0dc59fd8dc87bd3ef54738",
        "type": "uwvm_fourier_bridge/GetStandPoseRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetStandPoseRequest);

/** @brief Complete uwvm_fourier_bridge/GetStandPoseResponse owning value. */
export class Ros1Uwvm_fourier_bridgeGetStandPoseResponse extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 652,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_302692ae2e86c23efb3edf132e0b7a6e48fc2072a34bb941039db459f99cd15d",
        "type": "uwvm_fourier_bridge/GetStandPoseResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetStandPoseResponse);

/** @brief Complete uwvm_fourier_bridge/GetUpperFsmNameRequest owning value. */
export class Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_57fbba93abe5e136ae1522ad47155377e8a55ddaa3f02793e8a605e3b596115a",
        "type": "uwvm_fourier_bridge/GetUpperFsmNameRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest);

/** @brief Complete uwvm_fourier_bridge/GetUpperFsmNameResponse owning value. */
export class Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 268,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e98befbd1c290a3cb2c99facb33334ac0d908db39247d869d0715c024e75c7fe",
        "type": "uwvm_fourier_bridge/GetUpperFsmNameResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse);

/** @brief Complete uwvm_fourier_bridge/GetUpperFsmStateRequest owning value. */
export class Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_d38f791d76cec09de5bfa0b32d88d987ec3b077408682519f4c23940c4af0d12",
        "type": "uwvm_fourier_bridge/GetUpperFsmStateRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest);

/** @brief Complete uwvm_fourier_bridge/GetUpperFsmStateResponse owning value. */
export class Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_3864ff479fa6b85dffd39e772e3260f9e5094cf8179f98c2184a09971d577e71",
        "type": "uwvm_fourier_bridge/GetUpperFsmStateResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse);

/** @brief Complete uwvm_fourier_bridge/GetVelocitySourceRequest owning value. */
export class Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_e38af8b3fc5b65c6f364f5949b42d694d7012d32d900f55e08b87d08bcf83042",
        "type": "uwvm_fourier_bridge/GetVelocitySourceRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest);

/** @brief Complete uwvm_fourier_bridge/GetVelocitySourceResponse owning value. */
export class Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 140,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_5bf809b889573acff549030cda017455303b009379d495aa7c3ab4399c862f60",
        "type": "uwvm_fourier_bridge/GetVelocitySourceResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse);

/** @brief Complete uwvm_fourier_bridge/GetVelocitySourceNameRequest owning value. */
export class Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 8,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_a880cea6f506d0670df709e9e86726272e242bd969b5917a9698efa2f6dd897b",
        "type": "uwvm_fourier_bridge/GetVelocitySourceNameRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest);

/** @brief Complete uwvm_fourier_bridge/GetVelocitySourceNameResponse owning value. */
export class Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 268,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_4b746944429d7c07719da06a13b9a396dff3b51167894309e8cf46f64f049a9b",
        "type": "uwvm_fourier_bridge/GetVelocitySourceNameResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse);

/** @brief Complete uwvm_fourier_bridge/GroupValues owning value. */
export class Ros1Uwvm_fourier_bridgeGroupValues extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 648,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c",
        "type": "uwvm_fourier_bridge/GroupValues",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeGroupValues);

/** @brief Complete uwvm_fourier_bridge/SetFsmStateRequest owning value. */
export class Ros1Uwvm_fourier_bridgeSetFsmStateRequest extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 12,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_303406629d56a2b60a273488cd1e12081e7541374653bac04e2ca073d8c20885",
        "type": "uwvm_fourier_bridge/SetFsmStateRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeSetFsmStateRequest);

/** @brief Complete uwvm_fourier_bridge/SetFsmStateResponse owning value. */
export class Ros1Uwvm_fourier_bridgeSetFsmStateResponse extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 136,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_cffc820dc64a954aa94912941d3678a59a839b3dde4a6ebafdaf7d4367c22bd1",
        "type": "uwvm_fourier_bridge/SetFsmStateResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeSetFsmStateResponse);

/** @brief Complete uwvm_fourier_bridge/SetGroupCommandRequest owning value. */
export class Ros1Uwvm_fourier_bridgeSetGroupCommandRequest extends Record
{
    static schema = {
        "minimum" : 20,
        "maximum": 15572,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b313435600ece44507300ad1ea5e375244387cde33301484ffda0390ca523220",
        "type": "uwvm_fourier_bridge/SetGroupCommandRequest",
        "ros_version": 1,
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
                    "type": "uwvm_fourier_bridge/GroupValues",
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
                    "type": "uwvm_fourier_bridge/GroupValues",
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
                    "type": "uwvm_fourier_bridge/GroupValues",
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeSetGroupCommandRequest);

/** @brief Complete uwvm_fourier_bridge/SetGroupCommandResponse owning value. */
export class Ros1Uwvm_fourier_bridgeSetGroupCommandResponse extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 136,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_d4c199515080deccf6a7bbd7101c84f45d7b280a7ed618c2165231343aae558b",
        "type": "uwvm_fourier_bridge/SetGroupCommandResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeSetGroupCommandResponse);

/** @brief Complete uwvm_fourier_bridge/SetMotorCfgPdRequest owning value. */
export class Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest extends Record
{
    static schema = {
        "minimum" : 16,
        "maximum": 10384,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_b6dc93532397dc9016b751bf29f651e5cbb0823b5a03a3f8473823bb234bc51d",
        "type": "uwvm_fourier_bridge/SetMotorCfgPdRequest",
        "ros_version": 1,
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
                    "type": "uwvm_fourier_bridge/GroupValues",
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
                    "type": "uwvm_fourier_bridge/GroupValues",
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest);

/** @brief Complete uwvm_fourier_bridge/SetMotorCfgPdResponse owning value. */
export class Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 136,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_c1a69a2c03c6cee9b43484b29a800a5f82be4b9188e3b199eb2db8babd205bdc",
        "type": "uwvm_fourier_bridge/SetMotorCfgPdResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse);

/** @brief Complete uwvm_fourier_bridge/SetStandPoseRequest owning value. */
export class Ros1Uwvm_fourier_bridgeSetStandPoseRequest extends Record
{
    static schema = {
        "minimum" : 32,
        "maximum": 32,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_75a21fe3986a90ff45b9e7ef023a93be9852d1174b5724b77b82b87e002492ed",
        "type": "uwvm_fourier_bridge/SetStandPoseRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeSetStandPoseRequest);

/** @brief Complete uwvm_fourier_bridge/SetStandPoseResponse owning value. */
export class Ros1Uwvm_fourier_bridgeSetStandPoseResponse extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 136,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_257da5b52ebfca54b067ced2acfab01e3aa3187c77751a5f82f9fda25885fe7e",
        "type": "uwvm_fourier_bridge/SetStandPoseResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeSetStandPoseResponse);

/** @brief Complete uwvm_fourier_bridge/SetUpperFsmStateRequest owning value. */
export class Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 12,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_cc12b01c002d9e3662f16595a55df6abebdea2fe06e350b7e81f33bee0d47758",
        "type": "uwvm_fourier_bridge/SetUpperFsmStateRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest);

/** @brief Complete uwvm_fourier_bridge/SetUpperFsmStateResponse owning value. */
export class Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 136,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_27ee9830ebf52c3cfcdd8691bf1be9a1a63f7cd12c43cd30531b73501cd423c1",
        "type": "uwvm_fourier_bridge/SetUpperFsmStateResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse);

/** @brief Complete uwvm_fourier_bridge/SetVelocityRequest owning value. */
export class Ros1Uwvm_fourier_bridgeSetVelocityRequest extends Record
{
    static schema = {
        "minimum" : 40,
        "maximum": 40,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_33eb9021c19ed28c9aabc0076b8e5cc9f36b1fcaebbb93ebfa3dc38e9691ed2d",
        "type": "uwvm_fourier_bridge/SetVelocityRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeSetVelocityRequest);

/** @brief Complete uwvm_fourier_bridge/SetVelocityResponse owning value. */
export class Ros1Uwvm_fourier_bridgeSetVelocityResponse extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 136,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_3325d6b620d3481b6976cd4579f197ed19d6a5074618f700273ca89e0eba762a",
        "type": "uwvm_fourier_bridge/SetVelocityResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeSetVelocityResponse);

/** @brief Complete uwvm_fourier_bridge/SetVelocitySourceRequest owning value. */
export class Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest extends Record
{
    static schema = {
        "minimum" : 12,
        "maximum": 12,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_769c68344260812d775718b441b2a0e5e26422995c946031b919707994e295eb",
        "type": "uwvm_fourier_bridge/SetVelocitySourceRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest);

/** @brief Complete uwvm_fourier_bridge/SetVelocitySourceResponse owning value. */
export class Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse extends Record
{
    static schema = {
        "minimum" : 8,
        "maximum": 136,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_d791bd1ff7d8219a98a9ad475cdf0274fa87638452ce0359de57abc05ff0c3be",
        "type": "uwvm_fourier_bridge/SetVelocitySourceResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse);

/** @brief Complete uwvm_fourier_bridge/VelocityCommand owning value. */
export class Ros1Uwvm_fourier_bridgeVelocityCommand extends Record
{
    static schema = {
        "minimum" : 40,
        "maximum": 40,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54",
        "type": "uwvm_fourier_bridge/VelocityCommand",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeVelocityCommand);

/** @brief Complete uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest owning value. */
export class Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest extends Record
{
    static schema = {
        "minimum" : 28,
        "maximum": 1084,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_27bdd6aa7689099eb40b3bdf96a1c3939677b016c685bd6fb6a275233b933b33",
        "type": "uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest);

/** @brief Complete uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse owning value. */
export class Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse extends Record
{
    static schema = {
        "minimum" : 9,
        "maximum": 137,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_7d0a1faabf2934ec1a75981a5ed4251017a666975174efca8be48c152a15fee8",
        "type": "uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse",
        "ros_version": 1,
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

REGISTRY.add(Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse);

