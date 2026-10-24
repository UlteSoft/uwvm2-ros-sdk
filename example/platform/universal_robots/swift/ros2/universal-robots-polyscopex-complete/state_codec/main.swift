/// @file main.swift
/// @brief Exercise the complete original urinterfaces/msg/RobotMode with genuine Swift/WASI values.
import UniversalRobotsUniversalRobotsPolyscopexCompleteRecords

let bytes = try Ros2UrinterfacesMsgRobotMode().encode()
let decoded = try Ros2UrinterfacesMsgRobotMode.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"urinterfaces/msg/RobotMode\",\"bytes\":\(bytes.count)}")
