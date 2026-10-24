/// @file Records.swift
/// @brief Complete universal_robots values and adapters for the selected original interface catalog.
/// @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
/// defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
/// roles require the separately admitted SDK owner.
/// @see share/platform/universal_robots/domains/universal-robots-polyscopex-complete.ir.json
/// @see document/platform/universal_robots/en_US/README.md

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
public struct Ros2Geometry_msgsMsgVector3: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"
  public static let nativeType = "geometry_msgs/msg/Vector3"
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
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgVector3 {
    var v = Ros2Geometry_msgsMsgVector3()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
public struct Ros2Geometry_msgsMsgTwist: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"
  public static let nativeType = "geometry_msgs/msg/Twist"
  public static let nativeIdentity: String? = nil
  public var `linear`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  public var `angular`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`linear`.write(to: &w)
    try self.`angular`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgTwist {
    var v = Ros2Geometry_msgsMsgTwist()
    v.`linear` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    v.`angular` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    return v
  }
}
public struct Ros2Std_msgsMsgHeader: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"
  public static let nativeType = "std_msgs/msg/Header"
  public static let nativeIdentity: String? = nil
  public var `stamp`: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  public var `frame_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`stamp`.write(to: &w)
    try w.string(self.`frame_id`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Std_msgsMsgHeader {
    var v = Ros2Std_msgsMsgHeader()
    v.`stamp` = try Ros2Builtin_interfacesMsgTime.read(from: &r)
    v.`frame_id` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Std_msgsMsgString: Canonical {
  public static let maximumWireBytes = 1028
  public static let codecIdentity =
    "UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5"
  public static let nativeType = "std_msgs/msg/String"
  public static let nativeIdentity: String? = nil
  public var `data`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`data`, bound: 1024)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Std_msgsMsgString {
    var v = Ros2Std_msgsMsgString()
    v.`data` = try r.string(bound: 1024)
    return v
  }
}
public struct Ros2UrinterfacesMsgRobotMode: Canonical {
  public static let maximumWireBytes = 141
  public static let codecIdentity =
    "UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea"
  public static let nativeType = "urinterfaces/msg/RobotMode"
  public static let nativeIdentity: String? = nil
  public static let `DISCONNECTED`: Int8 = 0
  public static let `CONFIRM_SAFETY`: Int8 = 1
  public static let `BOOTING`: Int8 = 2
  public static let `POWER_OFF`: Int8 = 3
  public static let `POWER_ON`: Int8 = 4
  public static let `IDLE`: Int8 = 5
  public static let `BACKDRIVE`: Int8 = 6
  public static let `RUNNING`: Int8 = 7
  public static let `UPDATING_FIRMWARE`: Int8 = 8
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `data`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgRobotMode {
    var v = Ros2UrinterfacesMsgRobotMode()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`data` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2UrinterfacesActionSetMode_Goal: Canonical {
  public static let maximumWireBytes = 143
  public static let codecIdentity =
    "UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09"
  public static let nativeType = "urinterfaces/action/SetMode_Goal"
  public static let nativeIdentity: String? = nil
  public var `target_robot_mode`: Ros2UrinterfacesMsgRobotMode = Ros2UrinterfacesMsgRobotMode()
  public var `stop_program`: Bool = false
  public var `play_program`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`target_robot_mode`.write(to: &w)
    try w.boolean(self.`stop_program`)
    try w.boolean(self.`play_program`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesActionSetMode_Goal {
    var v = Ros2UrinterfacesActionSetMode_Goal()
    v.`target_robot_mode` = try Ros2UrinterfacesMsgRobotMode.read(from: &r)
    v.`stop_program` = try r.boolean()
    v.`play_program` = try r.boolean()
    return v
  }
}
public struct Ros2UrinterfacesActionSetMode_Result: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7"
  public static let nativeType = "urinterfaces/action/SetMode_Result"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesActionSetMode_Result {
    var v = Ros2UrinterfacesActionSetMode_Result()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2UrinterfacesActionSetMode_Feedback: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537"
  public static let nativeType = "urinterfaces/action/SetMode_Feedback"
  public static let nativeIdentity: String? = nil
  public var `current_robot_mode`: Int8 = 0
  public var `current_safety_mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`current_robot_mode`)
    try w.integer(self.`current_safety_mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesActionSetMode_Feedback
  {
    var v = Ros2UrinterfacesActionSetMode_Feedback()
    v.`current_robot_mode` = try r.integer(Int8.self)
    v.`current_safety_mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2UrinterfacesMsgActiveTCP: Canonical {
  public static let maximumWireBytes = 400
  public static let codecIdentity =
    "UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae"
  public static let nativeType = "urinterfaces/msg/ActiveTCP"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `data`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`data`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgActiveTCP {
    var v = Ros2UrinterfacesMsgActiveTCP()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`data` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2UrinterfacesMsgAnalog: Canonical {
  public static let maximumWireBytes = 6
  public static let codecIdentity =
    "UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b"
  public static let nativeType = "urinterfaces/msg/Analog"
  public static let nativeIdentity: String? = nil
  public static let `CURRENT`: UInt8 = 0
  public static let `VOLTAGE`: UInt8 = 1
  public var `pin`: UInt8 = 0
  public var `domain`: UInt8 = 0
  public var `value`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`pin`)
    try w.integer(self.`domain`)
    try w.float32(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgAnalog {
    var v = Ros2UrinterfacesMsgAnalog()
    v.`pin` = try r.integer(UInt8.self)
    v.`domain` = try r.integer(UInt8.self)
    v.`value` = try r.float32()
    return v
  }
}
public struct Ros2UrinterfacesMsgAnalogIO: Canonical {
  public static let maximumWireBytes = 200
  public static let codecIdentity =
    "UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c"
  public static let nativeType = "urinterfaces/msg/AnalogIO"
  public static let nativeIdentity: String? = nil
  public var `analog_inputs`: [Ros2UrinterfacesMsgAnalog] = []
  public var `analog_outputs`: [Ros2UrinterfacesMsgAnalog] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`analog_inputs`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`analog_inputs`.count))
    for e in self.`analog_inputs` {
      try e.write(to: &w)
    }
    guard self.`analog_outputs`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`analog_outputs`.count))
    for e in self.`analog_outputs` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgAnalogIO {
    var v = Ros2UrinterfacesMsgAnalogIO()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`analog_inputs` = []
    v.`analog_inputs`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`analog_inputs`.append(try Ros2UrinterfacesMsgAnalog.read(from: &r))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`analog_outputs` = []
    v.`analog_outputs`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`analog_outputs`.append(try Ros2UrinterfacesMsgAnalog.read(from: &r))
    }
    return v
  }
}
public struct Ros2UrinterfacesMsgAnalogIOStateStamped: Canonical {
  public static let maximumWireBytes = 340
  public static let codecIdentity =
    "UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89"
  public static let nativeType = "urinterfaces/msg/AnalogIOStateStamped"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `io_state`: Ros2UrinterfacesMsgAnalogIO = Ros2UrinterfacesMsgAnalogIO()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`io_state`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2UrinterfacesMsgAnalogIOStateStamped
  {
    var v = Ros2UrinterfacesMsgAnalogIOStateStamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`io_state` = try Ros2UrinterfacesMsgAnalogIO.read(from: &r)
    return v
  }
}
public struct Ros2UrinterfacesMsgAnalogStamped: Canonical {
  public static let maximumWireBytes = 146
  public static let codecIdentity =
    "UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c"
  public static let nativeType = "urinterfaces/msg/AnalogStamped"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `data`: Ros2UrinterfacesMsgAnalog = Ros2UrinterfacesMsgAnalog()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`data`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgAnalogStamped {
    var v = Ros2UrinterfacesMsgAnalogStamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`data` = try Ros2UrinterfacesMsgAnalog.read(from: &r)
    return v
  }
}
public struct Ros2UrinterfacesMsgBoolStamped: Canonical {
  public static let maximumWireBytes = 141
  public static let codecIdentity =
    "UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66"
  public static let nativeType = "urinterfaces/msg/BoolStamped"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `data`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.boolean(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgBoolStamped {
    var v = Ros2UrinterfacesMsgBoolStamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`data` = try r.boolean()
    return v
  }
}
public struct Ros2UrinterfacesMsgControlCycle: Canonical {
  public static let maximumWireBytes = 148
  public static let codecIdentity =
    "UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278"
  public static let nativeType = "urinterfaces/msg/ControlCycle"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `data`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgControlCycle {
    var v = Ros2UrinterfacesMsgControlCycle()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`data` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros2UrinterfacesMsgCurrent: Canonical {
  public static let maximumWireBytes = 144
  public static let codecIdentity =
    "UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df"
  public static let nativeType = "urinterfaces/msg/Current"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `data`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.float32(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgCurrent {
    var v = Ros2UrinterfacesMsgCurrent()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`data` = try r.float32()
    return v
  }
}
public struct Ros2UrinterfacesMsgDigital: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512"
  public static let nativeType = "urinterfaces/msg/Digital"
  public static let nativeIdentity: String? = nil
  public var `pin`: UInt8 = 0
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`pin`)
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgDigital {
    var v = Ros2UrinterfacesMsgDigital()
    v.`pin` = try r.integer(UInt8.self)
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros2UrinterfacesMsgDigitalIO: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a"
  public static let nativeType = "urinterfaces/msg/DigitalIO"
  public static let nativeIdentity: String? = nil
  public var `digital_inputs`: [Ros2UrinterfacesMsgDigital] = []
  public var `digital_outputs`: [Ros2UrinterfacesMsgDigital] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`digital_inputs`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`digital_inputs`.count))
    for e in self.`digital_inputs` {
      try e.write(to: &w)
    }
    guard self.`digital_outputs`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`digital_outputs`.count))
    for e in self.`digital_outputs` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgDigitalIO {
    var v = Ros2UrinterfacesMsgDigitalIO()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`digital_inputs` = []
    v.`digital_inputs`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`digital_inputs`.append(try Ros2UrinterfacesMsgDigital.read(from: &r))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`digital_outputs` = []
    v.`digital_outputs`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`digital_outputs`.append(try Ros2UrinterfacesMsgDigital.read(from: &r))
    }
    return v
  }
}
public struct Ros2UrinterfacesMsgDigitalIOStateStamped: Canonical {
  public static let maximumWireBytes = 412
  public static let codecIdentity =
    "UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9"
  public static let nativeType = "urinterfaces/msg/DigitalIOStateStamped"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `configurable_io`: Ros2UrinterfacesMsgDigitalIO = Ros2UrinterfacesMsgDigitalIO()
  public var `standard_io`: Ros2UrinterfacesMsgDigitalIO = Ros2UrinterfacesMsgDigitalIO()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`configurable_io`.write(to: &w)
    try self.`standard_io`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2UrinterfacesMsgDigitalIOStateStamped
  {
    var v = Ros2UrinterfacesMsgDigitalIOStateStamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`configurable_io` = try Ros2UrinterfacesMsgDigitalIO.read(from: &r)
    v.`standard_io` = try Ros2UrinterfacesMsgDigitalIO.read(from: &r)
    return v
  }
}
public struct Ros2UrinterfacesMsgDigitalStamped: Canonical {
  public static let maximumWireBytes = 142
  public static let codecIdentity =
    "UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865"
  public static let nativeType = "urinterfaces/msg/DigitalStamped"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `data`: Ros2UrinterfacesMsgDigital = Ros2UrinterfacesMsgDigital()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`data`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgDigitalStamped {
    var v = Ros2UrinterfacesMsgDigitalStamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`data` = try Ros2UrinterfacesMsgDigital.read(from: &r)
    return v
  }
}
public struct Ros2UrinterfacesMsgDoubleMultiArrayStamped: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae"
  public static let nativeType = "urinterfaces/msg/DoubleMultiArrayStamped"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `data`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2UrinterfacesMsgDoubleMultiArrayStamped
  {
    var v = Ros2UrinterfacesMsgDoubleMultiArrayStamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`data` = []
    v.`data`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`data`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2UrinterfacesMsgFloat32Stamped: Canonical {
  public static let maximumWireBytes = 144
  public static let codecIdentity =
    "UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3"
  public static let nativeType = "urinterfaces/msg/Float32Stamped"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `data`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.float32(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgFloat32Stamped {
    var v = Ros2UrinterfacesMsgFloat32Stamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`data` = try r.float32()
    return v
  }
}
public struct Ros2UrinterfacesMsgFloat64Stamped: Canonical {
  public static let maximumWireBytes = 148
  public static let codecIdentity =
    "UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21"
  public static let nativeType = "urinterfaces/msg/Float64Stamped"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `data`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.float64(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgFloat64Stamped {
    var v = Ros2UrinterfacesMsgFloat64Stamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`data` = try r.float64()
    return v
  }
}
public struct Ros2UrinterfacesMsgJointMode: Canonical {
  public static let maximumWireBytes = 147
  public static let codecIdentity =
    "UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c"
  public static let nativeType = "urinterfaces/msg/JointMode"
  public static let nativeIdentity: String? = nil
  public static let `JOINT_MODE_RESET`: UInt8 = 235
  public static let `JOINT_MODE_SHUTTING_DOWN`: UInt8 = 236
  public static let `JOINT_MODE_PART_D_CALIBRATION`: UInt8 = 237
  public static let `JOINT_MODE_BACKDRIVE`: UInt8 = 238
  public static let `JOINT_MODE_POWER_OFF`: UInt8 = 239
  public static let `JOINT_MODE_READY_FOR_POWER_OFF`: UInt8 = 240
  public static let `JOINT_MODE_NOT_RESPONDING`: UInt8 = 245
  public static let `JOINT_MODE_MOTOR_INITIALISATION`: UInt8 = 246
  public static let `JOINT_MODE_BOOTING`: UInt8 = 247
  public static let `JOINT_MODE_PART_D_CALIBRATION_ERROR`: UInt8 = 248
  public static let `JOINT_MODE_BOOTLOADER`: UInt8 = 249
  public static let `JOINT_MODE_CALIBRATION`: UInt8 = 250
  public static let `JOINT_MODE_VIOLATION`: UInt8 = 251
  public static let `JOINT_MODE_FAULT`: UInt8 = 252
  public static let `JOINT_MODE_RUNNING`: UInt8 = 253
  public static let `JOINT_MODE_IDLE`: UInt8 = 255
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `joint_modes`: [UInt8] = Array(repeating: 0, count: 6)
  public var `tool_mode`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joint_modes`.count == 6 else { throw RosError(22) }
    for e in self.`joint_modes` {
      try w.integer(e)
    }
    try w.integer(self.`tool_mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgJointMode {
    var v = Ros2UrinterfacesMsgJointMode()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let count1 = 6
    v.`joint_modes` = []
    v.`joint_modes`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joint_modes`.append(try r.integer(UInt8.self))
    }
    v.`tool_mode` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2UrinterfacesMsgJointTemperature: Canonical {
  public static let maximumWireBytes = 164
  public static let codecIdentity =
    "UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017"
  public static let nativeType = "urinterfaces/msg/JointTemperature"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `data`: [Float] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`data`.count == 6 else { throw RosError(22) }
    for e in self.`data` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgJointTemperature {
    var v = Ros2UrinterfacesMsgJointTemperature()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let count1 = 6
    v.`data` = []
    v.`data`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`data`.append(try r.float32())
    }
    return v
  }
}
public struct Ros2UrinterfacesMsgJointVoltage: Canonical {
  public static let maximumWireBytes = 188
  public static let codecIdentity =
    "UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61"
  public static let nativeType = "urinterfaces/msg/JointVoltage"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `data`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`data`.count == 6 else { throw RosError(22) }
    for e in self.`data` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgJointVoltage {
    var v = Ros2UrinterfacesMsgJointVoltage()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let count1 = 6
    v.`data` = []
    v.`data`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`data`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2UrinterfacesMsgJsonStringType: Canonical {
  public static let maximumWireBytes = 1028
  public static let codecIdentity =
    "UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728"
  public static let nativeType = "urinterfaces/msg/JsonStringType"
  public static let nativeIdentity: String? = nil
  public var `json_string`: Ros2Std_msgsMsgString = Ros2Std_msgsMsgString()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`json_string`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgJsonStringType {
    var v = Ros2UrinterfacesMsgJsonStringType()
    v.`json_string` = try Ros2Std_msgsMsgString.read(from: &r)
    return v
  }
}
public struct Ros2UrinterfacesMsgRuntimeState: Canonical {
  public static let maximumWireBytes = 141
  public static let codecIdentity =
    "UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6"
  public static let nativeType = "urinterfaces/msg/RuntimeState"
  public static let nativeIdentity: String? = nil
  public static let `PROGRAM_STATE_UNDEFINED`: Int8 = -1
  public static let `PROGRAM_STATE_STOPPING`: Int8 = 0
  public static let `PROGRAM_STATE_STOPPED`: Int8 = 1
  public static let `PROGRAM_STATE_RUNNING`: Int8 = 2
  public static let `PROGRAM_STATE_PAUSING`: Int8 = 3
  public static let `PROGRAM_STATE_PAUSED`: Int8 = 4
  public static let `PROGRAM_STATE_RESUMING`: Int8 = 5
  public static let `PROGRAM_STATE_RETRACTING`: Int8 = 6
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `data`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgRuntimeState {
    var v = Ros2UrinterfacesMsgRuntimeState()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`data` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2UrinterfacesMsgSafetyStatus: Canonical {
  public static let maximumWireBytes = 141
  public static let codecIdentity =
    "UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4"
  public static let nativeType = "urinterfaces/msg/SafetyStatus"
  public static let nativeIdentity: String? = nil
  public static let `NORMAL`: Int8 = 1
  public static let `REDUCED`: Int8 = 2
  public static let `PROTECTIVE_STOP`: Int8 = 3
  public static let `RECOVERY`: Int8 = 4
  public static let `SAFEGUARD_STOP`: Int8 = 5
  public static let `SYSTEM_EMERGENCY_STOP`: Int8 = 6
  public static let `ROBOT_EMERGENCY_STOP`: Int8 = 7
  public static let `VIOLATION`: Int8 = 8
  public static let `FAULT`: Int8 = 9
  public static let `VALIDATE_JOINT_ID`: Int8 = 10
  public static let `UNDEFINED_SAFETY_MODE`: Int8 = 11
  public static let `AUTOMATIC_MODE_SAFEGUARD_STOP`: Int8 = 12
  public static let `SYSTEM_THREE_POSITION_ENABLING_STOP`: Int8 = 13
  public static let `TP_THREE_POSITION_ENABLING_STOP`: Int8 = 14
  public static let `IMMI_EMERGENCY_STOP`: Int8 = 15
  public static let `IMMI_SAFEGUARD_STOP`: Int8 = 16
  public static let `PROFISAFE_WAITING_FOR_PARAMETERS`: Int8 = 17
  public static let `PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP`: Int8 = 18
  public static let `PROFISAFE_SAFEGUARD_STOP`: Int8 = 19
  public static let `PROFISAFE_EMERGENCY_STOP`: Int8 = 20
  public static let `SAFETY_API_SAFEGUARD_STOP`: Int8 = 22
  public static let `IO_PLANE_STOP`: Int8 = 23
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `data`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgSafetyStatus {
    var v = Ros2UrinterfacesMsgSafetyStatus()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`data` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2UrinterfacesMsgSharedVariablesEditResponse: Canonical {
  public static let maximumWireBytes = 1029
  public static let codecIdentity =
    "UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212"
  public static let nativeType = "urinterfaces/msg/SharedVariablesEditResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `result_message`: Ros2Std_msgsMsgString = Ros2Std_msgsMsgString()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try self.`result_message`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2UrinterfacesMsgSharedVariablesEditResponse
  {
    var v = Ros2UrinterfacesMsgSharedVariablesEditResponse()
    v.`success` = try r.boolean()
    v.`result_message` = try Ros2Std_msgsMsgString.read(from: &r)
    return v
  }
}
public struct Ros2UrinterfacesMsgSpeedSliderFraction: Canonical {
  public static let maximumWireBytes = 148
  public static let codecIdentity =
    "UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd"
  public static let nativeType = "urinterfaces/msg/SpeedSliderFraction"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `data`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.float64(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgSpeedSliderFraction
  {
    var v = Ros2UrinterfacesMsgSpeedSliderFraction()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`data` = try r.float64()
    return v
  }
}
public struct Ros2UrinterfacesMsgTCPState: Canonical {
  public static let maximumWireBytes = 244
  public static let codecIdentity =
    "UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92"
  public static let nativeType = "urinterfaces/msg/TCPState"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `pose`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  public var `speed`: Ros2Geometry_msgsMsgTwist = Ros2Geometry_msgsMsgTwist()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`pose`.write(to: &w)
    try self.`speed`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgTCPState {
    var v = Ros2UrinterfacesMsgTCPState()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`pose` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    v.`speed` = try Ros2Geometry_msgsMsgTwist.read(from: &r)
    return v
  }
}
public struct Ros2UrinterfacesMsgToolOutputMode: Canonical {
  public static let maximumWireBytes = 143
  public static let codecIdentity =
    "UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660"
  public static let nativeType = "urinterfaces/msg/ToolOutputMode"
  public static let nativeIdentity: String? = nil
  public static let `TOOL_OUTPUT`: UInt8 = 0
  public static let `TOOL_POWER`: UInt8 = 1
  public static let `TOOL_SAFE`: UInt8 = 2
  public static let `OUTPUT_MODE_DISABLED`: UInt8 = 0
  public static let `OUTPUT_MODE_SINKING`: UInt8 = 1
  public static let `OUTPUT_MODE_SOURCING`: UInt8 = 2
  public static let `OUTPUT_MODE_PUSH_PULL`: UInt8 = 3
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `output_mode`: UInt8 = 0
  public var `output_pin_mode`: [UInt8] = Array(repeating: 0, count: 2)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`output_mode`)
    guard self.`output_pin_mode`.count == 2 else { throw RosError(22) }
    for e in self.`output_pin_mode` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgToolOutputMode {
    var v = Ros2UrinterfacesMsgToolOutputMode()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`output_mode` = try r.integer(UInt8.self)
    let count2 = 2
    v.`output_pin_mode` = []
    v.`output_pin_mode`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`output_pin_mode`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros2UrinterfacesMsgVariableUpdate: Canonical {
  public static let maximumWireBytes = 1168
  public static let codecIdentity =
    "UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20"
  public static let nativeType = "urinterfaces/msg/VariableUpdate"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `data`: Ros2UrinterfacesMsgJsonStringType = Ros2UrinterfacesMsgJsonStringType()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`data`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgVariableUpdate {
    var v = Ros2UrinterfacesMsgVariableUpdate()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`data` = try Ros2UrinterfacesMsgJsonStringType.read(from: &r)
    return v
  }
}
public struct Ros2UrinterfacesMsgVoltageCurrentStamped: Canonical {
  public static let maximumWireBytes = 156
  public static let codecIdentity =
    "UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805"
  public static let nativeType = "urinterfaces/msg/VoltageCurrentStamped"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `voltage`: Double = 0
  public var `current`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.float64(self.`voltage`)
    try w.float64(self.`current`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2UrinterfacesMsgVoltageCurrentStamped
  {
    var v = Ros2UrinterfacesMsgVoltageCurrentStamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`voltage` = try r.float64()
    v.`current` = try r.float64()
    return v
  }
}
public struct Ros2UrinterfacesMsgWorldModelNames: Canonical {
  public static let maximumWireBytes = 16592
  public static let codecIdentity =
    "UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9"
  public static let nativeType = "urinterfaces/msg/WorldModelNames"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  public var `data`: [Ros2Std_msgsMsgString] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2UrinterfacesMsgWorldModelNames {
    var v = Ros2UrinterfacesMsgWorldModelNames()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`data` = []
    v.`data`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`data`.append(try Ros2Std_msgsMsgString.read(from: &r))
    }
    return v
  }
}
public struct Ros2UrinterfacesSrvSetAnalogOutput_Request: Canonical {
  public static let maximumWireBytes = 100
  public static let codecIdentity =
    "UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d"
  public static let nativeType = "urinterfaces/srv/SetAnalogOutput_Request"
  public static let nativeIdentity: String? = nil
  public var `data`: [Ros2UrinterfacesMsgAnalog] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2UrinterfacesSrvSetAnalogOutput_Request
  {
    var v = Ros2UrinterfacesSrvSetAnalogOutput_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`data` = []
    v.`data`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`data`.append(try Ros2UrinterfacesMsgAnalog.read(from: &r))
    }
    return v
  }
}
public struct Ros2UrinterfacesSrvSetAnalogOutput_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e"
  public static let nativeType = "urinterfaces/srv/SetAnalogOutput_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2UrinterfacesSrvSetAnalogOutput_Response
  {
    var v = Ros2UrinterfacesSrvSetAnalogOutput_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2UrinterfacesSrvSetDigitalOutput_Request: Canonical {
  public static let maximumWireBytes = 36
  public static let codecIdentity =
    "UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47"
  public static let nativeType = "urinterfaces/srv/SetDigitalOutput_Request"
  public static let nativeIdentity: String? = nil
  public var `data`: [Ros2UrinterfacesMsgDigital] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2UrinterfacesSrvSetDigitalOutput_Request
  {
    var v = Ros2UrinterfacesSrvSetDigitalOutput_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`data` = []
    v.`data`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`data`.append(try Ros2UrinterfacesMsgDigital.read(from: &r))
    }
    return v
  }
}
public struct Ros2UrinterfacesSrvSetDigitalOutput_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d"
  public static let nativeType = "urinterfaces/srv/SetDigitalOutput_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2UrinterfacesSrvSetDigitalOutput_Response
  {
    var v = Ros2UrinterfacesSrvSetDigitalOutput_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2UrinterfacesSrvSetSpeedFraction_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63"
  public static let nativeType = "urinterfaces/srv/SetSpeedFraction_Request"
  public static let nativeIdentity: String? = nil
  public var `value`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2UrinterfacesSrvSetSpeedFraction_Request
  {
    var v = Ros2UrinterfacesSrvSetSpeedFraction_Request()
    v.`value` = try r.float32()
    return v
  }
}
public struct Ros2UrinterfacesSrvSetSpeedFraction_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6"
  public static let nativeType = "urinterfaces/srv/SetSpeedFraction_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2UrinterfacesSrvSetSpeedFraction_Response
  {
    var v = Ros2UrinterfacesSrvSetSpeedFraction_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2UrinterfacesSrvSharedVariablesEditor_Request: Canonical {
  public static let maximumWireBytes = 1028
  public static let codecIdentity =
    "UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3"
  public static let nativeType = "urinterfaces/srv/SharedVariablesEditor_Request"
  public static let nativeIdentity: String? = nil
  public var `request`: Ros2UrinterfacesMsgJsonStringType = Ros2UrinterfacesMsgJsonStringType()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`request`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2UrinterfacesSrvSharedVariablesEditor_Request
  {
    var v = Ros2UrinterfacesSrvSharedVariablesEditor_Request()
    v.`request` = try Ros2UrinterfacesMsgJsonStringType.read(from: &r)
    return v
  }
}
public struct Ros2UrinterfacesSrvSharedVariablesEditor_Response: Canonical {
  public static let maximumWireBytes = 1029
  public static let codecIdentity =
    "UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea"
  public static let nativeType = "urinterfaces/srv/SharedVariablesEditor_Response"
  public static let nativeIdentity: String? = nil
  public var `response`: Ros2UrinterfacesMsgSharedVariablesEditResponse =
    Ros2UrinterfacesMsgSharedVariablesEditResponse()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`response`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2UrinterfacesSrvSharedVariablesEditor_Response
  {
    var v = Ros2UrinterfacesSrvSharedVariablesEditor_Response()
    v.`response` = try Ros2UrinterfacesMsgSharedVariablesEditResponse.read(from: &r)
    return v
  }
}
public struct Ros2UrinterfacesSrvVariablesViewer_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a"
  public static let nativeType = "urinterfaces/srv/VariablesViewer_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2UrinterfacesSrvVariablesViewer_Request
  {
    var v = Ros2UrinterfacesSrvVariablesViewer_Request()
    return v
  }
}
public struct Ros2UrinterfacesSrvVariablesViewer_Response: Canonical {
  public static let maximumWireBytes = 1168
  public static let codecIdentity =
    "UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2"
  public static let nativeType = "urinterfaces/srv/VariablesViewer_Response"
  public static let nativeIdentity: String? = nil
  public var `response`: Ros2UrinterfacesMsgVariableUpdate = Ros2UrinterfacesMsgVariableUpdate()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`response`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2UrinterfacesSrvVariablesViewer_Response
  {
    var v = Ros2UrinterfacesSrvVariablesViewer_Response()
    v.`response` = try Ros2UrinterfacesMsgVariableUpdate.read(from: &r)
    return v
  }
}
