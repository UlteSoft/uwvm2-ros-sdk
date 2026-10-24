/** @brief Decode every original field using genuine JavaScript semantics. */
import {Ros2Sensor_msgsMsgJointStateCodec} from "flexiv/js/ros2/flexiv-controller-core-humble-complete/bounded_records.mjs";
import {Capability} from "ros/js/transport";
import * as std from "std";
let primary = 0, cleanup = 0, value = null;
let capability = null;
try
{
    if(scriptArgs.length !== 2)
        throw new RangeError("supply one granted topic alias");
    [capability, primary] = Capability.open(scriptArgs[1]);
    if(!primary)
        primary = capability.invoke("topic_subscribe", new Uint8Array(), 0)[0];
    if(!primary)
    {
        const reply = capability.invoke("event_poll", new Uint8Array(), 9372);
        primary = reply[0];
        if(!primary)
            value = Ros2Sensor_msgsMsgJointStateCodec.decode(reply[1]);
    }
}
finally
{
    if(capability !== null)
        cleanup = capability.close();
}
if(value !== null)
    console.log(Array.from(Ros2Sensor_msgsMsgJointStateCodec.encode(value), byte => byte.toString(16).padStart(2, "0")).join(""));
std.err.puts(`primary=${primary} cleanup=${cleanup}\n`);
std.exit(primary || cleanup);
