/**
 * @file main.mjs
 * @brief Exercise every original control_msgs/FollowJointTrajectoryFeedback field through the genuine JS engine.
 * @details Fixture values have no native-state or controller interpretation.
 */
import {
    Ros1Control_msgsFollowJointTrajectoryFeedbackCodec as codec
} from "universal_robots/js/ros1/universal-robots-ros1-trajectory-complete/bounded_records.mjs";
const value = codec.defaultValue();
const bytes = codec.encode(value);
const next = codec.encode(codec.decode(bytes));
if(bytes.length !== next.length || bytes.some((byte, i) => byte !== next[i]))
    throw new Error("complete canonical record changed");
console.log(JSON.stringify({
    type : "control_msgs/FollowJointTrajectoryFeedback",
    bytes : bytes.length,
    wire_hex : Array.from(bytes, value => value.toString(16).padStart(2, "0")).join("")
}));
