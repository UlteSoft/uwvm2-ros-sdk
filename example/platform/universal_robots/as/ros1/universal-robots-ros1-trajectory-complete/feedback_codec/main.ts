/**
 * @file main.ts
 * @brief Exercise the complete control_msgs/FollowJointTrajectoryFeedback value with genuine AssemblyScript.
 * @details Real encode/decode runs in the resulting Wasm; no result is precomputed.
 */
import {
    Ros1Control_msgsFollowJointTrajectoryFeedback,
    Ros1Control_msgsFollowJointTrajectoryFeedbackCodec
} from "universal_robots/as/ros1/universal-robots-ros1-trajectory-complete/bounded_records";
import {write, exit} from "ros/as/command";

export function _start(): void
{
    const codec = new Ros1Control_msgsFollowJointTrajectoryFeedbackCodec();
    const encoded = codec.encodeChecked(new Ros1Control_msgsFollowJointTrajectoryFeedback());
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
    exit(write("{\"type\":\"control_msgs/FollowJointTrajectoryFeedback\",\"bytes\":" + encoded.bytes.length.toString() + "}\n"));
}
