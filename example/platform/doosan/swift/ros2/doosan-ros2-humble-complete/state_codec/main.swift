/// @file main.swift
/// @brief Exercise the complete original dsr_msgs2/msg/RobotState with genuine Swift/WASI values.
import DoosanDoosanRos2HumbleCompleteRecords

let bytes = try Ros2Dsr_msgs2MsgRobotState().encode()
let decoded = try Ros2Dsr_msgs2MsgRobotState.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"dsr_msgs2/msg/RobotState\",\"bytes\":\(bytes.count)}")
