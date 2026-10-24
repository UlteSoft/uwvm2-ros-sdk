/// @file main.swift
/// @brief Exercise the complete original ur_msgs/msg/IOStates with genuine Swift/WASI values.
import UniversalRobotsUniversalRobotsRos2CompleteRecords

let bytes = try Ros2Ur_msgsMsgIOStates().encode()
let decoded = try Ros2Ur_msgsMsgIOStates.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"ur_msgs/msg/IOStates\",\"bytes\":\(bytes.count)}")
