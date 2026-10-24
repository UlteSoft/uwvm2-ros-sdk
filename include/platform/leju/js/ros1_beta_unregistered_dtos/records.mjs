/**
 * @file records.mjs
 * @brief All original records over the shared genuine JavaScript codec.
 * @details No native resource or permission is acquired by a schema.
 */
import {Record, Registry} from "ros/js/wire";

export const REGISTRY = new Registry();

/** @brief Complete kuavo_sdk/qv owning value. */
export class Ros1Kuavo_sdkQv extends Record
{
    static schema = {
        "minimum" : 4,
        "maximum": 132,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32",
        "type": "kuavo_sdk/qv",
        "ros_version": 1,
        "fields": [ {
            "name" : "value",
            "type": "float64",
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
            "element_minimum": 8
        } ]
    };
}

REGISTRY.add(Ros1Kuavo_sdkQv);

/** @brief Complete kuavo_sdk/fullBodyTargetTrajectories owning value. */
export class Ros1Kuavo_sdkFullBodyTargetTrajectories extends Record
{
    static schema = {
        "minimum" : 16,
        "maximum": 2320,
        "semantics": "",
        "native_identity": null,
        "codec_identity": "UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32",
        "type": "kuavo_sdk/fullBodyTargetTrajectories",
        "ros_version": 1,
        "fields":
            [
                {
                    "name" : "timeTrajectory",
                    "type": "float64",
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
                    "element_minimum": 8
                },
                {
                    "name" : "footIndexTrajectory",
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
                },
                {
                    "name" : "fullBodyQTrajectory",
                    "type": "kuavo_sdk/qv",
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
                    "element_minimum": 4
                },
                {
                    "name" : "fullBodyVTrajectory",
                    "type": "kuavo_sdk/qv",
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
                    "element_minimum": 4
                }
            ]
    };
}

REGISTRY.add(Ros1Kuavo_sdkFullBodyTargetTrajectories);

