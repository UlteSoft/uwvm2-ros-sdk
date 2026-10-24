/**
 * @file main.mts
 * @brief Actual TypeScript complete_catalog using complete original NVIDIA records.
 * @details Source-only until genuine semantic checking, emitted JS and guest receipts exist.
 */
import * as types from "nvidia-isaac-ros/typescript/ros2/complete/records";
import {sample} from "nvidia-isaac-ros/typescript/ros2/example_values";
import type {CanonicalCodec} from "nvidia/typescript/codec";
import {equalBytes, expectInvalid, readHex, readSeed, runGuest, writeWire} from "nvidia/typescript/stdio";
const codec = types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec;
runGuest((): number => {
    let checked = 0;
    function roundtrip<T>(selected: CanonicalCodec<T>): void
    {
        const value = selected.defaultValue();
        const wire = selected.encode(value);
        if(!equalBytes(wire, selected.encode(selected.decode(wire))))
        {
            throw new Error("complete original catalog round trip failed");
        }
        ++checked;
    }
    roundtrip(types.Ros2Builtin_interfacesMsgTimeCodec);
    roundtrip(types.Ros2Std_msgsMsgHeaderCodec);
    roundtrip(types.Ros2Geometry_msgsMsgPointCodec);
    roundtrip(types.Ros2Geometry_msgsMsgQuaternionCodec);
    roundtrip(types.Ros2Geometry_msgsMsgPoseCodec);
    roundtrip(types.Ros2Geometry_msgsMsgPoseWithCovarianceCodec);
    roundtrip(types.Ros2Geometry_msgsMsgPoseWithCovarianceStampedCodec);
    roundtrip(types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodec);
    roundtrip(types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec);
    return __uwvm.output("complete_original_records=" + checked) === 0 ? 0 : 5;
});
