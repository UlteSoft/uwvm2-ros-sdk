// @file Records.swift
// @brief Full agibot swift codecs and original record metadata.
// @details Complete agibot ros2_sdk_v1_1_0_rl values in swift. 19 original records retain 71 fields and 19
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/agibot/en_US/catalog/.
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
public struct Ros2Aimdk_msgsMsgDomainErrorState: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231"
  public static let nativeType = "aimdk_msgs/msg/DomainErrorState"
  public static let nativeIdentity: String? = nil
  public static let `NONE`: UInt8 = 0
  public static let `DAMPING`: UInt8 = 1
  public static let `POWERDOWN`: UInt8 = 2
  public static let `DISABLE`: UInt8 = 3
  public static let `DISCONNECT`: UInt8 = 4
  public var `value`: UInt8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgDomainErrorState {
    var v = Ros2Aimdk_msgsMsgDomainErrorState()
    v.`value` = try r.integer(UInt8.self)
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
  public static let maximumWireBytes = 158
  public static let codecIdentity =
    "UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53"
  public static let nativeType = "aimdk_msgs/msg/JointState"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `position`: Double = 0
  public var `velocity`: Double = 0
  public var `effort`: Double = 0
  public var `error_code`: UInt16 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 128)
    try w.float64(self.`position`)
    try w.float64(self.`velocity`)
    try w.float64(self.`effort`)
    try w.integer(self.`error_code`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgJointState {
    var v = Ros2Aimdk_msgsMsgJointState()
    v.`name` = try r.string(bound: 128)
    v.`position` = try r.float64()
    v.`velocity` = try r.float64()
    v.`effort` = try r.float64()
    v.`error_code` = try r.integer(UInt16.self)
    return v
  }
}
public struct Ros2Aimdk_msgsMsgJointStateArray: Canonical {
  public static let maximumWireBytes = 10269
  public static let codecIdentity =
    "UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e"
  public static let nativeType = "aimdk_msgs/msg/JointStateArray"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgMessageHeader = Ros2Aimdk_msgsMsgMessageHeader()
  public var `state`: Ros2Aimdk_msgsMsgDomainErrorState = Ros2Aimdk_msgsMsgDomainErrorState()
  public var `joints`: [Ros2Aimdk_msgsMsgJointState] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`state`.write(to: &w)
    guard self.`joints`.count <= 64 else { throw RosError(22) }
    try w.integer(UInt32(self.`joints`.count))
    for e in self.`joints` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgJointStateArray {
    var v = Ros2Aimdk_msgsMsgJointStateArray()
    v.`header` = try Ros2Aimdk_msgsMsgMessageHeader.read(from: &r)
    v.`state` = try Ros2Aimdk_msgsMsgDomainErrorState.read(from: &r)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 64 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`joints` = []
    v.`joints`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`joints`.append(try Ros2Aimdk_msgsMsgJointState.read(from: &r))
    }
    return v
  }
}
public struct Ros2Aimdk_msgsMsgModuleChannelInfo: Canonical {
  public static let maximumWireBytes = 586
  public static let codecIdentity =
    "UWVMROS1_d6cfacaf7cd28f18d14ef270b868b354e896f937181c8d29279e1eac21990696"
  public static let nativeType = "aimdk_msgs/msg/ModuleChannelInfo"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `type`: String = ""
  public var `frequency`: Double = 0
  public var `min_time_diff`: Double = 0
  public var `max_time_diff`: Double = 0
  public var `std_dev`: Double = 0
  public var `window_size`: Int32 = 0
  public var `timeout_threshold`: Double = 0
  public var `is_active`: Bool = false
  public var `is_timeout`: Bool = false
  public var `backends`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 128)
    try w.string(self.`type`, bound: 128)
    try w.float64(self.`frequency`)
    try w.float64(self.`min_time_diff`)
    try w.float64(self.`max_time_diff`)
    try w.float64(self.`std_dev`)
    try w.integer(self.`window_size`)
    try w.float64(self.`timeout_threshold`)
    try w.boolean(self.`is_active`)
    try w.boolean(self.`is_timeout`)
    guard self.`backends`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`backends`.count))
    for e in self.`backends` {
      try w.string(e, bound: 64)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgModuleChannelInfo {
    var v = Ros2Aimdk_msgsMsgModuleChannelInfo()
    v.`name` = try r.string(bound: 128)
    v.`type` = try r.string(bound: 128)
    v.`frequency` = try r.float64()
    v.`min_time_diff` = try r.float64()
    v.`max_time_diff` = try r.float64()
    v.`std_dev` = try r.float64()
    v.`window_size` = try r.integer(Int32.self)
    v.`timeout_threshold` = try r.float64()
    v.`is_active` = try r.boolean()
    v.`is_timeout` = try r.boolean()
    let rawcount10 = try r.integer(UInt32.self)
    guard rawcount10 <= 4 else { throw RosError(22) }
    let count10 = Int(rawcount10)
    v.`backends` = []
    v.`backends`.reserveCapacity(count10)
    for _ in 0..<count10 {
      v.`backends`.append(try r.string(bound: 64))
    }
    return v
  }
}
public struct Ros2Aimdk_msgsMsgModuleRpcInfo: Canonical {
  public static let maximumWireBytes = 672
  public static let codecIdentity =
    "UWVMROS1_e06e5cd98eaa4f17cebd95db53f6aa175cdc3682f3912f365947f8f8950d02d8"
  public static let nativeType = "aimdk_msgs/msg/ModuleRpcInfo"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `req_type`: String = ""
  public var `res_type`: String = ""
  public var `backends`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 128)
    try w.string(self.`req_type`, bound: 128)
    try w.string(self.`res_type`, bound: 128)
    guard self.`backends`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`backends`.count))
    for e in self.`backends` {
      try w.string(e, bound: 64)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgModuleRpcInfo {
    var v = Ros2Aimdk_msgsMsgModuleRpcInfo()
    v.`name` = try r.string(bound: 128)
    v.`req_type` = try r.string(bound: 128)
    v.`res_type` = try r.string(bound: 128)
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 4 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`backends` = []
    v.`backends`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`backends`.append(try r.string(bound: 64))
    }
    return v
  }
}
public struct Ros2Aimdk_msgsMsgModuleResourceInfo: Canonical {
  public static let maximumWireBytes = 5180
  public static let codecIdentity =
    "UWVMROS1_de2a3067e5bff40e7bd9949ce9923b6be34c8f822f74a036402a9253717aaa8f"
  public static let nativeType = "aimdk_msgs/msg/ModuleResourceInfo"
  public static let nativeIdentity: String? = nil
  public var `module_name`: String = ""
  public var `rpc_clients`: [Ros2Aimdk_msgsMsgModuleRpcInfo] = []
  public var `rpc_services`: [Ros2Aimdk_msgsMsgModuleRpcInfo] = []
  public var `pub_channels`: [Ros2Aimdk_msgsMsgModuleChannelInfo] = []
  public var `sub_channels`: [Ros2Aimdk_msgsMsgModuleChannelInfo] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`module_name`, bound: 128)
    guard self.`rpc_clients`.count <= 2 else { throw RosError(22) }
    try w.integer(UInt32(self.`rpc_clients`.count))
    for e in self.`rpc_clients` {
      try e.write(to: &w)
    }
    guard self.`rpc_services`.count <= 2 else { throw RosError(22) }
    try w.integer(UInt32(self.`rpc_services`.count))
    for e in self.`rpc_services` {
      try e.write(to: &w)
    }
    guard self.`pub_channels`.count <= 2 else { throw RosError(22) }
    try w.integer(UInt32(self.`pub_channels`.count))
    for e in self.`pub_channels` {
      try e.write(to: &w)
    }
    guard self.`sub_channels`.count <= 2 else { throw RosError(22) }
    try w.integer(UInt32(self.`sub_channels`.count))
    for e in self.`sub_channels` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgModuleResourceInfo {
    var v = Ros2Aimdk_msgsMsgModuleResourceInfo()
    v.`module_name` = try r.string(bound: 128)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 2 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`rpc_clients` = []
    v.`rpc_clients`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`rpc_clients`.append(try Ros2Aimdk_msgsMsgModuleRpcInfo.read(from: &r))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 2 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`rpc_services` = []
    v.`rpc_services`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`rpc_services`.append(try Ros2Aimdk_msgsMsgModuleRpcInfo.read(from: &r))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 2 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`pub_channels` = []
    v.`pub_channels`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`pub_channels`.append(try Ros2Aimdk_msgsMsgModuleChannelInfo.read(from: &r))
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 2 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`sub_channels` = []
    v.`sub_channels`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`sub_channels`.append(try Ros2Aimdk_msgsMsgModuleChannelInfo.read(from: &r))
    }
    return v
  }
}
public struct Ros2Aimdk_msgsMsgThreadResourceInfo: Canonical {
  public static let maximumWireBytes = 352
  public static let codecIdentity =
    "UWVMROS1_7232a79e41b62d823fd87d761df60759839543aedbe5fa338fb46816687a0a15"
  public static let nativeType = "aimdk_msgs/msg/ThreadResourceInfo"
  public static let nativeIdentity: String? = nil
  public var `thread_id`: UInt64 = 0
  public var `thread_name`: String = ""
  public var `cpu_usage_ratio`: Double = 0
  public var `cpu_sched_policy`: String = ""
  public var `cpu_sched_priority`: Int32 = 0
  public var `bounding_cpus`: [Int32] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`thread_id`)
    try w.string(self.`thread_name`, bound: 128)
    try w.float64(self.`cpu_usage_ratio`)
    try w.string(self.`cpu_sched_policy`, bound: 128)
    try w.integer(self.`cpu_sched_priority`)
    guard self.`bounding_cpus`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`bounding_cpus`.count))
    for e in self.`bounding_cpus` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgThreadResourceInfo {
    var v = Ros2Aimdk_msgsMsgThreadResourceInfo()
    v.`thread_id` = try r.integer(UInt64.self)
    v.`thread_name` = try r.string(bound: 128)
    v.`cpu_usage_ratio` = try r.float64()
    v.`cpu_sched_policy` = try r.string(bound: 128)
    v.`cpu_sched_priority` = try r.integer(Int32.self)
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 16 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`bounding_cpus` = []
    v.`bounding_cpus`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`bounding_cpus`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros2Aimdk_msgsMsgProcessResourceInfo: Canonical {
  public static let maximumWireBytes = 1584
  public static let codecIdentity =
    "UWVMROS1_90b5f60525abc33814dfc7e3f7e6af23c7f43a232d74a904bd06f20d27ef9550"
  public static let nativeType = "aimdk_msgs/msg/ProcessResourceInfo"
  public static let nativeIdentity: String? = nil
  public var `process_id`: UInt64 = 0
  public var `process_name`: String = ""
  public var `process_mem_usage`: UInt64 = 0
  public var `process_mem_usage_ratio`: Double = 0
  public var `process_cpu_usage_ratio`: Double = 0
  public var `thread_count`: UInt64 = 0
  public var `threads`: [Ros2Aimdk_msgsMsgThreadResourceInfo] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`process_id`)
    try w.string(self.`process_name`, bound: 128)
    try w.integer(self.`process_mem_usage`)
    try w.float64(self.`process_mem_usage_ratio`)
    try w.float64(self.`process_cpu_usage_ratio`)
    try w.integer(self.`thread_count`)
    guard self.`threads`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`threads`.count))
    for e in self.`threads` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgProcessResourceInfo {
    var v = Ros2Aimdk_msgsMsgProcessResourceInfo()
    v.`process_id` = try r.integer(UInt64.self)
    v.`process_name` = try r.string(bound: 128)
    v.`process_mem_usage` = try r.integer(UInt64.self)
    v.`process_mem_usage_ratio` = try r.float64()
    v.`process_cpu_usage_ratio` = try r.float64()
    v.`thread_count` = try r.integer(UInt64.self)
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 4 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`threads` = []
    v.`threads`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`threads`.append(try Ros2Aimdk_msgsMsgThreadResourceInfo.read(from: &r))
    }
    return v
  }
}
public struct Ros2Aimdk_msgsMsgProcessInfo: Canonical {
  public static let maximumWireBytes = 12232
  public static let codecIdentity =
    "UWVMROS1_190d10dc74d66eecf65495e2795525b4f6016bb3efde2f16310e54287e703996"
  public static let nativeType = "aimdk_msgs/msg/ProcessInfo"
  public static let nativeIdentity: String? = nil
  public var `header`: Ros2Aimdk_msgsMsgMessageHeader = Ros2Aimdk_msgsMsgMessageHeader()
  public var `app_name`: String = ""
  public var `resource`: Ros2Aimdk_msgsMsgProcessResourceInfo =
    Ros2Aimdk_msgsMsgProcessResourceInfo()
  public var `modules`: [Ros2Aimdk_msgsMsgModuleResourceInfo] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try w.string(self.`app_name`, bound: 128)
    try self.`resource`.write(to: &w)
    guard self.`modules`.count <= 2 else { throw RosError(22) }
    try w.integer(UInt32(self.`modules`.count))
    for e in self.`modules` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Aimdk_msgsMsgProcessInfo {
    var v = Ros2Aimdk_msgsMsgProcessInfo()
    v.`header` = try Ros2Aimdk_msgsMsgMessageHeader.read(from: &r)
    v.`app_name` = try r.string(bound: 128)
    v.`resource` = try Ros2Aimdk_msgsMsgProcessResourceInfo.read(from: &r)
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 2 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`modules` = []
    v.`modules`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`modules`.append(try Ros2Aimdk_msgsMsgModuleResourceInfo.read(from: &r))
    }
    return v
  }
}
