/**
 * @file main.mts
 * @brief Actual TypeScript roundtrip using complete original NVIDIA records.
 * @details Source-only until genuine semantic checking, emitted JS and guest receipts exist.
 */
import * as types from "nvidia-groot/typescript/ros2/complete/records";
import {sample} from "nvidia-groot/typescript/ros2/example_values";
import type {CanonicalCodec} from "nvidia/typescript/codec";
import {equalBytes, expectInvalid, readHex, readSeed, runGuest, writeWire} from "nvidia/typescript/stdio";
const codec = types.Ros2Uwvm_groot_bridgeMsgFloatTensorCodec;
runGuest((): number => {
    const seed = readSeed();
    const value = sample(seed);
    const wire = codec.encode(value);
    if(!equalBytes(wire, codec.encode(codec.decode(wire))))
    {
        throw new Error("full original round trip failed");
    }
    return writeWire(wire);
});
