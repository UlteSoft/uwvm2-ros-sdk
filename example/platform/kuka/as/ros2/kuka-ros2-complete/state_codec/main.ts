/**
 * @file main.ts
 * @brief Exercise the complete kuka_driver_interfaces/msg/KssStatus value with genuine AssemblyScript.
 * @details Real encode/decode runs in the resulting Wasm; no result is precomputed.
 */
import {Ros2Kuka_driver_interfacesMsgKssStatus, Ros2Kuka_driver_interfacesMsgKssStatusCodec} from "kuka/as/ros2/kuka-ros2-complete/bounded_records";
import {write, exit} from "ros/as/command";

export function _start(): void
{
    const codec = new Ros2Kuka_driver_interfacesMsgKssStatusCodec();
    const encoded = codec.encodeChecked(new Ros2Kuka_driver_interfacesMsgKssStatus());
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
    exit(write("{\"type\":\"kuka_driver_interfaces/msg/KssStatus\",\"bytes\":" + encoded.bytes.length.toString() + "}\n"));
}
