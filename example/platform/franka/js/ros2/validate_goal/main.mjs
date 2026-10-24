/** @brief Decode every original field using genuine JavaScript semantics. */
import {Ros2Franka_msgsActionGrasp_GoalCodec} from "franka/js/ros2/franka-ros2-complete/bounded_records.mjs";
import {Capability} from "ros/js/transport";
import * as std from "std";
let primary = 0, cleanup = 0, value = null;
const input = new Uint8Array(41);
const length = std.in.read(input.buffer, 0, input.length);
value = Ros2Franka_msgsActionGrasp_GoalCodec.decode(input.subarray(0, length));
if(value !== null)
    console.log(Array.from(Ros2Franka_msgsActionGrasp_GoalCodec.encode(value), byte => byte.toString(16).padStart(2, "0")).join(""));
std.err.puts(`primary=${primary} cleanup=${cleanup}\n`);
std.exit(primary || cleanup);
