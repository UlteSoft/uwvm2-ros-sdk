/** @file main.mts
 * @brief Check the complete original lifecycle_msgs/srv/ChangeState_Response using genuine TypeScript source.
 * @details Source candidate. Shared semantic checking, guest execution and native
 * acceptance are separate required receipts. This value example enables no ROS.
 */
import {
    Ros2Lifecycle_msgsSrvChangeState_ResponseCodec as codec
} from "kuka/typescript/ros2/kuka-ros2-complete/bounded_records";
import type {Ros2Lifecycle_msgsSrvChangeState_Response} from "kuka/typescript/ros2/kuka-ros2-complete/bounded_records";

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
    const value: Ros2Lifecycle_msgsSrvChangeState_Response = {
        "success" : false,
    };
    const expected = new Uint8Array([
        0,
    ]);
    const encoded: Uint8Array = codec.encode(value);
    requireValue(encoded.length === expected.length, "independent byte length");
    for (let index = 0; index < expected.length; ++index)
    {
        requireValue(encoded[index] === expected[index], "independent byte offset " + index);
    }
    const decoded: Ros2Lifecycle_msgsSrvChangeState_Response = codec.decode(expected);
    requireValue(Object.is(decoded["success"], false), "decoded original field");
    const trailing = new Uint8Array(expected.length + 1);
    trailing.set(expected);
    requireValue(!codec.valid(trailing), "trailing wire byte rejected");
}
{
    const value: Ros2Lifecycle_msgsSrvChangeState_Response = {
        "success" : true,
    };
    const expected = new Uint8Array([
        1,
    ]);
    const encoded: Uint8Array = codec.encode(value);
    requireValue(encoded.length === expected.length, "independent byte length");
    for (let index = 0; index < expected.length; ++index)
    {
        requireValue(encoded[index] === expected[index], "independent byte offset " + index);
    }
    const decoded: Ros2Lifecycle_msgsSrvChangeState_Response = codec.decode(expected);
    requireValue(Object.is(decoded["success"], true), "decoded original field");
    const trailing = new Uint8Array(expected.length + 1);
    trailing.set(expected);
    requireValue(!codec.valid(trailing), "trailing wire byte rejected");
}

__uwvm.output(JSON.stringify(
    {type : "lifecycle_msgs/srv/ChangeState_Response", status : "PASS", denseCases : 2, directChecks : 2}));
