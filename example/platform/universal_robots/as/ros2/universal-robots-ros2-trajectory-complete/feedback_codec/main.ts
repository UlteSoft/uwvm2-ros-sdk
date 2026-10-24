/**
 * @file main.ts
 * @brief Exercise the complete ur_msgs/action/FollowJointTrajectoryUntil_Feedback value with genuine AssemblyScript.
 * @details Real encode/decode runs in the resulting Wasm; no result is precomputed.
 */
import {
    Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback,
    Ros2Ur_msgsActionFollowJointTrajectoryUntil_FeedbackCodec
} from "universal_robots/as/ros2/universal-robots-ros2-trajectory-complete/bounded_records";
import {write, exit} from "ros/as/command";

export function _start(): void
{
    const codec = new Ros2Ur_msgsActionFollowJointTrajectoryUntil_FeedbackCodec();
    const encoded = codec.encodeChecked(new Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback());
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
    exit(write("{\"type\":\"ur_msgs/action/FollowJointTrajectoryUntil_Feedback\",\"bytes\":" + encoded.bytes.length.toString() + "}\n"));
}
