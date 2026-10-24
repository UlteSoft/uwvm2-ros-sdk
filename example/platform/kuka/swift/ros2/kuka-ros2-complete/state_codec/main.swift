/// @file main.swift
/// @brief Exercise the complete original kuka_driver_interfaces/msg/KssStatus with genuine Swift/WASI values.
import KukaKukaRos2CompleteRecords

let bytes = try Ros2Kuka_driver_interfacesMsgKssStatus().encode()
let decoded = try Ros2Kuka_driver_interfacesMsgKssStatus.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"kuka_driver_interfaces/msg/KssStatus\",\"bytes\":\(bytes.count)}")
