/**
 * @file main.ts
 * @brief Exercise the complete urinterfaces/action/SetMode_Feedback value with genuine AssemblyScript.
 * @details Real encode/decode runs in the resulting Wasm; no result is precomputed.
 */
import {
    Ros2UrinterfacesActionSetMode_Feedback,
    Ros2UrinterfacesActionSetMode_FeedbackCodec
} from "universal_robots/as/ros2/universal-robots-polyscopex-complete/bounded_records";
import {write, exit} from "ros/as/command";

export function _start(): void
{
    const codec = new Ros2UrinterfacesActionSetMode_FeedbackCodec();
    const encoded = codec.encodeChecked(new Ros2UrinterfacesActionSetMode_Feedback());
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
    exit(write("{\"type\":\"urinterfaces/action/SetMode_Feedback\",\"bytes\":" + encoded.bytes.length.toString() + "}\n"));
}
