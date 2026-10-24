/** @file example_values.mts @brief Construct every active original field from actual runtime input. */
import * as types from "nvidia-isaac-ros/typescript/ros2/complete/records";
/**
 * @brief Construct all active fields from one caller-provided uint32 seed.
 * @param seed Exact 0..4294967295 input, checked by the standalone command reader.
 * @return Complete owned record; no native operation or permission is requested.
 */
export function sample(seed: number): types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
{
    const value = types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec.defaultValue();
    value.header.stamp.sec = -42;
    value.header.stamp.nanosec = seed % 1000000000;
    value.header.frame_id = "camera-µ";
    value.detections = [];
    for(let index = 0; index < 2; ++index)
    {
        const detection = types.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodec.defaultValue();
        detection.family = index === 0 ? "tag36h11" : "tag25h9";
        detection.id = seed % 2147483000 - 29 + index * 17;
        detection.center.x = seed / 8 + index;
        detection.center.y = -(index + 1) / 4;
        detection.center.z = (index + 3) / 2;
        detection.corners.forEach((corner, at) => {
            corner.x = seed / 16 + at;
            corner.y = -(index + at + 1) / 8;
            corner.z = (index + at + 2) / 4;
        });
        detection.pose.header.stamp.sec = -45 + index;
        detection.pose.header.stamp.nanosec = (1000 + seed) % 1000000000;
        detection.pose.header.frame_id = "pose-" + index;
        detection.pose.pose.pose.position.x = (index + 5) / 8;
        detection.pose.pose.pose.position.y = -seed / 16;
        detection.pose.pose.pose.position.z = (index + 7) / 4;
        detection.pose.pose.pose.orientation.x = (index + 1) / 16;
        detection.pose.pose.pose.orientation.y = -(index + 2) / 16;
        detection.pose.pose.pose.orientation.z = (index + 3) / 16;
        detection.pose.pose.pose.orientation.w = 0.75;
        detection.pose.pose.covariance.forEach((_, at) => {
            detection.pose.pose.covariance[at] = (index + 1) * 100 + seed / 16 + at / 32;
        });
        value.detections.push(detection);
    }
    return value;
}
