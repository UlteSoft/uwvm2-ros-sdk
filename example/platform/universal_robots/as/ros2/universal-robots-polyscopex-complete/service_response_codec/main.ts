/**
 * @file main.ts
 * @brief Exercise the complete urinterfaces/srv/SetAnalogOutput_Response value with genuine AssemblyScript.
 * @details Real encode/decode runs in the resulting Wasm; no result is precomputed.
 */
import {
    Ros2UrinterfacesSrvSetAnalogOutput_Response,
    Ros2UrinterfacesSrvSetAnalogOutput_ResponseCodec
} from "universal_robots/as/ros2/universal-robots-polyscopex-complete/bounded_records";
import {write, exit} from "ros/as/command";

export function _start(): void
{
    const codec = new Ros2UrinterfacesSrvSetAnalogOutput_ResponseCodec();
    const encoded = codec.encodeChecked(new Ros2UrinterfacesSrvSetAnalogOutput_Response());
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
    exit(write("{\"type\":\"urinterfaces/srv/SetAnalogOutput_Response\",\"bytes\":" + encoded.bytes.length.toString() + "}\n"));
}
