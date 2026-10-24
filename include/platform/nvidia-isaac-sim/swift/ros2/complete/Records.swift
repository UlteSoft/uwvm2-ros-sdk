// @file Records.swift
// @brief Represent complete typed values and their bounded wire layout for nvidia-isaac-sim.
// @details Field widths, defaults and sequence limits follow the selected catalog. Keep backing storage alive
// while borrowed values are in use; preserve all decode failures before invoking a ROS operation.

// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros2Builtin_interfacesMsgTime: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
  public static let nativeType = "builtin_interfaces/msg/Time"
  public static let nativeIdentity: String? = nil
  public var `sec`: Int32 = 0
  public var `nanosec`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    if self.`nanosec` >= 1_000_000_000 { throw RosError(22) }
    try w.integer(self.`sec`)
    try w.integer(self.`nanosec`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Builtin_interfacesMsgTime {
    var v = Ros2Builtin_interfacesMsgTime()
    v.`sec` = try r.integer(Int32.self)
    v.`nanosec` = try r.integer(UInt32.self)
    if v.`nanosec` >= 1_000_000_000 { throw RosError(22) }
    return v
  }
}
public struct Ros2Std_msgsMsgHeader: Canonical {
  public static let maximumWireBytes = 76
  public static let codecIdentity =
    "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396"
  public static let nativeType = "std_msgs/msg/Header"
  public static let nativeIdentity: String? = nil
  public var `stamp`: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  public var `frame_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`stamp`.write(to: &w)
    try w.string(self.`frame_id`, bound: 64)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Std_msgsMsgHeader {
    var v = Ros2Std_msgsMsgHeader()
    v.`stamp` = try Ros2Builtin_interfacesMsgTime.read(from: &r)
    v.`frame_id` = try r.string(bound: 64)
    return v
  }
}
public struct Ros2Sensor_msgsMsgJointState: Canonical {
  public static let maximumWireBytes = 5980
  public static let codecIdentity =
    "UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac"
  public static let nativeType = "sensor_msgs/msg/JointState"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `name`: [String] = []
  public var `position`: [Double] = []
  public var `velocity`: [Double] = []
  public var `effort`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    if self.`name`.count != 0 && self.`position`.count != 0
      && self.`name`.count != self.`position`.count
    {
      throw RosError(22)
    }
    if self.`name`.count != 0 && self.`velocity`.count != 0
      && self.`name`.count != self.`velocity`.count
    {
      throw RosError(22)
    }
    if self.`name`.count != 0 && self.`effort`.count != 0
      && self.`name`.count != self.`effort`.count
    {
      throw RosError(22)
    }
    if self.`position`.count != 0 && self.`velocity`.count != 0
      && self.`position`.count != self.`velocity`.count
    {
      throw RosError(22)
    }
    if self.`position`.count != 0 && self.`effort`.count != 0
      && self.`position`.count != self.`effort`.count
    {
      throw RosError(22)
    }
    if self.`velocity`.count != 0 && self.`effort`.count != 0
      && self.`velocity`.count != self.`effort`.count
    {
      throw RosError(22)
    }
    try self.`header`.write(to: &w)
    guard self.`name`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`name`.count))
    for e in self.`name` {
      try w.string(e, bound: 64)
    }
    guard self.`position`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`position`.count))
    for e in self.`position` {
      try w.float64(e)
    }
    guard self.`velocity`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocity`.count))
    for e in self.`velocity` {
      try w.float64(e)
    }
    guard self.`effort`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`effort`.count))
    for e in self.`effort` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Sensor_msgsMsgJointState {
    var v = Ros2Sensor_msgsMsgJointState()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 64 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`name` = []
    v.`name`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`name`.append(try r.string(bound: 64))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 64 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`position` = []
    v.`position`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`position`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 64 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`velocity` = []
    v.`velocity`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`velocity`.append(try r.float64())
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 64 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`effort` = []
    v.`effort`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`effort`.append(try r.float64())
    }
    if v.`name`.count != 0 && v.`position`.count != 0 && v.`name`.count != v.`position`.count {
      throw RosError(22)
    }
    if v.`name`.count != 0 && v.`velocity`.count != 0 && v.`name`.count != v.`velocity`.count {
      throw RosError(22)
    }
    if v.`name`.count != 0 && v.`effort`.count != 0 && v.`name`.count != v.`effort`.count {
      throw RosError(22)
    }
    if v.`position`.count != 0 && v.`velocity`.count != 0
      && v.`position`.count != v.`velocity`.count
    {
      throw RosError(22)
    }
    if v.`position`.count != 0 && v.`effort`.count != 0 && v.`position`.count != v.`effort`.count {
      throw RosError(22)
    }
    if v.`velocity`.count != 0 && v.`effort`.count != 0 && v.`velocity`.count != v.`effort`.count {
      throw RosError(22)
    }
    return v
  }
}
public struct Ros2Uwvm_isaac_sim_bridgeMsgClockEvent: Canonical {
  public static let maximumWireBytes = 14
  public static let codecIdentity =
    "UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6"
  public static let nativeType = "uwvm_isaac_sim_bridge/msg/ClockEvent"
  public static let nativeIdentity: String? = nil
  public static let `AUTOMATIC`: UInt8 = 1
  public static let `MANUAL`: UInt8 = 2
  public var `kind`: UInt8 = 0
  public var `phase`: UInt8 = 0
  public var `frame`: UInt32 = 0
  public var `sec`: Int32 = 0
  public var `nanosec`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`kind`)
    try w.integer(self.`phase`)
    try w.integer(self.`frame`)
    try w.integer(self.`sec`)
    try w.integer(self.`nanosec`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Uwvm_isaac_sim_bridgeMsgClockEvent
  {
    var v = Ros2Uwvm_isaac_sim_bridgeMsgClockEvent()
    v.`kind` = try r.integer(UInt8.self)
    v.`phase` = try r.integer(UInt8.self)
    v.`frame` = try r.integer(UInt32.self)
    v.`sec` = try r.integer(Int32.self)
    v.`nanosec` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request: Canonical {
  public static let maximumWireBytes = 22
  public static let codecIdentity =
    "UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19"
  public static let nativeType = "uwvm_isaac_sim_bridge/srv/ClockControl_Request"
  public static let nativeIdentity: String? = nil
  public static let `START`: UInt8 = 1
  public static let `STEP`: UInt8 = 2
  public static let `FINISH`: UInt8 = 3
  public static let `CANCEL`: UInt8 = 4
  public var `operation`: UInt8 = 0
  public var `session_nonce`: UInt64 = 0
  public var `request_sequence`: UInt32 = 0
  public var `phase`: UInt8 = 0
  public var `frame`: UInt32 = 0
  public var `impulse`: Bool = false
  public var `extra_update`: Bool = false
  public var `pacing_milliseconds`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`operation`)
    try w.integer(self.`session_nonce`)
    try w.integer(self.`request_sequence`)
    try w.integer(self.`phase`)
    try w.integer(self.`frame`)
    try w.boolean(self.`impulse`)
    try w.boolean(self.`extra_update`)
    try w.integer(self.`pacing_milliseconds`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request
  {
    var v = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request()
    v.`operation` = try r.integer(UInt8.self)
    v.`session_nonce` = try r.integer(UInt64.self)
    v.`request_sequence` = try r.integer(UInt32.self)
    v.`phase` = try r.integer(UInt8.self)
    v.`frame` = try r.integer(UInt32.self)
    v.`impulse` = try r.boolean()
    v.`extra_update` = try r.boolean()
    v.`pacing_milliseconds` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502"
  public static let nativeType = "uwvm_isaac_sim_bridge/srv/ClockControl_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `session_nonce`: UInt64 = 0
  public var `request_sequence`: UInt32 = 0
  public var `state`: UInt8 = 0
  public var `actual_app_updates`: UInt64 = 0
  public var `completed_steps`: UInt32 = 0
  public var `has_event`: Bool = false
  public var `event`: Ros2Uwvm_isaac_sim_bridgeMsgClockEvent =
    Ros2Uwvm_isaac_sim_bridgeMsgClockEvent()
  public var `cleanup_status`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.integer(self.`session_nonce`)
    try w.integer(self.`request_sequence`)
    try w.integer(self.`state`)
    try w.integer(self.`actual_app_updates`)
    try w.integer(self.`completed_steps`)
    try w.boolean(self.`has_event`)
    try self.`event`.write(to: &w)
    try w.integer(self.`cleanup_status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response
  {
    var v = Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`session_nonce` = try r.integer(UInt64.self)
    v.`request_sequence` = try r.integer(UInt32.self)
    v.`state` = try r.integer(UInt8.self)
    v.`actual_app_updates` = try r.integer(UInt64.self)
    v.`completed_steps` = try r.integer(UInt32.self)
    v.`has_event` = try r.boolean()
    v.`event` = try Ros2Uwvm_isaac_sim_bridgeMsgClockEvent.read(from: &r)
    v.`cleanup_status` = try r.integer(UInt32.self)
    return v
  }
}
