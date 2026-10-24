/// @file main.swift
/// @brief Exercise the complete original lifecycle_msgs/srv/ChangeState_Response with genuine Swift/WASI values.
import KukaKukaRos2CompleteRecords

let bytes = try Ros2Lifecycle_msgsSrvChangeState_Response().encode()
let decoded = try Ros2Lifecycle_msgsSrvChangeState_Response.decode(bytes)
let again = try decoded.encode()
precondition(again == bytes)
print("{\"type\":\"lifecycle_msgs/srv/ChangeState_Response\",\"bytes\":\(bytes.count)}")
