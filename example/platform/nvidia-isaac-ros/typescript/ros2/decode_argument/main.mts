/**
 * @file main.mts
 * @brief Actual TypeScript decode_argument using complete original NVIDIA records.
 * @details Source-only until genuine semantic checking, emitted JS and guest receipts exist.
 */
import * as types from "nvidia-isaac-ros/typescript/ros2/complete/records";
import {sample} from "nvidia-isaac-ros/typescript/ros2/example_values";
import type {CanonicalCodec} from "nvidia/typescript/codec";
import {equalBytes, expectInvalid, readHex, readSeed, runGuest, writeWire} from "nvidia/typescript/stdio";
const codec = types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec;
runGuest((): number => {
    const wire = readHex(codec.maxWireBytes);
    const value = codec.decode(wire);
    const again = codec.encode(value);
    if(!equalBytes(wire, again))
    {
        throw new Error("complete byte equality failed");
    }
    return writeWire(again);
});
