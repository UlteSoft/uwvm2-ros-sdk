/// @file main.swift
/// @brief Exercise the complete original ur_dashboard_msgs/srv/AddToLog_Response with genuine Swift/WASI values.
import UniversalRobotsUniversalRobotsRos2CompleteRecords

let bytes = try Ros2Ur_dashboard_msgsSrvAddToLog_Response().encode()
let decoded = try Ros2Ur_dashboard_msgsSrvAddToLog_Response.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"ur_dashboard_msgs/srv/AddToLog_Response\",\"bytes\":\(bytes.count)}")
