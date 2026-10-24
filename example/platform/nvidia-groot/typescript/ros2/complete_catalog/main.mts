/**
 * @file main.mts
 * @brief Actual TypeScript complete_catalog using complete original NVIDIA records.
 * @details Source-only until genuine semantic checking, emitted JS and guest receipts exist.
 */
import * as types from "nvidia-groot/typescript/ros2/complete/records";
import {sample} from "nvidia-groot/typescript/ros2/example_values";
import type {CanonicalCodec} from "nvidia/typescript/codec";
import {equalBytes, expectInvalid, readHex, readSeed, runGuest, writeWire} from "nvidia/typescript/stdio";
const codec = types.Ros2Uwvm_groot_bridgeMsgFloatTensorCodec;
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
    roundtrip(types.Ros2Uwvm_groot_bridgeMsgRGBFrameCodec);
    roundtrip(types.Ros2Uwvm_groot_bridgeMsgFloatTensorCodec);
    roundtrip(types.Ros2Uwvm_groot_bridgeMsgTextSequenceCodec);
    roundtrip(types.Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodec);
    roundtrip(types.Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodec);
    roundtrip(types.Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodec);
    roundtrip(types.Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodec);
    roundtrip(types.Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodec);
    roundtrip(types.Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodec);
    roundtrip(types.Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodec);
    roundtrip(types.Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodec);
    roundtrip(types.Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodec);
    roundtrip(types.Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodec);
    roundtrip(types.Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodec);
    return __uwvm.output("complete_original_records=" + checked) === 0 ? 0 : 5;
});
