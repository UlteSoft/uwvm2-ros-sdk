/// @file main.swift
/// @brief Exercise the complete original dsr_msgs2/action/JogH2r_Feedback with genuine Swift/WASI values.
import DoosanDoosanRos2HumbleCompleteRecords

let bytes = try Ros2Dsr_msgs2ActionJogH2r_Feedback().encode()
let decoded = try Ros2Dsr_msgs2ActionJogH2r_Feedback.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"dsr_msgs2/action/JogH2r_Feedback\",\"bytes\":\(bytes.count)}")
