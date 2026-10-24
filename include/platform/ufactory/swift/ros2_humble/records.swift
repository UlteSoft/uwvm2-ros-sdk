/// @file records.swift
/// @brief Preserve the complete original ufactory/ros2_humble canonical value domain.
/// @details The selected domain contains 111 complete record/components and 300 original fields. Declared
/// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
/// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
/// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
/// does not qualify a frontend, target ABI or native ROS transport.
/// @see The platform's localized language guide and complete API-CATALOG.md.
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
public struct Ros2Geometry_msgsMsgPoint: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"
  public static let nativeType = "geometry_msgs/msg/Point"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `z`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgPoint {
    var v = Ros2Geometry_msgsMsgPoint()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
public struct Ros2Geometry_msgsMsgQuaternion: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
  public static let nativeType = "geometry_msgs/msg/Quaternion"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = Double(bitPattern: 0x0)
  public var `y`: Double = Double(bitPattern: 0x0)
  public var `z`: Double = Double(bitPattern: 0x0)
  public var `w`: Double = Double(bitPattern: 0x3ff0_0000_0000_0000)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
    try w.float64(self.`w`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgQuaternion {
    var v = Ros2Geometry_msgsMsgQuaternion()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`w` = try r.float64()
    return v
  }
}
public struct Ros2Geometry_msgsMsgPose: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"
  public static let nativeType = "geometry_msgs/msg/Pose"
  public static let nativeIdentity: String? = nil
  public var `position`: Ros2Geometry_msgsMsgPoint = Ros2Geometry_msgsMsgPoint()
  public var `orientation`: Ros2Geometry_msgsMsgQuaternion = Ros2Geometry_msgsMsgQuaternion()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`position`.write(to: &w)
    try self.`orientation`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgPose {
    var v = Ros2Geometry_msgsMsgPose()
    v.`position` = try Ros2Geometry_msgsMsgPoint.read(from: &r)
    v.`orientation` = try Ros2Geometry_msgsMsgQuaternion.read(from: &r)
    return v
  }
}
public struct Ros2Std_msgsMsgHeader: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b"
  public static let nativeType = "std_msgs/msg/Header"
  public static let nativeIdentity: String? = nil
  public var `stamp`: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  public var `frame_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`stamp`.write(to: &w)
    try w.string(self.`frame_id`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Std_msgsMsgHeader {
    var v = Ros2Std_msgsMsgHeader()
    v.`stamp` = try Ros2Builtin_interfacesMsgTime.read(from: &r)
    v.`frame_id` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsMsgCIOState: Canonical {
  public static let maximumWireBytes = 328
  public static let codecIdentity =
    "UWVMROS1_87e50011fee05d07ce49effe9f8fd2be4e5edf3a09a2b3cd735692fea85c2268"
  public static let nativeType = "xarm_msgs/msg/CIOState"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `state`: Int16 = 0
  public var `code`: Int16 = 0
  public var `input_digitals`: [UInt16] = Array(repeating: 0, count: 2)
  public var `output_digitals`: [UInt16] = Array(repeating: 0, count: 2)
  public var `input_analogs`: [Float] = Array(repeating: 0, count: 2)
  public var `output_analogs`: [Float] = Array(repeating: 0, count: 2)
  public var `input_conf`: [UInt8] = Array(repeating: 0, count: 16)
  public var `output_conf`: [UInt8] = Array(repeating: 0, count: 16)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`state`)
    try w.integer(self.`code`)
    guard self.`input_digitals`.count == 2 else { throw RosError(22) }
    for e in self.`input_digitals` {
      try w.integer(e)
    }
    guard self.`output_digitals`.count == 2 else { throw RosError(22) }
    for e in self.`output_digitals` {
      try w.integer(e)
    }
    guard self.`input_analogs`.count == 2 else { throw RosError(22) }
    for e in self.`input_analogs` {
      try w.float32(e)
    }
    guard self.`output_analogs`.count == 2 else { throw RosError(22) }
    for e in self.`output_analogs` {
      try w.float32(e)
    }
    guard self.`input_conf`.count == 16 else { throw RosError(22) }
    for e in self.`input_conf` {
      try w.integer(e)
    }
    guard self.`output_conf`.count == 16 else { throw RosError(22) }
    for e in self.`output_conf` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsMsgCIOState {
    var v = Ros2Xarm_msgsMsgCIOState()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`state` = try r.integer(Int16.self)
    v.`code` = try r.integer(Int16.self)
    let count3 = 2
    v.`input_digitals` = []
    v.`input_digitals`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`input_digitals`.append(try r.integer(UInt16.self))
    }
    let count4 = 2
    v.`output_digitals` = []
    v.`output_digitals`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`output_digitals`.append(try r.integer(UInt16.self))
    }
    let count5 = 2
    v.`input_analogs` = []
    v.`input_analogs`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`input_analogs`.append(try r.float32())
    }
    let count6 = 2
    v.`output_analogs` = []
    v.`output_analogs`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`output_analogs`.append(try r.float32())
    }
    let count7 = 16
    v.`input_conf` = []
    v.`input_conf`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`input_conf`.append(try r.integer(UInt8.self))
    }
    let count8 = 16
    v.`output_conf` = []
    v.`output_conf`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`output_conf`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros2Xarm_msgsMsgIOState: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_8f3e77d7d4c6ac1e49dadd8f4615cb015c028ecf494050a5a6b794d310863dc3"
  public static let nativeType = "xarm_msgs/msg/IOState"
  public static let nativeIdentity: String? = nil
  public var `digital_1`: Int32 = 0
  public var `digital_2`: Int32 = 0
  public var `analog_1`: Float = 0
  public var `analog_2`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`digital_1`)
    try w.integer(self.`digital_2`)
    try w.float32(self.`analog_1`)
    try w.float32(self.`analog_2`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsMsgIOState {
    var v = Ros2Xarm_msgsMsgIOState()
    v.`digital_1` = try r.integer(Int32.self)
    v.`digital_2` = try r.integer(Int32.self)
    v.`analog_1` = try r.float32()
    v.`analog_2` = try r.float32()
    return v
  }
}
public struct Ros2Xarm_msgsMsgMoveVelocity: Canonical {
  public static let maximumWireBytes = 138
  public static let codecIdentity =
    "UWVMROS1_5ba20d989b68823e2b6a83c108f75912c8ab3472caf926903a76078321b5366f"
  public static let nativeType = "xarm_msgs/msg/MoveVelocity"
  public static let nativeIdentity: String? = nil
  public var `speeds`: [Float] = []
  public var `is_sync`: Bool = true
  public var `is_tool_coord`: Bool = false
  public var `duration`: Float = Float(bitPattern: 0xbf80_0000)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`speeds`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`speeds`.count))
    for e in self.`speeds` {
      try w.float32(e)
    }
    try w.boolean(self.`is_sync`)
    try w.boolean(self.`is_tool_coord`)
    try w.float32(self.`duration`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsMsgMoveVelocity {
    var v = Ros2Xarm_msgsMsgMoveVelocity()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`speeds` = []
    v.`speeds`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`speeds`.append(try r.float32())
    }
    v.`is_sync` = try r.boolean()
    v.`is_tool_coord` = try r.boolean()
    v.`duration` = try r.float32()
    return v
  }
}
public struct Ros2Xarm_msgsMsgRobotMsg: Canonical {
  public static let maximumWireBytes = 362
  public static let codecIdentity =
    "UWVMROS1_065254beab3e0439a6fb2965a10d270ca0aef1384523118d04cb39e886841c78"
  public static let nativeType = "xarm_msgs/msg/RobotMsg"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `state`: Int16 = 0
  public var `mode`: Int16 = 0
  public var `cmdnum`: Int16 = 0
  public var `mt_brake`: Int16 = 0
  public var `mt_able`: Int16 = 0
  public var `err`: Int16 = 0
  public var `warn`: Int16 = 0
  public var `angle`: [Float] = []
  public var `pose`: [Float] = Array(repeating: 0, count: 6)
  public var `offset`: [Float] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`state`)
    try w.integer(self.`mode`)
    try w.integer(self.`cmdnum`)
    try w.integer(self.`mt_brake`)
    try w.integer(self.`mt_able`)
    try w.integer(self.`err`)
    try w.integer(self.`warn`)
    guard self.`angle`.count <= 7 else { throw RosError(22) }
    try w.integer(UInt32(self.`angle`.count))
    for e in self.`angle` {
      try w.float32(e)
    }
    guard self.`pose`.count == 6 else { throw RosError(22) }
    for e in self.`pose` {
      try w.float32(e)
    }
    guard self.`offset`.count == 6 else { throw RosError(22) }
    for e in self.`offset` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsMsgRobotMsg {
    var v = Ros2Xarm_msgsMsgRobotMsg()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`state` = try r.integer(Int16.self)
    v.`mode` = try r.integer(Int16.self)
    v.`cmdnum` = try r.integer(Int16.self)
    v.`mt_brake` = try r.integer(Int16.self)
    v.`mt_able` = try r.integer(Int16.self)
    v.`err` = try r.integer(Int16.self)
    v.`warn` = try r.integer(Int16.self)
    let rawcount8 = try r.integer(UInt32.self)
    guard rawcount8 <= 7 else { throw RosError(22) }
    let count8 = Int(rawcount8)
    v.`angle` = []
    v.`angle`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`angle`.append(try r.float32())
    }
    let count9 = 6
    v.`pose` = []
    v.`pose`.reserveCapacity(count9)
    for _ in 0..<count9 {
      v.`pose`.append(try r.float32())
    }
    let count10 = 6
    v.`offset` = []
    v.`offset`.reserveCapacity(count10)
    for _ in 0..<count10 {
      v.`offset`.append(try r.float32())
    }
    return v
  }
}
public struct Ros2Xarm_msgsSrvBioGripperCtrl_Request: Canonical {
  public static let maximumWireBytes = 7
  public static let codecIdentity =
    "UWVMROS1_7eccf0c454f9b64aae93f91d23083b3b5121f540b0d0406142ea7e234a2f634f"
  public static let nativeType = "xarm_msgs/srv/BioGripperCtrl_Request"
  public static let nativeIdentity: String? = nil
  public var `speed`: Int16 = 0
  public var `wait`: Bool = true
  public var `timeout`: Float = Float(bitPattern: 0x40a0_0000)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`speed`)
    try w.boolean(self.`wait`)
    try w.float32(self.`timeout`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvBioGripperCtrl_Request
  {
    var v = Ros2Xarm_msgsSrvBioGripperCtrl_Request()
    v.`speed` = try r.integer(Int16.self)
    v.`wait` = try r.boolean()
    v.`timeout` = try r.float32()
    return v
  }
}
public struct Ros2Xarm_msgsSrvBioGripperCtrl_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_c72e0d7eb90ef20e8f7f521346886fc558547a1357a7915058d0e47c238f316a"
  public static let nativeType = "xarm_msgs/srv/BioGripperCtrl_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvBioGripperCtrl_Response
  {
    var v = Ros2Xarm_msgsSrvBioGripperCtrl_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvBioGripperEnable_Request: Canonical {
  public static let maximumWireBytes = 6
  public static let codecIdentity =
    "UWVMROS1_611333734053d9a2c9d3f776be73081c9ddcaaf435d927e1c87ff9b74f12eb43"
  public static let nativeType = "xarm_msgs/srv/BioGripperEnable_Request"
  public static let nativeIdentity: String? = nil
  public var `enable`: Bool = false
  public var `wait`: Bool = false
  public var `timeout`: Float = Float(bitPattern: 0x4040_0000)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`enable`)
    try w.boolean(self.`wait`)
    try w.float32(self.`timeout`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvBioGripperEnable_Request
  {
    var v = Ros2Xarm_msgsSrvBioGripperEnable_Request()
    v.`enable` = try r.boolean()
    v.`wait` = try r.boolean()
    v.`timeout` = try r.float32()
    return v
  }
}
public struct Ros2Xarm_msgsSrvBioGripperEnable_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_95ffb8f48b2e1bf41855513b3234b6a7b070e0d58d5a07d98fd7de4454034586"
  public static let nativeType = "xarm_msgs/srv/BioGripperEnable_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvBioGripperEnable_Response
  {
    var v = Ros2Xarm_msgsSrvBioGripperEnable_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvCall_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_6646b9fc8c0050e5c56cf918988e8cf8d7c633aabece1be11ec515f1ca2f837d"
  public static let nativeType = "xarm_msgs/srv/Call_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvCall_Request {
    var v = Ros2Xarm_msgsSrvCall_Request()
    return v
  }
}
public struct Ros2Xarm_msgsSrvCall_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_c41e249f4ee21ea39233597918f3204e3a276e70c67b120b164c9cd3852c19da"
  public static let nativeType = "xarm_msgs/srv/Call_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int32 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvCall_Response {
    var v = Ros2Xarm_msgsSrvCall_Response()
    v.`ret` = try r.integer(Int32.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvFtAdmittanceParams_Request: Canonical {
  public static let maximumWireBytes = 466
  public static let codecIdentity =
    "UWVMROS1_1840d594fd4b929bc350ebaef47f43840937c445b24f4f22371c953323de8e92"
  public static let nativeType = "xarm_msgs/srv/FtAdmittanceParams_Request"
  public static let nativeIdentity: String? = nil
  public var `coord`: Int16 = 0
  public var `c_axis`: [Int16] = []
  public var `m`: [Float] = []
  public var `k`: [Float] = []
  public var `b`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`coord`)
    guard self.`c_axis`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`c_axis`.count))
    for e in self.`c_axis` {
      try w.integer(e)
    }
    guard self.`m`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`m`.count))
    for e in self.`m` {
      try w.float32(e)
    }
    guard self.`k`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`k`.count))
    for e in self.`k` {
      try w.float32(e)
    }
    guard self.`b`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`b`.count))
    for e in self.`b` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvFtAdmittanceParams_Request
  {
    var v = Ros2Xarm_msgsSrvFtAdmittanceParams_Request()
    v.`coord` = try r.integer(Int16.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`c_axis` = []
    v.`c_axis`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`c_axis`.append(try r.integer(Int16.self))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`m` = []
    v.`m`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`m`.append(try r.float32())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 32 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`k` = []
    v.`k`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`k`.append(try r.float32())
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 32 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`b` = []
    v.`b`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`b`.append(try r.float32())
    }
    return v
  }
}
public struct Ros2Xarm_msgsSrvFtAdmittanceParams_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_a91b64c60079cb6473e500e18d2da474d1fabc27f8c9cc7690f22b74531cbf07"
  public static let nativeType = "xarm_msgs/srv/FtAdmittanceParams_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvFtAdmittanceParams_Response
  {
    var v = Ros2Xarm_msgsSrvFtAdmittanceParams_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvFtCaliLoad_Request: Canonical {
  public static let maximumWireBytes = 149
  public static let codecIdentity =
    "UWVMROS1_1132f426ed1335b5d92054df6693f0f5d5e5b5b9b21aa4ef19a65c293fa8394f"
  public static let nativeType = "xarm_msgs/srv/FtCaliLoad_Request"
  public static let nativeIdentity: String? = nil
  public var `datas`: [Float] = []
  public var `association_setting_tcp_load`: Bool = false
  public var `m`: Float = Float(bitPattern: 0x3e8a_3d71)
  public var `x`: Float = Float(bitPattern: 0xc188_0000)
  public var `y`: Float = Float(bitPattern: 0x4110_0000)
  public var `z`: Float = Float(bitPattern: 0x413c_cccd)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`datas`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`datas`.count))
    for e in self.`datas` {
      try w.float32(e)
    }
    try w.boolean(self.`association_setting_tcp_load`)
    try w.float32(self.`m`)
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvFtCaliLoad_Request {
    var v = Ros2Xarm_msgsSrvFtCaliLoad_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`datas` = []
    v.`datas`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`datas`.append(try r.float32())
    }
    v.`association_setting_tcp_load` = try r.boolean()
    v.`m` = try r.float32()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    return v
  }
}
public struct Ros2Xarm_msgsSrvFtCaliLoad_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_990034f596c4a8e859c06c438635306e2938e763b5bea45019cdf5223347e4e7"
  public static let nativeType = "xarm_msgs/srv/FtCaliLoad_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvFtCaliLoad_Response {
    var v = Ros2Xarm_msgsSrvFtCaliLoad_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvFtForceConfig_Request: Canonical {
  public static let maximumWireBytes = 334
  public static let codecIdentity =
    "UWVMROS1_0b337f5e2eb604e3057ca3378f3e1cb2b2032bac9d8c60e6b64ac85548b94e63"
  public static let nativeType = "xarm_msgs/srv/FtForceConfig_Request"
  public static let nativeIdentity: String? = nil
  public var `coord`: Int16 = 0
  public var `c_axis`: [Int16] = []
  public var `ref`: [Float] = []
  public var `limits`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`coord`)
    guard self.`c_axis`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`c_axis`.count))
    for e in self.`c_axis` {
      try w.integer(e)
    }
    guard self.`ref`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`ref`.count))
    for e in self.`ref` {
      try w.float32(e)
    }
    guard self.`limits`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`limits`.count))
    for e in self.`limits` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvFtForceConfig_Request
  {
    var v = Ros2Xarm_msgsSrvFtForceConfig_Request()
    v.`coord` = try r.integer(Int16.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`c_axis` = []
    v.`c_axis`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`c_axis`.append(try r.integer(Int16.self))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`ref` = []
    v.`ref`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`ref`.append(try r.float32())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 32 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`limits` = []
    v.`limits`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`limits`.append(try r.float32())
    }
    return v
  }
}
public struct Ros2Xarm_msgsSrvFtForceConfig_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_43ef4f729fcc96502a26261afb70e25a7cdd02d03097d93099b691dec28d59dc"
  public static let nativeType = "xarm_msgs/srv/FtForceConfig_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvFtForceConfig_Response
  {
    var v = Ros2Xarm_msgsSrvFtForceConfig_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvFtForceParams_Request: Canonical {
  public static let maximumWireBytes = 862
  public static let codecIdentity =
    "UWVMROS1_66266e56d45f660d2750e881060e5a6655e5e35d497386ea1c7559517c2d6b08"
  public static let nativeType = "xarm_msgs/srv/FtForceParams_Request"
  public static let nativeIdentity: String? = nil
  public var `coord`: Int16 = 0
  public var `c_axis`: [Int16] = []
  public var `ref`: [Float] = []
  public var `limits`: [Float] = []
  public var `kp`: [Float] = []
  public var `ki`: [Float] = []
  public var `kd`: [Float] = []
  public var `xe_limit`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`coord`)
    guard self.`c_axis`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`c_axis`.count))
    for e in self.`c_axis` {
      try w.integer(e)
    }
    guard self.`ref`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`ref`.count))
    for e in self.`ref` {
      try w.float32(e)
    }
    guard self.`limits`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`limits`.count))
    for e in self.`limits` {
      try w.float32(e)
    }
    guard self.`kp`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`kp`.count))
    for e in self.`kp` {
      try w.float32(e)
    }
    guard self.`ki`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`ki`.count))
    for e in self.`ki` {
      try w.float32(e)
    }
    guard self.`kd`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`kd`.count))
    for e in self.`kd` {
      try w.float32(e)
    }
    guard self.`xe_limit`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`xe_limit`.count))
    for e in self.`xe_limit` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvFtForceParams_Request
  {
    var v = Ros2Xarm_msgsSrvFtForceParams_Request()
    v.`coord` = try r.integer(Int16.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`c_axis` = []
    v.`c_axis`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`c_axis`.append(try r.integer(Int16.self))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`ref` = []
    v.`ref`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`ref`.append(try r.float32())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 32 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`limits` = []
    v.`limits`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`limits`.append(try r.float32())
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 32 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`kp` = []
    v.`kp`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`kp`.append(try r.float32())
    }
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 32 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`ki` = []
    v.`ki`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`ki`.append(try r.float32())
    }
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 32 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`kd` = []
    v.`kd`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`kd`.append(try r.float32())
    }
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 32 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`xe_limit` = []
    v.`xe_limit`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`xe_limit`.append(try r.float32())
    }
    return v
  }
}
public struct Ros2Xarm_msgsSrvFtForceParams_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_573d49b3f36f2111b39ecfabf29154f53dc66975edf7db80725256ed6be9318d"
  public static let nativeType = "xarm_msgs/srv/FtForceParams_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvFtForceParams_Response
  {
    var v = Ros2Xarm_msgsSrvFtForceParams_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvFtForcePid_Request: Canonical {
  public static let maximumWireBytes = 528
  public static let codecIdentity =
    "UWVMROS1_b69ed1d3e81b0b83a498bff16aab71a8f26e472c5e5bc1fad4559e781366b367"
  public static let nativeType = "xarm_msgs/srv/FtForcePid_Request"
  public static let nativeIdentity: String? = nil
  public var `kp`: [Float] = []
  public var `ki`: [Float] = []
  public var `kd`: [Float] = []
  public var `xe_limit`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`kp`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`kp`.count))
    for e in self.`kp` {
      try w.float32(e)
    }
    guard self.`ki`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`ki`.count))
    for e in self.`ki` {
      try w.float32(e)
    }
    guard self.`kd`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`kd`.count))
    for e in self.`kd` {
      try w.float32(e)
    }
    guard self.`xe_limit`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`xe_limit`.count))
    for e in self.`xe_limit` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvFtForcePid_Request {
    var v = Ros2Xarm_msgsSrvFtForcePid_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`kp` = []
    v.`kp`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`kp`.append(try r.float32())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`ki` = []
    v.`ki`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`ki`.append(try r.float32())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`kd` = []
    v.`kd`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`kd`.append(try r.float32())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 32 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`xe_limit` = []
    v.`xe_limit`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`xe_limit`.append(try r.float32())
    }
    return v
  }
}
public struct Ros2Xarm_msgsSrvFtForcePid_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_308d5da22a4445f2b001974907c5b459e5b01ee06fb5029096ae86220e046c89"
  public static let nativeType = "xarm_msgs/srv/FtForcePid_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvFtForcePid_Response {
    var v = Ros2Xarm_msgsSrvFtForcePid_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvFtImpedance_Request: Canonical {
  public static let maximumWireBytes = 466
  public static let codecIdentity =
    "UWVMROS1_66d926f6b7e15bcfc2023215e434d931a77895df36376bb1dfd2cae852c9078d"
  public static let nativeType = "xarm_msgs/srv/FtImpedance_Request"
  public static let nativeIdentity: String? = nil
  public var `coord`: Int16 = 0
  public var `c_axis`: [Int16] = []
  public var `m`: [Float] = []
  public var `k`: [Float] = []
  public var `b`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`coord`)
    guard self.`c_axis`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`c_axis`.count))
    for e in self.`c_axis` {
      try w.integer(e)
    }
    guard self.`m`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`m`.count))
    for e in self.`m` {
      try w.float32(e)
    }
    guard self.`k`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`k`.count))
    for e in self.`k` {
      try w.float32(e)
    }
    guard self.`b`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`b`.count))
    for e in self.`b` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvFtImpedance_Request {
    var v = Ros2Xarm_msgsSrvFtImpedance_Request()
    v.`coord` = try r.integer(Int16.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`c_axis` = []
    v.`c_axis`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`c_axis`.append(try r.integer(Int16.self))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`m` = []
    v.`m`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`m`.append(try r.float32())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 32 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`k` = []
    v.`k`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`k`.append(try r.float32())
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 32 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`b` = []
    v.`b`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`b`.append(try r.float32())
    }
    return v
  }
}
public struct Ros2Xarm_msgsSrvFtImpedance_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_47e50f8950f42a2ee65ea8e760b98a78d4cd57729f528785c8307f072ad64cdb"
  public static let nativeType = "xarm_msgs/srv/FtImpedance_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvFtImpedance_Response {
    var v = Ros2Xarm_msgsSrvFtImpedance_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvGetAnalogIO_Request: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_41f0b8344aedb31609753c92a949f995b9b36e36f4bd45080e7c806e4977d3c2"
  public static let nativeType = "xarm_msgs/srv/GetAnalogIO_Request"
  public static let nativeIdentity: String? = nil
  public var `ionum`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ionum`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvGetAnalogIO_Request {
    var v = Ros2Xarm_msgsSrvGetAnalogIO_Request()
    v.`ionum` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros2Xarm_msgsSrvGetAnalogIO_Response: Canonical {
  public static let maximumWireBytes = 266
  public static let codecIdentity =
    "UWVMROS1_c60eab1570b682fa2a1de07edbcf04155d63abf98cfc6d0aa3ebfa39445d5bbc"
  public static let nativeType = "xarm_msgs/srv/GetAnalogIO_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public var `data`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
    try w.float32(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvGetAnalogIO_Response {
    var v = Ros2Xarm_msgsSrvGetAnalogIO_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    v.`data` = try r.float32()
    return v
  }
}
public struct Ros2Xarm_msgsSrvGetDigitalIO_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_46633e09d5231d69307a8dbdbd90c2d81ef6ad279b961da81b2af86fed51f188"
  public static let nativeType = "xarm_msgs/srv/GetDigitalIO_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvGetDigitalIO_Request {
    var v = Ros2Xarm_msgsSrvGetDigitalIO_Request()
    return v
  }
}
public struct Ros2Xarm_msgsSrvGetDigitalIO_Response: Canonical {
  public static let maximumWireBytes = 330
  public static let codecIdentity =
    "UWVMROS1_325fb8d7a911dfc1746a289380e295d6e153ac2fad2018932ce7cd431511985c"
  public static let nativeType = "xarm_msgs/srv/GetDigitalIO_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public var `digitals`: [Int16] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
    guard self.`digitals`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`digitals`.count))
    for e in self.`digitals` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvGetDigitalIO_Response
  {
    var v = Ros2Xarm_msgsSrvGetDigitalIO_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`digitals` = []
    v.`digitals`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`digitals`.append(try r.integer(Int16.self))
    }
    return v
  }
}
public struct Ros2Xarm_msgsSrvGetFloat32_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_6a3aa3004f481bde62974b72be6157b1e388e6097733474e3fb11855f3aa5c84"
  public static let nativeType = "xarm_msgs/srv/GetFloat32_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvGetFloat32_Request {
    var v = Ros2Xarm_msgsSrvGetFloat32_Request()
    return v
  }
}
public struct Ros2Xarm_msgsSrvGetFloat32_Response: Canonical {
  public static let maximumWireBytes = 266
  public static let codecIdentity =
    "UWVMROS1_e43f1551258cbf7bae19089eade8321e8d565c0783551e016dc73ed410c9e3f2"
  public static let nativeType = "xarm_msgs/srv/GetFloat32_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public var `data`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
    try w.float32(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvGetFloat32_Response {
    var v = Ros2Xarm_msgsSrvGetFloat32_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    v.`data` = try r.float32()
    return v
  }
}
public struct Ros2Xarm_msgsSrvGetFloat32List_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_36ec63da8ede627478e174c1f1dd75926973d3b1d57a6f03c05ffac8e4b649a3"
  public static let nativeType = "xarm_msgs/srv/GetFloat32List_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvGetFloat32List_Request
  {
    var v = Ros2Xarm_msgsSrvGetFloat32List_Request()
    return v
  }
}
public struct Ros2Xarm_msgsSrvGetFloat32List_Response: Canonical {
  public static let maximumWireBytes = 394
  public static let codecIdentity =
    "UWVMROS1_f30d581b8aa511578c21a3db64c818693b06268b7916cc16e927fc329f40e8d4"
  public static let nativeType = "xarm_msgs/srv/GetFloat32List_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public var `datas`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
    guard self.`datas`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`datas`.count))
    for e in self.`datas` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvGetFloat32List_Response
  {
    var v = Ros2Xarm_msgsSrvGetFloat32List_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`datas` = []
    v.`datas`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`datas`.append(try r.float32())
    }
    return v
  }
}
public struct Ros2Xarm_msgsSrvGetInt16_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_85fe1186c4f0887d4ac9cf3f0d690c32ba3ec895bef3d49b2199527b53627865"
  public static let nativeType = "xarm_msgs/srv/GetInt16_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvGetInt16_Request {
    var v = Ros2Xarm_msgsSrvGetInt16_Request()
    return v
  }
}
public struct Ros2Xarm_msgsSrvGetInt16_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_c29870d9604ae0d220de53bb6768681bfbb120171af61c36e45b9a660fd8f1a9"
  public static let nativeType = "xarm_msgs/srv/GetInt16_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public var `data`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
    try w.integer(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvGetInt16_Response {
    var v = Ros2Xarm_msgsSrvGetInt16_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    v.`data` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros2Xarm_msgsSrvGetInt16List_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_ca95d35c75e9843b2c9d27bd94e34e336641255ad5dd2b0ff22f8a6efb36db2d"
  public static let nativeType = "xarm_msgs/srv/GetInt16List_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvGetInt16List_Request {
    var v = Ros2Xarm_msgsSrvGetInt16List_Request()
    return v
  }
}
public struct Ros2Xarm_msgsSrvGetInt16List_Response: Canonical {
  public static let maximumWireBytes = 330
  public static let codecIdentity =
    "UWVMROS1_d35b6ac9d82960e32fd035554dc021e8f3e592259c1db9a714e9b575cc611139"
  public static let nativeType = "xarm_msgs/srv/GetInt16List_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public var `datas`: [Int16] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
    guard self.`datas`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`datas`.count))
    for e in self.`datas` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvGetInt16List_Response
  {
    var v = Ros2Xarm_msgsSrvGetInt16List_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`datas` = []
    v.`datas`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`datas`.append(try r.integer(Int16.self))
    }
    return v
  }
}
public struct Ros2Xarm_msgsSrvGetInt32_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_e7dbcdb905c89364b288e23c985ba73394529613bdb2f4a74b10d811203f0dfe"
  public static let nativeType = "xarm_msgs/srv/GetInt32_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvGetInt32_Request {
    var v = Ros2Xarm_msgsSrvGetInt32_Request()
    return v
  }
}
public struct Ros2Xarm_msgsSrvGetInt32_Response: Canonical {
  public static let maximumWireBytes = 266
  public static let codecIdentity =
    "UWVMROS1_9834d69ebc7644d3d2feee8f4bcb20effbc15931709be7264ea04bd88b2686f2"
  public static let nativeType = "xarm_msgs/srv/GetInt32_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public var `data`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
    try w.integer(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvGetInt32_Response {
    var v = Ros2Xarm_msgsSrvGetInt32_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    v.`data` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Xarm_msgsSrvGetInt32ByType_Request: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_5d4ba9b5c23452f3b203c66e3cbc5880b99cac6b9ec9ce3acac96414013f993a"
  public static let nativeType = "xarm_msgs/srv/GetInt32ByType_Request"
  public static let nativeIdentity: String? = nil
  public var `type`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`type`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvGetInt32ByType_Request
  {
    var v = Ros2Xarm_msgsSrvGetInt32ByType_Request()
    v.`type` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros2Xarm_msgsSrvGetInt32ByType_Response: Canonical {
  public static let maximumWireBytes = 266
  public static let codecIdentity =
    "UWVMROS1_6cabb4a9a840ef62c4f8a2da7da917410a97a8aafcf78e361cc928a7cdbe5c3a"
  public static let nativeType = "xarm_msgs/srv/GetInt32ByType_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public var `data`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
    try w.integer(self.`data`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvGetInt32ByType_Response
  {
    var v = Ros2Xarm_msgsSrvGetInt32ByType_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    v.`data` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Xarm_msgsSrvGetSetModbusData_Request: Canonical {
  public static let maximumWireBytes = 4107
  public static let codecIdentity =
    "UWVMROS1_f9cc9e1e5635a37023cc50f66930072f3d61bcfd58f0d8ebb0218c4eb3a035cd"
  public static let nativeType = "xarm_msgs/srv/GetSetModbusData_Request"
  public static let nativeIdentity: String? = nil
  public var `modbus_data`: [UInt8] = []
  public var `modbus_length`: Int16 = 0
  public var `ret_length`: Int16 = 0
  public var `host_id`: UInt8 = 9
  public var `is_transparent_transmission`: Bool = false
  public var `use_503_port`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`modbus_data`.count <= 4096 else { throw RosError(22) }
    try w.integer(UInt32(self.`modbus_data`.count))
    for e in self.`modbus_data` {
      try w.integer(e)
    }
    try w.integer(self.`modbus_length`)
    try w.integer(self.`ret_length`)
    try w.integer(self.`host_id`)
    try w.boolean(self.`is_transparent_transmission`)
    try w.boolean(self.`use_503_port`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvGetSetModbusData_Request
  {
    var v = Ros2Xarm_msgsSrvGetSetModbusData_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 4096 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`modbus_data` = []
    v.`modbus_data`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`modbus_data`.append(try r.integer(UInt8.self))
    }
    v.`modbus_length` = try r.integer(Int16.self)
    v.`ret_length` = try r.integer(Int16.self)
    v.`host_id` = try r.integer(UInt8.self)
    v.`is_transparent_transmission` = try r.boolean()
    v.`use_503_port` = try r.boolean()
    return v
  }
}
public struct Ros2Xarm_msgsSrvGetSetModbusData_Response: Canonical {
  public static let maximumWireBytes = 4362
  public static let codecIdentity =
    "UWVMROS1_7367e58167bc61c209e7a28ee1a4d5809525cb11cbe48ee972724b5f0536b5b7"
  public static let nativeType = "xarm_msgs/srv/GetSetModbusData_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public var `ret_data`: [UInt8] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
    guard self.`ret_data`.count <= 4096 else { throw RosError(22) }
    try w.integer(UInt32(self.`ret_data`.count))
    for e in self.`ret_data` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvGetSetModbusData_Response
  {
    var v = Ros2Xarm_msgsSrvGetSetModbusData_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4096 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`ret_data` = []
    v.`ret_data`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`ret_data`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros2Xarm_msgsSrvGripperMove_Request: Canonical {
  public static let maximumWireBytes = 9
  public static let codecIdentity =
    "UWVMROS1_54c0e0eeb956e5ab0b1bd31aabc67493ee2bdb9b7028f41b73eb9d8b1e568322"
  public static let nativeType = "xarm_msgs/srv/GripperMove_Request"
  public static let nativeIdentity: String? = nil
  public var `pos`: Float = 0
  public var `wait`: Bool = false
  public var `timeout`: Float = Float(bitPattern: 0x4120_0000)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`pos`)
    try w.boolean(self.`wait`)
    try w.float32(self.`timeout`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvGripperMove_Request {
    var v = Ros2Xarm_msgsSrvGripperMove_Request()
    v.`pos` = try r.float32()
    v.`wait` = try r.boolean()
    v.`timeout` = try r.float32()
    return v
  }
}
public struct Ros2Xarm_msgsSrvGripperMove_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_1c64a50983aaf8dd20d3a400be9d69242f52c6ad7f369ea54dd19be931dc80a1"
  public static let nativeType = "xarm_msgs/srv/GripperMove_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvGripperMove_Response {
    var v = Ros2Xarm_msgsSrvGripperMove_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvIdenLoad_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_51918f23cc7db51b63e91cca012e657836528d8557a4479b287cd9631015a79a"
  public static let nativeType = "xarm_msgs/srv/IdenLoad_Request"
  public static let nativeIdentity: String? = nil
  public var `estimated_mass`: Float = Float(bitPattern: 0x0)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`estimated_mass`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvIdenLoad_Request {
    var v = Ros2Xarm_msgsSrvIdenLoad_Request()
    v.`estimated_mass` = try r.float32()
    return v
  }
}
public struct Ros2Xarm_msgsSrvIdenLoad_Response: Canonical {
  public static let maximumWireBytes = 394
  public static let codecIdentity =
    "UWVMROS1_3934143122064209bd30159d9972b5cfd529728f3f95785c9641d20790e4f64e"
  public static let nativeType = "xarm_msgs/srv/IdenLoad_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public var `datas`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
    guard self.`datas`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`datas`.count))
    for e in self.`datas` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvIdenLoad_Response {
    var v = Ros2Xarm_msgsSrvIdenLoad_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`datas` = []
    v.`datas`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`datas`.append(try r.float32())
    }
    return v
  }
}
public struct Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_c9d87b79119e9fd9efcf7cd7bdbe40f3e3a2244b1c97149da5c2ff93163a6b45"
  public static let nativeType = "xarm_msgs/srv/LinearMotorBackOrigin_Request"
  public static let nativeIdentity: String? = nil
  public var `wait`: Bool = true
  public var `auto_enable`: Bool = true
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`wait`)
    try w.boolean(self.`auto_enable`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request
  {
    var v = Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request()
    v.`wait` = try r.boolean()
    v.`auto_enable` = try r.boolean()
    return v
  }
}
public struct Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_159fa7c79b6d14e044085bc7969a984af68bfab04cfd092a4982b2de24e9e02d"
  public static let nativeType = "xarm_msgs/srv/LinearMotorBackOrigin_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response
  {
    var v = Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvLinearMotorSetPos_Request: Canonical {
  public static let maximumWireBytes = 10
  public static let codecIdentity =
    "UWVMROS1_5babc4a61d86991a7be456e48f86c175f0189b96e5506b779adcbe6e4ece97dd"
  public static let nativeType = "xarm_msgs/srv/LinearMotorSetPos_Request"
  public static let nativeIdentity: String? = nil
  public var `pos`: Int16 = 0
  public var `speed`: Int16 = 0
  public var `wait`: Bool = true
  public var `timeout`: Float = Float(bitPattern: 0x42c8_0000)
  public var `auto_enable`: Bool = true
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`pos`)
    try w.integer(self.`speed`)
    try w.boolean(self.`wait`)
    try w.float32(self.`timeout`)
    try w.boolean(self.`auto_enable`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvLinearMotorSetPos_Request
  {
    var v = Ros2Xarm_msgsSrvLinearMotorSetPos_Request()
    v.`pos` = try r.integer(Int16.self)
    v.`speed` = try r.integer(Int16.self)
    v.`wait` = try r.boolean()
    v.`timeout` = try r.float32()
    v.`auto_enable` = try r.boolean()
    return v
  }
}
public struct Ros2Xarm_msgsSrvLinearMotorSetPos_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_f2bc623880b42ee6f94117ecdf846785cac064a2c5e81df5f2ff8c3e9179106d"
  public static let nativeType = "xarm_msgs/srv/LinearMotorSetPos_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvLinearMotorSetPos_Response
  {
    var v = Ros2Xarm_msgsSrvLinearMotorSetPos_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_797f71ddda85f463999f437e70aaaf40517fe78dfa0356a640afaffa5154e8d9"
  public static let nativeType = "xarm_msgs/srv/LinearTrackBackOrigin_Request"
  public static let nativeIdentity: String? = nil
  public var `wait`: Bool = true
  public var `auto_enable`: Bool = true
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`wait`)
    try w.boolean(self.`auto_enable`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request
  {
    var v = Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request()
    v.`wait` = try r.boolean()
    v.`auto_enable` = try r.boolean()
    return v
  }
}
public struct Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_0881a1e5f823c169ed5d1063e8bd681b8b2f994ebd9bee3e335c47d3bd2db4de"
  public static let nativeType = "xarm_msgs/srv/LinearTrackBackOrigin_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response
  {
    var v = Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvLinearTrackSetPos_Request: Canonical {
  public static let maximumWireBytes = 10
  public static let codecIdentity =
    "UWVMROS1_b73e173d593e64d898e69d32e659ddff1741eaada6af1ae00d9a4c406d9dad62"
  public static let nativeType = "xarm_msgs/srv/LinearTrackSetPos_Request"
  public static let nativeIdentity: String? = nil
  public var `pos`: Int16 = 0
  public var `speed`: Int16 = 0
  public var `wait`: Bool = true
  public var `timeout`: Float = Float(bitPattern: 0x42c8_0000)
  public var `auto_enable`: Bool = true
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`pos`)
    try w.integer(self.`speed`)
    try w.boolean(self.`wait`)
    try w.float32(self.`timeout`)
    try w.boolean(self.`auto_enable`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvLinearTrackSetPos_Request
  {
    var v = Ros2Xarm_msgsSrvLinearTrackSetPos_Request()
    v.`pos` = try r.integer(Int16.self)
    v.`speed` = try r.integer(Int16.self)
    v.`wait` = try r.boolean()
    v.`timeout` = try r.float32()
    v.`auto_enable` = try r.boolean()
    return v
  }
}
public struct Ros2Xarm_msgsSrvLinearTrackSetPos_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_aba9a933b5cde05c0a1d0a44fe404b3c3dadad72aac91b7a7aff04221c6667f7"
  public static let nativeType = "xarm_msgs/srv/LinearTrackSetPos_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvLinearTrackSetPos_Response
  {
    var v = Ros2Xarm_msgsSrvLinearTrackSetPos_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvMoveCartesian_Request: Canonical {
  public static let maximumWireBytes = 156
  public static let codecIdentity =
    "UWVMROS1_42c90af2eabc1a42376918d5cb862b4d8f8b2a3f958b7c444c8d8cccb2435512"
  public static let nativeType = "xarm_msgs/srv/MoveCartesian_Request"
  public static let nativeIdentity: String? = nil
  public var `pose`: [Float] = []
  public var `speed`: Float = Float(bitPattern: 0x0)
  public var `acc`: Float = Float(bitPattern: 0x0)
  public var `mvtime`: Float = Float(bitPattern: 0x0)
  public var `wait`: Bool = false
  public var `timeout`: Float = Float(bitPattern: 0xbf80_0000)
  public var `radius`: Float = Float(bitPattern: 0xbf80_0000)
  public var `is_tool_coord`: Bool = false
  public var `relative`: Bool = false
  public var `motion_type`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pose`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`pose`.count))
    for e in self.`pose` {
      try w.float32(e)
    }
    try w.float32(self.`speed`)
    try w.float32(self.`acc`)
    try w.float32(self.`mvtime`)
    try w.boolean(self.`wait`)
    try w.float32(self.`timeout`)
    try w.float32(self.`radius`)
    try w.boolean(self.`is_tool_coord`)
    try w.boolean(self.`relative`)
    try w.integer(self.`motion_type`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvMoveCartesian_Request
  {
    var v = Ros2Xarm_msgsSrvMoveCartesian_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`pose` = []
    v.`pose`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pose`.append(try r.float32())
    }
    v.`speed` = try r.float32()
    v.`acc` = try r.float32()
    v.`mvtime` = try r.float32()
    v.`wait` = try r.boolean()
    v.`timeout` = try r.float32()
    v.`radius` = try r.float32()
    v.`is_tool_coord` = try r.boolean()
    v.`relative` = try r.boolean()
    v.`motion_type` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Xarm_msgsSrvMoveCartesian_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_17659e470cc45dd7fe1bc6240aa09aa6693e90e40d5dcf556cfb2b8d946af7be"
  public static let nativeType = "xarm_msgs/srv/MoveCartesian_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvMoveCartesian_Response
  {
    var v = Ros2Xarm_msgsSrvMoveCartesian_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvMoveCircle_Request: Canonical {
  public static let maximumWireBytes = 287
  public static let codecIdentity =
    "UWVMROS1_1ad9d0ee80dfb636f7cdbccd1b510bd123f13615a16bed966bd5e8829a3b7f1b"
  public static let nativeType = "xarm_msgs/srv/MoveCircle_Request"
  public static let nativeIdentity: String? = nil
  public var `pose1`: [Float] = []
  public var `pose2`: [Float] = []
  public var `percent`: Float = 0
  public var `speed`: Float = Float(bitPattern: 0x0)
  public var `acc`: Float = Float(bitPattern: 0x0)
  public var `mvtime`: Float = Float(bitPattern: 0x0)
  public var `wait`: Bool = false
  public var `timeout`: Float = Float(bitPattern: 0xbf80_0000)
  public var `is_tool_coord`: Bool = false
  public var `is_axis_angle`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pose1`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`pose1`.count))
    for e in self.`pose1` {
      try w.float32(e)
    }
    guard self.`pose2`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`pose2`.count))
    for e in self.`pose2` {
      try w.float32(e)
    }
    try w.float32(self.`percent`)
    try w.float32(self.`speed`)
    try w.float32(self.`acc`)
    try w.float32(self.`mvtime`)
    try w.boolean(self.`wait`)
    try w.float32(self.`timeout`)
    try w.boolean(self.`is_tool_coord`)
    try w.boolean(self.`is_axis_angle`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvMoveCircle_Request {
    var v = Ros2Xarm_msgsSrvMoveCircle_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`pose1` = []
    v.`pose1`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pose1`.append(try r.float32())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`pose2` = []
    v.`pose2`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`pose2`.append(try r.float32())
    }
    v.`percent` = try r.float32()
    v.`speed` = try r.float32()
    v.`acc` = try r.float32()
    v.`mvtime` = try r.float32()
    v.`wait` = try r.boolean()
    v.`timeout` = try r.float32()
    v.`is_tool_coord` = try r.boolean()
    v.`is_axis_angle` = try r.boolean()
    return v
  }
}
public struct Ros2Xarm_msgsSrvMoveCircle_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_e884158bfd9d5bed6cb76d276e7d312c5f2d69d0508a1c01566f6773b7e4dbbd"
  public static let nativeType = "xarm_msgs/srv/MoveCircle_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvMoveCircle_Response {
    var v = Ros2Xarm_msgsSrvMoveCircle_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvMoveHome_Request: Canonical {
  public static let maximumWireBytes = 17
  public static let codecIdentity =
    "UWVMROS1_f9c04cf15dadd5c45cc16017533216bcbf682ac3366764c0546e73deabfab5a3"
  public static let nativeType = "xarm_msgs/srv/MoveHome_Request"
  public static let nativeIdentity: String? = nil
  public var `speed`: Float = Float(bitPattern: 0x0)
  public var `acc`: Float = Float(bitPattern: 0x0)
  public var `mvtime`: Float = Float(bitPattern: 0x0)
  public var `wait`: Bool = false
  public var `timeout`: Float = Float(bitPattern: 0xbf80_0000)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`speed`)
    try w.float32(self.`acc`)
    try w.float32(self.`mvtime`)
    try w.boolean(self.`wait`)
    try w.float32(self.`timeout`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvMoveHome_Request {
    var v = Ros2Xarm_msgsSrvMoveHome_Request()
    v.`speed` = try r.float32()
    v.`acc` = try r.float32()
    v.`mvtime` = try r.float32()
    v.`wait` = try r.boolean()
    v.`timeout` = try r.float32()
    return v
  }
}
public struct Ros2Xarm_msgsSrvMoveHome_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_c5a0764d10a7a2c3285ada1c04594d1cad466f7ec71fe53e42b2ea98b70793aa"
  public static let nativeType = "xarm_msgs/srv/MoveHome_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvMoveHome_Response {
    var v = Ros2Xarm_msgsSrvMoveHome_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvMoveJoint_Request: Canonical {
  public static let maximumWireBytes = 154
  public static let codecIdentity =
    "UWVMROS1_a0216b4ff8cf8baff2e2891d6a8d6d1397a42a750f68698d97dfc08d00e7c8d7"
  public static let nativeType = "xarm_msgs/srv/MoveJoint_Request"
  public static let nativeIdentity: String? = nil
  public var `angles`: [Float] = []
  public var `speed`: Float = Float(bitPattern: 0x0)
  public var `acc`: Float = Float(bitPattern: 0x0)
  public var `mvtime`: Float = Float(bitPattern: 0x0)
  public var `wait`: Bool = false
  public var `timeout`: Float = Float(bitPattern: 0xbf80_0000)
  public var `radius`: Float = Float(bitPattern: 0xbf80_0000)
  public var `relative`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`angles`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`angles`.count))
    for e in self.`angles` {
      try w.float32(e)
    }
    try w.float32(self.`speed`)
    try w.float32(self.`acc`)
    try w.float32(self.`mvtime`)
    try w.boolean(self.`wait`)
    try w.float32(self.`timeout`)
    try w.float32(self.`radius`)
    try w.boolean(self.`relative`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvMoveJoint_Request {
    var v = Ros2Xarm_msgsSrvMoveJoint_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`angles` = []
    v.`angles`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`angles`.append(try r.float32())
    }
    v.`speed` = try r.float32()
    v.`acc` = try r.float32()
    v.`mvtime` = try r.float32()
    v.`wait` = try r.boolean()
    v.`timeout` = try r.float32()
    v.`radius` = try r.float32()
    v.`relative` = try r.boolean()
    return v
  }
}
public struct Ros2Xarm_msgsSrvMoveJoint_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_0af0f83fe9efc15c4a2334c229e0d079fad286630c52d703b7e0cfaa037f04a7"
  public static let nativeType = "xarm_msgs/srv/MoveJoint_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvMoveJoint_Response {
    var v = Ros2Xarm_msgsSrvMoveJoint_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvMoveVelocity_Request: Canonical {
  public static let maximumWireBytes = 138
  public static let codecIdentity =
    "UWVMROS1_a5378f3f0f4b89e04279b6d79b8b756d0970f74cd582636d56f1302be2c015c4"
  public static let nativeType = "xarm_msgs/srv/MoveVelocity_Request"
  public static let nativeIdentity: String? = nil
  public var `speeds`: [Float] = []
  public var `is_sync`: Bool = true
  public var `is_tool_coord`: Bool = false
  public var `duration`: Float = Float(bitPattern: 0xbf80_0000)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`speeds`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`speeds`.count))
    for e in self.`speeds` {
      try w.float32(e)
    }
    try w.boolean(self.`is_sync`)
    try w.boolean(self.`is_tool_coord`)
    try w.float32(self.`duration`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvMoveVelocity_Request {
    var v = Ros2Xarm_msgsSrvMoveVelocity_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`speeds` = []
    v.`speeds`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`speeds`.append(try r.float32())
    }
    v.`is_sync` = try r.boolean()
    v.`is_tool_coord` = try r.boolean()
    v.`duration` = try r.float32()
    return v
  }
}
public struct Ros2Xarm_msgsSrvMoveVelocity_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_3ec82a1e864723e95f8fec98073d5e1ed009d2882fa8c20e55b4f8d86ec1d318"
  public static let nativeType = "xarm_msgs/srv/MoveVelocity_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvMoveVelocity_Response
  {
    var v = Ros2Xarm_msgsSrvMoveVelocity_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvPlanExec_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_376aa0461a41377c8e5ba44ec96e9dac39fea01da3db1d31a6a90190b5bf66d5"
  public static let nativeType = "xarm_msgs/srv/PlanExec_Request"
  public static let nativeIdentity: String? = nil
  public var `wait`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`wait`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvPlanExec_Request {
    var v = Ros2Xarm_msgsSrvPlanExec_Request()
    v.`wait` = try r.boolean()
    return v
  }
}
public struct Ros2Xarm_msgsSrvPlanExec_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_5adfabe15405e2e15b08760866169c214029fe826a69dd1277808c3ebb16a88e"
  public static let nativeType = "xarm_msgs/srv/PlanExec_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvPlanExec_Response {
    var v = Ros2Xarm_msgsSrvPlanExec_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Xarm_msgsSrvPlanJoint_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_997562beca1e50895151970e89f0f253431451c60e274222ae622c49c0455bd5"
  public static let nativeType = "xarm_msgs/srv/PlanJoint_Request"
  public static let nativeIdentity: String? = nil
  public var `target`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`target`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`target`.count))
    for e in self.`target` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvPlanJoint_Request {
    var v = Ros2Xarm_msgsSrvPlanJoint_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`target` = []
    v.`target`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`target`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Xarm_msgsSrvPlanJoint_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_dfe1e3eaf8913c9e6b5aed6ee60bd7c24eb4e2944036f0de92fcd6846acac782"
  public static let nativeType = "xarm_msgs/srv/PlanJoint_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvPlanJoint_Response {
    var v = Ros2Xarm_msgsSrvPlanJoint_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Xarm_msgsSrvPlanPose_Request: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_01b292bd33f28682cde3cb35f9d62e8d99cd8a58d2a5c3d5e6411121d3a09859"
  public static let nativeType = "xarm_msgs/srv/PlanPose_Request"
  public static let nativeIdentity: String? = nil
  public var `target`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`target`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvPlanPose_Request {
    var v = Ros2Xarm_msgsSrvPlanPose_Request()
    v.`target` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    return v
  }
}
public struct Ros2Xarm_msgsSrvPlanPose_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_0cdcf4232f673c3034319f90c1d0f56fbfd86a829fa9f6460f87fea391ce766d"
  public static let nativeType = "xarm_msgs/srv/PlanPose_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvPlanPose_Response {
    var v = Ros2Xarm_msgsSrvPlanPose_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Xarm_msgsSrvPlanSingleStraight_Request: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_4e350b5145aa64c8ff4dc15cd61ba557f0db2b256798e50e4b4e28d47ecdc2b0"
  public static let nativeType = "xarm_msgs/srv/PlanSingleStraight_Request"
  public static let nativeIdentity: String? = nil
  public var `target`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`target`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvPlanSingleStraight_Request
  {
    var v = Ros2Xarm_msgsSrvPlanSingleStraight_Request()
    v.`target` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    return v
  }
}
public struct Ros2Xarm_msgsSrvPlanSingleStraight_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_ef2fdd22f223f4c91ccc886bddae43b0d48bc9063b3a199c7d8bb6f1bfb86432"
  public static let nativeType = "xarm_msgs/srv/PlanSingleStraight_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvPlanSingleStraight_Response
  {
    var v = Ros2Xarm_msgsSrvPlanSingleStraight_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Xarm_msgsSrvRobotiqActivate_Request: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_7c4501be17de61893d5d91b3808769133ac5a444d2f0a8b1b3b13a01f03b75c3"
  public static let nativeType = "xarm_msgs/srv/RobotiqActivate_Request"
  public static let nativeIdentity: String? = nil
  public var `wait`: Bool = true
  public var `timeout`: Float = Float(bitPattern: 0x4040_0000)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`wait`)
    try w.float32(self.`timeout`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvRobotiqActivate_Request
  {
    var v = Ros2Xarm_msgsSrvRobotiqActivate_Request()
    v.`wait` = try r.boolean()
    v.`timeout` = try r.float32()
    return v
  }
}
public struct Ros2Xarm_msgsSrvRobotiqActivate_Response: Canonical {
  public static let maximumWireBytes = 4362
  public static let codecIdentity =
    "UWVMROS1_e6f6d01b439afdbb2461a8ed682ce1332e021a9a8ae3326772f13469a70648d4"
  public static let nativeType = "xarm_msgs/srv/RobotiqActivate_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public var `ret_data`: [UInt8] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
    guard self.`ret_data`.count <= 4096 else { throw RosError(22) }
    try w.integer(UInt32(self.`ret_data`.count))
    for e in self.`ret_data` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvRobotiqActivate_Response
  {
    var v = Ros2Xarm_msgsSrvRobotiqActivate_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4096 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`ret_data` = []
    v.`ret_data`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`ret_data`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros2Xarm_msgsSrvRobotiqGetStatus_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_99970019152494d54024cb4c44af400853506d81149e1bba55d40caa9bd44e6b"
  public static let nativeType = "xarm_msgs/srv/RobotiqGetStatus_Request"
  public static let nativeIdentity: String? = nil
  public var `number_of_registers`: UInt8 = 3
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`number_of_registers`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvRobotiqGetStatus_Request
  {
    var v = Ros2Xarm_msgsSrvRobotiqGetStatus_Request()
    v.`number_of_registers` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Xarm_msgsSrvRobotiqGetStatus_Response: Canonical {
  public static let maximumWireBytes = 4362
  public static let codecIdentity =
    "UWVMROS1_b1b7945622a48beab45b569b9c64139eec028b5a61dc75cfb6dc302d8b787e43"
  public static let nativeType = "xarm_msgs/srv/RobotiqGetStatus_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public var `ret_data`: [UInt8] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
    guard self.`ret_data`.count <= 4096 else { throw RosError(22) }
    try w.integer(UInt32(self.`ret_data`.count))
    for e in self.`ret_data` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvRobotiqGetStatus_Response
  {
    var v = Ros2Xarm_msgsSrvRobotiqGetStatus_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4096 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`ret_data` = []
    v.`ret_data`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`ret_data`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros2Xarm_msgsSrvRobotiqMove_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_f1e5c6c7be4583ecdb91da2401c9adcf727eff9e2b69df21e8a4f1de468775ad"
  public static let nativeType = "xarm_msgs/srv/RobotiqMove_Request"
  public static let nativeIdentity: String? = nil
  public var `pos`: UInt8 = 0
  public var `speed`: UInt8 = 255
  public var `force`: UInt8 = 255
  public var `wait`: Bool = true
  public var `timeout`: Float = Float(bitPattern: 0x40a0_0000)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`pos`)
    try w.integer(self.`speed`)
    try w.integer(self.`force`)
    try w.boolean(self.`wait`)
    try w.float32(self.`timeout`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvRobotiqMove_Request {
    var v = Ros2Xarm_msgsSrvRobotiqMove_Request()
    v.`pos` = try r.integer(UInt8.self)
    v.`speed` = try r.integer(UInt8.self)
    v.`force` = try r.integer(UInt8.self)
    v.`wait` = try r.boolean()
    v.`timeout` = try r.float32()
    return v
  }
}
public struct Ros2Xarm_msgsSrvRobotiqMove_Response: Canonical {
  public static let maximumWireBytes = 4362
  public static let codecIdentity =
    "UWVMROS1_7b581f9f45349f688543ea57a3889b351909b43a9d5bff65d916b804b00bacf6"
  public static let nativeType = "xarm_msgs/srv/RobotiqMove_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public var `ret_data`: [UInt8] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
    guard self.`ret_data`.count <= 4096 else { throw RosError(22) }
    try w.integer(UInt32(self.`ret_data`.count))
    for e in self.`ret_data` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvRobotiqMove_Response {
    var v = Ros2Xarm_msgsSrvRobotiqMove_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4096 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`ret_data` = []
    v.`ret_data`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`ret_data`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros2Xarm_msgsSrvRobotiqReset_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_59168733ec2ce73fc135dfa2c0f1edd10a4ad82062acf477c7ca9258ecb8d755"
  public static let nativeType = "xarm_msgs/srv/RobotiqReset_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvRobotiqReset_Request {
    var v = Ros2Xarm_msgsSrvRobotiqReset_Request()
    return v
  }
}
public struct Ros2Xarm_msgsSrvRobotiqReset_Response: Canonical {
  public static let maximumWireBytes = 4362
  public static let codecIdentity =
    "UWVMROS1_4c0f6950fe50ffae8b6b30be7265606bddaebeb1099038b1e973f144c8164d2e"
  public static let nativeType = "xarm_msgs/srv/RobotiqReset_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public var `ret_data`: [UInt8] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
    guard self.`ret_data`.count <= 4096 else { throw RosError(22) }
    try w.integer(UInt32(self.`ret_data`.count))
    for e in self.`ret_data` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvRobotiqReset_Response
  {
    var v = Ros2Xarm_msgsSrvRobotiqReset_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4096 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`ret_data` = []
    v.`ret_data`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`ret_data`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetAnalogIO_Request: Canonical {
  public static let maximumWireBytes = 142
  public static let codecIdentity =
    "UWVMROS1_77df87cd98b5dd0b384674739c65f045eb32346596b82ceca2ccb9ff6e9dfe96"
  public static let nativeType = "xarm_msgs/srv/SetAnalogIO_Request"
  public static let nativeIdentity: String? = nil
  public var `ionum`: Int16 = 0
  public var `value`: Float = 0
  public var `xyz`: [Float] = []
  public var `tol_r`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ionum`)
    try w.float32(self.`value`)
    guard self.`xyz`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`xyz`.count))
    for e in self.`xyz` {
      try w.float32(e)
    }
    try w.float32(self.`tol_r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvSetAnalogIO_Request {
    var v = Ros2Xarm_msgsSrvSetAnalogIO_Request()
    v.`ionum` = try r.integer(Int16.self)
    v.`value` = try r.float32()
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`xyz` = []
    v.`xyz`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`xyz`.append(try r.float32())
    }
    v.`tol_r` = try r.float32()
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetAnalogIO_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_480194824f2056f0dd3d3031fda9e27f49b3f7b242f0d0bcb4a783c6649164ec"
  public static let nativeType = "xarm_msgs/srv/SetAnalogIO_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvSetAnalogIO_Response {
    var v = Ros2Xarm_msgsSrvSetAnalogIO_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetDigitalIO_Request: Canonical {
  public static let maximumWireBytes = 144
  public static let codecIdentity =
    "UWVMROS1_1bb4c857c4625a17ef5800f821d5aed95124ba24dc472ee61c2193798967aaf2"
  public static let nativeType = "xarm_msgs/srv/SetDigitalIO_Request"
  public static let nativeIdentity: String? = nil
  public var `ionum`: Int16 = 0
  public var `value`: Int16 = 0
  public var `delay_sec`: Float = Float(bitPattern: 0x0)
  public var `xyz`: [Float] = []
  public var `tol_r`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ionum`)
    try w.integer(self.`value`)
    try w.float32(self.`delay_sec`)
    guard self.`xyz`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`xyz`.count))
    for e in self.`xyz` {
      try w.float32(e)
    }
    try w.float32(self.`tol_r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvSetDigitalIO_Request {
    var v = Ros2Xarm_msgsSrvSetDigitalIO_Request()
    v.`ionum` = try r.integer(Int16.self)
    v.`value` = try r.integer(Int16.self)
    v.`delay_sec` = try r.float32()
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 32 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`xyz` = []
    v.`xyz`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`xyz`.append(try r.float32())
    }
    v.`tol_r` = try r.float32()
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetDigitalIO_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_cb18f2968dd4014c8fe100a63d4c80ce10e813fc0998a9f76cd8699bc511a17b"
  public static let nativeType = "xarm_msgs/srv/SetDigitalIO_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvSetDigitalIO_Response
  {
    var v = Ros2Xarm_msgsSrvSetDigitalIO_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetFloat32_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_6fec5cd9973c8f68bdffad4b582b26547d325167942379830a84c7d8469987c1"
  public static let nativeType = "xarm_msgs/srv/SetFloat32_Request"
  public static let nativeIdentity: String? = nil
  public var `data`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvSetFloat32_Request {
    var v = Ros2Xarm_msgsSrvSetFloat32_Request()
    v.`data` = try r.float32()
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetFloat32_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_d7bb8df8e3e4ab02a30ebfdc4af57cdbcee5ce3b48591524e70e2a07f8843ea1"
  public static let nativeType = "xarm_msgs/srv/SetFloat32_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvSetFloat32_Response {
    var v = Ros2Xarm_msgsSrvSetFloat32_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetFloat32List_Request: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_38bd43fd452ab1f59bd4875deb4dea6d0a17c3409ee9c5446f798e1b8ba93532"
  public static let nativeType = "xarm_msgs/srv/SetFloat32List_Request"
  public static let nativeIdentity: String? = nil
  public var `datas`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`datas`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`datas`.count))
    for e in self.`datas` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvSetFloat32List_Request
  {
    var v = Ros2Xarm_msgsSrvSetFloat32List_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`datas` = []
    v.`datas`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`datas`.append(try r.float32())
    }
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetFloat32List_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_f2c08d32b1238bb78dc0daccfc97066563a14e8e4b891e37e2effaed91a74396"
  public static let nativeType = "xarm_msgs/srv/SetFloat32List_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvSetFloat32List_Response
  {
    var v = Ros2Xarm_msgsSrvSetFloat32List_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetInt16_Request: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_09e0c90763447d7b4ed57ce37650d4a4d918bc96ec8b8df61189f8e636a58adb"
  public static let nativeType = "xarm_msgs/srv/SetInt16_Request"
  public static let nativeIdentity: String? = nil
  public var `data`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvSetInt16_Request {
    var v = Ros2Xarm_msgsSrvSetInt16_Request()
    v.`data` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetInt16_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_0c02f9a01383e37346637ec7d6a608cca7d025259b67c9ab528f3b13aa842155"
  public static let nativeType = "xarm_msgs/srv/SetInt16_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvSetInt16_Response {
    var v = Ros2Xarm_msgsSrvSetInt16_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetInt16ById_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_9472db1bda5f8d557e75c9be0c902c67a76952ba0bc258693cf047c6c10954f0"
  public static let nativeType = "xarm_msgs/srv/SetInt16ById_Request"
  public static let nativeIdentity: String? = nil
  public var `id`: Int16 = 0
  public var `data`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
    try w.integer(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvSetInt16ById_Request {
    var v = Ros2Xarm_msgsSrvSetInt16ById_Request()
    v.`id` = try r.integer(Int16.self)
    v.`data` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetInt16ById_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_cd16eec98546214169bf4e32eff4190d9276ee41b6bfc5eef919dd44cdeae92a"
  public static let nativeType = "xarm_msgs/srv/SetInt16ById_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvSetInt16ById_Response
  {
    var v = Ros2Xarm_msgsSrvSetInt16ById_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetInt16List_Request: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_d1ef15eb18c2f3c377c25c486d945fbf77887ca7a9ef9c291355e9a23541ec96"
  public static let nativeType = "xarm_msgs/srv/SetInt16List_Request"
  public static let nativeIdentity: String? = nil
  public var `datas`: [Int16] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`datas`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`datas`.count))
    for e in self.`datas` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvSetInt16List_Request {
    var v = Ros2Xarm_msgsSrvSetInt16List_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`datas` = []
    v.`datas`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`datas`.append(try r.integer(Int16.self))
    }
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetInt16List_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_326ef9ea75d627cdc4187908191f230f87efb6f3fb2b0a7f783260c7ffee583f"
  public static let nativeType = "xarm_msgs/srv/SetInt16List_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvSetInt16List_Response
  {
    var v = Ros2Xarm_msgsSrvSetInt16List_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetInt32_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f219450be903e96baf55dfb3fcc03851aabc43899d637f869d9adba55b36c1d3"
  public static let nativeType = "xarm_msgs/srv/SetInt32_Request"
  public static let nativeIdentity: String? = nil
  public var `data`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvSetInt32_Request {
    var v = Ros2Xarm_msgsSrvSetInt32_Request()
    v.`data` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetInt32_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_1510982ab2c740a570f21179997368cd4be93c4086967e9ff98b24606f0b7f65"
  public static let nativeType = "xarm_msgs/srv/SetInt32_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvSetInt32_Response {
    var v = Ros2Xarm_msgsSrvSetInt32_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetInt32ByType_Request: Canonical {
  public static let maximumWireBytes = 6
  public static let codecIdentity =
    "UWVMROS1_8a6e3ab3e34eeff45dbddc698cb249c2acb27d74717be8724fa0f9448ff981d7"
  public static let nativeType = "xarm_msgs/srv/SetInt32ByType_Request"
  public static let nativeIdentity: String? = nil
  public var `type`: Int16 = 0
  public var `data`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`type`)
    try w.integer(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvSetInt32ByType_Request
  {
    var v = Ros2Xarm_msgsSrvSetInt32ByType_Request()
    v.`type` = try r.integer(Int16.self)
    v.`data` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetInt32ByType_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_6fcd5dddde2d38a61ffdeab64ae09514137b364347357c62b81c26c86b44882a"
  public static let nativeType = "xarm_msgs/srv/SetInt32ByType_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvSetInt32ByType_Response
  {
    var v = Ros2Xarm_msgsSrvSetInt32ByType_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetModbusTimeout_Request: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_186f84404c6a11cfd3c7a64fc9ac55b39343d5f8c4a01bd81efdd038d6c7e685"
  public static let nativeType = "xarm_msgs/srv/SetModbusTimeout_Request"
  public static let nativeIdentity: String? = nil
  public var `timeout`: Int32 = 0
  public var `is_transparent_transmission`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`timeout`)
    try w.boolean(self.`is_transparent_transmission`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvSetModbusTimeout_Request
  {
    var v = Ros2Xarm_msgsSrvSetModbusTimeout_Request()
    v.`timeout` = try r.integer(Int32.self)
    v.`is_transparent_transmission` = try r.boolean()
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetModbusTimeout_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_32da6d0583896c59968213be225e17146d619cddb4c520060640e13b886f3397"
  public static let nativeType = "xarm_msgs/srv/SetModbusTimeout_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvSetModbusTimeout_Response
  {
    var v = Ros2Xarm_msgsSrvSetModbusTimeout_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetTcpLoad_Request: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_5428d98daa8dd42c8dba0cb78152b1b718afe34eb1da16de65a333a81d293e99"
  public static let nativeType = "xarm_msgs/srv/SetTcpLoad_Request"
  public static let nativeIdentity: String? = nil
  public var `weight`: Float = 0
  public var `center_of_gravity`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`weight`)
    guard self.`center_of_gravity`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`center_of_gravity`.count))
    for e in self.`center_of_gravity` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvSetTcpLoad_Request {
    var v = Ros2Xarm_msgsSrvSetTcpLoad_Request()
    v.`weight` = try r.float32()
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`center_of_gravity` = []
    v.`center_of_gravity`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`center_of_gravity`.append(try r.float32())
    }
    return v
  }
}
public struct Ros2Xarm_msgsSrvSetTcpLoad_Response: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_7438021022e94f66f464a561a54cb8f808da8c2e35830853cbecc98fa76ef46f"
  public static let nativeType = "xarm_msgs/srv/SetTcpLoad_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int32 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvSetTcpLoad_Response {
    var v = Ros2Xarm_msgsSrvSetTcpLoad_Response()
    v.`ret` = try r.integer(Int32.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvTrajCtrl_Request: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_f29343b422932e055d5930c46615f38cc1600d4c4b89506a1050f89728e0ca0d"
  public static let nativeType = "xarm_msgs/srv/TrajCtrl_Request"
  public static let nativeIdentity: String? = nil
  public var `filename`: String = ""
  public var `timeout`: Float = Float(bitPattern: 0x4120_0000)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`filename`, bound: 256)
    try w.float32(self.`timeout`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvTrajCtrl_Request {
    var v = Ros2Xarm_msgsSrvTrajCtrl_Request()
    v.`filename` = try r.string(bound: 256)
    v.`timeout` = try r.float32()
    return v
  }
}
public struct Ros2Xarm_msgsSrvTrajCtrl_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_00cac1ec8b7d312cae07a3ffe3235bd599086c62b028cb446bf7478306aa1b3c"
  public static let nativeType = "xarm_msgs/srv/TrajCtrl_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvTrajCtrl_Response {
    var v = Ros2Xarm_msgsSrvTrajCtrl_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvTrajPlay_Request: Canonical {
  public static let maximumWireBytes = 265
  public static let codecIdentity =
    "UWVMROS1_edbd9ed5bcbc1cf8882fab3b69b24373542273b74a51bd3cae94e7970a7d3e72"
  public static let nativeType = "xarm_msgs/srv/TrajPlay_Request"
  public static let nativeIdentity: String? = nil
  public var `filename`: String = ""
  public var `times`: Int16 = 1
  public var `double_speed`: Int16 = 1
  public var `wait`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`filename`, bound: 256)
    try w.integer(self.`times`)
    try w.integer(self.`double_speed`)
    try w.boolean(self.`wait`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvTrajPlay_Request {
    var v = Ros2Xarm_msgsSrvTrajPlay_Request()
    v.`filename` = try r.string(bound: 256)
    v.`times` = try r.integer(Int16.self)
    v.`double_speed` = try r.integer(Int16.self)
    v.`wait` = try r.boolean()
    return v
  }
}
public struct Ros2Xarm_msgsSrvTrajPlay_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_ce86fc20a5a16288b138fe2e37794c1318dc393b811f45d3fe3eccf954837ea0"
  public static let nativeType = "xarm_msgs/srv/TrajPlay_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Xarm_msgsSrvTrajPlay_Response {
    var v = Ros2Xarm_msgsSrvTrajPlay_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Xarm_msgsSrvVacuumGripperCtrl_Request: Canonical {
  public static let maximumWireBytes = 13
  public static let codecIdentity =
    "UWVMROS1_d6da957d39ce9cb96d064172db86907b162f95385fdf5e5bfd066eba8c1a4888"
  public static let nativeType = "xarm_msgs/srv/VacuumGripperCtrl_Request"
  public static let nativeIdentity: String? = nil
  public var `on`: Bool = false
  public var `wait`: Bool = false
  public var `timeout`: Float = Float(bitPattern: 0x4040_0000)
  public var `delay_sec`: Float = Float(bitPattern: 0x0)
  public var `sync`: Bool = true
  public var `hardware_version`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`on`)
    try w.boolean(self.`wait`)
    try w.float32(self.`timeout`)
    try w.float32(self.`delay_sec`)
    try w.boolean(self.`sync`)
    try w.integer(self.`hardware_version`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvVacuumGripperCtrl_Request
  {
    var v = Ros2Xarm_msgsSrvVacuumGripperCtrl_Request()
    v.`on` = try r.boolean()
    v.`wait` = try r.boolean()
    v.`timeout` = try r.float32()
    v.`delay_sec` = try r.float32()
    v.`sync` = try r.boolean()
    v.`hardware_version` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros2Xarm_msgsSrvVacuumGripperCtrl_Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_fa202ccf3d36ec8ff49c0e32f3af07e18d19a6694566fcbaf8ce9ff4a79f352d"
  public static let nativeType = "xarm_msgs/srv/VacuumGripperCtrl_Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Xarm_msgsSrvVacuumGripperCtrl_Response
  {
    var v = Ros2Xarm_msgsSrvVacuumGripperCtrl_Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
