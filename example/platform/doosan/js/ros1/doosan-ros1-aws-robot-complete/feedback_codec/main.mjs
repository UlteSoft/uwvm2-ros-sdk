/**
 * @file main.mjs
 * @brief Exercise every original dsr_msgs/LogAlarm field through the genuine JS engine.
 * @details Fixture values have no native-state or controller interpretation.
 */
import {Ros1Dsr_msgsLogAlarmCodec as codec} from "doosan/js/ros1/doosan-ros1-aws-robot-complete/bounded_records.mjs";
const value = codec.defaultValue();
const bytes = codec.encode(value);
const next = codec.encode(codec.decode(bytes));
if(bytes.length !== next.length || bytes.some((byte, i) => byte !== next[i]))
    throw new Error("complete canonical record changed");
console.log(
    JSON.stringify({type : "dsr_msgs/LogAlarm", bytes : bytes.length, wire_hex : Array.from(bytes, value => value.toString(16).padStart(2, "0")).join("")}));
