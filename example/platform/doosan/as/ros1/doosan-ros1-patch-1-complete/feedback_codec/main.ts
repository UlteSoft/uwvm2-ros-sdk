/**
 * @file main.ts
 * @brief Exercise the complete dsr_msgs/AlterMotionStream value with genuine AssemblyScript.
 * @details Real encode/decode runs in the resulting Wasm; no result is precomputed.
 */
import {Ros1Dsr_msgsAlterMotionStream, Ros1Dsr_msgsAlterMotionStreamCodec} from "doosan/as/ros1/doosan-ros1-patch-1-complete/bounded_records";
import {write, exit} from "ros/as/command";

export function _start(): void
{
    const codec = new Ros1Dsr_msgsAlterMotionStreamCodec();
    const encoded = codec.encodeChecked(new Ros1Dsr_msgsAlterMotionStream());
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
    exit(write("{\"type\":\"dsr_msgs/AlterMotionStream\",\"bytes\":" + encoded.bytes.length.toString() + "}\n"));
}
