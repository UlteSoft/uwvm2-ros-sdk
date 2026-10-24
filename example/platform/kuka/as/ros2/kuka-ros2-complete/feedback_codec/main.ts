/**
 * @file main.ts
 * @brief Exercise the complete control_msgs/action/FollowJointTrajectory_Feedback value with genuine AssemblyScript.
 * @details Real encode/decode runs in the resulting Wasm; no result is precomputed.
 */
import {
    Ros2Control_msgsActionFollowJointTrajectory_Feedback,
    Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec
} from "kuka/as/ros2/kuka-ros2-complete/bounded_records";
import {write, exit} from "ros/as/command";

export function _start(): void
{
    const codec = new Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec();
    const encoded = codec.encodeChecked(new Ros2Control_msgsActionFollowJointTrajectory_Feedback());
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
    exit(write("{\"type\":\"control_msgs/action/FollowJointTrajectory_Feedback\",\"bytes\":" + encoded.bytes.length.toString() + "}\n"));
}
