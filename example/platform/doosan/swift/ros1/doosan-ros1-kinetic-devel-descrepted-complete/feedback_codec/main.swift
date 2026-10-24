/// @file main.swift
/// @brief Exercise the complete original dsr_msgs/LogAlarm with genuine Swift/WASI values.
import DoosanDoosanRos1KineticDevelDescreptedCompleteRecords

let bytes = try Ros1Dsr_msgsLogAlarm().encode()
let decoded = try Ros1Dsr_msgsLogAlarm.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"dsr_msgs/LogAlarm\",\"bytes\":\(bytes.count)}")
