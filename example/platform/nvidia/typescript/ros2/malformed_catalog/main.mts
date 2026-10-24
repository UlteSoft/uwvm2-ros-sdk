/**
 * @file main.mts
 * @brief Exercise complete original NVIDIA values in an actual emitted guest program.
 * @details No precomputed output, native capability or host application execution is used.
 */
import * as nvidia from "nvidia/typescript/index";
import type {CanonicalCodec} from "nvidia/typescript/codec";
import {equalBytes, readSeed, runGuest, writeWire} from "nvidia/typescript/stdio";

runGuest(() => {
    let checked = 0;
    function check<T>(codec: CanonicalCodec<T>): void
    {
        const wire = codec.encode(codec.defaultValue());
        const before = wire.slice();
        if(!equalBytes(wire, codec.encode(codec.decode(wire))))
        {
            throw new Error("complete original default round trip failed");
        }
        const trailing = new Uint8Array(wire.length + 1);
        trailing.set(wire);
        if(codec.valid(trailing) || (wire.length > 0 && codec.valid(wire.slice(0, -1))))
        {
            throw new Error("malformed original body accepted");
        }
        if(!equalBytes(wire, before)) throw new Error("borrowed bytes changed");
        ++checked;
    }
    check(nvidia.groot.Ros2Uwvm_groot_bridgeMsgRGBFrameCodec);
    check(nvidia.groot.Ros2Uwvm_groot_bridgeMsgFloatTensorCodec);
    check(nvidia.groot.Ros2Uwvm_groot_bridgeMsgTextSequenceCodec);
    check(nvidia.groot.Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodec);
    check(nvidia.groot.Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodec);
    check(nvidia.groot.Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodec);
    check(nvidia.groot.Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodec);
    check(nvidia.groot.Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodec);
    check(nvidia.groot.Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodec);
    check(nvidia.groot.Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodec);
    check(nvidia.groot.Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodec);
    check(nvidia.groot.Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodec);
    check(nvidia.groot.Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodec);
    check(nvidia.groot.Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodec);
    check(nvidia.isaacRos.Ros2Builtin_interfacesMsgTimeCodec);
    check(nvidia.isaacRos.Ros2Std_msgsMsgHeaderCodec);
    check(nvidia.isaacRos.Ros2Geometry_msgsMsgPointCodec);
    check(nvidia.isaacRos.Ros2Geometry_msgsMsgQuaternionCodec);
    check(nvidia.isaacRos.Ros2Geometry_msgsMsgPoseCodec);
    check(nvidia.isaacRos.Ros2Geometry_msgsMsgPoseWithCovarianceCodec);
    check(nvidia.isaacRos.Ros2Geometry_msgsMsgPoseWithCovarianceStampedCodec);
    check(nvidia.isaacRos.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodec);
    check(nvidia.isaacRos.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec);
    check(nvidia.isaacSim.Ros2Builtin_interfacesMsgTimeCodec);
    check(nvidia.isaacSim.Ros2Std_msgsMsgHeaderCodec);
    check(nvidia.isaacSim.Ros2Sensor_msgsMsgJointStateCodec);
    check(nvidia.isaacSim.Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec);
    check(nvidia.isaacSim.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec);
    check(nvidia.isaacSim.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec);
    return __uwvm.output("complete_original_records=" + checked) === 0 ? 0 : 5;
});
