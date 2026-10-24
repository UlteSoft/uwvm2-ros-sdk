/**
 * @file main.ts
 * @brief Exercise the complete ur_msgs/IOStates value with genuine AssemblyScript.
 * @details Real encode/decode runs in the resulting Wasm; no result is precomputed.
 */
import {Ros1Ur_msgsIOStates, Ros1Ur_msgsIOStatesCodec} from "universal_robots/as/ros1/universal-robots-ros1-complete/bounded_records";
import {write, exit} from "ros/as/command";

export function _start(): void
{
    const codec = new Ros1Ur_msgsIOStatesCodec();
    const encoded = codec.encodeChecked(new Ros1Ur_msgsIOStates());
    if(encoded.status)
    {
        exit(encoded.status);
        return;
    }
    const decoded = codec.decodeChecked(encoded.bytes);
    if(decoded.status)
    {
        exit(decoded.status);
        return;
    }
    exit(write("{\"type\":\"ur_msgs/IOStates\",\"bytes\":" + encoded.bytes.length.toString() + "}\n"));
}
