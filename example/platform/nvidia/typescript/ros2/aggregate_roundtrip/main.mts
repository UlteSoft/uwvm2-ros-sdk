/**
 * @file main.mts
 * @brief Exercise complete original NVIDIA values in an actual emitted guest program.
 * @details No precomputed output, native capability or host application execution is used.
 */
import * as nvidia from "nvidia/typescript/index";
import type {CanonicalCodec} from "nvidia/typescript/codec";
import {equalBytes, readSeed, runGuest, writeWire} from "nvidia/typescript/stdio";

runGuest(() => {
    const seed = readSeed();
    function check<T>(codec: CanonicalCodec<T>, value: T): number
    {
        const wire = codec.encode(value);
        if(!equalBytes(wire, codec.encode(codec.decode(wire))))
        {
            throw new Error("complete original round trip failed");
        }
        return writeWire(wire);
    }
    const grootStatus = check(nvidia.groot.Ros2Uwvm_groot_bridgeMsgFloatTensorCodec, nvidia.grootSample(seed));
    if(grootStatus !== 0) return grootStatus;
    const isaacRosStatus = check(nvidia.isaacRos.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec, nvidia.isaacRosSample(seed));
    if(isaacRosStatus !== 0) return isaacRosStatus;
    const isaacSimStatus = check(nvidia.isaacSim.Ros2Sensor_msgsMsgJointStateCodec, nvidia.isaacSimSample(seed));
    if(isaacSimStatus !== 0) return isaacSimStatus;
    return 0;
});
