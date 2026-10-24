/**
 * @file main.ts
 * @brief Exercise the complete ur_dashboard_msgs/srv/AddToLog_Response value with genuine AssemblyScript.
 * @details Real encode/decode runs in the resulting Wasm; no result is precomputed.
 */
import {
    Ros2Ur_dashboard_msgsSrvAddToLog_Response,
    Ros2Ur_dashboard_msgsSrvAddToLog_ResponseCodec
} from "universal_robots/as/ros2/universal-robots-ros2-complete/bounded_records";
import {write, exit} from "ros/as/command";

export function _start(): void
{
    const codec = new Ros2Ur_dashboard_msgsSrvAddToLog_ResponseCodec();
    const encoded = codec.encodeChecked(new Ros2Ur_dashboard_msgsSrvAddToLog_Response());
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
    exit(write("{\"type\":\"ur_dashboard_msgs/srv/AddToLog_Response\",\"bytes\":" + encoded.bytes.length.toString() + "}\n"));
}
