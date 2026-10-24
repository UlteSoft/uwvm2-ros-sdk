/**
 * @file main.mjs
 * @brief Exercise every original kuka_driver_interfaces/msg/KssStatus field through the genuine JS engine.
 * @details Fixture values have no native-state or controller interpretation.
 */
import {Ros2Kuka_driver_interfacesMsgKssStatusCodec as codec} from "kuka/js/ros2/kuka-ros2-complete/bounded_records.mjs";
const value = codec.defaultValue();
const bytes = codec.encode(value);
const next = codec.encode(codec.decode(bytes));
if(bytes.length !== next.length || bytes.some((byte, i) => byte !== next[i]))
    throw new Error("complete canonical record changed");
console.log(JSON.stringify({
    type : "kuka_driver_interfaces/msg/KssStatus",
    bytes : bytes.length,
    wire_hex : Array.from(bytes, value => value.toString(16).padStart(2, "0")).join("")
}));
