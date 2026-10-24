// @file Records.swift
// @brief Full agibot swift codecs and original record metadata.
// @details Complete agibot ros2_sdk_v0_8_2_main values in swift. 72 original records retain 227 fields and 55
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/agibot/en_US/catalog/.
// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros2Aimdk_msgsMsgAgentPropertyIdType: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_96958ff52528b07c7f9bc239e80676edc77b27faa077a3bed7222cf32d1ebf0b"
  public static let nativeType = "aimdk_msgs/msg/AgentPropertyIdType"
  public static let nativeIdentity: String? = nil
  public static let `AGENT_PROPERTY_UNDEFINED`: UInt8 = 0
  public static let `AGENT_PROPERTY_LANGUAGE`: UInt8 = 1
  public static let `AGENT_PROPERTY_RUN_MODE`: UInt8 = 2
  public static let `AGENT_PROPERTY_GREET`: UInt8 = 3
  public static let `AGENT_PROPERTY_HEAD_FOLLOW`: UInt8 = 4
  public static let `AGENT_PROPERTY_DUPLEX_TIMEOUT`: UInt8 = 5
  public static let `AGENT_PROPERTY_ENVIRONMENT_SWITCH`: UInt8 = 6
  public static let `AGENT_PROPERTY_WELCOME_STATUS`: UInt8 = 7
  public var `value`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgAgentPropertyIdType {
    var v = Ros2Aimdk_msgsMsgAgentPropertyIdType()
    v.`value` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgAgentPropertiesValue: Canonical {
  public static let maximumWireBytes = 133
  public static let codecIdentity =
    "UWVMROS1_c7ec8887e5fb223291cb324c1ae21f20490955108ee137db384c6775fb332c6a"
  public static let nativeType = "aimdk_msgs/msg/AgentPropertiesValue"
  public static let nativeIdentity: String? = nil
  public var `key`: Ros2Aimdk_msgsMsgAgentPropertyIdType = Ros2Aimdk_msgsMsgAgentPropertyIdType()
  public var `value`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`key`.write(to: &w)
    try w.string(self.`value`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgAgentPropertiesValue
  {
    var v = Ros2Aimdk_msgsMsgAgentPropertiesValue()
    v.`key` = try Ros2Aimdk_msgsMsgAgentPropertyIdType.read(from: &r)
    v.`value` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgAgentProperties: Canonical {
  public static let maximumWireBytes = 536
  public static let codecIdentity =
    "UWVMROS1_e729493bf2dfbd5ed1f726a95ac39d42f33a28f476edd13f66e75f9cb591694f"
  public static let nativeType = "aimdk_msgs/msg/AgentProperties"
  public static let nativeIdentity: String? = nil
  public var `properties`: [Ros2Aimdk_msgsMsgAgentPropertiesValue] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`properties`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`properties`.count))
    for e in self.`properties` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgAgentProperties {
    var v = Ros2Aimdk_msgsMsgAgentProperties()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 4 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`properties` = []
    v.`properties`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`properties`.append(try Ros2Aimdk_msgsMsgAgentPropertiesValue.read(from: &r))
    }
    return v
  }
}
public struct Ros2Aimdk_msgsMsgAudioVadStateType: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526"
  public static let nativeType = "aimdk_msgs/msg/AudioVadStateType"
  public static let nativeIdentity: String? = nil
  public static let `AUDIO_VAD_STATE_NONE`: UInt8 = 0
  public static let `AUDIO_VAD_STATE_BEGIN`: UInt8 = 1
  public static let `AUDIO_VAD_STATE_PROCESSING`: UInt8 = 2
  public static let `AUDIO_VAD_STATE_END`: UInt8 = 3
  public var `value`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgAudioVadStateType {
    var v = Ros2Aimdk_msgsMsgAudioVadStateType()
    v.`value` = try r.integer(UInt8.self)
    return v
  }
}
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
public struct Ros2Aimdk_msgsMsgRequestHeader: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000"
  public static let nativeType = "aimdk_msgs/msg/RequestHeader"
  public static let nativeIdentity: String? = nil
  public var `stamp`: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`stamp`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgRequestHeader {
    var v = Ros2Aimdk_msgsMsgRequestHeader()
    v.`stamp` = try Ros2Builtin_interfacesMsgTime.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgCommonRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7"
  public static let nativeType = "aimdk_msgs/msg/CommonRequest"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgRequestHeader = Ros2Aimdk_msgsMsgRequestHeader()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgCommonRequest {
    var v = Ros2Aimdk_msgsMsgCommonRequest()
    v.`header` = try Ros2Aimdk_msgsMsgRequestHeader.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgResponseHeader: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90"
  public static let nativeType = "aimdk_msgs/msg/ResponseHeader"
  public static let nativeIdentity: String? = nil
  public var `stamp`: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  public var `code`: Int64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`stamp`.write(to: &w)
    try w.integer(self.`code`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgResponseHeader {
    var v = Ros2Aimdk_msgsMsgResponseHeader()
    v.`stamp` = try Ros2Builtin_interfacesMsgTime.read(from: &r)
    v.`code` = try r.integer(Int64.self)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgCommonState: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e"
  public static let nativeType = "aimdk_msgs/msg/CommonState"
  public static let nativeIdentity: String? = nil
  public static let `UNKNOWN`: Int32 = 0
  public static let `SUCCESS`: Int32 = 1
  public static let `FAILURE`: Int32 = 2
  public static let `ABORTED`: Int32 = 3
  public static let `TIMEOUT`: Int32 = 4
  public static let `INVALID`: Int32 = 5
  public static let `IN_MANUAL`: Int32 = 6
  public static let `NOT_READY`: Int32 = 100
  public static let `PENDING`: Int32 = 200
  public static let `CREATED`: Int32 = 300
  public static let `RUNNING`: Int32 = 400
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgCommonState {
    var v = Ros2Aimdk_msgsMsgCommonState()
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgCommonResponse: Canonical {
  public static let maximumWireBytes = 152
  public static let codecIdentity =
    "UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6"
  public static let nativeType = "aimdk_msgs/msg/CommonResponse"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgResponseHeader = Ros2Aimdk_msgsMsgResponseHeader()
  public var `status`: Ros2Aimdk_msgsMsgCommonState = Ros2Aimdk_msgsMsgCommonState()
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`status`.write(to: &w)
    try w.string(self.`message`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgCommonResponse {
    var v = Ros2Aimdk_msgsMsgCommonResponse()
    v.`header` = try Ros2Aimdk_msgsMsgResponseHeader.read(from: &r)
    v.`status` = try Ros2Aimdk_msgsMsgCommonState.read(from: &r)
    v.`message` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgCommonTaskResponse: Canonical {
  public static let maximumWireBytes = 28
  public static let codecIdentity =
    "UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2"
  public static let nativeType = "aimdk_msgs/msg/CommonTaskResponse"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgResponseHeader = Ros2Aimdk_msgsMsgResponseHeader()
  public var `task_id`: UInt64 = 0
  public var `state`: Ros2Aimdk_msgsMsgCommonState = Ros2Aimdk_msgsMsgCommonState()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`task_id`)
    try self.`state`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgCommonTaskResponse {
    var v = Ros2Aimdk_msgsMsgCommonTaskResponse()
    v.`header` = try Ros2Aimdk_msgsMsgResponseHeader.read(from: &r)
    v.`task_id` = try r.integer(UInt64.self)
    v.`state` = try Ros2Aimdk_msgsMsgCommonState.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgMessageHeader: Canonical {
  public static let maximumWireBytes = 152
  public static let codecIdentity =
    "UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496"
  public static let nativeType = "aimdk_msgs/msg/MessageHeader"
  public static let nativeIdentity: String? = nil
  public var `stamp`: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  public var `frame_id`: String = ""
  public var `sequence`: UInt32 = 0
  public var `meas_stamp`: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`stamp`.write(to: &w)
    try w.string(self.`frame_id`, bound: 128)
    try w.integer(self.`sequence`)
    try self.`meas_stamp`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgMessageHeader {
    var v = Ros2Aimdk_msgsMsgMessageHeader()
    v.`stamp` = try Ros2Builtin_interfacesMsgTime.read(from: &r)
    v.`frame_id` = try r.string(bound: 128)
    v.`sequence` = try r.integer(UInt32.self)
    v.`meas_stamp` = try Ros2Builtin_interfacesMsgTime.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgFaceEmojiStatus: Canonical {
  public static let maximumWireBytes = 2415
  public static let codecIdentity =
    "UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7"
  public static let nativeType = "aimdk_msgs/msg/FaceEmojiStatus"
  public static let nativeIdentity: String? = nil
  public static let `STATUS_IDLE`: UInt8 = 0
  public static let `STATUS_START`: UInt8 = 1
  public static let `STATUS_RUNNING`: UInt8 = 2
  public static let `STATUS_FINISHED`: UInt8 = 3
  public static let `STATUS_STOPPED`: UInt8 = 4
  public var `header`: Ros2Aimdk_msgsMsgMessageHeader = Ros2Aimdk_msgsMsgMessageHeader()
  public var `e_path`: String = ""
  public var `e_path_list`: [String] = []
  public var `e_id`: UInt8 = 0
  public var `mode`: UInt8 = 0
  public var `priority`: Int32 = 0
  public var `status`: UInt8 = 0
  public var `time_to_end_ms`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`e_path`, bound: 128)
    guard self.`e_path_list`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`e_path_list`.count))
    for e in self.`e_path_list` {
      try w.string(e, bound: 128)
    }
    try w.integer(self.`e_id`)
    try w.integer(self.`mode`)
    try w.integer(self.`priority`)
    try w.integer(self.`status`)
    try w.float64(self.`time_to_end_ms`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgFaceEmojiStatus {
    var v = Ros2Aimdk_msgsMsgFaceEmojiStatus()
    v.`header` = try Ros2Aimdk_msgsMsgMessageHeader.read(from: &r)
    v.`e_path` = try r.string(bound: 128)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 16 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`e_path_list` = []
    v.`e_path_list`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`e_path_list`.append(try r.string(bound: 128))
    }
    v.`e_id` = try r.integer(UInt8.self)
    v.`mode` = try r.integer(UInt8.self)
    v.`priority` = try r.integer(Int32.self)
    v.`status` = try r.integer(UInt8.self)
    v.`time_to_end_ms` = try r.float64()
    return v
  }
}
public struct Ros2Aimdk_msgsMsgHandCommand: Canonical {
  public static let maximumWireBytes = 172
  public static let codecIdentity =
    "UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8"
  public static let nativeType = "aimdk_msgs/msg/HandCommand"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `position`: Double = 0
  public var `velocity`: Double = 0
  public var `acceleration`: Double = 0
  public var `deceleration`: Double = 0
  public var `effort`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 128)
    try w.float64(self.`position`)
    try w.float64(self.`velocity`)
    try w.float64(self.`acceleration`)
    try w.float64(self.`deceleration`)
    try w.float64(self.`effort`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgHandCommand {
    var v = Ros2Aimdk_msgsMsgHandCommand()
    v.`name` = try r.string(bound: 128)
    v.`position` = try r.float64()
    v.`velocity` = try r.float64()
    v.`acceleration` = try r.float64()
    v.`deceleration` = try r.float64()
    v.`effort` = try r.float64()
    return v
  }
}
public struct Ros2Aimdk_msgsMsgHandType: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6"
  public static let nativeType = "aimdk_msgs/msg/HandType"
  public static let nativeIdentity: String? = nil
  public static let `NONE`: UInt8 = 0
  public static let `NIMBLE_HANDS`: UInt8 = 1
  public static let `CLAW`: UInt8 = 2
  public static let `ERROR`: UInt8 = 255
  public var `value`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgHandType {
    var v = Ros2Aimdk_msgsMsgHandType()
    v.`value` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgHandCommandArray: Canonical {
  public static let maximumWireBytes = 1538
  public static let codecIdentity =
    "UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e"
  public static let nativeType = "aimdk_msgs/msg/HandCommandArray"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgMessageHeader = Ros2Aimdk_msgsMsgMessageHeader()
  public var `left_hand_type`: Ros2Aimdk_msgsMsgHandType = Ros2Aimdk_msgsMsgHandType()
  public var `left_hands`: [Ros2Aimdk_msgsMsgHandCommand] = []
  public var `right_hand_type`: Ros2Aimdk_msgsMsgHandType = Ros2Aimdk_msgsMsgHandType()
  public var `right_hands`: [Ros2Aimdk_msgsMsgHandCommand] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`left_hand_type`.write(to: &w)
    guard self.`left_hands`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`left_hands`.count))
    for e in self.`left_hands` {
      try e.write(to: &w)
    }
    try self.`right_hand_type`.write(to: &w)
    guard self.`right_hands`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`right_hands`.count))
    for e in self.`right_hands` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgHandCommandArray {
    var v = Ros2Aimdk_msgsMsgHandCommandArray()
    v.`header` = try Ros2Aimdk_msgsMsgMessageHeader.read(from: &r)
    v.`left_hand_type` = try Ros2Aimdk_msgsMsgHandType.read(from: &r)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`left_hands` = []
    v.`left_hands`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`left_hands`.append(try Ros2Aimdk_msgsMsgHandCommand.read(from: &r))
    }
    v.`right_hand_type` = try Ros2Aimdk_msgsMsgHandType.read(from: &r)
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 4 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`right_hands` = []
    v.`right_hands`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`right_hands`.append(try Ros2Aimdk_msgsMsgHandCommand.read(from: &r))
    }
    return v
  }
}
public struct Ros2Aimdk_msgsMsgHandState: Canonical {
  public static let maximumWireBytes = 164
  public static let codecIdentity =
    "UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c"
  public static let nativeType = "aimdk_msgs/msg/HandState"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `position`: Double = 0
  public var `velocity`: Double = 0
  public var `effort`: Double = 0
  public var `state`: Int32 = 0
  public var `faultcode`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 128)
    try w.float64(self.`position`)
    try w.float64(self.`velocity`)
    try w.float64(self.`effort`)
    try w.integer(self.`state`)
    try w.integer(self.`faultcode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgHandState {
    var v = Ros2Aimdk_msgsMsgHandState()
    v.`name` = try r.string(bound: 128)
    v.`position` = try r.float64()
    v.`velocity` = try r.float64()
    v.`effort` = try r.float64()
    v.`state` = try r.integer(Int32.self)
    v.`faultcode` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgHandStateArray: Canonical {
  public static let maximumWireBytes = 1474
  public static let codecIdentity =
    "UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d"
  public static let nativeType = "aimdk_msgs/msg/HandStateArray"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgMessageHeader = Ros2Aimdk_msgsMsgMessageHeader()
  public var `left_hand_type`: Ros2Aimdk_msgsMsgHandType = Ros2Aimdk_msgsMsgHandType()
  public var `left_hands`: [Ros2Aimdk_msgsMsgHandState] = []
  public var `right_hand_type`: Ros2Aimdk_msgsMsgHandType = Ros2Aimdk_msgsMsgHandType()
  public var `right_hands`: [Ros2Aimdk_msgsMsgHandState] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`left_hand_type`.write(to: &w)
    guard self.`left_hands`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`left_hands`.count))
    for e in self.`left_hands` {
      try e.write(to: &w)
    }
    try self.`right_hand_type`.write(to: &w)
    guard self.`right_hands`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`right_hands`.count))
    for e in self.`right_hands` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgHandStateArray {
    var v = Ros2Aimdk_msgsMsgHandStateArray()
    v.`header` = try Ros2Aimdk_msgsMsgMessageHeader.read(from: &r)
    v.`left_hand_type` = try Ros2Aimdk_msgsMsgHandType.read(from: &r)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`left_hands` = []
    v.`left_hands`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`left_hands`.append(try Ros2Aimdk_msgsMsgHandState.read(from: &r))
    }
    v.`right_hand_type` = try Ros2Aimdk_msgsMsgHandType.read(from: &r)
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 4 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`right_hands` = []
    v.`right_hands`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`right_hands`.append(try Ros2Aimdk_msgsMsgHandState.read(from: &r))
    }
    return v
  }
}
public struct Ros2Aimdk_msgsMsgJointCommand: Canonical {
  public static let maximumWireBytes = 172
  public static let codecIdentity =
    "UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f"
  public static let nativeType = "aimdk_msgs/msg/JointCommand"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `position`: Double = 0
  public var `velocity`: Double = 0
  public var `effort`: Double = 0
  public var `stiffness`: Double = 0
  public var `damping`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 128)
    try w.float64(self.`position`)
    try w.float64(self.`velocity`)
    try w.float64(self.`effort`)
    try w.float64(self.`stiffness`)
    try w.float64(self.`damping`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgJointCommand {
    var v = Ros2Aimdk_msgsMsgJointCommand()
    v.`name` = try r.string(bound: 128)
    v.`position` = try r.float64()
    v.`velocity` = try r.float64()
    v.`effort` = try r.float64()
    v.`stiffness` = try r.float64()
    v.`damping` = try r.float64()
    return v
  }
}
public struct Ros2Aimdk_msgsMsgJointCommandArray: Canonical {
  public static let maximumWireBytes = 11164
  public static let codecIdentity =
    "UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6"
  public static let nativeType = "aimdk_msgs/msg/JointCommandArray"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgMessageHeader = Ros2Aimdk_msgsMsgMessageHeader()
  public var `joints`: [Ros2Aimdk_msgsMsgJointCommand] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joints`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`joints`.count))
    for e in self.`joints` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgJointCommandArray {
    var v = Ros2Aimdk_msgsMsgJointCommandArray()
    v.`header` = try Ros2Aimdk_msgsMsgMessageHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 64 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joints` = []
    v.`joints`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joints`.append(try Ros2Aimdk_msgsMsgJointCommand.read(from: &r))
    }
    return v
  }
}
public struct Ros2Aimdk_msgsMsgJointState: Canonical {
  public static let maximumWireBytes = 159
  public static let codecIdentity =
    "UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f"
  public static let nativeType = "aimdk_msgs/msg/JointState"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `position`: Double = 0
  public var `velocity`: Double = 0
  public var `effort`: Double = 0
  public var `coil_temp`: UInt8 = 0
  public var `motor_temp`: UInt8 = 0
  public var `motor_vol`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 128)
    try w.float64(self.`position`)
    try w.float64(self.`velocity`)
    try w.float64(self.`effort`)
    try w.integer(self.`coil_temp`)
    try w.integer(self.`motor_temp`)
    try w.integer(self.`motor_vol`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgJointState {
    var v = Ros2Aimdk_msgsMsgJointState()
    v.`name` = try r.string(bound: 128)
    v.`position` = try r.float64()
    v.`velocity` = try r.float64()
    v.`effort` = try r.float64()
    v.`coil_temp` = try r.integer(UInt8.self)
    v.`motor_temp` = try r.integer(UInt8.self)
    v.`motor_vol` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgJointStateArray: Canonical {
  public static let maximumWireBytes = 10332
  public static let codecIdentity =
    "UWVMROS1_6bf212a55e2cbe59e4e1bd675bdb41d3461db28e11d91244c21bac45070683fa"
  public static let nativeType = "aimdk_msgs/msg/JointStateArray"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgMessageHeader = Ros2Aimdk_msgsMsgMessageHeader()
  public var `joints`: [Ros2Aimdk_msgsMsgJointState] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    guard self.`joints`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`joints`.count))
    for e in self.`joints` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgJointStateArray {
    var v = Ros2Aimdk_msgsMsgJointStateArray()
    v.`header` = try Ros2Aimdk_msgsMsgMessageHeader.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 64 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`joints` = []
    v.`joints`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`joints`.append(try Ros2Aimdk_msgsMsgJointState.read(from: &r))
    }
    return v
  }
}
public struct Ros2Aimdk_msgsMsgMcAction: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b"
  public static let nativeType = "aimdk_msgs/msg/McAction"
  public static let nativeIdentity: String? = nil
  public static let `PASSIVE_DEFAULT`: Int32 = 1
  public static let `SOFT_EMERGENCY_STOP`: Int32 = 2
  public static let `DAMPING_DEFAULT`: Int32 = 3
  public static let `ZERO_TORQUE_DEFAULT`: Int32 = 4
  public static let `JOINT_DEFAULT`: Int32 = 100
  public static let `JOINT_FREEZE`: Int32 = 101
  public static let `STAND_DEFAULT`: Int32 = 200
  public static let `STAND_BODY_CONTROL`: Int32 = 201
  public static let `LOCOMOTION_DEFAULT`: Int32 = 300
  public static let `RUN_DEFAULT`: Int32 = 301
  public static let `LOCOMOTION_STEP`: Int32 = 302
  public static let `VR_REMOTE_CONTROLLER`: Int32 = 400
  public static let `SIT_DOWN_DEFAULT`: Int32 = 2000
  public static let `CROUCH_DOWN_DEFAULT`: Int32 = 2002
  public static let `LIE_DOWN_DEFAULT`: Int32 = 2004
  public static let `STAND_UP_DEFAULT`: Int32 = 2005
  public static let `ASCEND_STAIRS`: Int32 = 2006
  public static let `DESCEND_STAIRS`: Int32 = 2008
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgMcAction {
    var v = Ros2Aimdk_msgsMsgMcAction()
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgMcActionCommand: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648"
  public static let nativeType = "aimdk_msgs/msg/McActionCommand"
  public static let nativeIdentity: String? = nil
  public var `action`: Ros2Aimdk_msgsMsgMcAction = Ros2Aimdk_msgsMsgMcAction()
  public var `action_desc`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`action`.write(to: &w)
    try w.string(self.`action_desc`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgMcActionCommand {
    var v = Ros2Aimdk_msgsMsgMcActionCommand()
    v.`action` = try Ros2Aimdk_msgsMsgMcAction.read(from: &r)
    v.`action_desc` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgMcActionStatus: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48"
  public static let nativeType = "aimdk_msgs/msg/McActionStatus"
  public static let nativeIdentity: String? = nil
  public static let `IDLE`: Int32 = 0
  public static let `RUNNING`: Int32 = 100
  public static let `TRANSITION`: Int32 = 200
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgMcActionStatus {
    var v = Ros2Aimdk_msgsMsgMcActionStatus()
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgMcActionInfo: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9"
  public static let nativeType = "aimdk_msgs/msg/McActionInfo"
  public static let nativeIdentity: String? = nil
  public var `current_action`: Ros2Aimdk_msgsMsgMcAction = Ros2Aimdk_msgsMsgMcAction()
  public var `action_desc`: String = ""
  public var `status`: Ros2Aimdk_msgsMsgMcActionStatus = Ros2Aimdk_msgsMsgMcActionStatus()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`current_action`.write(to: &w)
    try w.string(self.`action_desc`, bound: 128)
    try self.`status`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgMcActionInfo {
    var v = Ros2Aimdk_msgsMsgMcActionInfo()
    v.`current_action` = try Ros2Aimdk_msgsMsgMcAction.read(from: &r)
    v.`action_desc` = try r.string(bound: 128)
    v.`status` = try Ros2Aimdk_msgsMsgMcActionStatus.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgMcControlArea: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9"
  public static let nativeType = "aimdk_msgs/msg/McControlArea"
  public static let nativeIdentity: String? = nil
  public static let `NONE`: Int32 = 0
  public static let `LEFT_HAND`: Int32 = 1
  public static let `RIGHT_HAND`: Int32 = 2
  public static let `HEAD`: Int32 = 4
  public static let `WAIST`: Int32 = 8
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgMcControlArea {
    var v = Ros2Aimdk_msgsMsgMcControlArea()
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgMcInputAction: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9"
  public static let nativeType = "aimdk_msgs/msg/McInputAction"
  public static let nativeIdentity: String? = nil
  public static let `INPUTACTION_ADD`: Int32 = 1001
  public static let `INPUTACTION_MODIFY`: Int32 = 1002
  public static let `INPUTACTION_DELETE`: Int32 = 1003
  public static let `INPUTACTION_ENABLE`: Int32 = 2001
  public static let `INPUTACTION_DISABLE`: Int32 = 2002
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgMcInputAction {
    var v = Ros2Aimdk_msgsMsgMcInputAction()
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgMcInputSource: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd"
  public static let nativeType = "aimdk_msgs/msg/McInputSource"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `priority`: Int32 = 0
  public var `timeout`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 128)
    try w.integer(self.`priority`)
    try w.integer(self.`timeout`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgMcInputSource {
    var v = Ros2Aimdk_msgsMsgMcInputSource()
    v.`name` = try r.string(bound: 128)
    v.`priority` = try r.integer(Int32.self)
    v.`timeout` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgMcLocomotionVelocity: Canonical {
  public static let maximumWireBytes = 308
  public static let codecIdentity =
    "UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00"
  public static let nativeType = "aimdk_msgs/msg/McLocomotionVelocity"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgMessageHeader = Ros2Aimdk_msgsMsgMessageHeader()
  public var `source`: String = ""
  public var `forward_velocity`: Double = 0
  public var `lateral_velocity`: Double = 0
  public var `angular_velocity`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`source`, bound: 128)
    try w.float64(self.`forward_velocity`)
    try w.float64(self.`lateral_velocity`)
    try w.float64(self.`angular_velocity`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgMcLocomotionVelocity
  {
    var v = Ros2Aimdk_msgsMsgMcLocomotionVelocity()
    v.`header` = try Ros2Aimdk_msgsMsgMessageHeader.read(from: &r)
    v.`source` = try r.string(bound: 128)
    v.`forward_velocity` = try r.float64()
    v.`lateral_velocity` = try r.float64()
    v.`angular_velocity` = try r.float64()
    return v
  }
}
public struct Ros2Aimdk_msgsMsgMcPresetMotion: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153"
  public static let nativeType = "aimdk_msgs/msg/McPresetMotion"
  public static let nativeIdentity: String? = nil
  public static let `RAISE_HAND`: Int32 = 1001
  public static let `WAVE_HAND`: Int32 = 1002
  public static let `SHAKE_HAND`: Int32 = 1003
  public static let `FLYING_KISS_HAND`: Int32 = 1004
  public static let `CLAP_HAND`: Int32 = 1008
  public static let `TURN_WAVE_HAND`: Int32 = 2001
  public static let `INTERACTION_BOW`: Int32 = 3001
  public static let `INTERACTION_LIKE`: Int32 = 3002
  public static let `INTERACTION_YE`: Int32 = 3003
  public static let `INTERACTION_SWEATHEART`: Int32 = 3004
  public static let `SALUTE`: Int32 = 1013
  public static let `INTERACTION_SAD`: Int32 = 3006
  public static let `INTERACTION_LIGHTWAVE`: Int32 = 3007
  public static let `INTERACTION_HUG`: Int32 = 3008
  public static let `INTERACTION_HANDX`: Int32 = 3009
  public static let `INTERACTION_CHESTWAVE`: Int32 = 3010
  public static let `INTERACTION_CHEER`: Int32 = 3011
  public static let `INTERACTION_BLOWKISS`: Int32 = 3012
  public static let `INTERACTION_BASSDANCE1`: Int32 = 3013
  public static let `INTERACTION_BASSDANCE2`: Int32 = 3014
  public static let `HITCLAP`: Int32 = 3015
  public static let `INTERACTION_SPEAK`: Int32 = 3016
  public static let `CLIPFIST`: Int32 = 1009
  public static let `INTERACTION_PHOTOPOSTURE`: Int32 = 3018
  public static let `INTERACTION_PHOTOTRIPPLEPOSTURE`: Int32 = 3019
  public static let `POINT_HEAD`: Int32 = 4001
  public static let `SHAKE_HEAD`: Int32 = 4002
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgMcPresetMotion {
    var v = Ros2Aimdk_msgsMsgMcPresetMotion()
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgTtsPriorityLevel: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_38bce7b033528697c6667c348c66d327a0d63f176b519189d3720279591cd90a"
  public static let nativeType = "aimdk_msgs/msg/TtsPriorityLevel"
  public static let nativeIdentity: String? = nil
  public static let `UNKNOWN`: UInt8 = 0
  public static let `BACKGROUND_L1`: UInt8 = 1
  public static let `SERVICE_L2`: UInt8 = 2
  public static let `MISSION_L4`: UInt8 = 4
  public static let `INTERACTION_L6`: UInt8 = 6
  public static let `WARNING_L8`: UInt8 = 8
  public static let `SAFETY_L10`: UInt8 = 10
  public var `value`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgTtsPriorityLevel {
    var v = Ros2Aimdk_msgsMsgTtsPriorityLevel()
    v.`value` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgPlayMediaFileRequest: Canonical {
  public static let maximumWireBytes = 406
  public static let codecIdentity =
    "UWVMROS1_de5d1ad3e7b16b0aaac78736982e24c1a1f3366952cb1b08f59a86bfaf70d254"
  public static let nativeType = "aimdk_msgs/msg/PlayMediaFileRequest"
  public static let nativeIdentity: String? = nil
  public var `file_name`: String = ""
  public var `sample_rate`: UInt32 = 0
  public var `priority_level`: Ros2Aimdk_msgsMsgTtsPriorityLevel =
    Ros2Aimdk_msgsMsgTtsPriorityLevel()
  public var `priority_weight`: UInt32 = 0
  public var `domain`: String = ""
  public var `trace_id`: String = ""
  public var `is_interrupted`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`file_name`, bound: 128)
    try w.integer(self.`sample_rate`)
    try self.`priority_level`.write(to: &w)
    try w.integer(self.`priority_weight`)
    try w.string(self.`domain`, bound: 128)
    try w.string(self.`trace_id`, bound: 128)
    try w.boolean(self.`is_interrupted`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgPlayMediaFileRequest
  {
    var v = Ros2Aimdk_msgsMsgPlayMediaFileRequest()
    v.`file_name` = try r.string(bound: 128)
    v.`sample_rate` = try r.integer(UInt32.self)
    v.`priority_level` = try Ros2Aimdk_msgsMsgTtsPriorityLevel.read(from: &r)
    v.`priority_weight` = try r.integer(UInt32.self)
    v.`domain` = try r.string(bound: 128)
    v.`trace_id` = try r.string(bound: 128)
    v.`is_interrupted` = try r.boolean()
    return v
  }
}
public struct Ros2Aimdk_msgsMsgPlayTtsRequest: Canonical {
  public static let maximumWireBytes = 402
  public static let codecIdentity =
    "UWVMROS1_d6410f21a03f560429a39216f36ce03ad040323054f5775b75586b3890802bbd"
  public static let nativeType = "aimdk_msgs/msg/PlayTtsRequest"
  public static let nativeIdentity: String? = nil
  public var `text`: String = ""
  public var `priority_level`: Ros2Aimdk_msgsMsgTtsPriorityLevel =
    Ros2Aimdk_msgsMsgTtsPriorityLevel()
  public var `priority_weight`: UInt32 = 0
  public var `domain`: String = ""
  public var `trace_id`: String = ""
  public var `is_interrupted`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`text`, bound: 128)
    try self.`priority_level`.write(to: &w)
    try w.integer(self.`priority_weight`)
    try w.string(self.`domain`, bound: 128)
    try w.string(self.`trace_id`, bound: 128)
    try w.boolean(self.`is_interrupted`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgPlayTtsRequest {
    var v = Ros2Aimdk_msgsMsgPlayTtsRequest()
    v.`text` = try r.string(bound: 128)
    v.`priority_level` = try Ros2Aimdk_msgsMsgTtsPriorityLevel.read(from: &r)
    v.`priority_weight` = try r.integer(UInt32.self)
    v.`domain` = try r.string(bound: 128)
    v.`trace_id` = try r.string(bound: 128)
    v.`is_interrupted` = try r.boolean()
    return v
  }
}
public struct Ros2Aimdk_msgsMsgPlayTtsResponse: Canonical {
  public static let maximumWireBytes = 538
  public static let codecIdentity =
    "UWVMROS1_8347d2c5ae04c1db9ea2fd0c6afdffcb5e1327a170e15a7e861a00a08c8a8af3"
  public static let nativeType = "aimdk_msgs/msg/PlayTtsResponse"
  public static let nativeIdentity: String? = nil
  public var `text`: String = ""
  public var `priority_level`: Ros2Aimdk_msgsMsgTtsPriorityLevel =
    Ros2Aimdk_msgsMsgTtsPriorityLevel()
  public var `priority_weight`: UInt32 = 0
  public var `domain`: String = ""
  public var `trace_id`: String = ""
  public var `is_success`: Bool = false
  public var `error_message`: String = ""
  public var `estimated_duration`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`text`, bound: 128)
    try self.`priority_level`.write(to: &w)
    try w.integer(self.`priority_weight`)
    try w.string(self.`domain`, bound: 128)
    try w.string(self.`trace_id`, bound: 128)
    try w.boolean(self.`is_success`)
    try w.string(self.`error_message`, bound: 128)
    try w.integer(self.`estimated_duration`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgPlayTtsResponse {
    var v = Ros2Aimdk_msgsMsgPlayTtsResponse()
    v.`text` = try r.string(bound: 128)
    v.`priority_level` = try Ros2Aimdk_msgsMsgTtsPriorityLevel.read(from: &r)
    v.`priority_weight` = try r.integer(UInt32.self)
    v.`domain` = try r.string(bound: 128)
    v.`trace_id` = try r.string(bound: 128)
    v.`is_success` = try r.boolean()
    v.`error_message` = try r.string(bound: 128)
    v.`estimated_duration` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgPmuState: Canonical {
  public static let maximumWireBytes = 1097
  public static let codecIdentity =
    "UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c"
  public static let nativeType = "aimdk_msgs/msg/PmuState"
  public static let nativeIdentity: String? = nil
  public var `pmu_software_version`: String = ""
  public var `pmu_hardware_version`: String = ""
  public var `pmu_protocol_version`: String = ""
  public var `pmu_bool_status`: UInt32 = 0
  public var `head_power_current`: Double = 0
  public var `output_48v_current`: Double = 0
  public var `rk3588_current`: Double = 0
  public var `output_12v_current`: Double = 0
  public var `bus_48v_current`: Double = 0
  public var `orin_current`: Double = 0
  public var `bus_48v_pmos_voltage`: Double = 0
  public var `battery_voltage`: Double = 0
  public var `fan_voltage`: Double = 0
  public var `output_12v_voltage`: Double = 0
  public var `output_48v_voltage`: Double = 0
  public var `bus_48v_voltage`: Double = 0
  public var `head_power_voltage`: Double = 0
  public var `orin_voltage`: Double = 0
  public var `rk3588_voltage`: Double = 0
  public var `bms_manufacturer`: String = ""
  public var `bms_serial_number`: String = ""
  public var `bms_hardware_version`: String = ""
  public var `bms_software_version`: String = ""
  public var `bms_status_bits`: UInt32 = 0
  public var `battery_balance_line_resistance`: UInt16 = 0
  public var `battery_pack_voltage`: Double = 0
  public var `battery_current`: Double = 0
  public var `battery_output_power`: Double = 0
  public var `battery_temperature`: Double = 0
  public var `battery_remaining_capacity`: UInt32 = 0
  public var `battery_remaining_capacity_percentage`: UInt8 = 0
  public var `battery_cycle_count`: UInt16 = 0
  public var `battery_cycle_total_capacity`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`pmu_software_version`, bound: 128)
    try w.string(self.`pmu_hardware_version`, bound: 128)
    try w.string(self.`pmu_protocol_version`, bound: 128)
    try w.integer(self.`pmu_bool_status`)
    try w.float64(self.`head_power_current`)
    try w.float64(self.`output_48v_current`)
    try w.float64(self.`rk3588_current`)
    try w.float64(self.`output_12v_current`)
    try w.float64(self.`bus_48v_current`)
    try w.float64(self.`orin_current`)
    try w.float64(self.`bus_48v_pmos_voltage`)
    try w.float64(self.`battery_voltage`)
    try w.float64(self.`fan_voltage`)
    try w.float64(self.`output_12v_voltage`)
    try w.float64(self.`output_48v_voltage`)
    try w.float64(self.`bus_48v_voltage`)
    try w.float64(self.`head_power_voltage`)
    try w.float64(self.`orin_voltage`)
    try w.float64(self.`rk3588_voltage`)
    try w.string(self.`bms_manufacturer`, bound: 128)
    try w.string(self.`bms_serial_number`, bound: 128)
    try w.string(self.`bms_hardware_version`, bound: 128)
    try w.string(self.`bms_software_version`, bound: 128)
    try w.integer(self.`bms_status_bits`)
    try w.integer(self.`battery_balance_line_resistance`)
    try w.float64(self.`battery_pack_voltage`)
    try w.float64(self.`battery_current`)
    try w.float64(self.`battery_output_power`)
    try w.float64(self.`battery_temperature`)
    try w.integer(self.`battery_remaining_capacity`)
    try w.integer(self.`battery_remaining_capacity_percentage`)
    try w.integer(self.`battery_cycle_count`)
    try w.integer(self.`battery_cycle_total_capacity`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgPmuState {
    var v = Ros2Aimdk_msgsMsgPmuState()
    v.`pmu_software_version` = try r.string(bound: 128)
    v.`pmu_hardware_version` = try r.string(bound: 128)
    v.`pmu_protocol_version` = try r.string(bound: 128)
    v.`pmu_bool_status` = try r.integer(UInt32.self)
    v.`head_power_current` = try r.float64()
    v.`output_48v_current` = try r.float64()
    v.`rk3588_current` = try r.float64()
    v.`output_12v_current` = try r.float64()
    v.`bus_48v_current` = try r.float64()
    v.`orin_current` = try r.float64()
    v.`bus_48v_pmos_voltage` = try r.float64()
    v.`battery_voltage` = try r.float64()
    v.`fan_voltage` = try r.float64()
    v.`output_12v_voltage` = try r.float64()
    v.`output_48v_voltage` = try r.float64()
    v.`bus_48v_voltage` = try r.float64()
    v.`head_power_voltage` = try r.float64()
    v.`orin_voltage` = try r.float64()
    v.`rk3588_voltage` = try r.float64()
    v.`bms_manufacturer` = try r.string(bound: 128)
    v.`bms_serial_number` = try r.string(bound: 128)
    v.`bms_hardware_version` = try r.string(bound: 128)
    v.`bms_software_version` = try r.string(bound: 128)
    v.`bms_status_bits` = try r.integer(UInt32.self)
    v.`battery_balance_line_resistance` = try r.integer(UInt16.self)
    v.`battery_pack_voltage` = try r.float64()
    v.`battery_current` = try r.float64()
    v.`battery_output_power` = try r.float64()
    v.`battery_temperature` = try r.float64()
    v.`battery_remaining_capacity` = try r.integer(UInt32.self)
    v.`battery_remaining_capacity_percentage` = try r.integer(UInt8.self)
    v.`battery_cycle_count` = try r.integer(UInt16.self)
    v.`battery_cycle_total_capacity` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgProcessedAudioOutput: Canonical {
  public static let maximumWireBytes = 417
  public static let codecIdentity =
    "UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30"
  public static let nativeType = "aimdk_msgs/msg/ProcessedAudioOutput"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgMessageHeader = Ros2Aimdk_msgsMsgMessageHeader()
  public var `stream_id`: UInt32 = 0
  public var `audio_vad_state`: Ros2Aimdk_msgsMsgAudioVadStateType =
    Ros2Aimdk_msgsMsgAudioVadStateType()
  public var `audio_data`: [UInt8] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`stream_id`)
    try self.`audio_vad_state`.write(to: &w)
    guard self.`audio_data`.count <= 256 else { throw RosError(22) }
    try w.integer(UInt32(self.`audio_data`.count))
    for e in self.`audio_data` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgProcessedAudioOutput
  {
    var v = Ros2Aimdk_msgsMsgProcessedAudioOutput()
    v.`header` = try Ros2Aimdk_msgsMsgMessageHeader.read(from: &r)
    v.`stream_id` = try r.integer(UInt32.self)
    v.`audio_vad_state` = try Ros2Aimdk_msgsMsgAudioVadStateType.read(from: &r)
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 256 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`audio_data` = []
    v.`audio_data`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`audio_data`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros2Aimdk_msgsMsgTouchState: Canonical {
  public static let maximumWireBytes = 225
  public static let codecIdentity =
    "UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564"
  public static let nativeType = "aimdk_msgs/msg/TouchState"
  public static let nativeIdentity: String? = nil
  public static let `UNKNOWN`: UInt8 = 0
  public static let `IDLE`: UInt8 = 1
  public static let `TOUCH`: UInt8 = 2
  public static let `SLIDE`: UInt8 = 3
  public static let `PAT_ONCE`: UInt8 = 4
  public static let `PAT_TWICE`: UInt8 = 5
  public static let `PAT_TRIPLE`: UInt8 = 6
  public var `header`: Ros2Aimdk_msgsMsgMessageHeader = Ros2Aimdk_msgsMsgMessageHeader()
  public var `event_type`: UInt8 = 0
  public var `data`: [UInt32] = Array(repeating: 0, count: 8)
  public var `threshold`: [UInt32] = Array(repeating: 0, count: 8)
  public var `is_touched`: [Bool] = Array(repeating: false, count: 8)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`event_type`)
    guard self.`data`.count == 8 else { throw RosError(22) }
    for e in self.`data` {
      try w.integer(e)
    }
    guard self.`threshold`.count == 8 else { throw RosError(22) }
    for e in self.`threshold` {
      try w.integer(e)
    }
    guard self.`is_touched`.count == 8 else { throw RosError(22) }
    for e in self.`is_touched` {
      try w.boolean(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgTouchState {
    var v = Ros2Aimdk_msgsMsgTouchState()
    v.`header` = try Ros2Aimdk_msgsMsgMessageHeader.read(from: &r)
    v.`event_type` = try r.integer(UInt8.self)
    let count2 = 8
    v.`data` = []
    v.`data`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`data`.append(try r.integer(UInt32.self))
    }
    let count3 = 8
    v.`threshold` = []
    v.`threshold`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`threshold`.append(try r.integer(UInt32.self))
    }
    let count4 = 8
    v.`is_touched` = []
    v.`is_touched`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`is_touched`.append(try r.boolean())
    }
    return v
  }
}
public struct Ros2Aimdk_msgsSrvGetAllJointState_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260"
  public static let nativeType = "aimdk_msgs/srv/GetAllJointState_Request"
  public static let nativeIdentity: String? = nil
  public var `request`: Ros2Aimdk_msgsMsgCommonRequest = Ros2Aimdk_msgsMsgCommonRequest()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`request`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Aimdk_msgsSrvGetAllJointState_Request
  {
    var v = Ros2Aimdk_msgsSrvGetAllJointState_Request()
    v.`request` = try Ros2Aimdk_msgsMsgCommonRequest.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvGetAllJointState_Response: Canonical {
  public static let maximumWireBytes = 2712
  public static let codecIdentity =
    "UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793"
  public static let nativeType = "aimdk_msgs/srv/GetAllJointState_Response"
  public static let nativeIdentity: String? = nil
  public var `reponse`: Ros2Aimdk_msgsMsgCommonResponse = Ros2Aimdk_msgsMsgCommonResponse()
  public var `head_joints`: [Ros2Aimdk_msgsMsgJointState] = []
  public var `arm_joints`: [Ros2Aimdk_msgsMsgJointState] = []
  public var `waist_joints`: [Ros2Aimdk_msgsMsgJointState] = []
  public var `leg_joints`: [Ros2Aimdk_msgsMsgJointState] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`reponse`.write(to: &w)
    guard self.`head_joints`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`head_joints`.count))
    for e in self.`head_joints` {
      try e.write(to: &w)
    }
    guard self.`arm_joints`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`arm_joints`.count))
    for e in self.`arm_joints` {
      try e.write(to: &w)
    }
    guard self.`waist_joints`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`waist_joints`.count))
    for e in self.`waist_joints` {
      try e.write(to: &w)
    }
    guard self.`leg_joints`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`leg_joints`.count))
    for e in self.`leg_joints` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Aimdk_msgsSrvGetAllJointState_Response
  {
    var v = Ros2Aimdk_msgsSrvGetAllJointState_Response()
    v.`reponse` = try Ros2Aimdk_msgsMsgCommonResponse.read(from: &r)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 4 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`head_joints` = []
    v.`head_joints`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`head_joints`.append(try Ros2Aimdk_msgsMsgJointState.read(from: &r))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`arm_joints` = []
    v.`arm_joints`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`arm_joints`.append(try Ros2Aimdk_msgsMsgJointState.read(from: &r))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 4 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`waist_joints` = []
    v.`waist_joints`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`waist_joints`.append(try Ros2Aimdk_msgsMsgJointState.read(from: &r))
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 4 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`leg_joints` = []
    v.`leg_joints`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`leg_joints`.append(try Ros2Aimdk_msgsMsgJointState.read(from: &r))
    }
    return v
  }
}
public struct Ros2Aimdk_msgsSrvGetCurrentInputSource_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a"
  public static let nativeType = "aimdk_msgs/srv/GetCurrentInputSource_Request"
  public static let nativeIdentity: String? = nil
  public var `request`: Ros2Aimdk_msgsMsgCommonRequest = Ros2Aimdk_msgsMsgCommonRequest()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`request`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Aimdk_msgsSrvGetCurrentInputSource_Request
  {
    var v = Ros2Aimdk_msgsSrvGetCurrentInputSource_Request()
    v.`request` = try Ros2Aimdk_msgsMsgCommonRequest.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvGetCurrentInputSource_Response: Canonical {
  public static let maximumWireBytes = 168
  public static let codecIdentity =
    "UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e"
  public static let nativeType = "aimdk_msgs/srv/GetCurrentInputSource_Response"
  public static let nativeIdentity: String? = nil
  public var `response`: Ros2Aimdk_msgsMsgCommonTaskResponse = Ros2Aimdk_msgsMsgCommonTaskResponse()
  public var `input_source`: Ros2Aimdk_msgsMsgMcInputSource = Ros2Aimdk_msgsMsgMcInputSource()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`response`.write(to: &w)
    try self.`input_source`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Aimdk_msgsSrvGetCurrentInputSource_Response
  {
    var v = Ros2Aimdk_msgsSrvGetCurrentInputSource_Response()
    v.`response` = try Ros2Aimdk_msgsMsgCommonTaskResponse.read(from: &r)
    v.`input_source` = try Ros2Aimdk_msgsMsgMcInputSource.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvGetHandType_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470"
  public static let nativeType = "aimdk_msgs/srv/GetHandType_Request"
  public static let nativeIdentity: String? = nil
  public var `request`: Ros2Aimdk_msgsMsgCommonRequest = Ros2Aimdk_msgsMsgCommonRequest()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`request`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvGetHandType_Request {
    var v = Ros2Aimdk_msgsSrvGetHandType_Request()
    v.`request` = try Ros2Aimdk_msgsMsgCommonRequest.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvGetHandType_Response: Canonical {
  public static let maximumWireBytes = 154
  public static let codecIdentity =
    "UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c"
  public static let nativeType = "aimdk_msgs/srv/GetHandType_Response"
  public static let nativeIdentity: String? = nil
  public var `reponse`: Ros2Aimdk_msgsMsgCommonResponse = Ros2Aimdk_msgsMsgCommonResponse()
  public var `left_hands_type`: Ros2Aimdk_msgsMsgHandType = Ros2Aimdk_msgsMsgHandType()
  public var `right_hands_type`: Ros2Aimdk_msgsMsgHandType = Ros2Aimdk_msgsMsgHandType()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`reponse`.write(to: &w)
    try self.`left_hands_type`.write(to: &w)
    try self.`right_hands_type`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvGetHandType_Response
  {
    var v = Ros2Aimdk_msgsSrvGetHandType_Response()
    v.`reponse` = try Ros2Aimdk_msgsMsgCommonResponse.read(from: &r)
    v.`left_hands_type` = try Ros2Aimdk_msgsMsgHandType.read(from: &r)
    v.`right_hands_type` = try Ros2Aimdk_msgsMsgHandType.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvGetMcAction_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe"
  public static let nativeType = "aimdk_msgs/srv/GetMcAction_Request"
  public static let nativeIdentity: String? = nil
  public var `request`: Ros2Aimdk_msgsMsgCommonRequest = Ros2Aimdk_msgsMsgCommonRequest()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`request`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvGetMcAction_Request {
    var v = Ros2Aimdk_msgsSrvGetMcAction_Request()
    v.`request` = try Ros2Aimdk_msgsMsgCommonRequest.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvGetMcAction_Response: Canonical {
  public static let maximumWireBytes = 156
  public static let codecIdentity =
    "UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f"
  public static let nativeType = "aimdk_msgs/srv/GetMcAction_Response"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgResponseHeader = Ros2Aimdk_msgsMsgResponseHeader()
  public var `info`: Ros2Aimdk_msgsMsgMcActionInfo = Ros2Aimdk_msgsMsgMcActionInfo()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`info`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvGetMcAction_Response
  {
    var v = Ros2Aimdk_msgsSrvGetMcAction_Response()
    v.`header` = try Ros2Aimdk_msgsMsgResponseHeader.read(from: &r)
    v.`info` = try Ros2Aimdk_msgsMsgMcActionInfo.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvGetMute_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5"
  public static let nativeType = "aimdk_msgs/srv/GetMute_Request"
  public static let nativeIdentity: String? = nil
  public var `request`: Ros2Aimdk_msgsMsgCommonRequest = Ros2Aimdk_msgsMsgCommonRequest()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`request`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvGetMute_Request {
    var v = Ros2Aimdk_msgsSrvGetMute_Request()
    v.`request` = try Ros2Aimdk_msgsMsgCommonRequest.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvGetMute_Response: Canonical {
  public static let maximumWireBytes = 153
  public static let codecIdentity =
    "UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42"
  public static let nativeType = "aimdk_msgs/srv/GetMute_Response"
  public static let nativeIdentity: String? = nil
  public var `reponse`: Ros2Aimdk_msgsMsgCommonResponse = Ros2Aimdk_msgsMsgCommonResponse()
  public var `is_mute`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`reponse`.write(to: &w)
    try w.boolean(self.`is_mute`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvGetMute_Response {
    var v = Ros2Aimdk_msgsSrvGetMute_Response()
    v.`reponse` = try Ros2Aimdk_msgsMsgCommonResponse.read(from: &r)
    v.`is_mute` = try r.boolean()
    return v
  }
}
public struct Ros2Aimdk_msgsSrvGetVolume_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b"
  public static let nativeType = "aimdk_msgs/srv/GetVolume_Request"
  public static let nativeIdentity: String? = nil
  public var `request`: Ros2Aimdk_msgsMsgCommonRequest = Ros2Aimdk_msgsMsgCommonRequest()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`request`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvGetVolume_Request {
    var v = Ros2Aimdk_msgsSrvGetVolume_Request()
    v.`request` = try Ros2Aimdk_msgsMsgCommonRequest.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvGetVolume_Response: Canonical {
  public static let maximumWireBytes = 156
  public static let codecIdentity =
    "UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266"
  public static let nativeType = "aimdk_msgs/srv/GetVolume_Response"
  public static let nativeIdentity: String? = nil
  public var `reponse`: Ros2Aimdk_msgsMsgCommonResponse = Ros2Aimdk_msgsMsgCommonResponse()
  public var `audio_volume`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`reponse`.write(to: &w)
    try w.integer(self.`audio_volume`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvGetVolume_Response {
    var v = Ros2Aimdk_msgsSrvGetVolume_Response()
    v.`reponse` = try Ros2Aimdk_msgsMsgCommonResponse.read(from: &r)
    v.`audio_volume` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvLedStripCommand_Request: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6"
  public static let nativeType = "aimdk_msgs/srv/LedStripCommand_Request"
  public static let nativeIdentity: String? = nil
  public static let `LED_STRIP_MODE_CONSTANT`: UInt8 = 0
  public static let `LED_STRIP_MODE_BREATH`: UInt8 = 1
  public static let `LED_STRIP_MODE_FLASH`: UInt8 = 2
  public static let `LED_STRIP_MODE_FLOW`: UInt8 = 3
  public static let `LED_STRIP_MODE_MAX`: UInt8 = 4
  public var `request`: Ros2Aimdk_msgsMsgCommonRequest = Ros2Aimdk_msgsMsgCommonRequest()
  public var `led_strip_mode`: UInt8 = 0
  public var `r`: UInt8 = 0
  public var `g`: UInt8 = 0
  public var `b`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`request`.write(to: &w)
    try w.integer(self.`led_strip_mode`)
    try w.integer(self.`r`)
    try w.integer(self.`g`)
    try w.integer(self.`b`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Aimdk_msgsSrvLedStripCommand_Request
  {
    var v = Ros2Aimdk_msgsSrvLedStripCommand_Request()
    v.`request` = try Ros2Aimdk_msgsMsgCommonRequest.read(from: &r)
    v.`led_strip_mode` = try r.integer(UInt8.self)
    v.`r` = try r.integer(UInt8.self)
    v.`g` = try r.integer(UInt8.self)
    v.`b` = try r.integer(UInt8.self)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvLedStripCommand_Response: Canonical {
  public static let maximumWireBytes = 18
  public static let codecIdentity =
    "UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9"
  public static let nativeType = "aimdk_msgs/srv/LedStripCommand_Response"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgResponseHeader = Ros2Aimdk_msgsMsgResponseHeader()
  public var `status_code`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`status_code`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Aimdk_msgsSrvLedStripCommand_Response
  {
    var v = Ros2Aimdk_msgsSrvLedStripCommand_Response()
    v.`header` = try Ros2Aimdk_msgsMsgResponseHeader.read(from: &r)
    v.`status_code` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvPlayEmoji_Request: Canonical {
  public static let maximumWireBytes = 14
  public static let codecIdentity =
    "UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43"
  public static let nativeType = "aimdk_msgs/srv/PlayEmoji_Request"
  public static let nativeIdentity: String? = nil
  public static let `EMOTION_UNKNOWN`: UInt8 = 0
  public static let `EMOTION_IDLE_BLINK`: UInt8 = 1
  public static let `EMOTION_IDLE_CALM_1`: UInt8 = 10
  public static let `EMOTION_IDLE_CALM_2`: UInt8 = 11
  public static let `EMOTION_IDLE_GAME`: UInt8 = 20
  public static let `EMOTION_IDLE_CUTE_1`: UInt8 = 30
  public static let `EMOTION_IDLE_CUTE_2`: UInt8 = 31
  public static let `EMOTION_IDLE_CUTE_3`: UInt8 = 32
  public static let `EMOTION_IDLE_CUTE_4`: UInt8 = 33
  public static let `EMOTION_EYE_CLOSE`: UInt8 = 40
  public static let `EMOTION_EYE_OPEN`: UInt8 = 50
  public static let `EMOTION_EYE_BORING_1`: UInt8 = 60
  public static let `EMOTION_EYE_ABNORMAL`: UInt8 = 70
  public static let `EMOTION_EYE_SLEEPY`: UInt8 = 80
  public static let `EMOTION_EYE_HAPPY`: UInt8 = 90
  public static let `EMOTION_EYE_EXTREMEHAPPY_1`: UInt8 = 100
  public static let `EMOTION_EYE_EXTREMEHAPPY_2`: UInt8 = 101
  public static let `EMOTION_EYE_SAD`: UInt8 = 110
  public static let `EMOTION_EYE_SYMPATHY`: UInt8 = 120
  public static let `EMOTION_EYE_CONFUSE`: UInt8 = 130
  public static let `EMOTION_EYE_SHOCK`: UInt8 = 140
  public static let `EMOTION_EYE_ACTCUTE`: UInt8 = 150
  public static let `EMOTION_EYE_SERIOUS`: UInt8 = 160
  public static let `EMOTION_EYE_THINKING`: UInt8 = 170
  public static let `EMOTION_EYE_ANGRY`: UInt8 = 180
  public static let `EMOTION_EYE_EXTREMEANGRY`: UInt8 = 190
  public static let `EMOTION_EYE_ADORE`: UInt8 = 200
  public static let `EMOTION_EYE_EXTREMEADORE`: UInt8 = 210
  public static let `EMOTION_EYE_CHARGE`: UInt8 = 220
  public static let `EMOTION_MODE_ONCE`: UInt8 = 1
  public static let `EMOTION_MODE_LOOP`: UInt8 = 2
  public var `header`: Ros2Aimdk_msgsMsgCommonRequest = Ros2Aimdk_msgsMsgCommonRequest()
  public var `emotion_id`: UInt8 = 0
  public var `mode`: UInt8 = 0
  public var `priority`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.integer(self.`emotion_id`)
    try w.integer(self.`mode`)
    try w.integer(self.`priority`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvPlayEmoji_Request {
    var v = Ros2Aimdk_msgsSrvPlayEmoji_Request()
    v.`header` = try Ros2Aimdk_msgsMsgCommonRequest.read(from: &r)
    v.`emotion_id` = try r.integer(UInt8.self)
    v.`mode` = try r.integer(UInt8.self)
    v.`priority` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvPlayEmoji_Response: Canonical {
  public static let maximumWireBytes = 285
  public static let codecIdentity =
    "UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9"
  public static let nativeType = "aimdk_msgs/srv/PlayEmoji_Response"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgCommonResponse = Ros2Aimdk_msgsMsgCommonResponse()
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvPlayEmoji_Response {
    var v = Ros2Aimdk_msgsSrvPlayEmoji_Response()
    v.`header` = try Ros2Aimdk_msgsMsgCommonResponse.read(from: &r)
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvPlayMediaFile_Request: Canonical {
  public static let maximumWireBytes = 414
  public static let codecIdentity =
    "UWVMROS1_546706b9797f99c98a014f9849171aef262775e8ab702cfe6517d92f5047247c"
  public static let nativeType = "aimdk_msgs/srv/PlayMediaFile_Request"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgCommonRequest = Ros2Aimdk_msgsMsgCommonRequest()
  public var `media_file_req`: Ros2Aimdk_msgsMsgPlayMediaFileRequest =
    Ros2Aimdk_msgsMsgPlayMediaFileRequest()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`media_file_req`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvPlayMediaFile_Request
  {
    var v = Ros2Aimdk_msgsSrvPlayMediaFile_Request()
    v.`header` = try Ros2Aimdk_msgsMsgCommonRequest.read(from: &r)
    v.`media_file_req` = try Ros2Aimdk_msgsMsgPlayMediaFileRequest.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvPlayMediaFile_Response: Canonical {
  public static let maximumWireBytes = 690
  public static let codecIdentity =
    "UWVMROS1_124871324704ab61f208168e64d4789376b3935b34895e824996e07561795099"
  public static let nativeType = "aimdk_msgs/srv/PlayMediaFile_Response"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgCommonResponse = Ros2Aimdk_msgsMsgCommonResponse()
  public var `tts_resp`: Ros2Aimdk_msgsMsgPlayTtsResponse = Ros2Aimdk_msgsMsgPlayTtsResponse()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`tts_resp`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Aimdk_msgsSrvPlayMediaFile_Response
  {
    var v = Ros2Aimdk_msgsSrvPlayMediaFile_Response()
    v.`header` = try Ros2Aimdk_msgsMsgCommonResponse.read(from: &r)
    v.`tts_resp` = try Ros2Aimdk_msgsMsgPlayTtsResponse.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvPlayTts_Request: Canonical {
  public static let maximumWireBytes = 410
  public static let codecIdentity =
    "UWVMROS1_2325b475e9d2777afe139aff54b29254f3e0ac0fd1fa499db049cf535810c6f7"
  public static let nativeType = "aimdk_msgs/srv/PlayTts_Request"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgCommonRequest = Ros2Aimdk_msgsMsgCommonRequest()
  public var `tts_req`: Ros2Aimdk_msgsMsgPlayTtsRequest = Ros2Aimdk_msgsMsgPlayTtsRequest()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`tts_req`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvPlayTts_Request {
    var v = Ros2Aimdk_msgsSrvPlayTts_Request()
    v.`header` = try Ros2Aimdk_msgsMsgCommonRequest.read(from: &r)
    v.`tts_req` = try Ros2Aimdk_msgsMsgPlayTtsRequest.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvPlayTts_Response: Canonical {
  public static let maximumWireBytes = 690
  public static let codecIdentity =
    "UWVMROS1_a0587cd9d9294f30dc27c095bfc1acdf54d98b47cf4ac8ddd77b6b75530c290a"
  public static let nativeType = "aimdk_msgs/srv/PlayTts_Response"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgCommonResponse = Ros2Aimdk_msgsMsgCommonResponse()
  public var `tts_resp`: Ros2Aimdk_msgsMsgPlayTtsResponse = Ros2Aimdk_msgsMsgPlayTtsResponse()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`tts_resp`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvPlayTts_Response {
    var v = Ros2Aimdk_msgsSrvPlayTts_Response()
    v.`header` = try Ros2Aimdk_msgsMsgCommonResponse.read(from: &r)
    v.`tts_resp` = try Ros2Aimdk_msgsMsgPlayTtsResponse.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvPlayVideo_Request: Canonical {
  public static let maximumWireBytes = 145
  public static let codecIdentity =
    "UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878"
  public static let nativeType = "aimdk_msgs/srv/PlayVideo_Request"
  public static let nativeIdentity: String? = nil
  public static let `EMOTION_MODE_ONCE`: UInt8 = 1
  public static let `EMOTION_MODE_LOOP`: UInt8 = 2
  public var `header`: Ros2Aimdk_msgsMsgCommonRequest = Ros2Aimdk_msgsMsgCommonRequest()
  public var `video_path`: String = ""
  public var `mode`: UInt8 = 0
  public var `priority`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`video_path`, bound: 128)
    try w.integer(self.`mode`)
    try w.integer(self.`priority`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvPlayVideo_Request {
    var v = Ros2Aimdk_msgsSrvPlayVideo_Request()
    v.`header` = try Ros2Aimdk_msgsMsgCommonRequest.read(from: &r)
    v.`video_path` = try r.string(bound: 128)
    v.`mode` = try r.integer(UInt8.self)
    v.`priority` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvPlayVideo_Response: Canonical {
  public static let maximumWireBytes = 285
  public static let codecIdentity =
    "UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627"
  public static let nativeType = "aimdk_msgs/srv/PlayVideo_Response"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgCommonResponse = Ros2Aimdk_msgsMsgCommonResponse()
  public var `success`: Bool = false
  public var `message`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.boolean(self.`success`)
    try w.string(self.`message`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvPlayVideo_Response {
    var v = Ros2Aimdk_msgsSrvPlayVideo_Response()
    v.`header` = try Ros2Aimdk_msgsMsgCommonResponse.read(from: &r)
    v.`success` = try r.boolean()
    v.`message` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request: Canonical {
  public static let maximumWireBytes = 544
  public static let codecIdentity =
    "UWVMROS1_965af85f35239b728d7b2ea3c8e995a7cd54d3254bc1e89d3eeb36612ada5dec"
  public static let nativeType = "aimdk_msgs/srv/SetAgentPropertiesRequest_Request"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgCommonRequest = Ros2Aimdk_msgsMsgCommonRequest()
  public var `contents`: Ros2Aimdk_msgsMsgAgentProperties = Ros2Aimdk_msgsMsgAgentProperties()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`contents`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
  {
    var v = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request()
    v.`header` = try Ros2Aimdk_msgsMsgCommonRequest.read(from: &r)
    v.`contents` = try Ros2Aimdk_msgsMsgAgentProperties.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response: Canonical {
  public static let maximumWireBytes = 152
  public static let codecIdentity =
    "UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b"
  public static let nativeType = "aimdk_msgs/srv/SetAgentPropertiesRequest_Response"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgCommonResponse = Ros2Aimdk_msgsMsgCommonResponse()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
  {
    var v = Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response()
    v.`header` = try Ros2Aimdk_msgsMsgCommonResponse.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvSetMcAction_Request: Canonical {
  public static let maximumWireBytes = 144
  public static let codecIdentity =
    "UWVMROS1_6ad0e14f9aefc0ae34c383eec4498c556c97757f03eb315b74977327691489d5"
  public static let nativeType = "aimdk_msgs/srv/SetMcAction_Request"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgRequestHeader = Ros2Aimdk_msgsMsgRequestHeader()
  public var `command`: Ros2Aimdk_msgsMsgMcActionCommand = Ros2Aimdk_msgsMsgMcActionCommand()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`command`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvSetMcAction_Request {
    var v = Ros2Aimdk_msgsSrvSetMcAction_Request()
    v.`header` = try Ros2Aimdk_msgsMsgRequestHeader.read(from: &r)
    v.`command` = try Ros2Aimdk_msgsMsgMcActionCommand.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvSetMcAction_Response: Canonical {
  public static let maximumWireBytes = 152
  public static let codecIdentity =
    "UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f"
  public static let nativeType = "aimdk_msgs/srv/SetMcAction_Response"
  public static let nativeIdentity: String? = nil
  public var `response`: Ros2Aimdk_msgsMsgCommonResponse = Ros2Aimdk_msgsMsgCommonResponse()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`response`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvSetMcAction_Response
  {
    var v = Ros2Aimdk_msgsSrvSetMcAction_Response()
    v.`response` = try Ros2Aimdk_msgsMsgCommonResponse.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvSetMcInputSource_Request: Canonical {
  public static let maximumWireBytes = 152
  public static let codecIdentity =
    "UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021"
  public static let nativeType = "aimdk_msgs/srv/SetMcInputSource_Request"
  public static let nativeIdentity: String? = nil
  public var `request`: Ros2Aimdk_msgsMsgCommonRequest = Ros2Aimdk_msgsMsgCommonRequest()
  public var `action`: Ros2Aimdk_msgsMsgMcInputAction = Ros2Aimdk_msgsMsgMcInputAction()
  public var `input_source`: Ros2Aimdk_msgsMsgMcInputSource = Ros2Aimdk_msgsMsgMcInputSource()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`request`.write(to: &w)
    try self.`action`.write(to: &w)
    try self.`input_source`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Aimdk_msgsSrvSetMcInputSource_Request
  {
    var v = Ros2Aimdk_msgsSrvSetMcInputSource_Request()
    v.`request` = try Ros2Aimdk_msgsMsgCommonRequest.read(from: &r)
    v.`action` = try Ros2Aimdk_msgsMsgMcInputAction.read(from: &r)
    v.`input_source` = try Ros2Aimdk_msgsMsgMcInputSource.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvSetMcInputSource_Response: Canonical {
  public static let maximumWireBytes = 28
  public static let codecIdentity =
    "UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb"
  public static let nativeType = "aimdk_msgs/srv/SetMcInputSource_Response"
  public static let nativeIdentity: String? = nil
  public var `response`: Ros2Aimdk_msgsMsgCommonTaskResponse = Ros2Aimdk_msgsMsgCommonTaskResponse()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`response`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Aimdk_msgsSrvSetMcInputSource_Response
  {
    var v = Ros2Aimdk_msgsSrvSetMcInputSource_Response()
    v.`response` = try Ros2Aimdk_msgsMsgCommonTaskResponse.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvSetMcPresetMotion_Request: Canonical {
  public static let maximumWireBytes = 149
  public static let codecIdentity =
    "UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea"
  public static let nativeType = "aimdk_msgs/srv/SetMcPresetMotion_Request"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgRequestHeader = Ros2Aimdk_msgsMsgRequestHeader()
  public var `area`: Ros2Aimdk_msgsMsgMcControlArea = Ros2Aimdk_msgsMsgMcControlArea()
  public var `motion`: Ros2Aimdk_msgsMsgMcPresetMotion = Ros2Aimdk_msgsMsgMcPresetMotion()
  public var `interrupt`: Bool = false
  public var `ani_path`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`area`.write(to: &w)
    try self.`motion`.write(to: &w)
    try w.boolean(self.`interrupt`)
    try w.string(self.`ani_path`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
  {
    var v = Ros2Aimdk_msgsSrvSetMcPresetMotion_Request()
    v.`header` = try Ros2Aimdk_msgsMsgRequestHeader.read(from: &r)
    v.`area` = try Ros2Aimdk_msgsMsgMcControlArea.read(from: &r)
    v.`motion` = try Ros2Aimdk_msgsMsgMcPresetMotion.read(from: &r)
    v.`interrupt` = try r.boolean()
    v.`ani_path` = try r.string(bound: 128)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvSetMcPresetMotion_Response: Canonical {
  public static let maximumWireBytes = 28
  public static let codecIdentity =
    "UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85"
  public static let nativeType = "aimdk_msgs/srv/SetMcPresetMotion_Response"
  public static let nativeIdentity: String? = nil
  public var `response`: Ros2Aimdk_msgsMsgCommonTaskResponse = Ros2Aimdk_msgsMsgCommonTaskResponse()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`response`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Aimdk_msgsSrvSetMcPresetMotion_Response
  {
    var v = Ros2Aimdk_msgsSrvSetMcPresetMotion_Response()
    v.`response` = try Ros2Aimdk_msgsMsgCommonTaskResponse.read(from: &r)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvSetMute_Request: Canonical {
  public static let maximumWireBytes = 9
  public static let codecIdentity =
    "UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3"
  public static let nativeType = "aimdk_msgs/srv/SetMute_Request"
  public static let nativeIdentity: String? = nil
  public var `request`: Ros2Aimdk_msgsMsgCommonRequest = Ros2Aimdk_msgsMsgCommonRequest()
  public var `is_mute`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`request`.write(to: &w)
    try w.boolean(self.`is_mute`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvSetMute_Request {
    var v = Ros2Aimdk_msgsSrvSetMute_Request()
    v.`request` = try Ros2Aimdk_msgsMsgCommonRequest.read(from: &r)
    v.`is_mute` = try r.boolean()
    return v
  }
}
public struct Ros2Aimdk_msgsSrvSetMute_Response: Canonical {
  public static let maximumWireBytes = 153
  public static let codecIdentity =
    "UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50"
  public static let nativeType = "aimdk_msgs/srv/SetMute_Response"
  public static let nativeIdentity: String? = nil
  public var `reponse`: Ros2Aimdk_msgsMsgCommonResponse = Ros2Aimdk_msgsMsgCommonResponse()
  public var `is_mute`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`reponse`.write(to: &w)
    try w.boolean(self.`is_mute`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvSetMute_Response {
    var v = Ros2Aimdk_msgsSrvSetMute_Response()
    v.`reponse` = try Ros2Aimdk_msgsMsgCommonResponse.read(from: &r)
    v.`is_mute` = try r.boolean()
    return v
  }
}
public struct Ros2Aimdk_msgsSrvSetVolume_Request: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad"
  public static let nativeType = "aimdk_msgs/srv/SetVolume_Request"
  public static let nativeIdentity: String? = nil
  public var `request`: Ros2Aimdk_msgsMsgCommonRequest = Ros2Aimdk_msgsMsgCommonRequest()
  public var `audio_volume`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`request`.write(to: &w)
    try w.integer(self.`audio_volume`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvSetVolume_Request {
    var v = Ros2Aimdk_msgsSrvSetVolume_Request()
    v.`request` = try Ros2Aimdk_msgsMsgCommonRequest.read(from: &r)
    v.`audio_volume` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros2Aimdk_msgsSrvSetVolume_Response: Canonical {
  public static let maximumWireBytes = 156
  public static let codecIdentity =
    "UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e"
  public static let nativeType = "aimdk_msgs/srv/SetVolume_Response"
  public static let nativeIdentity: String? = nil
  public var `reponse`: Ros2Aimdk_msgsMsgCommonResponse = Ros2Aimdk_msgsMsgCommonResponse()
  public var `audio_volume`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`reponse`.write(to: &w)
    try w.integer(self.`audio_volume`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsSrvSetVolume_Response {
    var v = Ros2Aimdk_msgsSrvSetVolume_Response()
    v.`reponse` = try Ros2Aimdk_msgsMsgCommonResponse.read(from: &r)
    v.`audio_volume` = try r.integer(UInt32.self)
    return v
  }
}
