/** @file example_values.mts @brief Construct every active original field from actual runtime input. */
import * as types from "nvidia-groot/typescript/ros2/complete/records";
/**
 * @brief Construct all active fields from one caller-provided uint32 seed.
 * @param seed Exact 0..4294967295 input, checked by the standalone command reader.
 * @return Complete owned record; no native operation or permission is requested.
 */
export function sample(seed: number): types.Ros2Uwvm_groot_bridgeMsgFloatTensor
{
    const value = types.Ros2Uwvm_groot_bridgeMsgFloatTensorCodec.defaultValue();
    value.key = "state";
    value.shape = [1, 1, 3];
    value.values = Array.from({length: 3}, (_, index) => seed % 97 / 8 + index);
    return value;
}
