/// @file main.swift
/// @brief Exercise the complete original dsr_msgs/AlterMotionStream with genuine Swift/WASI values.
import DoosanDoosanRos1SongMsPatch1CompleteRecords

let bytes = try Ros1Dsr_msgsAlterMotionStream().encode()
let decoded = try Ros1Dsr_msgsAlterMotionStream.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"dsr_msgs/AlterMotionStream\",\"bytes\":\(bytes.count)}")
