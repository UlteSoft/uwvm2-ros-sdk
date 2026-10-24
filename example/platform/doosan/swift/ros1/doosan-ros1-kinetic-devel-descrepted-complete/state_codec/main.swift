/// @file main.swift
/// @brief Exercise the complete original dsr_msgs/RobotState with genuine Swift/WASI values.
import DoosanDoosanRos1KineticDevelDescreptedCompleteRecords

let bytes = try Ros1Dsr_msgsRobotState().encode()
let decoded = try Ros1Dsr_msgsRobotState.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"dsr_msgs/RobotState\",\"bytes\":\(bytes.count)}")
