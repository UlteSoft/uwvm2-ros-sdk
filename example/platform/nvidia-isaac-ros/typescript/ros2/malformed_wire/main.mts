/**
 * @file main.mts
 * @brief Actual TypeScript malformed_wire using complete original NVIDIA records.
 * @details Source-only until genuine semantic checking, emitted JS and guest receipts exist.
 */
import * as types from "nvidia-isaac-ros/typescript/ros2/complete/records";
import {sample} from "nvidia-isaac-ros/typescript/ros2/example_values";
import type {CanonicalCodec} from "nvidia/typescript/codec";
import {equalBytes, expectInvalid, readHex, readSeed, runGuest, writeWire} from "nvidia/typescript/stdio";
const codec = types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec;
runGuest((): number => {
    const seed = readSeed();
    const value = sample(seed);
    const wire = codec.encode(value);
    if(!equalBytes(wire, codec.encode(codec.decode(wire))))
    {
        throw new Error("full original round trip failed");
    }
    const before = wire.slice();
    const trailing = new Uint8Array(wire.length + 1);
    trailing.set(wire);
    if(codec.valid(wire.slice(0, -1)) || codec.valid(trailing))
    {
        throw new Error("malformed complete wire accepted");
    }
    if(!equalBytes(wire, before)) throw new Error("input bytes changed");
    const invalid = sample(seed);
    const first = invalid.detections[0];
    if(first === undefined) throw new Error("missing full detection");
    first.pose.pose.covariance[35] = Number.POSITIVE_INFINITY;
    expectInvalid(() => codec.encode(invalid));
    invalid.detections = Array.from({length: 17},
        () => types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodec.defaultValue());
    expectInvalid(() => codec.encode(invalid));
    return writeWire(wire);
});
