/**
 * @file main.ts
 * @brief Exercise the complete ur_dashboard_msgs/AddToLogResponse value with genuine AssemblyScript.
 * @details Real encode/decode runs in the resulting Wasm; no result is precomputed.
 */
import {
    Ros1Ur_dashboard_msgsAddToLogResponse,
    Ros1Ur_dashboard_msgsAddToLogResponseCodec
} from "universal_robots/as/ros1/universal-robots-ros1-trajectory-complete/bounded_records";
import {write, exit} from "ros/as/command";

export function _start(): void
{
    const codec = new Ros1Ur_dashboard_msgsAddToLogResponseCodec();
    const encoded = codec.encodeChecked(new Ros1Ur_dashboard_msgsAddToLogResponse());
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
    exit(write("{\"type\":\"ur_dashboard_msgs/AddToLogResponse\",\"bytes\":" + encoded.bytes.length.toString() + "}\n"));
}
