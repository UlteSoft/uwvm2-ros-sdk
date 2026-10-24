/**
 * @file main.ts
 * @brief Exercise the complete dsr_msgs2/action/JogH2r_Feedback value with genuine AssemblyScript.
 * @details Real encode/decode runs in the resulting Wasm; no result is precomputed.
 */
import {Ros2Dsr_msgs2ActionJogH2r_Feedback, Ros2Dsr_msgs2ActionJogH2r_FeedbackCodec} from "doosan/as/ros2/doosan-ros2-humble-complete/bounded_records";
import {write, exit} from "ros/as/command";

export function _start(): void
{
    const codec = new Ros2Dsr_msgs2ActionJogH2r_FeedbackCodec();
    const encoded = codec.encodeChecked(new Ros2Dsr_msgs2ActionJogH2r_Feedback());
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
    exit(write("{\"type\":\"dsr_msgs2/action/JogH2r_Feedback\",\"bytes\":" + encoded.bytes.length.toString() + "}\n"));
}
