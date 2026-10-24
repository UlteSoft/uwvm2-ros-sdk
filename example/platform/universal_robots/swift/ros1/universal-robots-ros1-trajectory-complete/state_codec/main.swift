/// @file main.swift
/// @brief Exercise the complete original ur_msgs/IOStates with genuine Swift/WASI values.
import UniversalRobotsUniversalRobotsRos1TrajectoryCompleteRecords

let bytes = try Ros1Ur_msgsIOStates().encode()
let decoded = try Ros1Ur_msgsIOStates.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"ur_msgs/IOStates\",\"bytes\":\(bytes.count)}")
