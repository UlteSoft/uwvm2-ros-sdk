/// @file main.swift
/// @brief Exercise the complete original ur_dashboard_msgs/SetModeFeedback with genuine Swift/WASI values.
import UniversalRobotsUniversalRobotsRos1CompleteRecords

let bytes = try Ros1Ur_dashboard_msgsSetModeFeedback().encode()
let decoded = try Ros1Ur_dashboard_msgsSetModeFeedback.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"ur_dashboard_msgs/SetModeFeedback\",\"bytes\":\(bytes.count)}")
