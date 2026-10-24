/// @file Records.swift
/// @brief Complete universal_robots values and adapters for the selected original interface catalog.
/// @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
/// defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
/// roles require the separately admitted SDK owner.
/// @see share/platform/universal_robots/domains/universal-robots-ros1-complete.ir.json
/// @see document/platform/universal_robots/en_US/README.md

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
  public static let maximumWireBytes = 144
  public static let codecIdentity =
    "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"
  public static let nativeType = "std_msgs/Header"
  public static let nativeIdentity: String? = nil
  public var `seq`: UInt32 = 0
  public var `stamp`: Ros1Time = Ros1Time()
  public var `frame_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`seq`)
    try self.`stamp`.write(to: &w)
    try w.string(self.`frame_id`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Std_msgsHeader {
    var v = Ros1Std_msgsHeader()
    v.`seq` = try r.integer(UInt32.self)
    v.`stamp` = try Ros1Time.read(from: &r)
    v.`frame_id` = try r.string(bound: 128)
    return v
  }
}
public struct Ros1Geometry_msgsPoseStamped: Canonical {
  public static let maximumWireBytes = 200
  public static let codecIdentity =
    "UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95"
  public static let nativeType = "geometry_msgs/PoseStamped"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  public var `pose`: Ros1Geometry_msgsPose = Ros1Geometry_msgsPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsPoseStamped {
    var v = Ros1Geometry_msgsPoseStamped()
    v.`header` = try Ros1Std_msgsHeader.read(from: &r)
    v.`pose` = try Ros1Geometry_msgsPose.read(from: &r)
    return v
  }
}
public struct Ros1Geometry_msgsVector3: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc"
  public static let nativeType = "geometry_msgs/Vector3"
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
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsVector3 {
    var v = Ros1Geometry_msgsVector3()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
public struct Ros1Geometry_msgsTwist: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921"
  public static let nativeType = "geometry_msgs/Twist"
  public static let nativeIdentity: String? = nil
  public var `linear`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `angular`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`linear`.write(to: &w)
    try self.`angular`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsTwist {
    var v = Ros1Geometry_msgsTwist()
    v.`linear` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`angular` = try Ros1Geometry_msgsVector3.read(from: &r)
    return v
  }
}
public struct Ros1Geometry_msgsWrench: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3"
  public static let nativeType = "geometry_msgs/Wrench"
  public static let nativeIdentity: String? = nil
  public var `force`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public var `torque`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`force`.write(to: &w)
    try self.`torque`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Geometry_msgsWrench {
    var v = Ros1Geometry_msgsWrench()
    v.`force` = try Ros1Geometry_msgsVector3.read(from: &r)
    v.`torque` = try Ros1Geometry_msgsVector3.read(from: &r)
    return v
  }
}
public struct Ros1Ur_dashboard_msgsAddToLogRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_faf6c1ab9c749a05ae3f4e6196cc1c3574560daae1463ebe8684bf13ea938ac4"
  public static let nativeType = "ur_dashboard_msgs/AddToLogRequest"
  public static let nativeIdentity: String? = nil
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_dashboard_msgsAddToLogRequest {
    var v = Ros1Ur_dashboard_msgsAddToLogRequest()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Ur_dashboard_msgsAddToLogResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_d495f7609d04abde44cb35ec5114618a2875e0a30986d2f7cc62c8ce99354e7c"
  public static let nativeType = "ur_dashboard_msgs/AddToLogResponse"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_dashboard_msgsAddToLogResponse
  {
    var v = Ros1Ur_dashboard_msgsAddToLogResponse()
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Ur_dashboard_msgsGetLoadedProgramRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_54eecd0b652707f9c16dcbacbef05902112db993500404e1adaf26618e1d3a1a"
  public static let nativeType = "ur_dashboard_msgs/GetLoadedProgramRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ur_dashboard_msgsGetLoadedProgramRequest
  {
    var v = Ros1Ur_dashboard_msgsGetLoadedProgramRequest()
    return v
  }
}
public struct Ros1Ur_dashboard_msgsGetLoadedProgramResponse: Canonical {
  public static let maximumWireBytes = 521
  public static let codecIdentity =
    "UWVMROS1_1680747345d40412a4731c48f08c402ac97fb12dd871fb320c2a9d002453f87a"
  public static let nativeType = "ur_dashboard_msgs/GetLoadedProgramResponse"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `program_name`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.string(self.`program_name`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ur_dashboard_msgsGetLoadedProgramResponse
  {
    var v = Ros1Ur_dashboard_msgsGetLoadedProgramResponse()
    v.`answer` = try r.string(bound: 256)
    v.`program_name` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Ur_dashboard_msgsGetProgramStateRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_cf14c6f86ef1904f80e88117dc2f2d29a003b52e21bc6569795771f04cf072a2"
  public static let nativeType = "ur_dashboard_msgs/GetProgramStateRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ur_dashboard_msgsGetProgramStateRequest
  {
    var v = Ros1Ur_dashboard_msgsGetProgramStateRequest()
    return v
  }
}
public struct Ros1Ur_dashboard_msgsProgramState: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_97a57db64f20abcb9929b5296c75d66d994f2e9e26449810197c657694d3850e"
  public static let nativeType = "ur_dashboard_msgs/ProgramState"
  public static let nativeIdentity: String? = nil
  public static let `STOPPED`: String = "\u{53}\u{54}\u{4f}\u{50}\u{50}\u{45}\u{44}"
  public static let `PLAYING`: String = "\u{50}\u{4c}\u{41}\u{59}\u{49}\u{4e}\u{47}"
  public static let `PAUSED`: String = "\u{50}\u{41}\u{55}\u{53}\u{45}\u{44}"
  public var `state`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`state`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_dashboard_msgsProgramState {
    var v = Ros1Ur_dashboard_msgsProgramState()
    v.`state` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Ur_dashboard_msgsGetProgramStateResponse: Canonical {
  public static let maximumWireBytes = 781
  public static let codecIdentity =
    "UWVMROS1_366caf89303bfff48d3c0f89aa2a640c3d29af5a0c19d76ceccf26d50c3ab2ed"
  public static let nativeType = "ur_dashboard_msgs/GetProgramStateResponse"
  public static let nativeIdentity: String? = nil
  public var `state`: Ros1Ur_dashboard_msgsProgramState = Ros1Ur_dashboard_msgsProgramState()
  public var `program_name`: String = ""
  public var `answer`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`state`.write(to: &w)
    try w.string(self.`program_name`, bound: 256)
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ur_dashboard_msgsGetProgramStateResponse
  {
    var v = Ros1Ur_dashboard_msgsGetProgramStateResponse()
    v.`state` = try Ros1Ur_dashboard_msgsProgramState.read(from: &r)
    v.`program_name` = try r.string(bound: 256)
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Ur_dashboard_msgsGetRobotModeRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_b9ffe283d7dbcb85879dbf6964d393f5d44661227bb26e1acc34308edb288609"
  public static let nativeType = "ur_dashboard_msgs/GetRobotModeRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ur_dashboard_msgsGetRobotModeRequest
  {
    var v = Ros1Ur_dashboard_msgsGetRobotModeRequest()
    return v
  }
}
public struct Ros1Ur_dashboard_msgsRobotMode: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_b2772853eff2ec9b849b6de4a90ce98487a8eff49d1371283dce503908702066"
  public static let nativeType = "ur_dashboard_msgs/RobotMode"
  public static let nativeIdentity: String? = nil
  public static let `NO_CONTROLLER`: Int8 = -1
  public static let `DISCONNECTED`: Int8 = 0
  public static let `CONFIRM_SAFETY`: Int8 = 1
  public static let `BOOTING`: Int8 = 2
  public static let `POWER_OFF`: Int8 = 3
  public static let `POWER_ON`: Int8 = 4
  public static let `IDLE`: Int8 = 5
  public static let `BACKDRIVE`: Int8 = 6
  public static let `RUNNING`: Int8 = 7
  public static let `UPDATING_FIRMWARE`: Int8 = 8
  public var `mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_dashboard_msgsRobotMode {
    var v = Ros1Ur_dashboard_msgsRobotMode()
    v.`mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Ur_dashboard_msgsGetRobotModeResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_f6c0d0d03a956a34b00fd63540226b6abb8b106e2a35cb912b4886a5c4cecc3f"
  public static let nativeType = "ur_dashboard_msgs/GetRobotModeResponse"
  public static let nativeIdentity: String? = nil
  public var `robot_mode`: Ros1Ur_dashboard_msgsRobotMode = Ros1Ur_dashboard_msgsRobotMode()
  public var `answer`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`robot_mode`.write(to: &w)
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ur_dashboard_msgsGetRobotModeResponse
  {
    var v = Ros1Ur_dashboard_msgsGetRobotModeResponse()
    v.`robot_mode` = try Ros1Ur_dashboard_msgsRobotMode.read(from: &r)
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Ur_dashboard_msgsGetSafetyModeRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_f697e2ff2bcd56523563060a46bca2e1b7af487128f05562fcb18bfa73cbca8b"
  public static let nativeType = "ur_dashboard_msgs/GetSafetyModeRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ur_dashboard_msgsGetSafetyModeRequest
  {
    var v = Ros1Ur_dashboard_msgsGetSafetyModeRequest()
    return v
  }
}
public struct Ros1Ur_dashboard_msgsSafetyMode: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_5a0c2737166cf2e2bd4c17b46c597f674b8d806b802d4e86ee0d76fc55f29cf7"
  public static let nativeType = "ur_dashboard_msgs/SafetyMode"
  public static let nativeIdentity: String? = nil
  public static let `NORMAL`: UInt8 = 1
  public static let `REDUCED`: UInt8 = 2
  public static let `PROTECTIVE_STOP`: UInt8 = 3
  public static let `RECOVERY`: UInt8 = 4
  public static let `SAFEGUARD_STOP`: UInt8 = 5
  public static let `SYSTEM_EMERGENCY_STOP`: UInt8 = 6
  public static let `ROBOT_EMERGENCY_STOP`: UInt8 = 7
  public static let `VIOLATION`: UInt8 = 8
  public static let `FAULT`: UInt8 = 9
  public static let `VALIDATE_JOINT_ID`: UInt8 = 10
  public static let `UNDEFINED_SAFETY_MODE`: UInt8 = 11
  public static let `AUTOMATIC_MODE_SAFEGUARD_STOP`: UInt8 = 12
  public static let `SYSTEM_THREE_POSITION_ENABLING_STOP`: UInt8 = 13
  public var `mode`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_dashboard_msgsSafetyMode {
    var v = Ros1Ur_dashboard_msgsSafetyMode()
    v.`mode` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Ur_dashboard_msgsGetSafetyModeResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_70121af922588eaab9a34855e3da0cde837b1449d2a2d6c28addc70916df1a15"
  public static let nativeType = "ur_dashboard_msgs/GetSafetyModeResponse"
  public static let nativeIdentity: String? = nil
  public var `safety_mode`: Ros1Ur_dashboard_msgsSafetyMode = Ros1Ur_dashboard_msgsSafetyMode()
  public var `answer`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`safety_mode`.write(to: &w)
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ur_dashboard_msgsGetSafetyModeResponse
  {
    var v = Ros1Ur_dashboard_msgsGetSafetyModeResponse()
    v.`safety_mode` = try Ros1Ur_dashboard_msgsSafetyMode.read(from: &r)
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Ur_dashboard_msgsIsInRemoteControlRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_4b3c39f36f953904eb582d8c5f91161f2864782d4a4ab209a7dab32a117175da"
  public static let nativeType = "ur_dashboard_msgs/IsInRemoteControlRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ur_dashboard_msgsIsInRemoteControlRequest
  {
    var v = Ros1Ur_dashboard_msgsIsInRemoteControlRequest()
    return v
  }
}
public struct Ros1Ur_dashboard_msgsIsInRemoteControlResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_6c4af27571b48a5b8e8f1f857b2c02a333e7b4b360f8f3645a39630594c1663a"
  public static let nativeType = "ur_dashboard_msgs/IsInRemoteControlResponse"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `in_remote_control`: Bool = false
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`in_remote_control`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ur_dashboard_msgsIsInRemoteControlResponse
  {
    var v = Ros1Ur_dashboard_msgsIsInRemoteControlResponse()
    v.`answer` = try r.string(bound: 256)
    v.`in_remote_control` = try r.boolean()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Ur_dashboard_msgsIsProgramRunningRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_0be481297028886e15f07ace4178ca0aec595724cd83ab01d0155e7c6aa6666f"
  public static let nativeType = "ur_dashboard_msgs/IsProgramRunningRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ur_dashboard_msgsIsProgramRunningRequest
  {
    var v = Ros1Ur_dashboard_msgsIsProgramRunningRequest()
    return v
  }
}
public struct Ros1Ur_dashboard_msgsIsProgramRunningResponse: Canonical {
  public static let maximumWireBytes = 262
  public static let codecIdentity =
    "UWVMROS1_4d9de4f7e7071d142c09e3184d4a6f29d4044d003ad11ba3b72e1129ecf144ac"
  public static let nativeType = "ur_dashboard_msgs/IsProgramRunningResponse"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `program_running`: Bool = false
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`program_running`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ur_dashboard_msgsIsProgramRunningResponse
  {
    var v = Ros1Ur_dashboard_msgsIsProgramRunningResponse()
    v.`answer` = try r.string(bound: 256)
    v.`program_running` = try r.boolean()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Ur_dashboard_msgsIsProgramSavedRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_45ce1466c35adc812096bfb8b2cd84dfa87940109831c9f797b5786afa14f5a8"
  public static let nativeType = "ur_dashboard_msgs/IsProgramSavedRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ur_dashboard_msgsIsProgramSavedRequest
  {
    var v = Ros1Ur_dashboard_msgsIsProgramSavedRequest()
    return v
  }
}
public struct Ros1Ur_dashboard_msgsIsProgramSavedResponse: Canonical {
  public static let maximumWireBytes = 522
  public static let codecIdentity =
    "UWVMROS1_eb53e077fe7b216e27fc57f838666a54a84e479e02e508d41df5cff9f0637a52"
  public static let nativeType = "ur_dashboard_msgs/IsProgramSavedResponse"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `program_name`: String = ""
  public var `program_saved`: Bool = false
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.string(self.`program_name`, bound: 256)
    try w.boolean(self.`program_saved`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ur_dashboard_msgsIsProgramSavedResponse
  {
    var v = Ros1Ur_dashboard_msgsIsProgramSavedResponse()
    v.`answer` = try r.string(bound: 256)
    v.`program_name` = try r.string(bound: 256)
    v.`program_saved` = try r.boolean()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Ur_dashboard_msgsLoadRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_dfbde7b2376c7c9ba3926e4803f16b22f7ade3b2f768a25886a1490656edd2bd"
  public static let nativeType = "ur_dashboard_msgs/LoadRequest"
  public static let nativeIdentity: String? = nil
  public var `filename`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`filename`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_dashboard_msgsLoadRequest {
    var v = Ros1Ur_dashboard_msgsLoadRequest()
    v.`filename` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Ur_dashboard_msgsLoadResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_0ed3b3f2a0066248734e64c0706e52ebf07113569a98baf249a99adfff59be02"
  public static let nativeType = "ur_dashboard_msgs/LoadResponse"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_dashboard_msgsLoadResponse {
    var v = Ros1Ur_dashboard_msgsLoadResponse()
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Ur_dashboard_msgsPopupRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_11556bfb811a28141b6c5e9c11720920a389d735b8c09ed1a8f47d05f293e90d"
  public static let nativeType = "ur_dashboard_msgs/PopupRequest"
  public static let nativeIdentity: String? = nil
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_dashboard_msgsPopupRequest {
    var v = Ros1Ur_dashboard_msgsPopupRequest()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Ur_dashboard_msgsPopupResponse: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_33ac5b2128d6e7c2e562af7e2b8a8e907c16c07034b377920cba4fbd04ca9e14"
  public static let nativeType = "ur_dashboard_msgs/PopupResponse"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_dashboard_msgsPopupResponse {
    var v = Ros1Ur_dashboard_msgsPopupResponse()
    v.`answer` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Ur_dashboard_msgsRawRequestRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_ca8e3fdb45888bf4feb3c0f4ed05b7b9499a74493aaa0a8727f9f513922adfb4"
  public static let nativeType = "ur_dashboard_msgs/RawRequestRequest"
  public static let nativeIdentity: String? = nil
  public var `query`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`query`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_dashboard_msgsRawRequestRequest
  {
    var v = Ros1Ur_dashboard_msgsRawRequestRequest()
    v.`query` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Ur_dashboard_msgsRawRequestResponse: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_76dbb0c8d0143bd4d39bbf66c6866b0771013fe67fbad76887c6490c91f39e80"
  public static let nativeType = "ur_dashboard_msgs/RawRequestResponse"
  public static let nativeIdentity: String? = nil
  public var `answer`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`answer`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ur_dashboard_msgsRawRequestResponse
  {
    var v = Ros1Ur_dashboard_msgsRawRequestResponse()
    v.`answer` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Ur_dashboard_msgsSetModeGoal: Canonical {
  public static let maximumWireBytes = 3
  public static let codecIdentity =
    "UWVMROS1_27ba58b57af47e8efff15a70fb0562d5904d019c17e39a499bf003730434a528"
  public static let nativeType = "ur_dashboard_msgs/SetModeGoal"
  public static let nativeIdentity: String? = nil
  public var `target_robot_mode`: Ros1Ur_dashboard_msgsRobotMode = Ros1Ur_dashboard_msgsRobotMode()
  public var `stop_program`: Bool = false
  public var `play_program`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`target_robot_mode`.write(to: &w)
    try w.boolean(self.`stop_program`)
    try w.boolean(self.`play_program`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_dashboard_msgsSetModeGoal {
    var v = Ros1Ur_dashboard_msgsSetModeGoal()
    v.`target_robot_mode` = try Ros1Ur_dashboard_msgsRobotMode.read(from: &r)
    v.`stop_program` = try r.boolean()
    v.`play_program` = try r.boolean()
    return v
  }
}
public struct Ros1Ur_dashboard_msgsSetModeResult: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_e558d01061183cabca7022bd66aeb1958e14dfc62226a701c86020e73ffa1114"
  public static let nativeType = "ur_dashboard_msgs/SetModeResult"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_dashboard_msgsSetModeResult {
    var v = Ros1Ur_dashboard_msgsSetModeResult()
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Ur_dashboard_msgsSetModeFeedback: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_d29b507dcc5d72ee086c8a5a9a7a762d677ed408ec02dbe661abc17e2de5c7e2"
  public static let nativeType = "ur_dashboard_msgs/SetModeFeedback"
  public static let nativeIdentity: String? = nil
  public var `current_robot_mode`: Int8 = 0
  public var `current_safety_mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`current_robot_mode`)
    try w.integer(self.`current_safety_mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_dashboard_msgsSetModeFeedback {
    var v = Ros1Ur_dashboard_msgsSetModeFeedback()
    v.`current_robot_mode` = try r.integer(Int8.self)
    v.`current_safety_mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Ur_msgsAnalog: Canonical {
  public static let maximumWireBytes = 6
  public static let codecIdentity =
    "UWVMROS1_638dc3b30def8193a501b4c1c778792a60c8c683a96880e9fa6db6c01774f6a7"
  public static let nativeType = "ur_msgs/Analog"
  public static let nativeIdentity: String? = nil
  public static let `CURRENT`: UInt8 = 0
  public static let `VOLTAGE`: UInt8 = 1
  public var `pin`: UInt8 = 0
  public var `domain`: UInt8 = 0
  public var `state`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`pin`)
    try w.integer(self.`domain`)
    try w.float32(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_msgsAnalog {
    var v = Ros1Ur_msgsAnalog()
    v.`pin` = try r.integer(UInt8.self)
    v.`domain` = try r.integer(UInt8.self)
    v.`state` = try r.float32()
    return v
  }
}
public struct Ros1Ur_msgsDigital: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_c5840cfc5e26fe2f18817e46a0322a92e02ca21983920c71ebeb585769f5622c"
  public static let nativeType = "ur_msgs/Digital"
  public static let nativeIdentity: String? = nil
  public var `pin`: UInt8 = 0
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`pin`)
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_msgsDigital {
    var v = Ros1Ur_msgsDigital()
    v.`pin` = try r.integer(UInt8.self)
    v.`state` = try r.boolean()
    return v
  }
}
public struct Ros1Ur_msgsGetRobotSoftwareVersionRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_bbcdd98ee8d951a8a4fa873ad1c755f16c5cce14ceb7a614343dd44ccf84b9c8"
  public static let nativeType = "ur_msgs/GetRobotSoftwareVersionRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ur_msgsGetRobotSoftwareVersionRequest
  {
    var v = Ros1Ur_msgsGetRobotSoftwareVersionRequest()
    return v
  }
}
public struct Ros1Ur_msgsGetRobotSoftwareVersionResponse: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_36ab51ce55e3630f8ca71f364f4c5cc1f4b010f678777e4fd7b03dd480f92e64"
  public static let nativeType = "ur_msgs/GetRobotSoftwareVersionResponse"
  public static let nativeIdentity: String? = nil
  public var `major`: UInt32 = 0
  public var `minor`: UInt32 = 0
  public var `bugfix`: UInt32 = 0
  public var `build`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`major`)
    try w.integer(self.`minor`)
    try w.integer(self.`bugfix`)
    try w.integer(self.`build`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ur_msgsGetRobotSoftwareVersionResponse
  {
    var v = Ros1Ur_msgsGetRobotSoftwareVersionResponse()
    v.`major` = try r.integer(UInt32.self)
    v.`minor` = try r.integer(UInt32.self)
    v.`bugfix` = try r.integer(UInt32.self)
    v.`build` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros1Ur_msgsIOStates: Canonical {
  public static let maximumWireBytes = 404
  public static let codecIdentity =
    "UWVMROS1_4b10f6efdd2f129267c407bc1f8caed03776fef6d49f0a1b9dfbf2451ad8f033"
  public static let nativeType = "ur_msgs/IOStates"
  public static let nativeIdentity: String? = nil
  public var `digital_in_states`: [Ros1Ur_msgsDigital] = []
  public var `digital_out_states`: [Ros1Ur_msgsDigital] = []
  public var `flag_states`: [Ros1Ur_msgsDigital] = []
  public var `analog_in_states`: [Ros1Ur_msgsAnalog] = []
  public var `analog_out_states`: [Ros1Ur_msgsAnalog] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`digital_in_states`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`digital_in_states`.count))
    for e in self.`digital_in_states` {
      try e.write(to: &w)
    }
    guard self.`digital_out_states`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`digital_out_states`.count))
    for e in self.`digital_out_states` {
      try e.write(to: &w)
    }
    guard self.`flag_states`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`flag_states`.count))
    for e in self.`flag_states` {
      try e.write(to: &w)
    }
    guard self.`analog_in_states`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`analog_in_states`.count))
    for e in self.`analog_in_states` {
      try e.write(to: &w)
    }
    guard self.`analog_out_states`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`analog_out_states`.count))
    for e in self.`analog_out_states` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_msgsIOStates {
    var v = Ros1Ur_msgsIOStates()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`digital_in_states` = []
    v.`digital_in_states`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`digital_in_states`.append(try Ros1Ur_msgsDigital.read(from: &r))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`digital_out_states` = []
    v.`digital_out_states`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`digital_out_states`.append(try Ros1Ur_msgsDigital.read(from: &r))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`flag_states` = []
    v.`flag_states`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`flag_states`.append(try Ros1Ur_msgsDigital.read(from: &r))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`analog_in_states` = []
    v.`analog_in_states`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`analog_in_states`.append(try Ros1Ur_msgsAnalog.read(from: &r))
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 16 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`analog_out_states` = []
    v.`analog_out_states`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`analog_out_states`.append(try Ros1Ur_msgsAnalog.read(from: &r))
    }
    return v
  }
}
public struct Ros1Ur_msgsMasterboardDataMsg: Canonical {
  public static let maximumWireBytes = 62
  public static let codecIdentity =
    "UWVMROS1_f80f92b90cb33dd5b118df81447dfcc33c1ab230a91bb915a1be684401da265f"
  public static let nativeType = "ur_msgs/MasterboardDataMsg"
  public static let nativeIdentity: String? = nil
  public var `digital_input_bits`: UInt32 = 0
  public var `digital_output_bits`: UInt32 = 0
  public var `analog_input_range0`: Int8 = 0
  public var `analog_input_range1`: Int8 = 0
  public var `analog_input0`: Double = 0
  public var `analog_input1`: Double = 0
  public var `analog_output_domain0`: Int8 = 0
  public var `analog_output_domain1`: Int8 = 0
  public var `analog_output0`: Double = 0
  public var `analog_output1`: Double = 0
  public var `masterboard_temperature`: Float = 0
  public var `robot_voltage_48V`: Float = 0
  public var `robot_current`: Float = 0
  public var `master_io_current`: Float = 0
  public var `master_safety_state`: UInt8 = 0
  public var `master_onoff_state`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`digital_input_bits`)
    try w.integer(self.`digital_output_bits`)
    try w.integer(self.`analog_input_range0`)
    try w.integer(self.`analog_input_range1`)
    try w.float64(self.`analog_input0`)
    try w.float64(self.`analog_input1`)
    try w.integer(self.`analog_output_domain0`)
    try w.integer(self.`analog_output_domain1`)
    try w.float64(self.`analog_output0`)
    try w.float64(self.`analog_output1`)
    try w.float32(self.`masterboard_temperature`)
    try w.float32(self.`robot_voltage_48V`)
    try w.float32(self.`robot_current`)
    try w.float32(self.`master_io_current`)
    try w.integer(self.`master_safety_state`)
    try w.integer(self.`master_onoff_state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_msgsMasterboardDataMsg {
    var v = Ros1Ur_msgsMasterboardDataMsg()
    v.`digital_input_bits` = try r.integer(UInt32.self)
    v.`digital_output_bits` = try r.integer(UInt32.self)
    v.`analog_input_range0` = try r.integer(Int8.self)
    v.`analog_input_range1` = try r.integer(Int8.self)
    v.`analog_input0` = try r.float64()
    v.`analog_input1` = try r.float64()
    v.`analog_output_domain0` = try r.integer(Int8.self)
    v.`analog_output_domain1` = try r.integer(Int8.self)
    v.`analog_output0` = try r.float64()
    v.`analog_output1` = try r.float64()
    v.`masterboard_temperature` = try r.float32()
    v.`robot_voltage_48V` = try r.float32()
    v.`robot_current` = try r.float32()
    v.`master_io_current` = try r.float32()
    v.`master_safety_state` = try r.integer(UInt8.self)
    v.`master_onoff_state` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros1Ur_msgsRobotModeDataMsg: Canonical {
  public static let maximumWireBytes = 15
  public static let codecIdentity =
    "UWVMROS1_64c4247d865e0731b13ca13ce2e355df664cabf7f3d646051d9d3ef48b05a231"
  public static let nativeType = "ur_msgs/RobotModeDataMsg"
  public static let nativeIdentity: String? = nil
  public var `timestamp`: UInt64 = 0
  public var `is_robot_connected`: Bool = false
  public var `is_real_robot_enabled`: Bool = false
  public var `is_power_on_robot`: Bool = false
  public var `is_emergency_stopped`: Bool = false
  public var `is_protective_stopped`: Bool = false
  public var `is_program_running`: Bool = false
  public var `is_program_paused`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`timestamp`)
    try w.boolean(self.`is_robot_connected`)
    try w.boolean(self.`is_real_robot_enabled`)
    try w.boolean(self.`is_power_on_robot`)
    try w.boolean(self.`is_emergency_stopped`)
    try w.boolean(self.`is_protective_stopped`)
    try w.boolean(self.`is_program_running`)
    try w.boolean(self.`is_program_paused`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_msgsRobotModeDataMsg {
    var v = Ros1Ur_msgsRobotModeDataMsg()
    v.`timestamp` = try r.integer(UInt64.self)
    v.`is_robot_connected` = try r.boolean()
    v.`is_real_robot_enabled` = try r.boolean()
    v.`is_power_on_robot` = try r.boolean()
    v.`is_emergency_stopped` = try r.boolean()
    v.`is_protective_stopped` = try r.boolean()
    v.`is_program_running` = try r.boolean()
    v.`is_program_paused` = try r.boolean()
    return v
  }
}
public struct Ros1Ur_msgsRobotStateRTMsg: Canonical {
  public static let maximumWireBytes = 768
  public static let codecIdentity =
    "UWVMROS1_e3d93b6141f749b93c229d8eabebbeb2782a16621fea4d7d39096794e7a67ce7"
  public static let nativeType = "ur_msgs/RobotStateRTMsg"
  public static let nativeIdentity: String? = nil
  public var `time`: Double = 0
  public var `q_target`: [Double] = []
  public var `qd_target`: [Double] = []
  public var `qdd_target`: [Double] = []
  public var `i_target`: [Double] = []
  public var `m_target`: [Double] = []
  public var `q_actual`: [Double] = []
  public var `qd_actual`: [Double] = []
  public var `i_actual`: [Double] = []
  public var `tool_acc_values`: [Double] = []
  public var `tcp_force`: [Double] = []
  public var `tool_vector`: [Double] = []
  public var `tcp_speed`: [Double] = []
  public var `digital_input_bits`: Double = 0
  public var `motor_temperatures`: [Double] = []
  public var `controller_timer`: Double = 0
  public var `test_value`: Double = 0
  public var `robot_mode`: Double = 0
  public var `joint_modes`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`time`)
    guard self.`q_target`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`q_target`.count))
    for e in self.`q_target` {
      try w.float64(e)
    }
    guard self.`qd_target`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`qd_target`.count))
    for e in self.`qd_target` {
      try w.float64(e)
    }
    guard self.`qdd_target`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`qdd_target`.count))
    for e in self.`qdd_target` {
      try w.float64(e)
    }
    guard self.`i_target`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`i_target`.count))
    for e in self.`i_target` {
      try w.float64(e)
    }
    guard self.`m_target`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`m_target`.count))
    for e in self.`m_target` {
      try w.float64(e)
    }
    guard self.`q_actual`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`q_actual`.count))
    for e in self.`q_actual` {
      try w.float64(e)
    }
    guard self.`qd_actual`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`qd_actual`.count))
    for e in self.`qd_actual` {
      try w.float64(e)
    }
    guard self.`i_actual`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`i_actual`.count))
    for e in self.`i_actual` {
      try w.float64(e)
    }
    guard self.`tool_acc_values`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`tool_acc_values`.count))
    for e in self.`tool_acc_values` {
      try w.float64(e)
    }
    guard self.`tcp_force`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`tcp_force`.count))
    for e in self.`tcp_force` {
      try w.float64(e)
    }
    guard self.`tool_vector`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`tool_vector`.count))
    for e in self.`tool_vector` {
      try w.float64(e)
    }
    guard self.`tcp_speed`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`tcp_speed`.count))
    for e in self.`tcp_speed` {
      try w.float64(e)
    }
    try w.float64(self.`digital_input_bits`)
    guard self.`motor_temperatures`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`motor_temperatures`.count))
    for e in self.`motor_temperatures` {
      try w.float64(e)
    }
    try w.float64(self.`controller_timer`)
    try w.float64(self.`test_value`)
    try w.float64(self.`robot_mode`)
    guard self.`joint_modes`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`joint_modes`.count))
    for e in self.`joint_modes` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_msgsRobotStateRTMsg {
    var v = Ros1Ur_msgsRobotStateRTMsg()
    v.`time` = try r.float64()
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 6 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`q_target` = []
    v.`q_target`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`q_target`.append(try r.float64())
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 6 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`qd_target` = []
    v.`qd_target`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`qd_target`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 6 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`qdd_target` = []
    v.`qdd_target`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`qdd_target`.append(try r.float64())
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 6 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`i_target` = []
    v.`i_target`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`i_target`.append(try r.float64())
    }
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 6 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`m_target` = []
    v.`m_target`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`m_target`.append(try r.float64())
    }
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 6 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`q_actual` = []
    v.`q_actual`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`q_actual`.append(try r.float64())
    }
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 6 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`qd_actual` = []
    v.`qd_actual`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`qd_actual`.append(try r.float64())
    }
    let rawcount8 = try r.integer(UInt32.self)
    guard rawcount8 <= 6 else { throw RosError(22) }
    let count8 = Int(rawcount8)
    v.`i_actual` = []
    v.`i_actual`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`i_actual`.append(try r.float64())
    }
    let rawcount9 = try r.integer(UInt32.self)
    guard rawcount9 <= 6 else { throw RosError(22) }
    let count9 = Int(rawcount9)
    v.`tool_acc_values` = []
    v.`tool_acc_values`.reserveCapacity(count9)
    for _ in 0..<count9 {
      v.`tool_acc_values`.append(try r.float64())
    }
    let rawcount10 = try r.integer(UInt32.self)
    guard rawcount10 <= 6 else { throw RosError(22) }
    let count10 = Int(rawcount10)
    v.`tcp_force` = []
    v.`tcp_force`.reserveCapacity(count10)
    for _ in 0..<count10 {
      v.`tcp_force`.append(try r.float64())
    }
    let rawcount11 = try r.integer(UInt32.self)
    guard rawcount11 <= 6 else { throw RosError(22) }
    let count11 = Int(rawcount11)
    v.`tool_vector` = []
    v.`tool_vector`.reserveCapacity(count11)
    for _ in 0..<count11 {
      v.`tool_vector`.append(try r.float64())
    }
    let rawcount12 = try r.integer(UInt32.self)
    guard rawcount12 <= 6 else { throw RosError(22) }
    let count12 = Int(rawcount12)
    v.`tcp_speed` = []
    v.`tcp_speed`.reserveCapacity(count12)
    for _ in 0..<count12 {
      v.`tcp_speed`.append(try r.float64())
    }
    v.`digital_input_bits` = try r.float64()
    let rawcount14 = try r.integer(UInt32.self)
    guard rawcount14 <= 6 else { throw RosError(22) }
    let count14 = Int(rawcount14)
    v.`motor_temperatures` = []
    v.`motor_temperatures`.reserveCapacity(count14)
    for _ in 0..<count14 {
      v.`motor_temperatures`.append(try r.float64())
    }
    v.`controller_timer` = try r.float64()
    v.`test_value` = try r.float64()
    v.`robot_mode` = try r.float64()
    let rawcount18 = try r.integer(UInt32.self)
    guard rawcount18 <= 6 else { throw RosError(22) }
    let count18 = Int(rawcount18)
    v.`joint_modes` = []
    v.`joint_modes`.reserveCapacity(count18)
    for _ in 0..<count18 {
      v.`joint_modes`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Ur_msgsSetAnalogOutputRequest: Canonical {
  public static let maximumWireBytes = 6
  public static let codecIdentity =
    "UWVMROS1_1830a63c8853ebe8842f0e8e6870fbdee136dfe78726ba581fd1c54f910c4789"
  public static let nativeType = "ur_msgs/SetAnalogOutputRequest"
  public static let nativeIdentity: String? = nil
  public var `data`: Ros1Ur_msgsAnalog = Ros1Ur_msgsAnalog()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`data`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_msgsSetAnalogOutputRequest {
    var v = Ros1Ur_msgsSetAnalogOutputRequest()
    v.`data` = try Ros1Ur_msgsAnalog.read(from: &r)
    return v
  }
}
public struct Ros1Ur_msgsSetAnalogOutputResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_bb84c969f904082699f67d385b093b0c6de97bfacc33eab86932f4564a823580"
  public static let nativeType = "ur_msgs/SetAnalogOutputResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_msgsSetAnalogOutputResponse {
    var v = Ros1Ur_msgsSetAnalogOutputResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Ur_msgsSetForceModeRequest: Canonical {
  public static let maximumWireBytes = 335
  public static let codecIdentity =
    "UWVMROS1_c148d6eb37258e10f5d16e76e41c334fc57a3d751c0c35c47be4cabf4c015a6b"
  public static let nativeType = "ur_msgs/SetForceModeRequest"
  public static let nativeIdentity: String? = nil
  public static let `TCP_TO_ORIGIN`: UInt8 = 1
  public static let `NO_TRANSFORM`: UInt8 = 2
  public static let `TCP_VELOCITY_TO_X_Y`: UInt8 = 3
  public var `task_frame`: Ros1Geometry_msgsPoseStamped = Ros1Geometry_msgsPoseStamped()
  public var `selection_vector_x`: Bool = false
  public var `selection_vector_y`: Bool = false
  public var `selection_vector_z`: Bool = false
  public var `selection_vector_rx`: Bool = false
  public var `selection_vector_ry`: Bool = false
  public var `selection_vector_rz`: Bool = false
  public var `wrench`: Ros1Geometry_msgsWrench = Ros1Geometry_msgsWrench()
  public var `type`: UInt8 = 0
  public var `speed_limits`: Ros1Geometry_msgsTwist = Ros1Geometry_msgsTwist()
  public var `deviation_limits`: [Float] = Array(repeating: 0, count: 6)
  public var `damping_factor`: Float = 0
  public var `gain_scaling`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`task_frame`.write(to: &w)
    try w.boolean(self.`selection_vector_x`)
    try w.boolean(self.`selection_vector_y`)
    try w.boolean(self.`selection_vector_z`)
    try w.boolean(self.`selection_vector_rx`)
    try w.boolean(self.`selection_vector_ry`)
    try w.boolean(self.`selection_vector_rz`)
    try self.`wrench`.write(to: &w)
    try w.integer(self.`type`)
    try self.`speed_limits`.write(to: &w)
    guard self.`deviation_limits`.count == 6 else { throw RosError(22) }
    for e in self.`deviation_limits` {
      try w.float32(e)
    }
    try w.float32(self.`damping_factor`)
    try w.float32(self.`gain_scaling`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_msgsSetForceModeRequest {
    var v = Ros1Ur_msgsSetForceModeRequest()
    v.`task_frame` = try Ros1Geometry_msgsPoseStamped.read(from: &r)
    v.`selection_vector_x` = try r.boolean()
    v.`selection_vector_y` = try r.boolean()
    v.`selection_vector_z` = try r.boolean()
    v.`selection_vector_rx` = try r.boolean()
    v.`selection_vector_ry` = try r.boolean()
    v.`selection_vector_rz` = try r.boolean()
    v.`wrench` = try Ros1Geometry_msgsWrench.read(from: &r)
    v.`type` = try r.integer(UInt8.self)
    v.`speed_limits` = try Ros1Geometry_msgsTwist.read(from: &r)
    let count10 = 6
    v.`deviation_limits` = []
    v.`deviation_limits`.reserveCapacity(count10)
    for _ in 0..<count10 {
      v.`deviation_limits`.append(try r.float32())
    }
    v.`damping_factor` = try r.float32()
    v.`gain_scaling` = try r.float32()
    return v
  }
}
public struct Ros1Ur_msgsSetForceModeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_bb1eeb0b38d81d642066bed1510245423f62d25983a2de89e985d1fd1932308c"
  public static let nativeType = "ur_msgs/SetForceModeResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_msgsSetForceModeResponse {
    var v = Ros1Ur_msgsSetForceModeResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Ur_msgsSetIORequest: Canonical {
  public static let maximumWireBytes = 6
  public static let codecIdentity =
    "UWVMROS1_3dbd2f05686ddaac16b37dc8ec98303acb672d176be34fc906cf32f2d4cd1872"
  public static let nativeType = "ur_msgs/SetIORequest"
  public static let nativeIdentity: String? = nil
  public static let `PIN_AOUT0`: Int8 = 0
  public static let `PIN_AOUT1`: Int8 = 1
  public static let `PIN_DOUT0`: Int8 = 0
  public static let `PIN_DOUT1`: Int8 = 1
  public static let `PIN_DOUT2`: Int8 = 2
  public static let `PIN_DOUT3`: Int8 = 3
  public static let `PIN_DOUT4`: Int8 = 4
  public static let `PIN_DOUT5`: Int8 = 5
  public static let `PIN_DOUT6`: Int8 = 6
  public static let `PIN_DOUT7`: Int8 = 7
  public static let `PIN_CONF_OUT0`: Int8 = 8
  public static let `PIN_CONF_OUT1`: Int8 = 9
  public static let `PIN_CONF_OUT2`: Int8 = 10
  public static let `PIN_CONF_OUT3`: Int8 = 11
  public static let `PIN_CONF_OUT4`: Int8 = 12
  public static let `PIN_CONF_OUT5`: Int8 = 13
  public static let `PIN_CONF_OUT6`: Int8 = 14
  public static let `PIN_CONF_OUT7`: Int8 = 15
  public static let `PIN_TOOL_DOUT0`: Int8 = 16
  public static let `PIN_TOOL_DOUT1`: Int8 = 17
  public static let `FUN_SET_DIGITAL_OUT`: Int8 = 1
  public static let `FUN_SET_FLAG`: Int8 = 2
  public static let `FUN_SET_ANALOG_OUT`: Int8 = 3
  public static let `FUN_SET_TOOL_VOLTAGE`: Int8 = 4
  public static let `STATE_OFF`: Int8 = 0
  public static let `STATE_ON`: Int8 = 1
  public static let `STATE_TOOL_VOLTAGE_0V`: Int8 = 0
  public static let `STATE_TOOL_VOLTAGE_12V`: Int8 = 12
  public static let `STATE_TOOL_VOLTAGE_24V`: Int8 = 24
  public var `fun`: Int8 = 0
  public var `pin`: Int8 = 0
  public var `state`: Float = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`fun`)
    try w.integer(self.`pin`)
    try w.float32(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_msgsSetIORequest {
    var v = Ros1Ur_msgsSetIORequest()
    v.`fun` = try r.integer(Int8.self)
    v.`pin` = try r.integer(Int8.self)
    v.`state` = try r.float32()
    return v
  }
}
public struct Ros1Ur_msgsSetIOResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_7fc137aa3db3178a450b8b2396b7821c911c79656e52bf48814745c261aecf61"
  public static let nativeType = "ur_msgs/SetIOResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_msgsSetIOResponse {
    var v = Ros1Ur_msgsSetIOResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Ur_msgsSetPayloadRequest: Canonical {
  public static let maximumWireBytes = 28
  public static let codecIdentity =
    "UWVMROS1_63ae68b44ce6aaad37cbda779fb51dee78923df27c582b4aab4104b16a307ee3"
  public static let nativeType = "ur_msgs/SetPayloadRequest"
  public static let nativeIdentity: String? = nil
  public var `mass`: Float = 0
  public var `center_of_gravity`: Ros1Geometry_msgsVector3 = Ros1Geometry_msgsVector3()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`mass`)
    try self.`center_of_gravity`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_msgsSetPayloadRequest {
    var v = Ros1Ur_msgsSetPayloadRequest()
    v.`mass` = try r.float32()
    v.`center_of_gravity` = try Ros1Geometry_msgsVector3.read(from: &r)
    return v
  }
}
public struct Ros1Ur_msgsSetPayloadResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_a3e991f1357f2d3017ccbb7636a6248e8774434d723f5f6c77ff251dd61fce73"
  public static let nativeType = "ur_msgs/SetPayloadResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_msgsSetPayloadResponse {
    var v = Ros1Ur_msgsSetPayloadResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Ur_msgsSetSpeedSliderFractionRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_f192d6d655b2ed7725bf5afe6977a352870abfd4d07e0c3380a09d280a0a0a32"
  public static let nativeType = "ur_msgs/SetSpeedSliderFractionRequest"
  public static let nativeIdentity: String? = nil
  public var `speed_slider_fraction`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`speed_slider_fraction`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ur_msgsSetSpeedSliderFractionRequest
  {
    var v = Ros1Ur_msgsSetSpeedSliderFractionRequest()
    v.`speed_slider_fraction` = try r.float64()
    return v
  }
}
public struct Ros1Ur_msgsSetSpeedSliderFractionResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_cb08c6758ce2eeeac93bc579d7895b19b84e74b7e2d19d87831023df579288b0"
  public static let nativeType = "ur_msgs/SetSpeedSliderFractionResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Ur_msgsSetSpeedSliderFractionResponse
  {
    var v = Ros1Ur_msgsSetSpeedSliderFractionResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Ur_msgsToolDataMsg: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_1fad1aba069bc474306dc421a62950ffeb3a0837668f08a9adf41ac1bc2bb390"
  public static let nativeType = "ur_msgs/ToolDataMsg"
  public static let nativeIdentity: String? = nil
  public static let `ANALOG_INPUT_RANGE_CURRENT`: Int8 = 0
  public static let `ANALOG_INPUT_RANGE_VOLTAGE`: Int8 = 1
  public static let `TOOL_BOOTLOADER_MODE`: UInt8 = 249
  public static let `TOOL_RUNNING_MODE`: UInt8 = 253
  public static let `TOOL_IDLE_MODE`: UInt8 = 255
  public var `analog_input_range2`: Int8 = 0
  public var `analog_input_range3`: Int8 = 0
  public var `analog_input2`: Double = 0
  public var `analog_input3`: Double = 0
  public var `tool_voltage_48v`: Float = 0
  public var `tool_output_voltage`: UInt8 = 0
  public var `tool_current`: Float = 0
  public var `tool_temperature`: Float = 0
  public var `tool_mode`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`analog_input_range2`)
    try w.integer(self.`analog_input_range3`)
    try w.float64(self.`analog_input2`)
    try w.float64(self.`analog_input3`)
    try w.float32(self.`tool_voltage_48v`)
    try w.integer(self.`tool_output_voltage`)
    try w.float32(self.`tool_current`)
    try w.float32(self.`tool_temperature`)
    try w.integer(self.`tool_mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Ur_msgsToolDataMsg {
    var v = Ros1Ur_msgsToolDataMsg()
    v.`analog_input_range2` = try r.integer(Int8.self)
    v.`analog_input_range3` = try r.integer(Int8.self)
    v.`analog_input2` = try r.float64()
    v.`analog_input3` = try r.float64()
    v.`tool_voltage_48v` = try r.float32()
    v.`tool_output_voltage` = try r.integer(UInt8.self)
    v.`tool_current` = try r.float32()
    v.`tool_temperature` = try r.float32()
    v.`tool_mode` = try r.integer(UInt8.self)
    return v
  }
}
