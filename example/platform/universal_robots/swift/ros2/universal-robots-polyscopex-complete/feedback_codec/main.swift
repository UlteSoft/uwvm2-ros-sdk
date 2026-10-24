/// @file main.swift
/// @brief Exercise the complete original urinterfaces/action/SetMode_Feedback with genuine Swift/WASI values.
import UniversalRobotsUniversalRobotsPolyscopexCompleteRecords

let bytes = try Ros2UrinterfacesActionSetMode_Feedback().encode()
let decoded = try Ros2UrinterfacesActionSetMode_Feedback.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"urinterfaces/action/SetMode_Feedback\",\"bytes\":\(bytes.count)}")
