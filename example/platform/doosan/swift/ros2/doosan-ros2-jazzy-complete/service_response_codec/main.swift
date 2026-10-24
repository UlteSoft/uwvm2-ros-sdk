/// @file main.swift
/// @brief Exercise the complete original dsr_msgs2/srv/GetRobotState_Response with genuine Swift/WASI values.
import DoosanDoosanRos2JazzyCompleteRecords

let bytes = try Ros2Dsr_msgs2SrvGetRobotState_Response().encode()
let decoded = try Ros2Dsr_msgs2SrvGetRobotState_Response.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"dsr_msgs2/srv/GetRobotState_Response\",\"bytes\":\(bytes.count)}")
