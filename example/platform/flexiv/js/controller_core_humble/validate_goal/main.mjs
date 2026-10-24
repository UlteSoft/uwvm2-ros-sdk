/** @brief Decode every original field using genuine JavaScript semantics. */
import {Ros2Sensor_msgsMsgJointStateCodec} from "flexiv/js/ros2/flexiv-controller-core-humble-complete/bounded_records.mjs";
import {Capability} from "ros/js/transport";
import * as std from "std";
let primary = 0, cleanup = 0, value = null;
const input = new Uint8Array(9373);
const length = std.in.read(input.buffer, 0, input.length);
value = Ros2Sensor_msgsMsgJointStateCodec.decode(input.subarray(0, length));
if(value !== null)
    console.log(Array.from(Ros2Sensor_msgsMsgJointStateCodec.encode(value), byte => byte.toString(16).padStart(2, "0")).join(""));
std.err.puts(`primary=${primary} cleanup=${cleanup}\n`);
std.exit(primary || cleanup);
