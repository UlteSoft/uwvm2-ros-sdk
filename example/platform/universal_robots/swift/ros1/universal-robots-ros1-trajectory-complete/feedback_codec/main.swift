/// @file main.swift
/// @brief Exercise the complete original control_msgs/FollowJointTrajectoryFeedback with genuine Swift/WASI values.
import UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRecords

let bytes = try Ros1Control_msgsFollowJointTrajectoryFeedback().encode()
let decoded = try Ros1Control_msgsFollowJointTrajectoryFeedback.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"control_msgs/FollowJointTrajectoryFeedback\",\"bytes\":\(bytes.count)}")
