/// @file main.swift
/// @brief Exercise the complete original dsr_msgs/GetRobotStateResponse with genuine Swift/WASI values.
import DoosanDoosanRos1DoosanRoboticsPatch1CompleteRecords

let bytes = try Ros1Dsr_msgsGetRobotStateResponse().encode()
let decoded = try Ros1Dsr_msgsGetRobotStateResponse.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"dsr_msgs/GetRobotStateResponse\",\"bytes\":\(bytes.count)}")
