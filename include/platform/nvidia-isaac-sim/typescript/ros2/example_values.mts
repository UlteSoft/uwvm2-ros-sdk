/** @file example_values.mts @brief Construct every active original field from actual runtime input. */
import * as types from "nvidia-isaac-sim/typescript/ros2/complete/records";
/**
 * @brief Construct all active fields from one caller-provided uint32 seed.
 * @param seed Exact 0..4294967295 input, checked by the standalone command reader.
 * @return Complete owned record; no native operation or permission is requested.
 */
export function sample(seed: number): types.Ros2Sensor_msgsMsgJointState
{
    const value = types.Ros2Sensor_msgsMsgJointStateCodec.defaultValue();
    value.header.stamp.sec = -2;
    value.header.stamp.nanosec = seed % 1000000000;
    value.header.frame_id = "base";
    value.name = ["j0", "j1"];
    value.position = [seed % 41 / 16, seed % 41 / 16 + 1];
    value.velocity = [0, 1 / 32];
    value.effort = [seed % 23 / 4, seed % 23 / 4];
    return value;
}
