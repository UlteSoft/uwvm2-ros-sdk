/**
 * @file main.ts
 * @brief Exercise the complete lifecycle_msgs/srv/ChangeState_Response value with genuine AssemblyScript.
 * @details Real encode/decode runs in the resulting Wasm; no result is precomputed.
 */
import {Ros2Lifecycle_msgsSrvChangeState_Response, Ros2Lifecycle_msgsSrvChangeState_ResponseCodec} from "kuka/as/ros2/kuka-ros2-complete/bounded_records";
import {write, exit} from "ros/as/command";

export function _start(): void
{
    const codec = new Ros2Lifecycle_msgsSrvChangeState_ResponseCodec();
    const encoded = codec.encodeChecked(new Ros2Lifecycle_msgsSrvChangeState_Response());
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
    exit(write("{\"type\":\"lifecycle_msgs/srv/ChangeState_Response\",\"bytes\":" + encoded.bytes.length.toString() + "}\n"));
}
