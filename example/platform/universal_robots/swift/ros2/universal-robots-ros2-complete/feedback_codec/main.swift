/// @file main.swift
/// @brief Exercise the complete original ur_msgs/action/FollowJointTrajectoryUntil_Feedback with genuine Swift/WASI values.
import UniversalRobotsUniversalRobotsRos2CompleteRecords

let bytes = try Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback().encode()
let decoded = try Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"ur_msgs/action/FollowJointTrajectoryUntil_Feedback\",\"bytes\":\(bytes.count)}")
