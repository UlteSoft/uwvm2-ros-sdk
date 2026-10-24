/// @file records.swift
/// @brief Preserve the complete original ufactory/ros1_master canonical value domain.
/// @details The selected domain contains 84 complete record/components and 196 original fields. Declared
/// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
/// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
/// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
/// does not qualify a frontend, target ABI or native ROS transport.
/// @see The platform's localized language guide and complete API-CATALOG.md.
// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros1Xarm_gripperMoveGoal: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e"
  public static let nativeType = "xarm_gripper/MoveGoal"
  public static let nativeIdentity: String? = nil
  public var `target_pulse`: Float = 0
  public var `pulse_speed`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`target_pulse`)
    try w.float32(self.`pulse_speed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_gripperMoveGoal {
    var v = Ros1Xarm_gripperMoveGoal()
    v.`target_pulse` = try r.float32()
    v.`pulse_speed` = try r.float32()
    return v
  }
}
public struct Ros1Xarm_gripperMoveResult: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c"
  public static let nativeType = "xarm_gripper/MoveResult"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `err_code`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.integer(self.`err_code`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_gripperMoveResult {
    var v = Ros1Xarm_gripperMoveResult()
    v.`success` = try r.boolean()
    v.`err_code` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Xarm_gripperMoveFeedback: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6"
  public static let nativeType = "xarm_gripper/MoveFeedback"
  public static let nativeIdentity: String? = nil
  public var `current_pulse`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`current_pulse`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_gripperMoveFeedback {
    var v = Ros1Xarm_gripperMoveFeedback()
    v.`current_pulse` = try r.float32()
    return v
  }
}
public struct Ros1Geometry_msgsPoint: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b"
  public static let nativeType = "geometry_msgs/Point"
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
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsPoint {
    var v = Ros1Geometry_msgsPoint()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
public struct Ros1Geometry_msgsQuaternion: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934"
  public static let nativeType = "geometry_msgs/Quaternion"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `z`: Double = 0
  public var `w`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
    try w.float64(self.`w`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsQuaternion {
    var v = Ros1Geometry_msgsQuaternion()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`w` = try r.float64()
    return v
  }
}
public struct Ros1Geometry_msgsPose: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471"
  public static let nativeType = "geometry_msgs/Pose"
  public static let nativeIdentity: String? = nil
  public var `position`: Ros1Geometry_msgsPoint = Ros1Geometry_msgsPoint()
  public var `orientation`: Ros1Geometry_msgsQuaternion = Ros1Geometry_msgsQuaternion()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`position`.write(to: &w)
    try self.`orientation`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsPose {
    var v = Ros1Geometry_msgsPose()
    v.`position` = try Ros1Geometry_msgsPoint.read(from: &r)
    v.`orientation` = try Ros1Geometry_msgsQuaternion.read(from: &r)
    return v
  }
}
public struct Ros1Time: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
  public static let nativeType = "time"
  public static let nativeIdentity: String? = nil
  public var `sec`: UInt32 = 0
  public var `nsec`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    if self.`nsec` >= 1_000_000_000 { throw RosError(22) }
    try w.integer(self.`sec`)
    try w.integer(self.`nsec`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Time {
    var v = Ros1Time()
    v.`sec` = try r.integer(UInt32.self)
    v.`nsec` = try r.integer(UInt32.self)
    if v.`nsec` >= 1_000_000_000 { throw RosError(22) }
    return v
  }
}
public struct Ros1Std_msgsHeader: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7"
  public static let nativeType = "std_msgs/Header"
  public static let nativeIdentity: String? = nil
  public var `seq`: UInt32 = 0
  public var `stamp`: Ros1Time = Ros1Time()
  public var `frame_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`seq`)
    try self.`stamp`.write(to: &w)
    try w.string(self.`frame_id`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Std_msgsHeader {
    var v = Ros1Std_msgsHeader()
    v.`seq` = try r.integer(UInt32.self)
    v.`stamp` = try Ros1Time.read(from: &r)
    v.`frame_id` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsCIOState: Canonical {
  public static let maximumWireBytes = 332
  public static let codecIdentity =
    "UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057"
  public static let nativeType = "xarm_msgs/CIOState"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
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
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsCIOState {
    var v = Ros1Xarm_msgsCIOState()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
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
public struct Ros1Xarm_msgsIOState: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996"
  public static let nativeType = "xarm_msgs/IOState"
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
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsIOState {
    var v = Ros1Xarm_msgsIOState()
    v.`digital_1` = try r.integer(Int32.self)
    v.`digital_2` = try r.integer(Int32.self)
    v.`analog_1` = try r.float32()
    v.`analog_2` = try r.float32()
    return v
  }
}
public struct Ros1Xarm_msgsRobotMsg: Canonical {
  public static let maximumWireBytes = 366
  public static let codecIdentity =
    "UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb"
  public static let nativeType = "xarm_msgs/RobotMsg"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
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
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsRobotMsg {
    var v = Ros1Xarm_msgsRobotMsg()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
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
public struct Ros1Xarm_msgsVeloMoveMsg: Canonical {
  public static let maximumWireBytes = 138
  public static let codecIdentity =
    "UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032"
  public static let nativeType = "xarm_msgs/VeloMoveMsg"
  public static let nativeIdentity: String? = nil
  public var `speeds`: [Float] = []
  public var `is_sync`: Bool = false
  public var `is_tool_coord`: Bool = false
  public var `duration`: Float = 0
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
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsVeloMoveMsg {
    var v = Ros1Xarm_msgsVeloMoveMsg()
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
public struct Ros1Xarm_msgsCallRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328"
  public static let nativeType = "xarm_msgs/CallRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsCallRequest {
    var v = Ros1Xarm_msgsCallRequest()
    return v
  }
}
public struct Ros1Xarm_msgsCallResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0"
  public static let nativeType = "xarm_msgs/CallResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsCallResponse {
    var v = Ros1Xarm_msgsCallResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsClearErrRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8"
  public static let nativeType = "xarm_msgs/ClearErrRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsClearErrRequest {
    var v = Ros1Xarm_msgsClearErrRequest()
    return v
  }
}
public struct Ros1Xarm_msgsClearErrResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054"
  public static let nativeType = "xarm_msgs/ClearErrResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsClearErrResponse {
    var v = Ros1Xarm_msgsClearErrResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsConfigToolModbusRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5"
  public static let nativeType = "xarm_msgs/ConfigToolModbusRequest"
  public static let nativeIdentity: String? = nil
  public var `baud_rate`: Int32 = 0
  public var `timeout_ms`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`baud_rate`)
    try w.integer(self.`timeout_ms`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsConfigToolModbusRequest {
    var v = Ros1Xarm_msgsConfigToolModbusRequest()
    v.`baud_rate` = try r.integer(Int32.self)
    v.`timeout_ms` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Xarm_msgsConfigToolModbusResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9"
  public static let nativeType = "xarm_msgs/ConfigToolModbusResponse"
  public static let nativeIdentity: String? = nil
  public var `message`: String = ""
  public var `ret`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`message`, bound: 256)
    try w.integer(self.`ret`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsConfigToolModbusResponse
  {
    var v = Ros1Xarm_msgsConfigToolModbusResponse()
    v.`message` = try r.string(bound: 256)
    v.`ret` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Xarm_msgsFtCaliLoadRequest: Canonical {
  public static let maximumWireBytes = 133
  public static let codecIdentity =
    "UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167"
  public static let nativeType = "xarm_msgs/FtCaliLoadRequest"
  public static let nativeIdentity: String? = nil
  public var `datas`: [Float] = []
  public var `association_setting_tcp_load`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`datas`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`datas`.count))
    for e in self.`datas` {
      try w.float32(e)
    }
    try w.boolean(self.`association_setting_tcp_load`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsFtCaliLoadRequest {
    var v = Ros1Xarm_msgsFtCaliLoadRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`datas` = []
    v.`datas`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`datas`.append(try r.float32())
    }
    v.`association_setting_tcp_load` = try r.boolean()
    return v
  }
}
public struct Ros1Xarm_msgsFtCaliLoadResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7"
  public static let nativeType = "xarm_msgs/FtCaliLoadResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsFtCaliLoadResponse {
    var v = Ros1Xarm_msgsFtCaliLoadResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsFtIdenLoadRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c"
  public static let nativeType = "xarm_msgs/FtIdenLoadRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsFtIdenLoadRequest {
    var v = Ros1Xarm_msgsFtIdenLoadRequest()
    return v
  }
}
public struct Ros1Xarm_msgsFtIdenLoadResponse: Canonical {
  public static let maximumWireBytes = 394
  public static let codecIdentity =
    "UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8"
  public static let nativeType = "xarm_msgs/FtIdenLoadResponse"
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
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsFtIdenLoadResponse {
    var v = Ros1Xarm_msgsFtIdenLoadResponse()
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
public struct Ros1Xarm_msgsGetAnalogIORequest: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8"
  public static let nativeType = "xarm_msgs/GetAnalogIORequest"
  public static let nativeIdentity: String? = nil
  public var `port_num`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`port_num`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGetAnalogIORequest {
    var v = Ros1Xarm_msgsGetAnalogIORequest()
    v.`port_num` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Xarm_msgsGetAnalogIOResponse: Canonical {
  public static let maximumWireBytes = 266
  public static let codecIdentity =
    "UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835"
  public static let nativeType = "xarm_msgs/GetAnalogIOResponse"
  public static let nativeIdentity: String? = nil
  public var `analog_value`: Float = 0
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`analog_value`)
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGetAnalogIOResponse {
    var v = Ros1Xarm_msgsGetAnalogIOResponse()
    v.`analog_value` = try r.float32()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsGetControllerDigitalIORequest: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c"
  public static let nativeType = "xarm_msgs/GetControllerDigitalIORequest"
  public static let nativeIdentity: String? = nil
  public var `io_num`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`io_num`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Xarm_msgsGetControllerDigitalIORequest
  {
    var v = Ros1Xarm_msgsGetControllerDigitalIORequest()
    v.`io_num` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Xarm_msgsGetControllerDigitalIOResponse: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161"
  public static let nativeType = "xarm_msgs/GetControllerDigitalIOResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `value`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.integer(self.`value`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Xarm_msgsGetControllerDigitalIOResponse
  {
    var v = Ros1Xarm_msgsGetControllerDigitalIOResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`value` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsGetDigitalIORequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da"
  public static let nativeType = "xarm_msgs/GetDigitalIORequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGetDigitalIORequest {
    var v = Ros1Xarm_msgsGetDigitalIORequest()
    return v
  }
}
public struct Ros1Xarm_msgsGetDigitalIOResponse: Canonical {
  public static let maximumWireBytes = 270
  public static let codecIdentity =
    "UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498"
  public static let nativeType = "xarm_msgs/GetDigitalIOResponse"
  public static let nativeIdentity: String? = nil
  public var `digital_1`: Int32 = 0
  public var `digital_2`: Int32 = 0
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`digital_1`)
    try w.integer(self.`digital_2`)
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGetDigitalIOResponse {
    var v = Ros1Xarm_msgsGetDigitalIOResponse()
    v.`digital_1` = try r.integer(Int32.self)
    v.`digital_2` = try r.integer(Int32.self)
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsGetErrRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531"
  public static let nativeType = "xarm_msgs/GetErrRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGetErrRequest {
    var v = Ros1Xarm_msgsGetErrRequest()
    return v
  }
}
public struct Ros1Xarm_msgsGetErrResponse: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de"
  public static let nativeType = "xarm_msgs/GetErrResponse"
  public static let nativeIdentity: String? = nil
  public var `err`: Int16 = 0
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`err`)
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGetErrResponse {
    var v = Ros1Xarm_msgsGetErrResponse()
    v.`err` = try r.integer(Int16.self)
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsGetFloat32ListRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db"
  public static let nativeType = "xarm_msgs/GetFloat32ListRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGetFloat32ListRequest {
    var v = Ros1Xarm_msgsGetFloat32ListRequest()
    return v
  }
}
public struct Ros1Xarm_msgsGetFloat32ListResponse: Canonical {
  public static let maximumWireBytes = 394
  public static let codecIdentity =
    "UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2"
  public static let nativeType = "xarm_msgs/GetFloat32ListResponse"
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
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGetFloat32ListResponse {
    var v = Ros1Xarm_msgsGetFloat32ListResponse()
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
public struct Ros1Xarm_msgsGetInt32Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470"
  public static let nativeType = "xarm_msgs/GetInt32Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGetInt32Request {
    var v = Ros1Xarm_msgsGetInt32Request()
    return v
  }
}
public struct Ros1Xarm_msgsGetInt32Response: Canonical {
  public static let maximumWireBytes = 266
  public static let codecIdentity =
    "UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d"
  public static let nativeType = "xarm_msgs/GetInt32Response"
  public static let nativeIdentity: String? = nil
  public var `data`: Int32 = 0
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`data`)
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGetInt32Response {
    var v = Ros1Xarm_msgsGetInt32Response()
    v.`data` = try r.integer(Int32.self)
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsGetSetModbusDataRequest: Canonical {
  public static let maximumWireBytes = 4105
  public static let codecIdentity =
    "UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7"
  public static let nativeType = "xarm_msgs/GetSetModbusDataRequest"
  public static let nativeIdentity: String? = nil
  public var `send_data`: [UInt8] = []
  public var `respond_len`: Int16 = 0
  public var `host_id`: UInt8 = 0
  public var `is_transparent_transmission`: Bool = false
  public var `use_503_port`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`send_data`.count <= 4096 else { throw RosError(22) }
    try w.integer(UInt32(self.`send_data`.count))
    for e in self.`send_data` {
      try w.integer(e)
    }
    try w.integer(self.`respond_len`)
    try w.integer(self.`host_id`)
    try w.boolean(self.`is_transparent_transmission`)
    try w.boolean(self.`use_503_port`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGetSetModbusDataRequest {
    var v = Ros1Xarm_msgsGetSetModbusDataRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 4096 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`send_data` = []
    v.`send_data`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`send_data`.append(try r.integer(UInt8.self))
    }
    v.`respond_len` = try r.integer(Int16.self)
    v.`host_id` = try r.integer(UInt8.self)
    v.`is_transparent_transmission` = try r.boolean()
    v.`use_503_port` = try r.boolean()
    return v
  }
}
public struct Ros1Xarm_msgsGetSetModbusDataResponse: Canonical {
  public static let maximumWireBytes = 4362
  public static let codecIdentity =
    "UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead"
  public static let nativeType = "xarm_msgs/GetSetModbusDataResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public var `respond_data`: [UInt8] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
    guard self.`respond_data`.count <= 4096 else { throw RosError(22) }
    try w.integer(UInt32(self.`respond_data`.count))
    for e in self.`respond_data` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGetSetModbusDataResponse
  {
    var v = Ros1Xarm_msgsGetSetModbusDataResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4096 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`respond_data` = []
    v.`respond_data`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`respond_data`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros1Xarm_msgsGripperConfigRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4"
  public static let nativeType = "xarm_msgs/GripperConfigRequest"
  public static let nativeIdentity: String? = nil
  public var `pulse_vel`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`pulse_vel`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGripperConfigRequest {
    var v = Ros1Xarm_msgsGripperConfigRequest()
    v.`pulse_vel` = try r.float32()
    return v
  }
}
public struct Ros1Xarm_msgsGripperConfigResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59"
  public static let nativeType = "xarm_msgs/GripperConfigResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGripperConfigResponse {
    var v = Ros1Xarm_msgsGripperConfigResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsGripperMoveRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2"
  public static let nativeType = "xarm_msgs/GripperMoveRequest"
  public static let nativeIdentity: String? = nil
  public var `pulse_pos`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`pulse_pos`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGripperMoveRequest {
    var v = Ros1Xarm_msgsGripperMoveRequest()
    v.`pulse_pos` = try r.float32()
    return v
  }
}
public struct Ros1Xarm_msgsGripperMoveResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad"
  public static let nativeType = "xarm_msgs/GripperMoveResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGripperMoveResponse {
    var v = Ros1Xarm_msgsGripperMoveResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsGripperStateRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d"
  public static let nativeType = "xarm_msgs/GripperStateRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGripperStateRequest {
    var v = Ros1Xarm_msgsGripperStateRequest()
    return v
  }
}
public struct Ros1Xarm_msgsGripperStateResponse: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6"
  public static let nativeType = "xarm_msgs/GripperStateResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public var `curr_pos`: Float = 0
  public var `err_code`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
    try w.float32(self.`curr_pos`)
    try w.integer(self.`err_code`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsGripperStateResponse {
    var v = Ros1Xarm_msgsGripperStateResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    v.`curr_pos` = try r.float32()
    v.`err_code` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Xarm_msgsMoveRequest: Canonical {
  public static let maximumWireBytes = 148
  public static let codecIdentity =
    "UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced"
  public static let nativeType = "xarm_msgs/MoveRequest"
  public static let nativeIdentity: String? = nil
  public var `pose`: [Float] = []
  public var `mvvelo`: Float = 0
  public var `mvacc`: Float = 0
  public var `mvtime`: Float = 0
  public var `mvradii`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pose`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`pose`.count))
    for e in self.`pose` {
      try w.float32(e)
    }
    try w.float32(self.`mvvelo`)
    try w.float32(self.`mvacc`)
    try w.float32(self.`mvtime`)
    try w.float32(self.`mvradii`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsMoveRequest {
    var v = Ros1Xarm_msgsMoveRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`pose` = []
    v.`pose`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pose`.append(try r.float32())
    }
    v.`mvvelo` = try r.float32()
    v.`mvacc` = try r.float32()
    v.`mvtime` = try r.float32()
    v.`mvradii` = try r.float32()
    return v
  }
}
public struct Ros1Xarm_msgsMoveResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d"
  public static let nativeType = "xarm_msgs/MoveResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsMoveResponse {
    var v = Ros1Xarm_msgsMoveResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsMoveAxisAngleRequest: Canonical {
  public static let maximumWireBytes = 148
  public static let codecIdentity =
    "UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30"
  public static let nativeType = "xarm_msgs/MoveAxisAngleRequest"
  public static let nativeIdentity: String? = nil
  public var `pose`: [Float] = []
  public var `mvvelo`: Float = 0
  public var `mvacc`: Float = 0
  public var `mvtime`: Float = 0
  public var `coord`: Int16 = 0
  public var `relative`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pose`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`pose`.count))
    for e in self.`pose` {
      try w.float32(e)
    }
    try w.float32(self.`mvvelo`)
    try w.float32(self.`mvacc`)
    try w.float32(self.`mvtime`)
    try w.integer(self.`coord`)
    try w.integer(self.`relative`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsMoveAxisAngleRequest {
    var v = Ros1Xarm_msgsMoveAxisAngleRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`pose` = []
    v.`pose`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pose`.append(try r.float32())
    }
    v.`mvvelo` = try r.float32()
    v.`mvacc` = try r.float32()
    v.`mvtime` = try r.float32()
    v.`coord` = try r.integer(Int16.self)
    v.`relative` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Xarm_msgsMoveAxisAngleResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300"
  public static let nativeType = "xarm_msgs/MoveAxisAngleResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsMoveAxisAngleResponse {
    var v = Ros1Xarm_msgsMoveAxisAngleResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsMoveVeloRequest: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204"
  public static let nativeType = "xarm_msgs/MoveVeloRequest"
  public static let nativeIdentity: String? = nil
  public var `velocities`: [Float] = []
  public var `jnt_sync`: Int16 = 0
  public var `coord`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`velocities`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocities`.count))
    for e in self.`velocities` {
      try w.float32(e)
    }
    try w.integer(self.`jnt_sync`)
    try w.integer(self.`coord`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsMoveVeloRequest {
    var v = Ros1Xarm_msgsMoveVeloRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`velocities` = []
    v.`velocities`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`velocities`.append(try r.float32())
    }
    v.`jnt_sync` = try r.integer(Int16.self)
    v.`coord` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Xarm_msgsMoveVeloResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce"
  public static let nativeType = "xarm_msgs/MoveVeloResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsMoveVeloResponse {
    var v = Ros1Xarm_msgsMoveVeloResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsMoveVelocityRequest: Canonical {
  public static let maximumWireBytes = 138
  public static let codecIdentity =
    "UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef"
  public static let nativeType = "xarm_msgs/MoveVelocityRequest"
  public static let nativeIdentity: String? = nil
  public var `speeds`: [Float] = []
  public var `is_sync`: Bool = false
  public var `is_tool_coord`: Bool = false
  public var `duration`: Float = 0
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
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsMoveVelocityRequest {
    var v = Ros1Xarm_msgsMoveVelocityRequest()
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
public struct Ros1Xarm_msgsMoveVelocityResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc"
  public static let nativeType = "xarm_msgs/MoveVelocityResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsMoveVelocityResponse {
    var v = Ros1Xarm_msgsMoveVelocityResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsPlayTrajRequest: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5"
  public static let nativeType = "xarm_msgs/PlayTrajRequest"
  public static let nativeIdentity: String? = nil
  public var `traj_file`: String = ""
  public var `repeat_times`: Int16 = 0
  public var `speed_factor`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`traj_file`, bound: 256)
    try w.integer(self.`repeat_times`)
    try w.integer(self.`speed_factor`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsPlayTrajRequest {
    var v = Ros1Xarm_msgsPlayTrajRequest()
    v.`traj_file` = try r.string(bound: 256)
    v.`repeat_times` = try r.integer(Int16.self)
    v.`speed_factor` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Xarm_msgsPlayTrajResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a"
  public static let nativeType = "xarm_msgs/PlayTrajResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsPlayTrajResponse {
    var v = Ros1Xarm_msgsPlayTrajResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsSetAxisRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6"
  public static let nativeType = "xarm_msgs/SetAxisRequest"
  public static let nativeIdentity: String? = nil
  public var `id`: Int16 = 0
  public var `data`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
    try w.integer(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetAxisRequest {
    var v = Ros1Xarm_msgsSetAxisRequest()
    v.`id` = try r.integer(Int16.self)
    v.`data` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Xarm_msgsSetAxisResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27"
  public static let nativeType = "xarm_msgs/SetAxisResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetAxisResponse {
    var v = Ros1Xarm_msgsSetAxisResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsSetControllerAnalogIORequest: Canonical {
  public static let maximumWireBytes = 6
  public static let codecIdentity =
    "UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66"
  public static let nativeType = "xarm_msgs/SetControllerAnalogIORequest"
  public static let nativeIdentity: String? = nil
  public var `port_num`: Int16 = 0
  public var `analog_value`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`port_num`)
    try w.float32(self.`analog_value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Xarm_msgsSetControllerAnalogIORequest
  {
    var v = Ros1Xarm_msgsSetControllerAnalogIORequest()
    v.`port_num` = try r.integer(Int16.self)
    v.`analog_value` = try r.float32()
    return v
  }
}
public struct Ros1Xarm_msgsSetControllerAnalogIOResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec"
  public static let nativeType = "xarm_msgs/SetControllerAnalogIOResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Xarm_msgsSetControllerAnalogIOResponse
  {
    var v = Ros1Xarm_msgsSetControllerAnalogIOResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsSetDigitalIORequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959"
  public static let nativeType = "xarm_msgs/SetDigitalIORequest"
  public static let nativeIdentity: String? = nil
  public var `io_num`: Int16 = 0
  public var `value`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`io_num`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetDigitalIORequest {
    var v = Ros1Xarm_msgsSetDigitalIORequest()
    v.`io_num` = try r.integer(Int16.self)
    v.`value` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Xarm_msgsSetDigitalIOResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a"
  public static let nativeType = "xarm_msgs/SetDigitalIOResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetDigitalIOResponse {
    var v = Ros1Xarm_msgsSetDigitalIOResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsSetFloat32Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033"
  public static let nativeType = "xarm_msgs/SetFloat32Request"
  public static let nativeIdentity: String? = nil
  public var `data`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetFloat32Request {
    var v = Ros1Xarm_msgsSetFloat32Request()
    v.`data` = try r.float32()
    return v
  }
}
public struct Ros1Xarm_msgsSetFloat32Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712"
  public static let nativeType = "xarm_msgs/SetFloat32Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetFloat32Response {
    var v = Ros1Xarm_msgsSetFloat32Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsSetInt16Request: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7"
  public static let nativeType = "xarm_msgs/SetInt16Request"
  public static let nativeIdentity: String? = nil
  public var `data`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`data`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetInt16Request {
    var v = Ros1Xarm_msgsSetInt16Request()
    v.`data` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Xarm_msgsSetInt16Response: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656"
  public static let nativeType = "xarm_msgs/SetInt16Response"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetInt16Response {
    var v = Ros1Xarm_msgsSetInt16Response()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsSetLoadRequest: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077"
  public static let nativeType = "xarm_msgs/SetLoadRequest"
  public static let nativeIdentity: String? = nil
  public var `mass`: Float = 0
  public var `xc`: Float = 0
  public var `yc`: Float = 0
  public var `zc`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`mass`)
    try w.float32(self.`xc`)
    try w.float32(self.`yc`)
    try w.float32(self.`zc`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetLoadRequest {
    var v = Ros1Xarm_msgsSetLoadRequest()
    v.`mass` = try r.float32()
    v.`xc` = try r.float32()
    v.`yc` = try r.float32()
    v.`zc` = try r.float32()
    return v
  }
}
public struct Ros1Xarm_msgsSetLoadResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e"
  public static let nativeType = "xarm_msgs/SetLoadResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetLoadResponse {
    var v = Ros1Xarm_msgsSetLoadResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsSetModbusTimeoutRequest: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd"
  public static let nativeType = "xarm_msgs/SetModbusTimeoutRequest"
  public static let nativeIdentity: String? = nil
  public var `timeout_ms`: Int32 = 0
  public var `is_transparent_transmission`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`timeout_ms`)
    try w.boolean(self.`is_transparent_transmission`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetModbusTimeoutRequest {
    var v = Ros1Xarm_msgsSetModbusTimeoutRequest()
    v.`timeout_ms` = try r.integer(Int32.self)
    v.`is_transparent_transmission` = try r.boolean()
    return v
  }
}
public struct Ros1Xarm_msgsSetModbusTimeoutResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8"
  public static let nativeType = "xarm_msgs/SetModbusTimeoutResponse"
  public static let nativeIdentity: String? = nil
  public var `message`: String = ""
  public var `ret`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`message`, bound: 256)
    try w.integer(self.`ret`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetModbusTimeoutResponse
  {
    var v = Ros1Xarm_msgsSetModbusTimeoutResponse()
    v.`message` = try r.string(bound: 256)
    v.`ret` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Xarm_msgsSetMultipleIntsRequest: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1"
  public static let nativeType = "xarm_msgs/SetMultipleIntsRequest"
  public static let nativeIdentity: String? = nil
  public var `data_int`: [Int16] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`data_int`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`data_int`.count))
    for e in self.`data_int` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetMultipleIntsRequest {
    var v = Ros1Xarm_msgsSetMultipleIntsRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`data_int` = []
    v.`data_int`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`data_int`.append(try r.integer(Int16.self))
    }
    return v
  }
}
public struct Ros1Xarm_msgsSetMultipleIntsResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32"
  public static let nativeType = "xarm_msgs/SetMultipleIntsResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetMultipleIntsResponse {
    var v = Ros1Xarm_msgsSetMultipleIntsResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsSetStringRequest: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f"
  public static let nativeType = "xarm_msgs/SetStringRequest"
  public static let nativeIdentity: String? = nil
  public var `str_data`: String = ""
  public var `timeout`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`str_data`, bound: 256)
    try w.float32(self.`timeout`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetStringRequest {
    var v = Ros1Xarm_msgsSetStringRequest()
    v.`str_data` = try r.string(bound: 256)
    v.`timeout` = try r.float32()
    return v
  }
}
public struct Ros1Xarm_msgsSetStringResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade"
  public static let nativeType = "xarm_msgs/SetStringResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetStringResponse {
    var v = Ros1Xarm_msgsSetStringResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsSetToolModbusRequest: Canonical {
  public static let maximumWireBytes = 4102
  public static let codecIdentity =
    "UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6"
  public static let nativeType = "xarm_msgs/SetToolModbusRequest"
  public static let nativeIdentity: String? = nil
  public var `send_data`: [UInt8] = []
  public var `respond_len`: Int16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`send_data`.count <= 4096 else { throw RosError(22) }
    try w.integer(UInt32(self.`send_data`.count))
    for e in self.`send_data` {
      try w.integer(e)
    }
    try w.integer(self.`respond_len`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetToolModbusRequest {
    var v = Ros1Xarm_msgsSetToolModbusRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 4096 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`send_data` = []
    v.`send_data`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`send_data`.append(try r.integer(UInt8.self))
    }
    v.`respond_len` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Xarm_msgsSetToolModbusResponse: Canonical {
  public static let maximumWireBytes = 4362
  public static let codecIdentity =
    "UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76"
  public static let nativeType = "xarm_msgs/SetToolModbusResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public var `respond_data`: [UInt8] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
    guard self.`respond_data`.count <= 4096 else { throw RosError(22) }
    try w.integer(UInt32(self.`respond_data`.count))
    for e in self.`respond_data` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsSetToolModbusResponse {
    var v = Ros1Xarm_msgsSetToolModbusResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4096 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`respond_data` = []
    v.`respond_data`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`respond_data`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros1Xarm_msgsTCPOffsetRequest: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd"
  public static let nativeType = "xarm_msgs/TCPOffsetRequest"
  public static let nativeIdentity: String? = nil
  public var `x`: Float = 0
  public var `y`: Float = 0
  public var `z`: Float = 0
  public var `roll`: Float = 0
  public var `pitch`: Float = 0
  public var `yaw`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`x`)
    try w.float32(self.`y`)
    try w.float32(self.`z`)
    try w.float32(self.`roll`)
    try w.float32(self.`pitch`)
    try w.float32(self.`yaw`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsTCPOffsetRequest {
    var v = Ros1Xarm_msgsTCPOffsetRequest()
    v.`x` = try r.float32()
    v.`y` = try r.float32()
    v.`z` = try r.float32()
    v.`roll` = try r.float32()
    v.`pitch` = try r.float32()
    v.`yaw` = try r.float32()
    return v
  }
}
public struct Ros1Xarm_msgsTCPOffsetResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d"
  public static let nativeType = "xarm_msgs/TCPOffsetResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsTCPOffsetResponse {
    var v = Ros1Xarm_msgsTCPOffsetResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_msgsVacuumGripperCtrlRequest: Canonical {
  public static let maximumWireBytes = 13
  public static let codecIdentity =
    "UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff"
  public static let nativeType = "xarm_msgs/VacuumGripperCtrlRequest"
  public static let nativeIdentity: String? = nil
  public var `on`: Bool = false
  public var `wait`: Bool = false
  public var `timeout`: Float = 0
  public var `delay_sec`: Float = 0
  public var `sync`: Bool = false
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
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsVacuumGripperCtrlRequest
  {
    var v = Ros1Xarm_msgsVacuumGripperCtrlRequest()
    v.`on` = try r.boolean()
    v.`wait` = try r.boolean()
    v.`timeout` = try r.float32()
    v.`delay_sec` = try r.float32()
    v.`sync` = try r.boolean()
    v.`hardware_version` = try r.integer(Int16.self)
    return v
  }
}
public struct Ros1Xarm_msgsVacuumGripperCtrlResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540"
  public static let nativeType = "xarm_msgs/VacuumGripperCtrlResponse"
  public static let nativeIdentity: String? = nil
  public var `ret`: Int16 = 0
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ret`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_msgsVacuumGripperCtrlResponse
  {
    var v = Ros1Xarm_msgsVacuumGripperCtrlResponse()
    v.`ret` = try r.integer(Int16.self)
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Xarm_plannerExec_planRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3"
  public static let nativeType = "xarm_planner/exec_planRequest"
  public static let nativeIdentity: String? = nil
  public var `exec`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`exec`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_plannerExec_planRequest {
    var v = Ros1Xarm_plannerExec_planRequest()
    v.`exec` = try r.boolean()
    return v
  }
}
public struct Ros1Xarm_plannerExec_planResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625"
  public static let nativeType = "xarm_planner/exec_planResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_plannerExec_planResponse {
    var v = Ros1Xarm_plannerExec_planResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Xarm_plannerJoint_planRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9"
  public static let nativeType = "xarm_planner/joint_planRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_plannerJoint_planRequest {
    var v = Ros1Xarm_plannerJoint_planRequest()
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
public struct Ros1Xarm_plannerJoint_planResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668"
  public static let nativeType = "xarm_planner/joint_planResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_plannerJoint_planResponse {
    var v = Ros1Xarm_plannerJoint_planResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Xarm_plannerPose_planRequest: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22"
  public static let nativeType = "xarm_planner/pose_planRequest"
  public static let nativeIdentity: String? = nil
  public var `target`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`target`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_plannerPose_planRequest {
    var v = Ros1Xarm_plannerPose_planRequest()
    v.`target` = try Ros1Geometry_msgsPose.read(from: &r)
    return v
  }
}
public struct Ros1Xarm_plannerPose_planResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113"
  public static let nativeType = "xarm_planner/pose_planResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Xarm_plannerPose_planResponse {
    var v = Ros1Xarm_plannerPose_planResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Xarm_plannerSingle_straight_planRequest: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f"
  public static let nativeType = "xarm_planner/single_straight_planRequest"
  public static let nativeIdentity: String? = nil
  public var `target`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`target`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Xarm_plannerSingle_straight_planRequest
  {
    var v = Ros1Xarm_plannerSingle_straight_planRequest()
    v.`target` = try Ros1Geometry_msgsPose.read(from: &r)
    return v
  }
}
public struct Ros1Xarm_plannerSingle_straight_planResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd"
  public static let nativeType = "xarm_planner/single_straight_planResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Xarm_plannerSingle_straight_planResponse
  {
    var v = Ros1Xarm_plannerSingle_straight_planResponse()
    v.`success` = try r.boolean()
    return v
  }
}
