/// @file records.swift
/// @brief Preserve the complete original ufactory/ros1_legacy canonical value domain.
/// @details The selected domain contains 29 complete record/components and 67 original fields. Declared
/// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
/// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
/// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
/// does not qualify a frontend, target ABI or native ROS transport.
/// @see The platform's localized language guide and complete API-CATALOG.md.
// Generated complete canonical values. No I/O or authority.
import RosWasm

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
  public static let maximumWireBytes = 94
  public static let codecIdentity =
    "UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7"
  public static let nativeType = "xarm_msgs/RobotMsg"
  public static let nativeIdentity: String? = nil
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
    v.`state` = try r.integer(Int16.self)
    v.`mode` = try r.integer(Int16.self)
    v.`cmdnum` = try r.integer(Int16.self)
    v.`mt_brake` = try r.integer(Int16.self)
    v.`mt_able` = try r.integer(Int16.self)
    v.`err` = try r.integer(Int16.self)
    v.`warn` = try r.integer(Int16.self)
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 7 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`angle` = []
    v.`angle`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`angle`.append(try r.float32())
    }
    let count8 = 6
    v.`pose` = []
    v.`pose`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`pose`.append(try r.float32())
    }
    let count9 = 6
    v.`offset` = []
    v.`offset`.reserveCapacity(count9)
    for _ in 0..<count9 {
      v.`offset`.append(try r.float32())
    }
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
