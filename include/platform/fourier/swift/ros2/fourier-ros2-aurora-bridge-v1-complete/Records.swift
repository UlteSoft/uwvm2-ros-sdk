// @file Records.swift
// @brief Full fourier swift codecs and original record metadata.
// @details Complete fourier ros2_aurora_bridge_v1 values in swift. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros2Uwvm_fourier_bridgeMsgGroupState: Canonical {
  public static let maximumWireBytes = 1684
  public static let codecIdentity =
    "UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4"
  public static let nativeType = "uwvm_fourier_bridge/msg/GroupState"
  public static let nativeIdentity: String? = nil
  public var `group`: String = ""
  public var `position`: [Double] = []
  public var `velocity`: [Double] = []
  public var `effort`: [Double] = []
  public var `motion_state`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`group`, bound: 128)
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
    try w.integer(self.`motion_state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Uwvm_fourier_bridgeMsgGroupState {
    var v = Ros2Uwvm_fourier_bridgeMsgGroupState()
    v.`group` = try r.string(bound: 128)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 64 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`position` = []
    v.`position`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`position`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 64 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`velocity` = []
    v.`velocity`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`velocity`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 64 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`effort` = []
    v.`effort`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`effort`.append(try r.float64())
    }
    v.`motion_state` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeMsgGroupValues: Canonical {
  public static let maximumWireBytes = 648
  public static let codecIdentity =
    "UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3"
  public static let nativeType = "uwvm_fourier_bridge/msg/GroupValues"
  public static let nativeIdentity: String? = nil
  public var `group`: String = ""
  public var `values`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`group`, bound: 128)
    guard self.`values`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`values`.count))
    for e in self.`values` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Uwvm_fourier_bridgeMsgGroupValues
  {
    var v = Ros2Uwvm_fourier_bridgeMsgGroupValues()
    v.`group` = try r.string(bound: 128)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 64 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`values` = []
    v.`values`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`values`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeMsgMotionRecipe: Canonical {
  public static let maximumWireBytes = 1170
  public static let codecIdentity =
    "UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14"
  public static let nativeType = "uwvm_fourier_bridge/msg/MotionRecipe"
  public static let nativeIdentity: String? = nil
  public var `move_type`: UInt8 = 0
  public var `group`: String = ""
  public var `position`: [Double] = []
  public var `has_velocity`: Bool = false
  public var `velocity`: [Double] = []
  public var `expected_velocity`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`move_type`)
    try w.string(self.`group`, bound: 128)
    guard self.`position`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`position`.count))
    for e in self.`position` {
      try w.float64(e)
    }
    try w.boolean(self.`has_velocity`)
    guard self.`velocity`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocity`.count))
    for e in self.`velocity` {
      try w.float64(e)
    }
    try w.integer(self.`expected_velocity`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Uwvm_fourier_bridgeMsgMotionRecipe
  {
    var v = Ros2Uwvm_fourier_bridgeMsgMotionRecipe()
    v.`move_type` = try r.integer(UInt8.self)
    v.`group` = try r.string(bound: 128)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 64 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`position` = []
    v.`position`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`position`.append(try r.float64())
    }
    v.`has_velocity` = try r.boolean()
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 64 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`velocity` = []
    v.`velocity`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`velocity`.append(try r.float64())
    }
    v.`expected_velocity` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeMsgStatus: Canonical {
  public static let maximumWireBytes = 14400
  public static let codecIdentity =
    "UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e"
  public static let nativeType = "uwvm_fourier_bridge/msg/Status"
  public static let nativeIdentity: String? = nil
  public var `fsm_state`: Int32 = 0
  public var `fsm_name`: String = ""
  public var `upper_fsm_state`: Int32 = 0
  public var `upper_fsm_name`: String = ""
  public var `velocity_source`: Int32 = 0
  public var `velocity_source_name`: String = ""
  public var `stand_pose`: [Double] = []
  public var `groups`: [Ros2Uwvm_fourier_bridgeMsgGroupState] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`fsm_state`)
    try w.string(self.`fsm_name`, bound: 128)
    try w.integer(self.`upper_fsm_state`)
    try w.string(self.`upper_fsm_name`, bound: 128)
    try w.integer(self.`velocity_source`)
    try w.string(self.`velocity_source_name`, bound: 128)
    guard self.`stand_pose`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`stand_pose`.count))
    for e in self.`stand_pose` {
      try w.float64(e)
    }
    guard self.`groups`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`groups`.count))
    for e in self.`groups` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Uwvm_fourier_bridgeMsgStatus {
    var v = Ros2Uwvm_fourier_bridgeMsgStatus()
    v.`fsm_state` = try r.integer(Int32.self)
    v.`fsm_name` = try r.string(bound: 128)
    v.`upper_fsm_state` = try r.integer(Int32.self)
    v.`upper_fsm_name` = try r.string(bound: 128)
    v.`velocity_source` = try r.integer(Int32.self)
    v.`velocity_source_name` = try r.string(bound: 128)
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 64 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`stand_pose` = []
    v.`stand_pose`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`stand_pose`.append(try r.float64())
    }
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 8 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`groups` = []
    v.`groups`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`groups`.append(try Ros2Uwvm_fourier_bridgeMsgGroupState.read(from: &r))
    }
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeMsgVelocityCommand: Canonical {
  public static let maximumWireBytes = 40
  public static let codecIdentity =
    "UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d"
  public static let nativeType = "uwvm_fourier_bridge/msg/VelocityCommand"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `vx`: Double = 0
  public var `vy`: Double = 0
  public var `yaw`: Double = 0
  public var `duration`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    try w.float64(self.`vx`)
    try w.float64(self.`vy`)
    try w.float64(self.`yaw`)
    try w.float64(self.`duration`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeMsgVelocityCommand
  {
    var v = Ros2Uwvm_fourier_bridgeMsgVelocityCommand()
    v.`sequence` = try r.integer(UInt64.self)
    v.`vx` = try r.float64()
    v.`vy` = try r.float64()
    v.`yaw` = try r.float64()
    v.`duration` = try r.float64()
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request: Canonical {
  public static let maximumWireBytes = 9372
  public static let codecIdentity =
    "UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b"
  public static let nativeType = "uwvm_fourier_bridge/srv/ExecuteMove_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `moves`: [Ros2Uwvm_fourier_bridgeMsgMotionRecipe] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    guard self.`moves`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`moves`.count))
    for e in self.`moves` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request()
    v.`sequence` = try r.integer(UInt64.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`moves` = []
    v.`moves`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`moves`.append(try Ros2Uwvm_fourier_bridgeMsgMotionRecipe.read(from: &r))
    }
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab"
  public static let nativeType = "uwvm_fourier_bridge/srv/ExecuteMove_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetBaseData_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `key`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    try w.string(self.`key`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request()
    v.`sequence` = try r.integer(UInt64.self)
    v.`key` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response: Canonical {
  public static let maximumWireBytes = 652
  public static let codecIdentity =
    "UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetBaseData_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public var `values`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
    guard self.`values`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`values`.count))
    for e in self.`values` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 64 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`values` = []
    v.`values`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`values`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetCartesianState_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `group`: String = ""
  public var `key`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    try w.string(self.`group`, bound: 128)
    try w.string(self.`key`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request()
    v.`sequence` = try r.integer(UInt64.self)
    v.`group` = try r.string(bound: 128)
    v.`key` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response: Canonical {
  public static let maximumWireBytes = 652
  public static let codecIdentity =
    "UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetCartesianState_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public var `values`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
    guard self.`values`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`values`.count))
    for e in self.`values` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 64 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`values` = []
    v.`values`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`values`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetContactData_Request: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetContactData_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `key`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    try w.string(self.`key`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetContactData_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetContactData_Request()
    v.`sequence` = try r.integer(UInt64.self)
    v.`key` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetContactData_Response: Canonical {
  public static let maximumWireBytes = 652
  public static let codecIdentity =
    "UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetContactData_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public var `values`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
    guard self.`values`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`values`.count))
    for e in self.`values` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetContactData_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetContactData_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 64 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`values` = []
    v.`values`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`values`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetFsmName_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request()
    v.`sequence` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetFsmName_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public var `value`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
    try w.string(self.`value`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    v.`value` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetFsmState_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request()
    v.`sequence` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetFsmState_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetGroupMotionState_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `group`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    try w.string(self.`group`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request()
    v.`sequence` = try r.integer(UInt64.self)
    v.`group` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetGroupMotionState_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `group`: String = ""
  public var `key`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    try w.string(self.`group`, bound: 128)
    try w.string(self.`key`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request()
    v.`sequence` = try r.integer(UInt64.self)
    v.`group` = try r.string(bound: 128)
    v.`key` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response: Canonical {
  public static let maximumWireBytes = 652
  public static let codecIdentity =
    "UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public var `values`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
    guard self.`values`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`values`.count))
    for e in self.`values` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 64 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`values` = []
    v.`values`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`values`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetGroupState_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `group`: String = ""
  public var `key`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    try w.string(self.`group`, bound: 128)
    try w.string(self.`key`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request()
    v.`sequence` = try r.integer(UInt64.self)
    v.`group` = try r.string(bound: 128)
    v.`key` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response: Canonical {
  public static let maximumWireBytes = 652
  public static let codecIdentity =
    "UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetGroupState_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public var `values`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
    guard self.`values`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`values`.count))
    for e in self.`values` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 64 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`values` = []
    v.`values`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`values`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetSnapshot_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request()
    v.`sequence` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response: Canonical {
  public static let maximumWireBytes = 14536
  public static let codecIdentity =
    "UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetSnapshot_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public var `value`: Ros2Uwvm_fourier_bridgeMsgStatus = Ros2Uwvm_fourier_bridgeMsgStatus()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
    try self.`value`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    v.`value` = try Ros2Uwvm_fourier_bridgeMsgStatus.read(from: &r)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetStandPose_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request()
    v.`sequence` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response: Canonical {
  public static let maximumWireBytes = 652
  public static let codecIdentity =
    "UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetStandPose_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public var `values`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
    guard self.`values`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`values`.count))
    for e in self.`values` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 64 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`values` = []
    v.`values`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`values`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetUpperFsmName_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request()
    v.`sequence` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetUpperFsmName_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public var `value`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
    try w.string(self.`value`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    v.`value` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetUpperFsmState_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request()
    v.`sequence` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetUpperFsmState_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetVelocitySource_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request()
    v.`sequence` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetVelocitySource_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetVelocitySourceName_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request()
    v.`sequence` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40"
  public static let nativeType = "uwvm_fourier_bridge/srv/GetVelocitySourceName_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public var `value`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
    try w.string(self.`value`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    v.`value` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d"
  public static let nativeType = "uwvm_fourier_bridge/srv/SetFsmState_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `state`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    try w.integer(self.`state`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request()
    v.`sequence` = try r.integer(UInt64.self)
    v.`state` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70"
  public static let nativeType = "uwvm_fourier_bridge/srv/SetFsmState_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request: Canonical {
  public static let maximumWireBytes = 15572
  public static let codecIdentity =
    "UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9"
  public static let nativeType = "uwvm_fourier_bridge/srv/SetGroupCommand_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `position`: [Ros2Uwvm_fourier_bridgeMsgGroupValues] = []
  public var `velocity`: [Ros2Uwvm_fourier_bridgeMsgGroupValues] = []
  public var `torque`: [Ros2Uwvm_fourier_bridgeMsgGroupValues] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    guard self.`position`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`position`.count))
    for e in self.`position` {
      try e.write(to: &w)
    }
    guard self.`velocity`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocity`.count))
    for e in self.`velocity` {
      try e.write(to: &w)
    }
    guard self.`torque`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`torque`.count))
    for e in self.`torque` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request()
    v.`sequence` = try r.integer(UInt64.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`position` = []
    v.`position`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`position`.append(try Ros2Uwvm_fourier_bridgeMsgGroupValues.read(from: &r))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`velocity` = []
    v.`velocity`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`velocity`.append(try Ros2Uwvm_fourier_bridgeMsgGroupValues.read(from: &r))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 8 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`torque` = []
    v.`torque`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`torque`.append(try Ros2Uwvm_fourier_bridgeMsgGroupValues.read(from: &r))
    }
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290"
  public static let nativeType = "uwvm_fourier_bridge/srv/SetGroupCommand_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request: Canonical {
  public static let maximumWireBytes = 10384
  public static let codecIdentity =
    "UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de"
  public static let nativeType = "uwvm_fourier_bridge/srv/SetMotorCfgPd_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `kp`: [Ros2Uwvm_fourier_bridgeMsgGroupValues] = []
  public var `kd`: [Ros2Uwvm_fourier_bridgeMsgGroupValues] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    guard self.`kp`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`kp`.count))
    for e in self.`kp` {
      try e.write(to: &w)
    }
    guard self.`kd`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`kd`.count))
    for e in self.`kd` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request()
    v.`sequence` = try r.integer(UInt64.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`kp` = []
    v.`kp`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`kp`.append(try Ros2Uwvm_fourier_bridgeMsgGroupValues.read(from: &r))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`kd` = []
    v.`kd`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`kd`.append(try Ros2Uwvm_fourier_bridgeMsgGroupValues.read(from: &r))
    }
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804"
  public static let nativeType = "uwvm_fourier_bridge/srv/SetMotorCfgPd_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211"
  public static let nativeType = "uwvm_fourier_bridge/srv/SetStandPose_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `delta_z`: Double = 0
  public var `delta_pitch`: Double = 0
  public var `delta_yaw`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    try w.float64(self.`delta_z`)
    try w.float64(self.`delta_pitch`)
    try w.float64(self.`delta_yaw`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request()
    v.`sequence` = try r.integer(UInt64.self)
    v.`delta_z` = try r.float64()
    v.`delta_pitch` = try r.float64()
    v.`delta_yaw` = try r.float64()
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f"
  public static let nativeType = "uwvm_fourier_bridge/srv/SetStandPose_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182"
  public static let nativeType = "uwvm_fourier_bridge/srv/SetUpperFsmState_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `state`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    try w.integer(self.`state`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request()
    v.`sequence` = try r.integer(UInt64.self)
    v.`state` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8"
  public static let nativeType = "uwvm_fourier_bridge/srv/SetUpperFsmState_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request: Canonical {
  public static let maximumWireBytes = 40
  public static let codecIdentity =
    "UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44"
  public static let nativeType = "uwvm_fourier_bridge/srv/SetVelocity_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `vx`: Double = 0
  public var `vy`: Double = 0
  public var `yaw`: Double = 0
  public var `duration`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    try w.float64(self.`vx`)
    try w.float64(self.`vy`)
    try w.float64(self.`yaw`)
    try w.float64(self.`duration`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request()
    v.`sequence` = try r.integer(UInt64.self)
    v.`vx` = try r.float64()
    v.`vy` = try r.float64()
    v.`yaw` = try r.float64()
    v.`duration` = try r.float64()
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307"
  public static let nativeType = "uwvm_fourier_bridge/srv/SetVelocity_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c"
  public static let nativeType = "uwvm_fourier_bridge/srv/SetVelocitySource_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `source`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    try w.integer(self.`source`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request()
    v.`sequence` = try r.integer(UInt64.self)
    v.`source` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7"
  public static let nativeType = "uwvm_fourier_bridge/srv/SetVelocitySource_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request: Canonical {
  public static let maximumWireBytes = 1084
  public static let codecIdentity =
    "UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202"
  public static let nativeType = "uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `groups`: [String] = []
  public var `timeout_seconds`: Double = 0
  public var `poll_seconds`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    guard self.`groups`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`groups`.count))
    for e in self.`groups` {
      try w.string(e, bound: 128)
    }
    try w.float64(self.`timeout_seconds`)
    try w.float64(self.`poll_seconds`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
  {
    var v = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request()
    v.`sequence` = try r.integer(UInt64.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`groups` = []
    v.`groups`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`groups`.append(try r.string(bound: 128))
    }
    v.`timeout_seconds` = try r.float64()
    v.`poll_seconds` = try r.float64()
    return v
  }
}
public struct Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response: Canonical {
  public static let maximumWireBytes = 137
  public static let codecIdentity =
    "UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f"
  public static let nativeType = "uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public var `complete`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
    try w.boolean(self.`complete`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
  {
    var v = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    v.`complete` = try r.boolean()
    return v
  }
}
