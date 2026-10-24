/// @file main.swift
/// @brief Exercise the complete original control_msgs/action/FollowJointTrajectory_Feedback with genuine Swift/WASI values.
import KukaKukaRos2CompleteRecords

let bytes = try Ros2Control_msgsActionFollowJointTrajectory_Feedback().encode()
let decoded = try Ros2Control_msgsActionFollowJointTrajectory_Feedback.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"control_msgs/action/FollowJointTrajectory_Feedback\",\"bytes\":\(bytes.count)}")
