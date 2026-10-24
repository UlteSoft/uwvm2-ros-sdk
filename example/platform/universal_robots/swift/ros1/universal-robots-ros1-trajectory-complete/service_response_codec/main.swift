/// @file main.swift
/// @brief Exercise the complete original ur_dashboard_msgs/AddToLogResponse with genuine Swift/WASI values.
import UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRecords

let bytes = try Ros1Ur_dashboard_msgsAddToLogResponse().encode()
let decoded = try Ros1Ur_dashboard_msgsAddToLogResponse.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"ur_dashboard_msgs/AddToLogResponse\",\"bytes\":\(bytes.count)}")
