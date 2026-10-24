/**
 * @file main.mts
 * @brief Actual TypeScript complete_catalog using complete original NVIDIA records.
 * @details Source-only until genuine semantic checking, emitted JS and guest receipts exist.
 */
import * as types from "nvidia-isaac-sim/typescript/ros2/complete/records";
import {sample} from "nvidia-isaac-sim/typescript/ros2/example_values";
import type {CanonicalCodec} from "nvidia/typescript/codec";
import {equalBytes, expectInvalid, readHex, readSeed, runGuest, writeWire} from "nvidia/typescript/stdio";
const codec = types.Ros2Sensor_msgsMsgJointStateCodec;
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
    roundtrip(types.Ros2Sensor_msgsMsgJointStateCodec);
    roundtrip(types.Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec);
    roundtrip(types.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec);
    roundtrip(types.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec);
    return __uwvm.output("complete_original_records=" + checked) === 0 ? 0 : 5;
});
