/// @file main.swift
/// @brief Exercise the complete original urinterfaces/srv/SetAnalogOutput_Response with genuine Swift/WASI values.
import UniversalRobotsUniversalRobotsPolyscopexCompleteRecords

let bytes = try Ros2UrinterfacesSrvSetAnalogOutput_Response().encode()
let decoded = try Ros2UrinterfacesSrvSetAnalogOutput_Response.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"urinterfaces/srv/SetAnalogOutput_Response\",\"bytes\":\(bytes.count)}")
