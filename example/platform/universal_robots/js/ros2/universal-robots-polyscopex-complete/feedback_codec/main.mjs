/**
 * @file main.mjs
 * @brief Exercise every original urinterfaces/action/SetMode_Feedback field through the genuine JS engine.
 * @details Fixture values have no native-state or controller interpretation.
 */
import {Ros2UrinterfacesActionSetMode_FeedbackCodec as codec} from "universal_robots/js/ros2/universal-robots-polyscopex-complete/bounded_records.mjs";
const value = codec.defaultValue();
const bytes = codec.encode(value);
const next = codec.encode(codec.decode(bytes));
if(bytes.length !== next.length || bytes.some((byte, i) => byte !== next[i]))
    throw new Error("complete canonical record changed");
console.log(JSON.stringify({
    type : "urinterfaces/action/SetMode_Feedback",
    bytes : bytes.length,
    wire_hex : Array.from(bytes, value => value.toString(16).padStart(2, "0")).join("")
}));
