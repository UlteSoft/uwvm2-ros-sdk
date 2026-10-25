/** @file main.mts
 * @brief Check the complete original control_msgs/action/FollowJointTrajectory_Feedback using genuine TypeScript source.
 * @details Source candidate. Shared semantic checking, guest execution and native
 * acceptance are separate required receipts. This value example enables no ROS.
 */
import {
    Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec as codec
} from "kuka/typescript/ros2/kuka-ros2-complete/bounded_records";
import type {
    Ros2Control_msgsActionFollowJointTrajectory_Feedback} from
    "kuka/typescript/ros2/kuka-ros2-complete/bounded_records";

/**
 * @brief Require the independently expected field or wire observation.
 * @param condition Whether the complete observation agrees with its expected value.
 * @param description Name of the field or byte comparison for failure diagnostics.
 * @throws Error Before reporting success when the observation differs.
 */
function requireValue(condition: boolean, description: string): void
{
    if (!condition)
    {
        throw new Error(description);
    }
}

{
    const value: Ros2Control_msgsActionFollowJointTrajectory_Feedback = {
        "header" : {
            "stamp" : {
                "sec" : -1073742461,
                "nanosec" : 123457439,
            },
            "frame_id" : "v988λ",
        },
        "joint_names" : [
            "v656λ",
        ],
        "desired" : {
            "positions" : [
                1.0000000000000933,
            ],
            "velocities" : [
                1.0000000000000961,
            ],
            "accelerations" : [
                1.000000000000099,
            ],
            "effort" : [
                1.000000000000102,
            ],
            "time_from_start" : {
                "sec" : -1073741886,
                "nanosec" : 123456864,
            },
        },
        "actual" : {
            "positions" : [
                1.0000000000001423,
            ],
            "velocities" : [
                1.0000000000001452,
            ],
            "accelerations" : [
                1.000000000000148,
            ],
            "effort" : [
                1.000000000000151,
            ],
            "time_from_start" : {
                "sec" : -1073742652,
                "nanosec" : 123457630,
            },
        },
        "error" : {
            "positions" : [
                1.0000000000001914,
            ],
            "velocities" : [
                1.0000000000001943,
            ],
            "accelerations" : [
                1.0000000000001972,
            ],
            "effort" : [
                1.0000000000002,
            ],
            "time_from_start" : {
                "sec" : -1073742421,
                "nanosec" : 123457399,
            },
        },
        "multi_dof_joint_names" : [
            "v708λ",
        ],
        "multi_dof_desired" : {
            "transforms" : [
                {
                    "translation" : {
                        "x" : 1.0000000000000537,
                        "y" : 1.0000000000000566,
                        "z" : 1.0000000000000595,
                    },
                    "rotation" : {
                        "x" : 1.0000000000001028,
                        "y" : 1.0000000000001057,
                        "z" : 1.0000000000001086,
                        "w" : 1.0000000000001115,
                    },
                },
            ],
            "velocities" : [
                {
                    "linear" : {
                        "x" : 1.0000000000000024,
                        "y" : 1.0000000000000053,
                        "z" : 1.0000000000000082,
                    },
                    "angular" : {
                        "x" : 1.0000000000000515,
                        "y" : 1.0000000000000544,
                        "z" : 1.0000000000000573,
                    },
                },
            ],
            "accelerations" : [
                {
                    "linear" : {
                        "x" : 1.0000000000001725,
                        "y" : 1.0000000000001754,
                        "z" : 1.0000000000001783,
                    },
                    "angular" : {
                        "x" : 1.0000000000000002,
                        "y" : 1.000000000000003,
                        "z" : 1.000000000000006,
                    },
                },
            ],
            "time_from_start" : {
                "sec" : -1073742735,
                "nanosec" : 123457713,
            },
        },
        "multi_dof_actual" : {
            "transforms" : [
                {
                    "translation" : {
                        "x" : 1.0000000000000673,
                        "y" : 1.0000000000000702,
                        "z" : 1.000000000000073,
                    },
                    "rotation" : {
                        "x" : 1.0000000000001164,
                        "y" : 1.0000000000001192,
                        "z" : 1.0000000000001221,
                        "w" : 1.000000000000125,
                    },
                },
            ],
            "velocities" : [
                {
                    "linear" : {
                        "x" : 1.000000000000016,
                        "y" : 1.0000000000000189,
                        "z" : 1.0000000000000218,
                    },
                    "angular" : {
                        "x" : 1.000000000000065,
                        "y" : 1.000000000000068,
                        "z" : 1.0000000000000708,
                    },
                },
            ],
            "accelerations" : [
                {
                    "linear" : {
                        "x" : 1.000000000000186,
                        "y" : 1.000000000000189,
                        "z" : 1.0000000000001918,
                    },
                    "angular" : {
                        "x" : 1.0000000000000138,
                        "y" : 1.0000000000000167,
                        "z" : 1.0000000000000195,
                    },
                },
            ],
            "time_from_start" : {
                "sec" : -1073742504,
                "nanosec" : 123457482,
            },
        },
        "multi_dof_error" : {
            "transforms" : [
                {
                    "translation" : {
                        "x" : 1.0000000000000808,
                        "y" : 1.0000000000000837,
                        "z" : 1.0000000000000866,
                    },
                    "rotation" : {
                        "x" : 1.00000000000013,
                        "y" : 1.0000000000001328,
                        "z" : 1.0000000000001357,
                        "w" : 1.0000000000001386,
                    },
                },
            ],
            "velocities" : [
                {
                    "linear" : {
                        "x" : 1.0000000000000295,
                        "y" : 1.0000000000000324,
                        "z" : 1.0000000000000353,
                    },
                    "angular" : {
                        "x" : 1.0000000000000786,
                        "y" : 1.0000000000000815,
                        "z" : 1.0000000000000844,
                    },
                },
            ],
            "accelerations" : [
                {
                    "linear" : {
                        "x" : 1.0000000000001996,
                        "y" : 1.0000000000002025,
                        "z" : 1.0000000000002054,
                    },
                    "angular" : {
                        "x" : 1.0000000000000273,
                        "y" : 1.0000000000000302,
                        "z" : 1.000000000000033,
                    },
                },
            ],
            "time_from_start" : {
                "sec" : -1073742273,
                "nanosec" : 123457251,
            },
        },
    };
    const expected = new Uint8Array([
        131, 253, 255, 191, 159, 207, 91,  7,   6,   0,   0,   0,  118, 57, 56,  56,  206, 187, 1,   0,   0,   0,
        6,   0,   0,   0,   118, 54,  53,  54,  206, 187, 1,   0,  0,   0,  164, 1,   0,   0,   0,   0,   240, 63,
        1,   0,   0,   0,   177, 1,   0,   0,   0,   0,   240, 63, 1,   0,  0,   0,   190, 1,   0,   0,   0,   0,
        240, 63,  1,   0,   0,   0,   203, 1,   0,   0,   0,   0,  240, 63, 194, 255, 255, 191, 96,  205, 91,  7,
        1,   0,   0,   0,   129, 2,   0,   0,   0,   0,   240, 63, 1,   0,  0,   0,   142, 2,   0,   0,   0,   0,
        240, 63,  1,   0,   0,   0,   155, 2,   0,   0,   0,   0,  240, 63, 1,   0,   0,   0,   168, 2,   0,   0,
        0,   0,   240, 63,  196, 252, 255, 191, 94,  208, 91,  7,  1,   0,  0,   0,   94,  3,   0,   0,   0,   0,
        240, 63,  1,   0,   0,   0,   107, 3,   0,   0,   0,   0,  240, 63, 1,   0,   0,   0,   120, 3,   0,   0,
        0,   0,   240, 63,  1,   0,   0,   0,   133, 3,   0,   0,  0,   0,  240, 63,  171, 253, 255, 191, 119, 207,
        91,  7,   1,   0,   0,   0,   6,   0,   0,   0,   118, 55, 48,  56, 206, 187, 1,   0,   0,   0,   242, 0,
        0,   0,   0,   0,   240, 63,  255, 0,   0,   0,   0,   0,  240, 63, 12,  1,   0,   0,   0,   0,   240, 63,
        207, 1,   0,   0,   0,   0,   240, 63,  220, 1,   0,   0,  0,   0,  240, 63,  233, 1,   0,   0,   0,   0,
        240, 63,  246, 1,   0,   0,   0,   0,   240, 63,  1,   0,  0,   0,  11,  0,   0,   0,   0,   0,   240, 63,
        24,  0,   0,   0,   0,   0,   240, 63,  37,  0,   0,   0,  0,   0,  240, 63,  232, 0,   0,   0,   0,   0,
        240, 63,  245, 0,   0,   0,   0,   0,   240, 63,  2,   1,  0,   0,  0,   0,   240, 63,  1,   0,   0,   0,
        9,   3,   0,   0,   0,   0,   240, 63,  22,  3,   0,   0,  0,   0,  240, 63,  35,  3,   0,   0,   0,   0,
        240, 63,  1,   0,   0,   0,   0,   0,   240, 63,  14,  0,  0,   0,  0,   0,   240, 63,  27,  0,   0,   0,
        0,   0,   240, 63,  113, 252, 255, 191, 177, 208, 91,  7,  1,   0,  0,   0,   47,  1,   0,   0,   0,   0,
        240, 63,  60,  1,   0,   0,   0,   0,   240, 63,  73,  1,  0,   0,  0,   0,   240, 63,  12,  2,   0,   0,
        0,   0,   240, 63,  25,  2,   0,   0,   0,   0,   240, 63, 38,  2,  0,   0,   0,   0,   240, 63,  51,  2,
        0,   0,   0,   0,   240, 63,  1,   0,   0,   0,   72,  0,  0,   0,  0,   0,   240, 63,  85,  0,   0,   0,
        0,   0,   240, 63,  98,  0,   0,   0,   0,   0,   240, 63, 37,  1,  0,   0,   0,   0,   240, 63,  50,  1,
        0,   0,   0,   0,   240, 63,  63,  1,   0,   0,   0,   0,  240, 63, 1,   0,   0,   0,   70,  3,   0,   0,
        0,   0,   240, 63,  83,  3,   0,   0,   0,   0,   240, 63, 96,  3,  0,   0,   0,   0,   240, 63,  62,  0,
        0,   0,   0,   0,   240, 63,  75,  0,   0,   0,   0,   0,  240, 63, 88,  0,   0,   0,   0,   0,   240, 63,
        88,  253, 255, 191, 202, 207, 91,  7,   1,   0,   0,   0,  108, 1,  0,   0,   0,   0,   240, 63,  121, 1,
        0,   0,   0,   0,   240, 63,  134, 1,   0,   0,   0,   0,  240, 63, 73,  2,   0,   0,   0,   0,   240, 63,
        86,  2,   0,   0,   0,   0,   240, 63,  99,  2,   0,   0,  0,   0,  240, 63,  112, 2,   0,   0,   0,   0,
        240, 63,  1,   0,   0,   0,   133, 0,   0,   0,   0,   0,  240, 63, 146, 0,   0,   0,   0,   0,   240, 63,
        159, 0,   0,   0,   0,   0,   240, 63,  98,  1,   0,   0,  0,   0,  240, 63,  111, 1,   0,   0,   0,   0,
        240, 63,  124, 1,   0,   0,   0,   0,   240, 63,  1,   0,  0,   0,  131, 3,   0,   0,   0,   0,   240, 63,
        144, 3,   0,   0,   0,   0,   240, 63,  157, 3,   0,   0,  0,   0,  240, 63,  123, 0,   0,   0,   0,   0,
        240, 63,  136, 0,   0,   0,   0,   0,   240, 63,  149, 0,  0,   0,  0,   0,   240, 63,  63,  254, 255, 191,
        227, 206, 91,  7,
    ]);
    const encoded: Uint8Array = codec.encode(value);
    requireValue(encoded.length === expected.length, "independent byte length");
    for (let index = 0; index < expected.length; ++index)
    {
        requireValue(encoded[index] === expected[index], "independent byte offset " + index);
    }
    const decoded: Ros2Control_msgsActionFollowJointTrajectory_Feedback = codec.decode(expected);
    requireValue(Object.is(decoded["header"]["stamp"]["sec"], -1073742461), "decoded original field");
    requireValue(Object.is(decoded["header"]["stamp"]["nanosec"], 123457439), "decoded original field");
    requireValue(Object.is(decoded["header"]["frame_id"], "v988λ"), "decoded original field");
    requireValue(decoded["joint_names"].length === 1, "original array length");
    requireValue(Object.is(decoded["joint_names"][0], "v656λ"), "decoded original field");
    requireValue(decoded["desired"]["positions"].length === 1, "original array length");
    requireValue(Object.is(decoded["desired"]["positions"][0], 1.0000000000000933), "decoded original field");
    requireValue(decoded["desired"]["velocities"].length === 1, "original array length");
    requireValue(Object.is(decoded["desired"]["velocities"][0], 1.0000000000000961), "decoded original field");
    requireValue(decoded["desired"]["accelerations"].length === 1, "original array length");
    requireValue(Object.is(decoded["desired"]["accelerations"][0], 1.000000000000099), "decoded original field");
    requireValue(decoded["desired"]["effort"].length === 1, "original array length");
    requireValue(Object.is(decoded["desired"]["effort"][0], 1.000000000000102), "decoded original field");
    requireValue(Object.is(decoded["desired"]["time_from_start"]["sec"], -1073741886), "decoded original field");
    requireValue(Object.is(decoded["desired"]["time_from_start"]["nanosec"], 123456864), "decoded original field");
    requireValue(decoded["actual"]["positions"].length === 1, "original array length");
    requireValue(Object.is(decoded["actual"]["positions"][0], 1.0000000000001423), "decoded original field");
    requireValue(decoded["actual"]["velocities"].length === 1, "original array length");
    requireValue(Object.is(decoded["actual"]["velocities"][0], 1.0000000000001452), "decoded original field");
    requireValue(decoded["actual"]["accelerations"].length === 1, "original array length");
    requireValue(Object.is(decoded["actual"]["accelerations"][0], 1.000000000000148), "decoded original field");
    requireValue(decoded["actual"]["effort"].length === 1, "original array length");
    requireValue(Object.is(decoded["actual"]["effort"][0], 1.000000000000151), "decoded original field");
    requireValue(Object.is(decoded["actual"]["time_from_start"]["sec"], -1073742652), "decoded original field");
    requireValue(Object.is(decoded["actual"]["time_from_start"]["nanosec"], 123457630), "decoded original field");
    requireValue(decoded["error"]["positions"].length === 1, "original array length");
    requireValue(Object.is(decoded["error"]["positions"][0], 1.0000000000001914), "decoded original field");
    requireValue(decoded["error"]["velocities"].length === 1, "original array length");
    requireValue(Object.is(decoded["error"]["velocities"][0], 1.0000000000001943), "decoded original field");
    requireValue(decoded["error"]["accelerations"].length === 1, "original array length");
    requireValue(Object.is(decoded["error"]["accelerations"][0], 1.0000000000001972), "decoded original field");
    requireValue(decoded["error"]["effort"].length === 1, "original array length");
    requireValue(Object.is(decoded["error"]["effort"][0], 1.0000000000002), "decoded original field");
    requireValue(Object.is(decoded["error"]["time_from_start"]["sec"], -1073742421), "decoded original field");
    requireValue(Object.is(decoded["error"]["time_from_start"]["nanosec"], 123457399), "decoded original field");
    requireValue(decoded["multi_dof_joint_names"].length === 1, "original array length");
    requireValue(Object.is(decoded["multi_dof_joint_names"][0], "v708λ"), "decoded original field");
    requireValue(decoded["multi_dof_desired"]["transforms"].length === 1, "original array length");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][0]["translation"]["x"], 1.0000000000000537),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][0]["translation"]["y"], 1.0000000000000566),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][0]["translation"]["z"], 1.0000000000000595),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][0]["rotation"]["x"], 1.0000000000001028),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][0]["rotation"]["y"], 1.0000000000001057),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][0]["rotation"]["z"], 1.0000000000001086),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][0]["rotation"]["w"], 1.0000000000001115),
                 "decoded original field");
    requireValue(decoded["multi_dof_desired"]["velocities"].length === 1, "original array length");
    requireValue(Object.is(decoded["multi_dof_desired"]["velocities"][0]["linear"]["x"], 1.0000000000000024),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["velocities"][0]["linear"]["y"], 1.0000000000000053),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["velocities"][0]["linear"]["z"], 1.0000000000000082),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["velocities"][0]["angular"]["x"], 1.0000000000000515),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["velocities"][0]["angular"]["y"], 1.0000000000000544),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["velocities"][0]["angular"]["z"], 1.0000000000000573),
                 "decoded original field");
    requireValue(decoded["multi_dof_desired"]["accelerations"].length === 1, "original array length");
    requireValue(Object.is(decoded["multi_dof_desired"]["accelerations"][0]["linear"]["x"], 1.0000000000001725),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["accelerations"][0]["linear"]["y"], 1.0000000000001754),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["accelerations"][0]["linear"]["z"], 1.0000000000001783),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["accelerations"][0]["angular"]["x"], 1.0000000000000002),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["accelerations"][0]["angular"]["y"], 1.000000000000003),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["accelerations"][0]["angular"]["z"], 1.000000000000006),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["time_from_start"]["sec"], -1073742735),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["time_from_start"]["nanosec"], 123457713),
                 "decoded original field");
    requireValue(decoded["multi_dof_actual"]["transforms"].length === 1, "original array length");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][0]["translation"]["x"], 1.0000000000000673),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][0]["translation"]["y"], 1.0000000000000702),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][0]["translation"]["z"], 1.000000000000073),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][0]["rotation"]["x"], 1.0000000000001164),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][0]["rotation"]["y"], 1.0000000000001192),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][0]["rotation"]["z"], 1.0000000000001221),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][0]["rotation"]["w"], 1.000000000000125),
                 "decoded original field");
    requireValue(decoded["multi_dof_actual"]["velocities"].length === 1, "original array length");
    requireValue(Object.is(decoded["multi_dof_actual"]["velocities"][0]["linear"]["x"], 1.000000000000016),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["velocities"][0]["linear"]["y"], 1.0000000000000189),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["velocities"][0]["linear"]["z"], 1.0000000000000218),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["velocities"][0]["angular"]["x"], 1.000000000000065),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["velocities"][0]["angular"]["y"], 1.000000000000068),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["velocities"][0]["angular"]["z"], 1.0000000000000708),
                 "decoded original field");
    requireValue(decoded["multi_dof_actual"]["accelerations"].length === 1, "original array length");
    requireValue(Object.is(decoded["multi_dof_actual"]["accelerations"][0]["linear"]["x"], 1.000000000000186),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["accelerations"][0]["linear"]["y"], 1.000000000000189),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["accelerations"][0]["linear"]["z"], 1.0000000000001918),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["accelerations"][0]["angular"]["x"], 1.0000000000000138),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["accelerations"][0]["angular"]["y"], 1.0000000000000167),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["accelerations"][0]["angular"]["z"], 1.0000000000000195),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["time_from_start"]["sec"], -1073742504),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["time_from_start"]["nanosec"], 123457482),
                 "decoded original field");
    requireValue(decoded["multi_dof_error"]["transforms"].length === 1, "original array length");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][0]["translation"]["x"], 1.0000000000000808),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][0]["translation"]["y"], 1.0000000000000837),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][0]["translation"]["z"], 1.0000000000000866),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][0]["rotation"]["x"], 1.00000000000013),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][0]["rotation"]["y"], 1.0000000000001328),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][0]["rotation"]["z"], 1.0000000000001357),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][0]["rotation"]["w"], 1.0000000000001386),
                 "decoded original field");
    requireValue(decoded["multi_dof_error"]["velocities"].length === 1, "original array length");
    requireValue(Object.is(decoded["multi_dof_error"]["velocities"][0]["linear"]["x"], 1.0000000000000295),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["velocities"][0]["linear"]["y"], 1.0000000000000324),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["velocities"][0]["linear"]["z"], 1.0000000000000353),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["velocities"][0]["angular"]["x"], 1.0000000000000786),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["velocities"][0]["angular"]["y"], 1.0000000000000815),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["velocities"][0]["angular"]["z"], 1.0000000000000844),
                 "decoded original field");
    requireValue(decoded["multi_dof_error"]["accelerations"].length === 1, "original array length");
    requireValue(Object.is(decoded["multi_dof_error"]["accelerations"][0]["linear"]["x"], 1.0000000000001996),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["accelerations"][0]["linear"]["y"], 1.0000000000002025),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["accelerations"][0]["linear"]["z"], 1.0000000000002054),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["accelerations"][0]["angular"]["x"], 1.0000000000000273),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["accelerations"][0]["angular"]["y"], 1.0000000000000302),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["accelerations"][0]["angular"]["z"], 1.000000000000033),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["time_from_start"]["sec"], -1073742273),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["time_from_start"]["nanosec"], 123457251),
                 "decoded original field");
    const trailing = new Uint8Array(expected.length + 1);
    trailing.set(expected);
    requireValue(!codec.valid(trailing), "trailing wire byte rejected");
}
{
    const value: Ros2Control_msgsActionFollowJointTrajectory_Feedback = {
        "header" : {
            "stamp" : {
                "sec" : -1073743462,
                "nanosec" : 123457440,
            },
            "frame_id" : "v1989λ",
        },
        "joint_names" : [
            "v1657λ",
            "v1664λ",
        ],
        "desired" : {
            "positions" : [
                1.0000000000146454,
                1.000000000014647,
            ],
            "velocities" : [
                1.0000000000146483,
                1.0000000000146498,
            ],
            "accelerations" : [
                1.0000000000146512,
                1.0000000000146527,
            ],
            "effort" : [
                1.000000000014654,
                1.0000000000146556,
            ],
            "time_from_start" : {
                "sec" : -1073742887,
                "nanosec" : 123456865,
            },
        },
        "actual" : {
            "positions" : [
                1.0000000000146945,
                1.000000000014696,
            ],
            "velocities" : [
                1.0000000000146974,
                1.000000000014699,
            ],
            "accelerations" : [
                1.0000000000147002,
                1.0000000000147018,
            ],
            "effort" : [
                1.0000000000147031,
                1.0000000000147047,
            ],
            "time_from_start" : {
                "sec" : -1073743653,
                "nanosec" : 123457631,
            },
        },
        "error" : {
            "positions" : [
                1.0000000000147435,
                1.000000000014745,
            ],
            "velocities" : [
                1.0000000000147464,
                1.000000000014748,
            ],
            "accelerations" : [
                1.0000000000147493,
                1.0000000000147509,
            ],
            "effort" : [
                1.0000000000147522,
                1.0000000000147538,
            ],
            "time_from_start" : {
                "sec" : -1073743422,
                "nanosec" : 123457400,
            },
        },
        "multi_dof_joint_names" : [
            "v1709λ",
            "v1716λ",
        ],
        "multi_dof_desired" : {
            "transforms" : [
                {
                    "translation" : {
                        "x" : 1.0000000000146059,
                        "y" : 1.0000000000146088,
                        "z" : 1.0000000000146116,
                    },
                    "rotation" : {
                        "x" : 1.000000000014655,
                        "y" : 1.0000000000146578,
                        "z" : 1.0000000000146607,
                        "w" : 1.0000000000146636,
                    },
                },
                {
                    "translation" : {
                        "x" : 1.0000000000146123,
                        "y" : 1.0000000000146152,
                        "z" : 1.000000000014618,
                    },
                    "rotation" : {
                        "x" : 1.0000000000146614,
                        "y" : 1.0000000000146643,
                        "z" : 1.0000000000146672,
                        "w" : 1.00000000001467,
                    },
                },
            ],
            "velocities" : [
                {
                    "linear" : {
                        "x" : 1.0000000000145546,
                        "y" : 1.0000000000145575,
                        "z" : 1.0000000000145604,
                    },
                    "angular" : {
                        "x" : 1.0000000000146037,
                        "y" : 1.0000000000146065,
                        "z" : 1.0000000000146094,
                    },
                },
                {
                    "linear" : {
                        "x" : 1.000000000014561,
                        "y" : 1.000000000014564,
                        "z" : 1.0000000000145668,
                    },
                    "angular" : {
                        "x" : 1.00000000001461,
                        "y" : 1.000000000014613,
                        "z" : 1.0000000000146159,
                    },
                },
            ],
            "accelerations" : [
                {
                    "linear" : {
                        "x" : 1.0000000000147247,
                        "y" : 1.0000000000147276,
                        "z" : 1.0000000000147304,
                    },
                    "angular" : {
                        "x" : 1.0000000000145524,
                        "y" : 1.0000000000145552,
                        "z" : 1.0000000000145581,
                    },
                },
                {
                    "linear" : {
                        "x" : 1.000000000014731,
                        "y" : 1.000000000014734,
                        "z" : 1.0000000000147369,
                    },
                    "angular" : {
                        "x" : 1.0000000000145588,
                        "y" : 1.0000000000145617,
                        "z" : 1.0000000000145646,
                    },
                },
            ],
            "time_from_start" : {
                "sec" : -1073743736,
                "nanosec" : 123457714,
            },
        },
        "multi_dof_actual" : {
            "transforms" : [
                {
                    "translation" : {
                        "x" : 1.0000000000146194,
                        "y" : 1.0000000000146223,
                        "z" : 1.0000000000146252,
                    },
                    "rotation" : {
                        "x" : 1.0000000000146685,
                        "y" : 1.0000000000146714,
                        "z" : 1.0000000000146743,
                        "w" : 1.0000000000146771,
                    },
                },
                {
                    "translation" : {
                        "x" : 1.0000000000146259,
                        "y" : 1.0000000000146287,
                        "z" : 1.0000000000146316,
                    },
                    "rotation" : {
                        "x" : 1.000000000014675,
                        "y" : 1.0000000000146778,
                        "z" : 1.0000000000146807,
                        "w" : 1.0000000000146836,
                    },
                },
            ],
            "velocities" : [
                {
                    "linear" : {
                        "x" : 1.0000000000145681,
                        "y" : 1.000000000014571,
                        "z" : 1.000000000014574,
                    },
                    "angular" : {
                        "x" : 1.0000000000146172,
                        "y" : 1.00000000001462,
                        "z" : 1.000000000014623,
                    },
                },
                {
                    "linear" : {
                        "x" : 1.0000000000145746,
                        "y" : 1.0000000000145775,
                        "z" : 1.0000000000145803,
                    },
                    "angular" : {
                        "x" : 1.0000000000146236,
                        "y" : 1.0000000000146265,
                        "z" : 1.0000000000146294,
                    },
                },
            ],
            "accelerations" : [
                {
                    "linear" : {
                        "x" : 1.0000000000147382,
                        "y" : 1.000000000014741,
                        "z" : 1.000000000014744,
                    },
                    "angular" : {
                        "x" : 1.000000000014566,
                        "y" : 1.0000000000145688,
                        "z" : 1.0000000000145717,
                    },
                },
                {
                    "linear" : {
                        "x" : 1.0000000000147446,
                        "y" : 1.0000000000147475,
                        "z" : 1.0000000000147504,
                    },
                    "angular" : {
                        "x" : 1.0000000000145723,
                        "y" : 1.0000000000145752,
                        "z" : 1.0000000000145781,
                    },
                },
            ],
            "time_from_start" : {
                "sec" : -1073743505,
                "nanosec" : 123457483,
            },
        },
        "multi_dof_error" : {
            "transforms" : [
                {
                    "translation" : {
                        "x" : 1.000000000014633,
                        "y" : 1.0000000000146358,
                        "z" : 1.0000000000146387,
                    },
                    "rotation" : {
                        "x" : 1.000000000014682,
                        "y" : 1.000000000014685,
                        "z" : 1.0000000000146878,
                        "w" : 1.0000000000146907,
                    },
                },
                {
                    "translation" : {
                        "x" : 1.0000000000146394,
                        "y" : 1.0000000000146423,
                        "z" : 1.0000000000146452,
                    },
                    "rotation" : {
                        "x" : 1.0000000000146885,
                        "y" : 1.0000000000146914,
                        "z" : 1.0000000000146942,
                        "w" : 1.0000000000146971,
                    },
                },
            ],
            "velocities" : [
                {
                    "linear" : {
                        "x" : 1.0000000000145817,
                        "y" : 1.0000000000145846,
                        "z" : 1.0000000000145874,
                    },
                    "angular" : {
                        "x" : 1.0000000000146307,
                        "y" : 1.0000000000146336,
                        "z" : 1.0000000000146365,
                    },
                },
                {
                    "linear" : {
                        "x" : 1.000000000014588,
                        "y" : 1.000000000014591,
                        "z" : 1.0000000000145939,
                    },
                    "angular" : {
                        "x" : 1.0000000000146372,
                        "y" : 1.00000000001464,
                        "z" : 1.000000000014643,
                    },
                },
            ],
            "accelerations" : [
                {
                    "linear" : {
                        "x" : 1.0000000000147518,
                        "y" : 1.0000000000147546,
                        "z" : 1.0000000000147575,
                    },
                    "angular" : {
                        "x" : 1.0000000000145794,
                        "y" : 1.0000000000145823,
                        "z" : 1.0000000000145852,
                    },
                },
                {
                    "linear" : {
                        "x" : 1.0000000000147582,
                        "y" : 1.000000000014761,
                        "z" : 1.000000000014764,
                    },
                    "angular" : {
                        "x" : 1.0000000000145859,
                        "y" : 1.0000000000145888,
                        "z" : 1.0000000000145917,
                    },
                },
            ],
            "time_from_start" : {
                "sec" : -1073743274,
                "nanosec" : 123457252,
            },
        },
    };
    const expected = new Uint8Array([
        154, 249, 255, 191, 160, 207, 91,  7,   7,   0,   0,   0,   118, 49,  57,  56,  57,  206, 187, 2,   0,   0,
        0,   7,   0,   0,   0,   118, 49,  54,  53,  55,  206, 187, 7,   0,   0,   0,   118, 49,  54,  54,  52,  206,
        187, 2,   0,   0,   0,   165, 1,   1,   0,   0,   0,   240, 63,  172, 1,   1,   0,   0,   0,   240, 63,  2,
        0,   0,   0,   178, 1,   1,   0,   0,   0,   240, 63,  185, 1,   1,   0,   0,   0,   240, 63,  2,   0,   0,
        0,   191, 1,   1,   0,   0,   0,   240, 63,  198, 1,   1,   0,   0,   0,   240, 63,  2,   0,   0,   0,   204,
        1,   1,   0,   0,   0,   240, 63,  211, 1,   1,   0,   0,   0,   240, 63,  217, 251, 255, 191, 97,  205, 91,
        7,   2,   0,   0,   0,   130, 2,   1,   0,   0,   0,   240, 63,  137, 2,   1,   0,   0,   0,   240, 63,  2,
        0,   0,   0,   143, 2,   1,   0,   0,   0,   240, 63,  150, 2,   1,   0,   0,   0,   240, 63,  2,   0,   0,
        0,   156, 2,   1,   0,   0,   0,   240, 63,  163, 2,   1,   0,   0,   0,   240, 63,  2,   0,   0,   0,   169,
        2,   1,   0,   0,   0,   240, 63,  176, 2,   1,   0,   0,   0,   240, 63,  219, 248, 255, 191, 95,  208, 91,
        7,   2,   0,   0,   0,   95,  3,   1,   0,   0,   0,   240, 63,  102, 3,   1,   0,   0,   0,   240, 63,  2,
        0,   0,   0,   108, 3,   1,   0,   0,   0,   240, 63,  115, 3,   1,   0,   0,   0,   240, 63,  2,   0,   0,
        0,   121, 3,   1,   0,   0,   0,   240, 63,  128, 3,   1,   0,   0,   0,   240, 63,  2,   0,   0,   0,   134,
        3,   1,   0,   0,   0,   240, 63,  141, 3,   1,   0,   0,   0,   240, 63,  194, 249, 255, 191, 120, 207, 91,
        7,   2,   0,   0,   0,   7,   0,   0,   0,   118, 49,  55,  48,  57,  206, 187, 7,   0,   0,   0,   118, 49,
        55,  49,  54,  206, 187, 2,   0,   0,   0,   243, 0,   1,   0,   0,   0,   240, 63,  0,   1,   1,   0,   0,
        0,   240, 63,  13,  1,   1,   0,   0,   0,   240, 63,  208, 1,   1,   0,   0,   0,   240, 63,  221, 1,   1,
        0,   0,   0,   240, 63,  234, 1,   1,   0,   0,   0,   240, 63,  247, 1,   1,   0,   0,   0,   240, 63,  16,
        1,   1,   0,   0,   0,   240, 63,  29,  1,   1,   0,   0,   0,   240, 63,  42,  1,   1,   0,   0,   0,   240,
        63,  237, 1,   1,   0,   0,   0,   240, 63,  250, 1,   1,   0,   0,   0,   240, 63,  7,   2,   1,   0,   0,
        0,   240, 63,  20,  2,   1,   0,   0,   0,   240, 63,  2,   0,   0,   0,   12,  0,   1,   0,   0,   0,   240,
        63,  25,  0,   1,   0,   0,   0,   240, 63,  38,  0,   1,   0,   0,   0,   240, 63,  233, 0,   1,   0,   0,
        0,   240, 63,  246, 0,   1,   0,   0,   0,   240, 63,  3,   1,   1,   0,   0,   0,   240, 63,  41,  0,   1,
        0,   0,   0,   240, 63,  54,  0,   1,   0,   0,   0,   240, 63,  67,  0,   1,   0,   0,   0,   240, 63,  6,
        1,   1,   0,   0,   0,   240, 63,  19,  1,   1,   0,   0,   0,   240, 63,  32,  1,   1,   0,   0,   0,   240,
        63,  2,   0,   0,   0,   10,  3,   1,   0,   0,   0,   240, 63,  23,  3,   1,   0,   0,   0,   240, 63,  36,
        3,   1,   0,   0,   0,   240, 63,  2,   0,   1,   0,   0,   0,   240, 63,  15,  0,   1,   0,   0,   0,   240,
        63,  28,  0,   1,   0,   0,   0,   240, 63,  39,  3,   1,   0,   0,   0,   240, 63,  52,  3,   1,   0,   0,
        0,   240, 63,  65,  3,   1,   0,   0,   0,   240, 63,  31,  0,   1,   0,   0,   0,   240, 63,  44,  0,   1,
        0,   0,   0,   240, 63,  57,  0,   1,   0,   0,   0,   240, 63,  136, 248, 255, 191, 178, 208, 91,  7,   2,
        0,   0,   0,   48,  1,   1,   0,   0,   0,   240, 63,  61,  1,   1,   0,   0,   0,   240, 63,  74,  1,   1,
        0,   0,   0,   240, 63,  13,  2,   1,   0,   0,   0,   240, 63,  26,  2,   1,   0,   0,   0,   240, 63,  39,
        2,   1,   0,   0,   0,   240, 63,  52,  2,   1,   0,   0,   0,   240, 63,  77,  1,   1,   0,   0,   0,   240,
        63,  90,  1,   1,   0,   0,   0,   240, 63,  103, 1,   1,   0,   0,   0,   240, 63,  42,  2,   1,   0,   0,
        0,   240, 63,  55,  2,   1,   0,   0,   0,   240, 63,  68,  2,   1,   0,   0,   0,   240, 63,  81,  2,   1,
        0,   0,   0,   240, 63,  2,   0,   0,   0,   73,  0,   1,   0,   0,   0,   240, 63,  86,  0,   1,   0,   0,
        0,   240, 63,  99,  0,   1,   0,   0,   0,   240, 63,  38,  1,   1,   0,   0,   0,   240, 63,  51,  1,   1,
        0,   0,   0,   240, 63,  64,  1,   1,   0,   0,   0,   240, 63,  102, 0,   1,   0,   0,   0,   240, 63,  115,
        0,   1,   0,   0,   0,   240, 63,  128, 0,   1,   0,   0,   0,   240, 63,  67,  1,   1,   0,   0,   0,   240,
        63,  80,  1,   1,   0,   0,   0,   240, 63,  93,  1,   1,   0,   0,   0,   240, 63,  2,   0,   0,   0,   71,
        3,   1,   0,   0,   0,   240, 63,  84,  3,   1,   0,   0,   0,   240, 63,  97,  3,   1,   0,   0,   0,   240,
        63,  63,  0,   1,   0,   0,   0,   240, 63,  76,  0,   1,   0,   0,   0,   240, 63,  89,  0,   1,   0,   0,
        0,   240, 63,  100, 3,   1,   0,   0,   0,   240, 63,  113, 3,   1,   0,   0,   0,   240, 63,  126, 3,   1,
        0,   0,   0,   240, 63,  92,  0,   1,   0,   0,   0,   240, 63,  105, 0,   1,   0,   0,   0,   240, 63,  118,
        0,   1,   0,   0,   0,   240, 63,  111, 249, 255, 191, 203, 207, 91,  7,   2,   0,   0,   0,   109, 1,   1,
        0,   0,   0,   240, 63,  122, 1,   1,   0,   0,   0,   240, 63,  135, 1,   1,   0,   0,   0,   240, 63,  74,
        2,   1,   0,   0,   0,   240, 63,  87,  2,   1,   0,   0,   0,   240, 63,  100, 2,   1,   0,   0,   0,   240,
        63,  113, 2,   1,   0,   0,   0,   240, 63,  138, 1,   1,   0,   0,   0,   240, 63,  151, 1,   1,   0,   0,
        0,   240, 63,  164, 1,   1,   0,   0,   0,   240, 63,  103, 2,   1,   0,   0,   0,   240, 63,  116, 2,   1,
        0,   0,   0,   240, 63,  129, 2,   1,   0,   0,   0,   240, 63,  142, 2,   1,   0,   0,   0,   240, 63,  2,
        0,   0,   0,   134, 0,   1,   0,   0,   0,   240, 63,  147, 0,   1,   0,   0,   0,   240, 63,  160, 0,   1,
        0,   0,   0,   240, 63,  99,  1,   1,   0,   0,   0,   240, 63,  112, 1,   1,   0,   0,   0,   240, 63,  125,
        1,   1,   0,   0,   0,   240, 63,  163, 0,   1,   0,   0,   0,   240, 63,  176, 0,   1,   0,   0,   0,   240,
        63,  189, 0,   1,   0,   0,   0,   240, 63,  128, 1,   1,   0,   0,   0,   240, 63,  141, 1,   1,   0,   0,
        0,   240, 63,  154, 1,   1,   0,   0,   0,   240, 63,  2,   0,   0,   0,   132, 3,   1,   0,   0,   0,   240,
        63,  145, 3,   1,   0,   0,   0,   240, 63,  158, 3,   1,   0,   0,   0,   240, 63,  124, 0,   1,   0,   0,
        0,   240, 63,  137, 0,   1,   0,   0,   0,   240, 63,  150, 0,   1,   0,   0,   0,   240, 63,  161, 3,   1,
        0,   0,   0,   240, 63,  174, 3,   1,   0,   0,   0,   240, 63,  187, 3,   1,   0,   0,   0,   240, 63,  153,
        0,   1,   0,   0,   0,   240, 63,  166, 0,   1,   0,   0,   0,   240, 63,  179, 0,   1,   0,   0,   0,   240,
        63,  86,  250, 255, 191, 228, 206, 91,  7,
    ]);
    const encoded: Uint8Array = codec.encode(value);
    requireValue(encoded.length === expected.length, "independent byte length");
    for (let index = 0; index < expected.length; ++index)
    {
        requireValue(encoded[index] === expected[index], "independent byte offset " + index);
    }
    const decoded: Ros2Control_msgsActionFollowJointTrajectory_Feedback = codec.decode(expected);
    requireValue(Object.is(decoded["header"]["stamp"]["sec"], -1073743462), "decoded original field");
    requireValue(Object.is(decoded["header"]["stamp"]["nanosec"], 123457440), "decoded original field");
    requireValue(Object.is(decoded["header"]["frame_id"], "v1989λ"), "decoded original field");
    requireValue(decoded["joint_names"].length === 2, "original array length");
    requireValue(Object.is(decoded["joint_names"][0], "v1657λ"), "decoded original field");
    requireValue(Object.is(decoded["joint_names"][1], "v1664λ"), "decoded original field");
    requireValue(decoded["desired"]["positions"].length === 2, "original array length");
    requireValue(Object.is(decoded["desired"]["positions"][0], 1.0000000000146454), "decoded original field");
    requireValue(Object.is(decoded["desired"]["positions"][1], 1.000000000014647), "decoded original field");
    requireValue(decoded["desired"]["velocities"].length === 2, "original array length");
    requireValue(Object.is(decoded["desired"]["velocities"][0], 1.0000000000146483), "decoded original field");
    requireValue(Object.is(decoded["desired"]["velocities"][1], 1.0000000000146498), "decoded original field");
    requireValue(decoded["desired"]["accelerations"].length === 2, "original array length");
    requireValue(Object.is(decoded["desired"]["accelerations"][0], 1.0000000000146512), "decoded original field");
    requireValue(Object.is(decoded["desired"]["accelerations"][1], 1.0000000000146527), "decoded original field");
    requireValue(decoded["desired"]["effort"].length === 2, "original array length");
    requireValue(Object.is(decoded["desired"]["effort"][0], 1.000000000014654), "decoded original field");
    requireValue(Object.is(decoded["desired"]["effort"][1], 1.0000000000146556), "decoded original field");
    requireValue(Object.is(decoded["desired"]["time_from_start"]["sec"], -1073742887), "decoded original field");
    requireValue(Object.is(decoded["desired"]["time_from_start"]["nanosec"], 123456865), "decoded original field");
    requireValue(decoded["actual"]["positions"].length === 2, "original array length");
    requireValue(Object.is(decoded["actual"]["positions"][0], 1.0000000000146945), "decoded original field");
    requireValue(Object.is(decoded["actual"]["positions"][1], 1.000000000014696), "decoded original field");
    requireValue(decoded["actual"]["velocities"].length === 2, "original array length");
    requireValue(Object.is(decoded["actual"]["velocities"][0], 1.0000000000146974), "decoded original field");
    requireValue(Object.is(decoded["actual"]["velocities"][1], 1.000000000014699), "decoded original field");
    requireValue(decoded["actual"]["accelerations"].length === 2, "original array length");
    requireValue(Object.is(decoded["actual"]["accelerations"][0], 1.0000000000147002), "decoded original field");
    requireValue(Object.is(decoded["actual"]["accelerations"][1], 1.0000000000147018), "decoded original field");
    requireValue(decoded["actual"]["effort"].length === 2, "original array length");
    requireValue(Object.is(decoded["actual"]["effort"][0], 1.0000000000147031), "decoded original field");
    requireValue(Object.is(decoded["actual"]["effort"][1], 1.0000000000147047), "decoded original field");
    requireValue(Object.is(decoded["actual"]["time_from_start"]["sec"], -1073743653), "decoded original field");
    requireValue(Object.is(decoded["actual"]["time_from_start"]["nanosec"], 123457631), "decoded original field");
    requireValue(decoded["error"]["positions"].length === 2, "original array length");
    requireValue(Object.is(decoded["error"]["positions"][0], 1.0000000000147435), "decoded original field");
    requireValue(Object.is(decoded["error"]["positions"][1], 1.000000000014745), "decoded original field");
    requireValue(decoded["error"]["velocities"].length === 2, "original array length");
    requireValue(Object.is(decoded["error"]["velocities"][0], 1.0000000000147464), "decoded original field");
    requireValue(Object.is(decoded["error"]["velocities"][1], 1.000000000014748), "decoded original field");
    requireValue(decoded["error"]["accelerations"].length === 2, "original array length");
    requireValue(Object.is(decoded["error"]["accelerations"][0], 1.0000000000147493), "decoded original field");
    requireValue(Object.is(decoded["error"]["accelerations"][1], 1.0000000000147509), "decoded original field");
    requireValue(decoded["error"]["effort"].length === 2, "original array length");
    requireValue(Object.is(decoded["error"]["effort"][0], 1.0000000000147522), "decoded original field");
    requireValue(Object.is(decoded["error"]["effort"][1], 1.0000000000147538), "decoded original field");
    requireValue(Object.is(decoded["error"]["time_from_start"]["sec"], -1073743422), "decoded original field");
    requireValue(Object.is(decoded["error"]["time_from_start"]["nanosec"], 123457400), "decoded original field");
    requireValue(decoded["multi_dof_joint_names"].length === 2, "original array length");
    requireValue(Object.is(decoded["multi_dof_joint_names"][0], "v1709λ"), "decoded original field");
    requireValue(Object.is(decoded["multi_dof_joint_names"][1], "v1716λ"), "decoded original field");
    requireValue(decoded["multi_dof_desired"]["transforms"].length === 2, "original array length");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][0]["translation"]["x"], 1.0000000000146059),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][0]["translation"]["y"], 1.0000000000146088),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][0]["translation"]["z"], 1.0000000000146116),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][0]["rotation"]["x"], 1.000000000014655),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][0]["rotation"]["y"], 1.0000000000146578),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][0]["rotation"]["z"], 1.0000000000146607),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][0]["rotation"]["w"], 1.0000000000146636),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][1]["translation"]["x"], 1.0000000000146123),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][1]["translation"]["y"], 1.0000000000146152),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][1]["translation"]["z"], 1.000000000014618),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][1]["rotation"]["x"], 1.0000000000146614),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][1]["rotation"]["y"], 1.0000000000146643),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][1]["rotation"]["z"], 1.0000000000146672),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["transforms"][1]["rotation"]["w"], 1.00000000001467),
                 "decoded original field");
    requireValue(decoded["multi_dof_desired"]["velocities"].length === 2, "original array length");
    requireValue(Object.is(decoded["multi_dof_desired"]["velocities"][0]["linear"]["x"], 1.0000000000145546),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["velocities"][0]["linear"]["y"], 1.0000000000145575),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["velocities"][0]["linear"]["z"], 1.0000000000145604),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["velocities"][0]["angular"]["x"], 1.0000000000146037),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["velocities"][0]["angular"]["y"], 1.0000000000146065),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["velocities"][0]["angular"]["z"], 1.0000000000146094),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["velocities"][1]["linear"]["x"], 1.000000000014561),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["velocities"][1]["linear"]["y"], 1.000000000014564),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["velocities"][1]["linear"]["z"], 1.0000000000145668),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["velocities"][1]["angular"]["x"], 1.00000000001461),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["velocities"][1]["angular"]["y"], 1.000000000014613),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["velocities"][1]["angular"]["z"], 1.0000000000146159),
                 "decoded original field");
    requireValue(decoded["multi_dof_desired"]["accelerations"].length === 2, "original array length");
    requireValue(Object.is(decoded["multi_dof_desired"]["accelerations"][0]["linear"]["x"], 1.0000000000147247),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["accelerations"][0]["linear"]["y"], 1.0000000000147276),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["accelerations"][0]["linear"]["z"], 1.0000000000147304),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["accelerations"][0]["angular"]["x"], 1.0000000000145524),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["accelerations"][0]["angular"]["y"], 1.0000000000145552),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["accelerations"][0]["angular"]["z"], 1.0000000000145581),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["accelerations"][1]["linear"]["x"], 1.000000000014731),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["accelerations"][1]["linear"]["y"], 1.000000000014734),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["accelerations"][1]["linear"]["z"], 1.0000000000147369),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["accelerations"][1]["angular"]["x"], 1.0000000000145588),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["accelerations"][1]["angular"]["y"], 1.0000000000145617),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["accelerations"][1]["angular"]["z"], 1.0000000000145646),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["time_from_start"]["sec"], -1073743736),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_desired"]["time_from_start"]["nanosec"], 123457714),
                 "decoded original field");
    requireValue(decoded["multi_dof_actual"]["transforms"].length === 2, "original array length");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][0]["translation"]["x"], 1.0000000000146194),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][0]["translation"]["y"], 1.0000000000146223),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][0]["translation"]["z"], 1.0000000000146252),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][0]["rotation"]["x"], 1.0000000000146685),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][0]["rotation"]["y"], 1.0000000000146714),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][0]["rotation"]["z"], 1.0000000000146743),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][0]["rotation"]["w"], 1.0000000000146771),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][1]["translation"]["x"], 1.0000000000146259),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][1]["translation"]["y"], 1.0000000000146287),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][1]["translation"]["z"], 1.0000000000146316),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][1]["rotation"]["x"], 1.000000000014675),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][1]["rotation"]["y"], 1.0000000000146778),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][1]["rotation"]["z"], 1.0000000000146807),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["transforms"][1]["rotation"]["w"], 1.0000000000146836),
                 "decoded original field");
    requireValue(decoded["multi_dof_actual"]["velocities"].length === 2, "original array length");
    requireValue(Object.is(decoded["multi_dof_actual"]["velocities"][0]["linear"]["x"], 1.0000000000145681),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["velocities"][0]["linear"]["y"], 1.000000000014571),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["velocities"][0]["linear"]["z"], 1.000000000014574),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["velocities"][0]["angular"]["x"], 1.0000000000146172),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["velocities"][0]["angular"]["y"], 1.00000000001462),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["velocities"][0]["angular"]["z"], 1.000000000014623),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["velocities"][1]["linear"]["x"], 1.0000000000145746),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["velocities"][1]["linear"]["y"], 1.0000000000145775),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["velocities"][1]["linear"]["z"], 1.0000000000145803),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["velocities"][1]["angular"]["x"], 1.0000000000146236),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["velocities"][1]["angular"]["y"], 1.0000000000146265),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["velocities"][1]["angular"]["z"], 1.0000000000146294),
                 "decoded original field");
    requireValue(decoded["multi_dof_actual"]["accelerations"].length === 2, "original array length");
    requireValue(Object.is(decoded["multi_dof_actual"]["accelerations"][0]["linear"]["x"], 1.0000000000147382),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["accelerations"][0]["linear"]["y"], 1.000000000014741),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["accelerations"][0]["linear"]["z"], 1.000000000014744),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["accelerations"][0]["angular"]["x"], 1.000000000014566),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["accelerations"][0]["angular"]["y"], 1.0000000000145688),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["accelerations"][0]["angular"]["z"], 1.0000000000145717),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["accelerations"][1]["linear"]["x"], 1.0000000000147446),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["accelerations"][1]["linear"]["y"], 1.0000000000147475),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["accelerations"][1]["linear"]["z"], 1.0000000000147504),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["accelerations"][1]["angular"]["x"], 1.0000000000145723),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["accelerations"][1]["angular"]["y"], 1.0000000000145752),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["accelerations"][1]["angular"]["z"], 1.0000000000145781),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["time_from_start"]["sec"], -1073743505),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_actual"]["time_from_start"]["nanosec"], 123457483),
                 "decoded original field");
    requireValue(decoded["multi_dof_error"]["transforms"].length === 2, "original array length");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][0]["translation"]["x"], 1.000000000014633),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][0]["translation"]["y"], 1.0000000000146358),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][0]["translation"]["z"], 1.0000000000146387),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][0]["rotation"]["x"], 1.000000000014682),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][0]["rotation"]["y"], 1.000000000014685),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][0]["rotation"]["z"], 1.0000000000146878),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][0]["rotation"]["w"], 1.0000000000146907),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][1]["translation"]["x"], 1.0000000000146394),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][1]["translation"]["y"], 1.0000000000146423),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][1]["translation"]["z"], 1.0000000000146452),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][1]["rotation"]["x"], 1.0000000000146885),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][1]["rotation"]["y"], 1.0000000000146914),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][1]["rotation"]["z"], 1.0000000000146942),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["transforms"][1]["rotation"]["w"], 1.0000000000146971),
                 "decoded original field");
    requireValue(decoded["multi_dof_error"]["velocities"].length === 2, "original array length");
    requireValue(Object.is(decoded["multi_dof_error"]["velocities"][0]["linear"]["x"], 1.0000000000145817),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["velocities"][0]["linear"]["y"], 1.0000000000145846),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["velocities"][0]["linear"]["z"], 1.0000000000145874),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["velocities"][0]["angular"]["x"], 1.0000000000146307),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["velocities"][0]["angular"]["y"], 1.0000000000146336),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["velocities"][0]["angular"]["z"], 1.0000000000146365),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["velocities"][1]["linear"]["x"], 1.000000000014588),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["velocities"][1]["linear"]["y"], 1.000000000014591),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["velocities"][1]["linear"]["z"], 1.0000000000145939),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["velocities"][1]["angular"]["x"], 1.0000000000146372),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["velocities"][1]["angular"]["y"], 1.00000000001464),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["velocities"][1]["angular"]["z"], 1.000000000014643),
                 "decoded original field");
    requireValue(decoded["multi_dof_error"]["accelerations"].length === 2, "original array length");
    requireValue(Object.is(decoded["multi_dof_error"]["accelerations"][0]["linear"]["x"], 1.0000000000147518),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["accelerations"][0]["linear"]["y"], 1.0000000000147546),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["accelerations"][0]["linear"]["z"], 1.0000000000147575),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["accelerations"][0]["angular"]["x"], 1.0000000000145794),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["accelerations"][0]["angular"]["y"], 1.0000000000145823),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["accelerations"][0]["angular"]["z"], 1.0000000000145852),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["accelerations"][1]["linear"]["x"], 1.0000000000147582),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["accelerations"][1]["linear"]["y"], 1.000000000014761),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["accelerations"][1]["linear"]["z"], 1.000000000014764),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["accelerations"][1]["angular"]["x"], 1.0000000000145859),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["accelerations"][1]["angular"]["y"], 1.0000000000145888),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["accelerations"][1]["angular"]["z"], 1.0000000000145917),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["time_from_start"]["sec"], -1073743274),
                 "decoded original field");
    requireValue(Object.is(decoded["multi_dof_error"]["time_from_start"]["nanosec"], 123457252),
                 "decoded original field");
    const trailing = new Uint8Array(expected.length + 1);
    trailing.set(expected);
    requireValue(!codec.valid(trailing), "trailing wire byte rejected");
}

__uwvm.output(JSON.stringify({
    type : "control_msgs/action/FollowJointTrajectory_Feedback",
    status : "PASS",
    denseCases : 2,
    directChecks : 289
}));
