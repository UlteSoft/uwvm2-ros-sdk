/** @file main.mts
 * @brief Check the complete original kuka_driver_interfaces/msg/KssStatus using genuine TypeScript source.
 * @details Source candidate. Shared semantic checking, guest execution and native
 * acceptance are separate required receipts. This value example enables no ROS.
 */
import {
    Ros2Kuka_driver_interfacesMsgKssStatusCodec as codec
} from "kuka/typescript/ros2/kuka-ros2-complete/bounded_records";
import type {Ros2Kuka_driver_interfacesMsgKssStatus} from "kuka/typescript/ros2/kuka-ros2-complete/bounded_records";

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
    const value: Ros2Kuka_driver_interfacesMsgKssStatus = {
        "control_mode" : 136,
        "cycle_time" : 149,
        "drives_powered" : false,
        "emergency_stop" : true,
        "guard_stop" : false,
        "in_motion" : true,
        "motion_possible" : false,
        "operation_mode" : 227,
        "robot_stopped" : false,
    };
    const expected = new Uint8Array([
        136,
        149,
        0,
        1,
        0,
        1,
        0,
        227,
        0,
    ]);
    const encoded: Uint8Array = codec.encode(value);
    requireValue(encoded.length === expected.length, "independent byte length");
    for (let index = 0; index < expected.length; ++index)
    {
        requireValue(encoded[index] === expected[index], "independent byte offset " + index);
    }
    const decoded: Ros2Kuka_driver_interfacesMsgKssStatus = codec.decode(expected);
    requireValue(Object.is(decoded["control_mode"], 136), "decoded original field");
    requireValue(Object.is(decoded["cycle_time"], 149), "decoded original field");
    requireValue(Object.is(decoded["drives_powered"], false), "decoded original field");
    requireValue(Object.is(decoded["emergency_stop"], true), "decoded original field");
    requireValue(Object.is(decoded["guard_stop"], false), "decoded original field");
    requireValue(Object.is(decoded["in_motion"], true), "decoded original field");
    requireValue(Object.is(decoded["motion_possible"], false), "decoded original field");
    requireValue(Object.is(decoded["operation_mode"], 227), "decoded original field");
    requireValue(Object.is(decoded["robot_stopped"], false), "decoded original field");
    const trailing = new Uint8Array(expected.length + 1);
    trailing.set(expected);
    requireValue(!codec.valid(trailing), "trailing wire byte rejected");
}
{
    const value: Ros2Kuka_driver_interfacesMsgKssStatus = {
        "control_mode" : 155,
        "cycle_time" : 168,
        "drives_powered" : true,
        "emergency_stop" : false,
        "guard_stop" : true,
        "in_motion" : false,
        "motion_possible" : true,
        "operation_mode" : 246,
        "robot_stopped" : true,
    };
    const expected = new Uint8Array([
        155,
        168,
        1,
        0,
        1,
        0,
        1,
        246,
        1,
    ]);
    const encoded: Uint8Array = codec.encode(value);
    requireValue(encoded.length === expected.length, "independent byte length");
    for (let index = 0; index < expected.length; ++index)
    {
        requireValue(encoded[index] === expected[index], "independent byte offset " + index);
    }
    const decoded: Ros2Kuka_driver_interfacesMsgKssStatus = codec.decode(expected);
    requireValue(Object.is(decoded["control_mode"], 155), "decoded original field");
    requireValue(Object.is(decoded["cycle_time"], 168), "decoded original field");
    requireValue(Object.is(decoded["drives_powered"], true), "decoded original field");
    requireValue(Object.is(decoded["emergency_stop"], false), "decoded original field");
    requireValue(Object.is(decoded["guard_stop"], true), "decoded original field");
    requireValue(Object.is(decoded["in_motion"], false), "decoded original field");
    requireValue(Object.is(decoded["motion_possible"], true), "decoded original field");
    requireValue(Object.is(decoded["operation_mode"], 246), "decoded original field");
    requireValue(Object.is(decoded["robot_stopped"], true), "decoded original field");
    const trailing = new Uint8Array(expected.length + 1);
    trailing.set(expected);
    requireValue(!codec.valid(trailing), "trailing wire byte rejected");
}

__uwvm.output(JSON.stringify(
    {type : "kuka_driver_interfaces/msg/KssStatus", status : "PASS", denseCases : 2, directChecks : 18}));
