/**
 * @file main.ts
 * @brief Exercise the complete dsr_msgs/GetRobotStateResponse value with genuine AssemblyScript.
 * @details Real encode/decode runs in the resulting Wasm; no result is precomputed.
 */
import {Ros1Dsr_msgsGetRobotStateResponse, Ros1Dsr_msgsGetRobotStateResponseCodec} from "doosan/as/ros1/doosan-ros1-song-ms-patch-1-complete/bounded_records";
import {write, exit} from "ros/as/command";

export function _start(): void
{
    const codec = new Ros1Dsr_msgsGetRobotStateResponseCodec();
    const encoded = codec.encodeChecked(new Ros1Dsr_msgsGetRobotStateResponse());
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
    exit(write("{\"type\":\"dsr_msgs/GetRobotStateResponse\",\"bytes\":" + encoded.bytes.length.toString() + "}\n"));
}
