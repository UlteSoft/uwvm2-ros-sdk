/// @file Records.swift
/// @brief Complete doosan values and adapters for the selected original interface catalog.
/// @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
/// defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
/// roles require the separately admitted SDK owner.
/// @see share/platform/doosan/domains/doosan-ros1-aws-robot-complete.ir.json
/// @see document/platform/doosan/en_US/README.md

// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros1Dsr_msgsConfigCreateModbusRequest: Canonical {
  public static let maximumWireBytes = 531
  public static let codecIdentity =
    "UWVMROS1_67fe218ec3ea51f74df38d696c95b24f4f64dcdeb6652b618ec327133a1fc29f"
  public static let nativeType = "dsr_msgs/ConfigCreateModbusRequest"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `ip`: String = ""
  public var `port`: Int32 = 0
  public var `reg_type`: Int8 = 0
  public var `index`: Int8 = 0
  public var `value`: Int8 = 0
  public var `slave_id`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
    try w.string(self.`ip`, bound: 256)
    try w.integer(self.`port`)
    try w.integer(self.`reg_type`)
    try w.integer(self.`index`)
    try w.integer(self.`value`)
    try w.integer(self.`slave_id`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsConfigCreateModbusRequest
  {
    var v = Ros1Dsr_msgsConfigCreateModbusRequest()
    v.`name` = try r.string(bound: 256)
    v.`ip` = try r.string(bound: 256)
    v.`port` = try r.integer(Int32.self)
    v.`reg_type` = try r.integer(Int8.self)
    v.`index` = try r.integer(Int8.self)
    v.`value` = try r.integer(Int8.self)
    v.`slave_id` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dsr_msgsConfigCreateModbusResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_13243e4aeefdebf38671fc24f7059daf3597cdebcbc1a6ffd315d3edab3dfc2f"
  public static let nativeType = "dsr_msgs/ConfigCreateModbusResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsConfigCreateModbusResponse
  {
    var v = Ros1Dsr_msgsConfigCreateModbusResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsConfigCreateTcpRequest: Canonical {
  public static let maximumWireBytes = 308
  public static let codecIdentity =
    "UWVMROS1_afd19140176d214b18610297e53a7606a78cefd366dc01bb6baf05d72795e744"
  public static let nativeType = "dsr_msgs/ConfigCreateTcpRequest"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsConfigCreateTcpRequest {
    var v = Ros1Dsr_msgsConfigCreateTcpRequest()
    v.`name` = try r.string(bound: 256)
    let count1 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`pos`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Dsr_msgsConfigCreateTcpResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_768b2341613afaecf36342ebe26060e2c41ebd8fd4404d0394065c0d0ea6c948"
  public static let nativeType = "dsr_msgs/ConfigCreateTcpResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsConfigCreateTcpResponse {
    var v = Ros1Dsr_msgsConfigCreateTcpResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsConfigCreateToolRequest: Canonical {
  public static let maximumWireBytes = 340
  public static let codecIdentity =
    "UWVMROS1_ade17ea7096f6309da57a5d9e0be362562551da27bbc1508aac8e2d3c3afcd44"
  public static let nativeType = "dsr_msgs/ConfigCreateToolRequest"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `weight`: Double = 0
  public var `cog`: [Double] = Array(repeating: 0, count: 3)
  public var `inertia`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
    try w.float64(self.`weight`)
    guard self.`cog`.count == 3 else { throw RosError(22) }
    for e in self.`cog` {
      try w.float64(e)
    }
    guard self.`inertia`.count == 6 else { throw RosError(22) }
    for e in self.`inertia` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsConfigCreateToolRequest {
    var v = Ros1Dsr_msgsConfigCreateToolRequest()
    v.`name` = try r.string(bound: 256)
    v.`weight` = try r.float64()
    let count2 = 3
    v.`cog` = []
    v.`cog`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`cog`.append(try r.float64())
    }
    let count3 = 6
    v.`inertia` = []
    v.`inertia`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`inertia`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Dsr_msgsConfigCreateToolResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_6ed584718ae8c0b9d3946007cfcc713e58f867d3b6b6bfdcabc7ffc126f98a9b"
  public static let nativeType = "dsr_msgs/ConfigCreateToolResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsConfigCreateToolResponse {
    var v = Ros1Dsr_msgsConfigCreateToolResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsConfigDeleteModbusRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_d2007f4aa533a46244a6924762b701f84c31f5c9d19495a745e35c6fdd55d96b"
  public static let nativeType = "dsr_msgs/ConfigDeleteModbusRequest"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsConfigDeleteModbusRequest
  {
    var v = Ros1Dsr_msgsConfigDeleteModbusRequest()
    v.`name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dsr_msgsConfigDeleteModbusResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e3f8b3da769c249f0064ee118d26d7154a31e2dd5e65417d01f1524baa317c4e"
  public static let nativeType = "dsr_msgs/ConfigDeleteModbusResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsConfigDeleteModbusResponse
  {
    var v = Ros1Dsr_msgsConfigDeleteModbusResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsConfigDeleteTcpRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_096510681530cdda07b413a426fcf0ad5ca98e657a5d7612c1f497893fa96de4"
  public static let nativeType = "dsr_msgs/ConfigDeleteTcpRequest"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsConfigDeleteTcpRequest {
    var v = Ros1Dsr_msgsConfigDeleteTcpRequest()
    v.`name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dsr_msgsConfigDeleteTcpResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_5842def73643bf4621c17fbfa2ecd19cfec7a5c9c4ce9b954c72e0be846cebe5"
  public static let nativeType = "dsr_msgs/ConfigDeleteTcpResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsConfigDeleteTcpResponse {
    var v = Ros1Dsr_msgsConfigDeleteTcpResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsConfigDeleteToolRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_be7ab4ae62ab38dd1c31f4cb96303edf98511e369ef64476f835e23b7b6168f3"
  public static let nativeType = "dsr_msgs/ConfigDeleteToolRequest"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsConfigDeleteToolRequest {
    var v = Ros1Dsr_msgsConfigDeleteToolRequest()
    v.`name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dsr_msgsConfigDeleteToolResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_0e0708c161ba1aeeb9c7e96e77434eb7ba7c9c77eba230e5488f59b34fd8f780"
  public static let nativeType = "dsr_msgs/ConfigDeleteToolResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsConfigDeleteToolResponse {
    var v = Ros1Dsr_msgsConfigDeleteToolResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsDrlPauseRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_e8e6c075432920d6650a5dddc31fd33f7a1688ce99264113be7d0675378eb120"
  public static let nativeType = "dsr_msgs/DrlPauseRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsDrlPauseRequest {
    var v = Ros1Dsr_msgsDrlPauseRequest()
    return v
  }
}
public struct Ros1Dsr_msgsDrlPauseResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_9a448d82cb77115d43abe062d8f1bbb904ab680a98cf4d95b025eedd3deca0bb"
  public static let nativeType = "dsr_msgs/DrlPauseResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsDrlPauseResponse {
    var v = Ros1Dsr_msgsDrlPauseResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsDrlResumeRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_11d5e8618dacde2d4f9ee2b9e7ee6306396e7495003bc31d9bd02a2438232713"
  public static let nativeType = "dsr_msgs/DrlResumeRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsDrlResumeRequest {
    var v = Ros1Dsr_msgsDrlResumeRequest()
    return v
  }
}
public struct Ros1Dsr_msgsDrlResumeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_40fdc65739450e3c8e0af52f69623624dac33620feda55065587e8e8a1d9a05a"
  public static let nativeType = "dsr_msgs/DrlResumeResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsDrlResumeResponse {
    var v = Ros1Dsr_msgsDrlResumeResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsDrlStartRequest: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_1f5f908c63b09780c6b68ef280f87328590e5eec3be18d98916137c0d2c42a65"
  public static let nativeType = "dsr_msgs/DrlStartRequest"
  public static let nativeIdentity: String? = nil
  public var `robotSystem`: Int8 = 0
  public var `code`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`robotSystem`)
    try w.string(self.`code`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsDrlStartRequest {
    var v = Ros1Dsr_msgsDrlStartRequest()
    v.`robotSystem` = try r.integer(Int8.self)
    v.`code` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dsr_msgsDrlStartResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_2e39df1817ac076c895b43f565515db035ba300f4433b8635976b20713d98d76"
  public static let nativeType = "dsr_msgs/DrlStartResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsDrlStartResponse {
    var v = Ros1Dsr_msgsDrlStartResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsDrlStopRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_5be1c9f2284e5244660cfcb60632921bb5db1440536a5030e8d4c93c15704f9b"
  public static let nativeType = "dsr_msgs/DrlStopRequest"
  public static let nativeIdentity: String? = nil
  public var `stop_mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`stop_mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsDrlStopRequest {
    var v = Ros1Dsr_msgsDrlStopRequest()
    v.`stop_mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsDrlStopResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_0f2cf2aff2ce20b984c602673fdf51ec38ef81820171e1c08e8c9c07d536a988"
  public static let nativeType = "dsr_msgs/DrlStopResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsDrlStopResponse {
    var v = Ros1Dsr_msgsDrlStopResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_0cfaa9f68b92deff18c68d7def4dda13dcd1082065218cc0af1ef8909a35898a"
  public static let nativeType = "dsr_msgs/GetCtrlBoxAnalogInputRequest"
  public static let nativeIdentity: String? = nil
  public var `channel`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`channel`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest
  {
    var v = Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest()
    v.`channel` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_53fc14db79f9c63ee04e5e055961e397d6ceefa553e0912c4c944f858376b4b2"
  public static let nativeType = "dsr_msgs/GetCtrlBoxAnalogInputResponse"
  public static let nativeIdentity: String? = nil
  public var `value`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse
  {
    var v = Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse()
    v.`value` = try r.float64()
    return v
  }
}
public struct Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_43410710b24f4ef8aeb4533a0d45babb2adf93890d72c08ec45b1062e0d83f7e"
  public static let nativeType = "dsr_msgs/GetCtrlBoxDigitalInputRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest
  {
    var v = Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest()
    v.`index` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_b24172ba7a1d82456b33bcbfccde50c1e0a40d4ce870dae704c00a553591a6a2"
  public static let nativeType = "dsr_msgs/GetCtrlBoxDigitalInputResponse"
  public static let nativeIdentity: String? = nil
  public var `value`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse
  {
    var v = Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse()
    v.`value` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetCurrentPoseRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_674feef59812a37871c3022be9d588ffa67178430be01f47a4e3bca86766b72b"
  public static let nativeType = "dsr_msgs/GetCurrentPoseRequest"
  public static let nativeIdentity: String? = nil
  public var `space_type`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`space_type`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetCurrentPoseRequest {
    var v = Ros1Dsr_msgsGetCurrentPoseRequest()
    v.`space_type` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetCurrentPoseResponse: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_cae2a551df6b2c548e171cdb181bbbe1fcbfe9fc3039b68f4edab2043ef8b9d6"
  public static let nativeType = "dsr_msgs/GetCurrentPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetCurrentPoseResponse {
    var v = Ros1Dsr_msgsGetCurrentPoseResponse()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Dsr_msgsGetCurrentSolutionSpaceRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_303fe75ff690897d18296dfb34aad4b0482e372656ed5c85bf9d60bb1832af78"
  public static let nativeType = "dsr_msgs/GetCurrentSolutionSpaceRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsGetCurrentSolutionSpaceRequest
  {
    var v = Ros1Dsr_msgsGetCurrentSolutionSpaceRequest()
    return v
  }
}
public struct Ros1Dsr_msgsGetCurrentSolutionSpaceResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_57e390c7f039b26fc69fe35d07420ee94084ce9d9531e7e8c6d6a09729b5986f"
  public static let nativeType = "dsr_msgs/GetCurrentSolutionSpaceResponse"
  public static let nativeIdentity: String? = nil
  public var `solution_space`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`solution_space`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsGetCurrentSolutionSpaceResponse
  {
    var v = Ros1Dsr_msgsGetCurrentSolutionSpaceResponse()
    v.`solution_space` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetCurrentTcpRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_f2a902cbf141335bb559f739861860de93f07d3ed3200ba91833b831389eb3b8"
  public static let nativeType = "dsr_msgs/GetCurrentTcpRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetCurrentTcpRequest {
    var v = Ros1Dsr_msgsGetCurrentTcpRequest()
    return v
  }
}
public struct Ros1Dsr_msgsGetCurrentTcpResponse: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_8076cd565188d0adcda508a0637b240969a434a924daeed7cf3b7e442b901ee3"
  public static let nativeType = "dsr_msgs/GetCurrentTcpResponse"
  public static let nativeIdentity: String? = nil
  public var `info`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`info`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetCurrentTcpResponse {
    var v = Ros1Dsr_msgsGetCurrentTcpResponse()
    v.`info` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dsr_msgsGetCurrentToolRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_0d86dff574728cebfb33a873845e9563665d4173267adbc6fd7f542d26b15970"
  public static let nativeType = "dsr_msgs/GetCurrentToolRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetCurrentToolRequest {
    var v = Ros1Dsr_msgsGetCurrentToolRequest()
    return v
  }
}
public struct Ros1Dsr_msgsGetCurrentToolResponse: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_8afef46263fd34fe71e4c33d9add7d71672cb9d95aa237a60e17c3c3cdd58e43"
  public static let nativeType = "dsr_msgs/GetCurrentToolResponse"
  public static let nativeIdentity: String? = nil
  public var `info`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`info`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetCurrentToolResponse {
    var v = Ros1Dsr_msgsGetCurrentToolResponse()
    v.`info` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dsr_msgsGetDrlStateRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_425ce8ba966c52337c8d06a8436d593e8333a33cdb21ecdb983df3db9980d51f"
  public static let nativeType = "dsr_msgs/GetDrlStateRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetDrlStateRequest {
    var v = Ros1Dsr_msgsGetDrlStateRequest()
    return v
  }
}
public struct Ros1Dsr_msgsGetDrlStateResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d8238b34c53f1da07057059fadfc1bbc767be38453b0410a90bccb84d99d1a94"
  public static let nativeType = "dsr_msgs/GetDrlStateResponse"
  public static let nativeIdentity: String? = nil
  public var `drl_state`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`drl_state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetDrlStateResponse {
    var v = Ros1Dsr_msgsGetDrlStateResponse()
    v.`drl_state` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetExternalTorqueRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_601bfc2f1283520f2dd76e3f0eee05c02e584873e22b2188f6206cc22d96ee11"
  public static let nativeType = "dsr_msgs/GetExternalTorqueRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetExternalTorqueRequest {
    var v = Ros1Dsr_msgsGetExternalTorqueRequest()
    return v
  }
}
public struct Ros1Dsr_msgsGetExternalTorqueResponse: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_52c063acee790649e0e439390ee3c8bd4e7ac2a124911093ba0fd00f06a07ff2"
  public static let nativeType = "dsr_msgs/GetExternalTorqueResponse"
  public static let nativeIdentity: String? = nil
  public var `ext_torque`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`ext_torque`.count == 6 else { throw RosError(22) }
    for e in self.`ext_torque` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetExternalTorqueResponse
  {
    var v = Ros1Dsr_msgsGetExternalTorqueResponse()
    let count0 = 6
    v.`ext_torque` = []
    v.`ext_torque`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`ext_torque`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Dsr_msgsGetJointTorqueRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_63dee3592e81bf9c2442ba8f01660710ef80c01c3ab55a73c35404da2d6da149"
  public static let nativeType = "dsr_msgs/GetJointTorqueRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetJointTorqueRequest {
    var v = Ros1Dsr_msgsGetJointTorqueRequest()
    return v
  }
}
public struct Ros1Dsr_msgsGetJointTorqueResponse: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_25bda80075428cb48858ba2ab3d38b52d4fe631596e919c001cf1a4f96391bf1"
  public static let nativeType = "dsr_msgs/GetJointTorqueResponse"
  public static let nativeIdentity: String? = nil
  public var `joint_torque`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_torque`.count == 6 else { throw RosError(22) }
    for e in self.`joint_torque` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetJointTorqueResponse {
    var v = Ros1Dsr_msgsGetJointTorqueResponse()
    let count0 = 6
    v.`joint_torque` = []
    v.`joint_torque`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_torque`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Dsr_msgsGetLastAlarmRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_4ff39c1f6b320245fd73e84755fe876eb12177c4a7b3ac3888d870ec5a761bdf"
  public static let nativeType = "dsr_msgs/GetLastAlarmRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetLastAlarmRequest {
    var v = Ros1Dsr_msgsGetLastAlarmRequest()
    return v
  }
}
public struct Ros1Dsr_msgsLogAlarm: Canonical {
  public static let maximumWireBytes = 792
  public static let codecIdentity =
    "UWVMROS1_39a6ecc178ed79ab41cd3948b6efb9666f66b0c33b6abe7845b1d16a17f9700f"
  public static let nativeType = "dsr_msgs/LogAlarm"
  public static let nativeIdentity: String? = nil
  public var `level`: Int32 = 0
  public var `group`: Int32 = 0
  public var `index`: Int32 = 0
  public var `param`: [String] = Array(repeating: "", count: 3)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`level`)
    try w.integer(self.`group`)
    try w.integer(self.`index`)
    guard self.`param`.count == 3 else { throw RosError(22) }
    for e in self.`param` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsLogAlarm {
    var v = Ros1Dsr_msgsLogAlarm()
    v.`level` = try r.integer(Int32.self)
    v.`group` = try r.integer(Int32.self)
    v.`index` = try r.integer(Int32.self)
    let count3 = 3
    v.`param` = []
    v.`param`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`param`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dsr_msgsGetLastAlarmResponse: Canonical {
  public static let maximumWireBytes = 792
  public static let codecIdentity =
    "UWVMROS1_cbf970486efc6fc6dbda7ecfd673f3642f228b27e1a406156d2592d71467995c"
  public static let nativeType = "dsr_msgs/GetLastAlarmResponse"
  public static let nativeIdentity: String? = nil
  public var `log_alarm`: Ros1Dsr_msgsLogAlarm = Ros1Dsr_msgsLogAlarm()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`log_alarm`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetLastAlarmResponse {
    var v = Ros1Dsr_msgsGetLastAlarmResponse()
    v.`log_alarm` = try Ros1Dsr_msgsLogAlarm.read(from: &r)
    return v
  }
}
public struct Ros1Dsr_msgsGetModbusInputRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_812e7d2d259db6a466dd304239aee910848a1fb9059c431f3495825d8ebe800c"
  public static let nativeType = "dsr_msgs/GetModbusInputRequest"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetModbusInputRequest {
    var v = Ros1Dsr_msgsGetModbusInputRequest()
    v.`name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dsr_msgsGetModbusInputResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_5a9baa85959370b7562c32510a9ebe6bd48ccb01b5d71d3898126e69fe60afb3"
  public static let nativeType = "dsr_msgs/GetModbusInputResponse"
  public static let nativeIdentity: String? = nil
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetModbusInputResponse {
    var v = Ros1Dsr_msgsGetModbusInputResponse()
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetRobotModeRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_228237c16ea308e25d1a5fb7f74713a31a67e6e1e6b0a94f06c30264ed90af90"
  public static let nativeType = "dsr_msgs/GetRobotModeRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetRobotModeRequest {
    var v = Ros1Dsr_msgsGetRobotModeRequest()
    return v
  }
}
public struct Ros1Dsr_msgsGetRobotModeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_3049e13cf2157e75860253953231b258ac495b2fc424aa2c6343fcf0f91044b5"
  public static let nativeType = "dsr_msgs/GetRobotModeResponse"
  public static let nativeIdentity: String? = nil
  public var `robot_mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`robot_mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetRobotModeResponse {
    var v = Ros1Dsr_msgsGetRobotModeResponse()
    v.`robot_mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetRobotSpeedModeRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_ff02ad740851d4dc6955206ffa3556f6564854bd6edd6a8190ce44f8ba9709d4"
  public static let nativeType = "dsr_msgs/GetRobotSpeedModeRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetRobotSpeedModeRequest {
    var v = Ros1Dsr_msgsGetRobotSpeedModeRequest()
    return v
  }
}
public struct Ros1Dsr_msgsGetRobotSpeedModeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e67a5a94c55ea30657ecdf83201cac431e89c11817bb12831d31023d4fd2cec1"
  public static let nativeType = "dsr_msgs/GetRobotSpeedModeResponse"
  public static let nativeIdentity: String? = nil
  public var `speed_mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`speed_mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetRobotSpeedModeResponse
  {
    var v = Ros1Dsr_msgsGetRobotSpeedModeResponse()
    v.`speed_mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetRobotStateRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_b773b6fe4f08ade05cc0bac7e0d70cb7edcfa763f83608d944bf072da4ad08bc"
  public static let nativeType = "dsr_msgs/GetRobotStateRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetRobotStateRequest {
    var v = Ros1Dsr_msgsGetRobotStateRequest()
    return v
  }
}
public struct Ros1Dsr_msgsGetRobotStateResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_2fdea6418150a77db99b9e1bcecb11a9a10f826690b18853d6adfbdc2b6f8d4d"
  public static let nativeType = "dsr_msgs/GetRobotStateResponse"
  public static let nativeIdentity: String? = nil
  public var `robot_state`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`robot_state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetRobotStateResponse {
    var v = Ros1Dsr_msgsGetRobotStateResponse()
    v.`robot_state` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetRobotSystemRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_43cc52a8d4b5e36ace679eb3f5bad943b3052bb0dec9f8af6f58f2d5c7deb203"
  public static let nativeType = "dsr_msgs/GetRobotSystemRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetRobotSystemRequest {
    var v = Ros1Dsr_msgsGetRobotSystemRequest()
    return v
  }
}
public struct Ros1Dsr_msgsGetRobotSystemResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_ecdbadad1fa8a9e22bf20bbb5c7aa489b739a6d0ef725ea20e37d50feb92a570"
  public static let nativeType = "dsr_msgs/GetRobotSystemResponse"
  public static let nativeIdentity: String? = nil
  public var `robot_system`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`robot_system`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetRobotSystemResponse {
    var v = Ros1Dsr_msgsGetRobotSystemResponse()
    v.`robot_system` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetToolDigitalInputRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_a8fa1714fc6c5d9082f6909ad8562c87e1bd95e40168701c1dc670e614b5dd70"
  public static let nativeType = "dsr_msgs/GetToolDigitalInputRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetToolDigitalInputRequest
  {
    var v = Ros1Dsr_msgsGetToolDigitalInputRequest()
    v.`index` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetToolDigitalInputResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_ee2a97dbab5eb6f818d5165e68ebc9077f8ebae391f79445f35205158e0d7f92"
  public static let nativeType = "dsr_msgs/GetToolDigitalInputResponse"
  public static let nativeIdentity: String? = nil
  public var `value`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsGetToolDigitalInputResponse
  {
    var v = Ros1Dsr_msgsGetToolDigitalInputResponse()
    v.`value` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetToolForceRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_27ccf47d48432cce678c6dad5ecff2aac258f4b17e4172556fa05183bc5111b7"
  public static let nativeType = "dsr_msgs/GetToolForceRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetToolForceRequest {
    var v = Ros1Dsr_msgsGetToolForceRequest()
    return v
  }
}
public struct Ros1Dsr_msgsGetToolForceResponse: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_752d1690a4d3b7b6842ce45d1ae599de4cbfdde9bf7da96193cbf3a9e4205026"
  public static let nativeType = "dsr_msgs/GetToolForceResponse"
  public static let nativeIdentity: String? = nil
  public var `tool_force`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`tool_force`.count == 6 else { throw RosError(22) }
    for e in self.`tool_force` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetToolForceResponse {
    var v = Ros1Dsr_msgsGetToolForceResponse()
    let count0 = 6
    v.`tool_force` = []
    v.`tool_force`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`tool_force`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Dsr_msgsJogRequest: Canonical {
  public static let maximumWireBytes = 10
  public static let codecIdentity =
    "UWVMROS1_28c6930998059030e74613930bd86066b3a37a490f7f438395eed15570617f7a"
  public static let nativeType = "dsr_msgs/JogRequest"
  public static let nativeIdentity: String? = nil
  public var `jog_axis`: Int8 = 0
  public var `move_reference`: Int8 = 0
  public var `speed`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`jog_axis`)
    try w.integer(self.`move_reference`)
    try w.float64(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsJogRequest {
    var v = Ros1Dsr_msgsJogRequest()
    v.`jog_axis` = try r.integer(Int8.self)
    v.`move_reference` = try r.integer(Int8.self)
    v.`speed` = try r.float64()
    return v
  }
}
public struct Ros1Dsr_msgsJogResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_f87fba5fb96bd9ae52d16a519b20ca7ea2c17560b15bd8543a9484282e1967d7"
  public static let nativeType = "dsr_msgs/JogResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsJogResponse {
    var v = Ros1Dsr_msgsJogResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsJogMultiRequest: Canonical {
  public static let maximumWireBytes = 57
  public static let codecIdentity =
    "UWVMROS1_f24271474302516dfce0dde848b2420490c35800b12d2fbdf5250ebbffc25cea"
  public static let nativeType = "dsr_msgs/JogMultiRequest"
  public static let nativeIdentity: String? = nil
  public var `jog_axis`: [Double] = Array(repeating: 0, count: 6)
  public var `move_reference`: Int8 = 0
  public var `speed`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`jog_axis`.count == 6 else { throw RosError(22) }
    for e in self.`jog_axis` {
      try w.float64(e)
    }
    try w.integer(self.`move_reference`)
    try w.float64(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsJogMultiRequest {
    var v = Ros1Dsr_msgsJogMultiRequest()
    let count0 = 6
    v.`jog_axis` = []
    v.`jog_axis`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`jog_axis`.append(try r.float64())
    }
    v.`move_reference` = try r.integer(Int8.self)
    v.`speed` = try r.float64()
    return v
  }
}
public struct Ros1Dsr_msgsJogMultiResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_fecf5222e690c35fe0503c56d12e06b375d55ffab9ea0bbef96270729305a64a"
  public static let nativeType = "dsr_msgs/JogMultiResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsJogMultiResponse {
    var v = Ros1Dsr_msgsJogMultiResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsJogMultiAxis: Canonical {
  public static let maximumWireBytes = 57
  public static let codecIdentity =
    "UWVMROS1_ee64c6ccdfa3726ebbfc0b3779f878cbbece6fe878cbfbc14fa45eed4486de02"
  public static let nativeType = "dsr_msgs/JogMultiAxis"
  public static let nativeIdentity: String? = nil
  public var `jog_axis`: [Double] = Array(repeating: 0, count: 6)
  public var `move_reference`: Int8 = 0
  public var `speed`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`jog_axis`.count == 6 else { throw RosError(22) }
    for e in self.`jog_axis` {
      try w.float64(e)
    }
    try w.integer(self.`move_reference`)
    try w.float64(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsJogMultiAxis {
    var v = Ros1Dsr_msgsJogMultiAxis()
    let count0 = 6
    v.`jog_axis` = []
    v.`jog_axis`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`jog_axis`.append(try r.float64())
    }
    v.`move_reference` = try r.integer(Int8.self)
    v.`speed` = try r.float64()
    return v
  }
}
public struct Ros1Dsr_msgsModbusState: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_e107e7ff86b98e9c58565f3a2889ac50ea49ecc6efb9c982d29b075086fe3ae9"
  public static let nativeType = "dsr_msgs/ModbusState"
  public static let nativeIdentity: String? = nil
  public var `modbus_symbol`: String = ""
  public var `modbus_value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`modbus_symbol`, bound: 256)
    try w.integer(self.`modbus_value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsModbusState {
    var v = Ros1Dsr_msgsModbusState()
    v.`modbus_symbol` = try r.string(bound: 256)
    v.`modbus_value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Std_msgsMultiArrayDimension: Canonical {
  public static let maximumWireBytes = 76
  public static let codecIdentity =
    "UWVMROS1_0a279c83cc8c73db2472e3768c8e17d877bb15d72d41f4056568a279b5352444"
  public static let nativeType = "std_msgs/MultiArrayDimension"
  public static let nativeIdentity: String? = nil
  public var `label`: String = ""
  public var `size`: UInt32 = 0
  public var `stride`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`label`, bound: 64)
    try w.integer(self.`size`)
    try w.integer(self.`stride`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Std_msgsMultiArrayDimension {
    var v = Ros1Std_msgsMultiArrayDimension()
    v.`label` = try r.string(bound: 64)
    v.`size` = try r.integer(UInt32.self)
    v.`stride` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros1Std_msgsMultiArrayLayout: Canonical {
  public static let maximumWireBytes = 236
  public static let codecIdentity =
    "UWVMROS1_602f6ec018f567486b5ea052944a24b0d798fdad5910915337ab6a76c966603e"
  public static let nativeType = "std_msgs/MultiArrayLayout"
  public static let nativeIdentity: String? = nil
  public var `dim`: [Ros1Std_msgsMultiArrayDimension] = []
  public var `data_offset`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`dim`.count <= 3 else { throw RosError(22) }
    try w.integer(UInt32(self.`dim`.count))
    for e in self.`dim` {
      try e.write(to: &w)
    }
    try w.integer(self.`data_offset`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Std_msgsMultiArrayLayout {
    var v = Ros1Std_msgsMultiArrayLayout()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 3 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`dim` = []
    v.`dim`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`dim`.append(try Ros1Std_msgsMultiArrayDimension.read(from: &r))
    }
    v.`data_offset` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros1Std_msgsFloat64MultiArray: Canonical {
  public static let maximumWireBytes = 368
  public static let codecIdentity =
    "UWVMROS1_e75045efb9b80cdc278940f799d16f3b6f49ca4eeb67b4c095d1df4db133bdf8"
  public static let nativeType = "std_msgs/Float64MultiArray"
  public static let nativeIdentity: String? = nil
  public var `layout`: Ros1Std_msgsMultiArrayLayout = Ros1Std_msgsMultiArrayLayout()
  public var `data`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`layout`.write(to: &w)
    guard self.`data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`data`.count))
    for e in self.`data` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Std_msgsFloat64MultiArray {
    var v = Ros1Std_msgsFloat64MultiArray()
    v.`layout` = try Ros1Std_msgsMultiArrayLayout.read(from: &r)
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
public struct Ros1Dsr_msgsMoveBlendingRequest: Canonical {
  public static let maximumWireBytes = 2256
  public static let codecIdentity =
    "UWVMROS1_70b7fb3501e9677b76ed8f893883090e500be36ff8175edce8fd6d6d4f23e4e6"
  public static let nativeType = "dsr_msgs/MoveBlendingRequest"
  public static let nativeIdentity: String? = nil
  public var `segment`: [Ros1Std_msgsFloat64MultiArray] = []
  public var `posCnt`: Int8 = 0
  public var `vel`: [Double] = Array(repeating: 0, count: 2)
  public var `acc`: [Double] = Array(repeating: 0, count: 2)
  public var `time`: Double = 0
  public var `ref`: Int8 = 0
  public var `mode`: Int8 = 0
  public var `syncType`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`segment`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`segment`.count))
    for e in self.`segment` {
      try e.write(to: &w)
    }
    try w.integer(self.`posCnt`)
    guard self.`vel`.count == 2 else { throw RosError(22) }
    for e in self.`vel` {
      try w.float64(e)
    }
    guard self.`acc`.count == 2 else { throw RosError(22) }
    for e in self.`acc` {
      try w.float64(e)
    }
    try w.float64(self.`time`)
    try w.integer(self.`ref`)
    try w.integer(self.`mode`)
    try w.integer(self.`syncType`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveBlendingRequest {
    var v = Ros1Dsr_msgsMoveBlendingRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 6 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`segment` = []
    v.`segment`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`segment`.append(try Ros1Std_msgsFloat64MultiArray.read(from: &r))
    }
    v.`posCnt` = try r.integer(Int8.self)
    let count2 = 2
    v.`vel` = []
    v.`vel`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`vel`.append(try r.float64())
    }
    let count3 = 2
    v.`acc` = []
    v.`acc`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`acc`.append(try r.float64())
    }
    v.`time` = try r.float64()
    v.`ref` = try r.integer(Int8.self)
    v.`mode` = try r.integer(Int8.self)
    v.`syncType` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsMoveBlendingResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_9c5697b77eaad084e9870d5ca1a1a960e22bd87137f2a1035daa9f014cc28eb6"
  public static let nativeType = "dsr_msgs/MoveBlendingResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveBlendingResponse {
    var v = Ros1Dsr_msgsMoveBlendingResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsMoveCircleRequest: Canonical {
  public static let maximumWireBytes = 2280
  public static let codecIdentity =
    "UWVMROS1_39c6ea4c3b15ae9866db805863a5c5c542bbf7b104adcd81a13425719fd994f4"
  public static let nativeType = "dsr_msgs/MoveCircleRequest"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Ros1Std_msgsFloat64MultiArray] = []
  public var `vel`: [Double] = Array(repeating: 0, count: 2)
  public var `acc`: [Double] = Array(repeating: 0, count: 2)
  public var `time`: Double = 0
  public var `radius`: Double = 0
  public var `ref`: Int8 = 0
  public var `mode`: Int8 = 0
  public var `angle1`: Double = 0
  public var `angle2`: Double = 0
  public var `blendType`: Int8 = 0
  public var `syncType`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`pos`.count))
    for e in self.`pos` {
      try e.write(to: &w)
    }
    guard self.`vel`.count == 2 else { throw RosError(22) }
    for e in self.`vel` {
      try w.float64(e)
    }
    guard self.`acc`.count == 2 else { throw RosError(22) }
    for e in self.`acc` {
      try w.float64(e)
    }
    try w.float64(self.`time`)
    try w.float64(self.`radius`)
    try w.integer(self.`ref`)
    try w.integer(self.`mode`)
    try w.float64(self.`angle1`)
    try w.float64(self.`angle2`)
    try w.integer(self.`blendType`)
    try w.integer(self.`syncType`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveCircleRequest {
    var v = Ros1Dsr_msgsMoveCircleRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 6 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try Ros1Std_msgsFloat64MultiArray.read(from: &r))
    }
    let count1 = 2
    v.`vel` = []
    v.`vel`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`vel`.append(try r.float64())
    }
    let count2 = 2
    v.`acc` = []
    v.`acc`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`acc`.append(try r.float64())
    }
    v.`time` = try r.float64()
    v.`radius` = try r.float64()
    v.`ref` = try r.integer(Int8.self)
    v.`mode` = try r.integer(Int8.self)
    v.`angle1` = try r.float64()
    v.`angle2` = try r.float64()
    v.`blendType` = try r.integer(Int8.self)
    v.`syncType` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsMoveCircleResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_a5950bd2e98ce04a5b2261eec3c95f65613f3fb60d8d1779c6a8bcbb28fa42f3"
  public static let nativeType = "dsr_msgs/MoveCircleResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveCircleResponse {
    var v = Ros1Dsr_msgsMoveCircleResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsMoveJointRequest: Canonical {
  public static let maximumWireBytes = 83
  public static let codecIdentity =
    "UWVMROS1_b244b9d86649987111dd94846a98260a464ac54b9074025689028be9a1ed6a03"
  public static let nativeType = "dsr_msgs/MoveJointRequest"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `vel`: Double = 0
  public var `acc`: Double = 0
  public var `time`: Double = 0
  public var `radius`: Double = 0
  public var `mode`: Int8 = 0
  public var `blendType`: Int8 = 0
  public var `syncType`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
    try w.float64(self.`vel`)
    try w.float64(self.`acc`)
    try w.float64(self.`time`)
    try w.float64(self.`radius`)
    try w.integer(self.`mode`)
    try w.integer(self.`blendType`)
    try w.integer(self.`syncType`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveJointRequest {
    var v = Ros1Dsr_msgsMoveJointRequest()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    v.`vel` = try r.float64()
    v.`acc` = try r.float64()
    v.`time` = try r.float64()
    v.`radius` = try r.float64()
    v.`mode` = try r.integer(Int8.self)
    v.`blendType` = try r.integer(Int8.self)
    v.`syncType` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsMoveJointResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_66e1e0f7cf2043211218cd9d1c58bfb89ffaf7480a4adddb375c002321a3fcc4"
  public static let nativeType = "dsr_msgs/MoveJointResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveJointResponse {
    var v = Ros1Dsr_msgsMoveJointResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsMoveJointxRequest: Canonical {
  public static let maximumWireBytes = 85
  public static let codecIdentity =
    "UWVMROS1_d3a91ad268c65b3f4967c281c53301ec61b6aebdc4a55324103aac4d3ed392db"
  public static let nativeType = "dsr_msgs/MoveJointxRequest"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `vel`: Double = 0
  public var `acc`: Double = 0
  public var `time`: Double = 0
  public var `radius`: Double = 0
  public var `ref`: Int8 = 0
  public var `mode`: Int8 = 0
  public var `blendType`: Int8 = 0
  public var `sol`: Int8 = 0
  public var `syncType`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
    try w.float64(self.`vel`)
    try w.float64(self.`acc`)
    try w.float64(self.`time`)
    try w.float64(self.`radius`)
    try w.integer(self.`ref`)
    try w.integer(self.`mode`)
    try w.integer(self.`blendType`)
    try w.integer(self.`sol`)
    try w.integer(self.`syncType`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveJointxRequest {
    var v = Ros1Dsr_msgsMoveJointxRequest()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    v.`vel` = try r.float64()
    v.`acc` = try r.float64()
    v.`time` = try r.float64()
    v.`radius` = try r.float64()
    v.`ref` = try r.integer(Int8.self)
    v.`mode` = try r.integer(Int8.self)
    v.`blendType` = try r.integer(Int8.self)
    v.`sol` = try r.integer(Int8.self)
    v.`syncType` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsMoveJointxResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_9286ce396d98df17fa6cab04cd10ab449be09a07134799f09ae19082921103cc"
  public static let nativeType = "dsr_msgs/MoveJointxResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveJointxResponse {
    var v = Ros1Dsr_msgsMoveJointxResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsMoveLineRequest: Canonical {
  public static let maximumWireBytes = 100
  public static let codecIdentity =
    "UWVMROS1_ef69f202700bbcfb829e8eedbb7189489f4c30a6f08702f368c5e7f9493b206e"
  public static let nativeType = "dsr_msgs/MoveLineRequest"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `vel`: [Double] = Array(repeating: 0, count: 2)
  public var `acc`: [Double] = Array(repeating: 0, count: 2)
  public var `time`: Double = 0
  public var `radius`: Double = 0
  public var `ref`: Int8 = 0
  public var `mode`: Int8 = 0
  public var `blendType`: Int8 = 0
  public var `syncType`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
    guard self.`vel`.count == 2 else { throw RosError(22) }
    for e in self.`vel` {
      try w.float64(e)
    }
    guard self.`acc`.count == 2 else { throw RosError(22) }
    for e in self.`acc` {
      try w.float64(e)
    }
    try w.float64(self.`time`)
    try w.float64(self.`radius`)
    try w.integer(self.`ref`)
    try w.integer(self.`mode`)
    try w.integer(self.`blendType`)
    try w.integer(self.`syncType`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveLineRequest {
    var v = Ros1Dsr_msgsMoveLineRequest()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    let count1 = 2
    v.`vel` = []
    v.`vel`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`vel`.append(try r.float64())
    }
    let count2 = 2
    v.`acc` = []
    v.`acc`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`acc`.append(try r.float64())
    }
    v.`time` = try r.float64()
    v.`radius` = try r.float64()
    v.`ref` = try r.integer(Int8.self)
    v.`mode` = try r.integer(Int8.self)
    v.`blendType` = try r.integer(Int8.self)
    v.`syncType` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsMoveLineResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_0d316d575a341637b3cbe5a2ee68734670ca6f3f9f5035b383194b8457afe82c"
  public static let nativeType = "dsr_msgs/MoveLineResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveLineResponse {
    var v = Ros1Dsr_msgsMoveLineResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsMovePauseRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_a25b42c1e8819548bfff8d108ec661b4a1137eeafd19d8805cfecdc4d14c5f19"
  public static let nativeType = "dsr_msgs/MovePauseRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMovePauseRequest {
    var v = Ros1Dsr_msgsMovePauseRequest()
    return v
  }
}
public struct Ros1Dsr_msgsMovePauseResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_148a3cc895846afa55520af770f76bc6118c313b5cfbf4d83d0f161b22171aed"
  public static let nativeType = "dsr_msgs/MovePauseResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMovePauseResponse {
    var v = Ros1Dsr_msgsMovePauseResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsMovePeriodicRequest: Canonical {
  public static let maximumWireBytes = 107
  public static let codecIdentity =
    "UWVMROS1_73ffac70af9558b1be99d969ee99cf992816cf84ce97f29ef81036963fbd2d69"
  public static let nativeType = "dsr_msgs/MovePeriodicRequest"
  public static let nativeIdentity: String? = nil
  public var `amp`: [Double] = Array(repeating: 0, count: 6)
  public var `periodic`: [Double] = Array(repeating: 0, count: 6)
  public var `acc`: Double = 0
  public var `repeat`: Int8 = 0
  public var `ref`: Int8 = 0
  public var `syncType`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`amp`.count == 6 else { throw RosError(22) }
    for e in self.`amp` {
      try w.float64(e)
    }
    guard self.`periodic`.count == 6 else { throw RosError(22) }
    for e in self.`periodic` {
      try w.float64(e)
    }
    try w.float64(self.`acc`)
    try w.integer(self.`repeat`)
    try w.integer(self.`ref`)
    try w.integer(self.`syncType`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMovePeriodicRequest {
    var v = Ros1Dsr_msgsMovePeriodicRequest()
    let count0 = 6
    v.`amp` = []
    v.`amp`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`amp`.append(try r.float64())
    }
    let count1 = 6
    v.`periodic` = []
    v.`periodic`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`periodic`.append(try r.float64())
    }
    v.`acc` = try r.float64()
    v.`repeat` = try r.integer(Int8.self)
    v.`ref` = try r.integer(Int8.self)
    v.`syncType` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsMovePeriodicResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_97f5baff448319a629f79ea38696662bfca6960af28150b8dfa07902cd7393b3"
  public static let nativeType = "dsr_msgs/MovePeriodicResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMovePeriodicResponse {
    var v = Ros1Dsr_msgsMovePeriodicResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsMoveResumeRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_313ed9fb87f75b7a010a658e734390145b46050b1f554f863cf6c2afb7e60f1f"
  public static let nativeType = "dsr_msgs/MoveResumeRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveResumeRequest {
    var v = Ros1Dsr_msgsMoveResumeRequest()
    return v
  }
}
public struct Ros1Dsr_msgsMoveResumeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_072287041c0e4462d8994d15ad03c5c36db00c754565d99cf9d30a215100937a"
  public static let nativeType = "dsr_msgs/MoveResumeResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveResumeResponse {
    var v = Ros1Dsr_msgsMoveResumeResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsMoveSpiralRequest: Canonical {
  public static let maximumWireBytes = 67
  public static let codecIdentity =
    "UWVMROS1_5b5a4a14ecc3021b9f98e44891c3c87011ba825fb6399e1ae5ef179257a4565c"
  public static let nativeType = "dsr_msgs/MoveSpiralRequest"
  public static let nativeIdentity: String? = nil
  public var `revolution`: Double = 0
  public var `maxRadius`: Double = 0
  public var `maxLength`: Double = 0
  public var `vel`: [Double] = Array(repeating: 0, count: 2)
  public var `acc`: [Double] = Array(repeating: 0, count: 2)
  public var `time`: Double = 0
  public var `taskAxis`: Int8 = 0
  public var `ref`: Int8 = 0
  public var `syncType`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`revolution`)
    try w.float64(self.`maxRadius`)
    try w.float64(self.`maxLength`)
    guard self.`vel`.count == 2 else { throw RosError(22) }
    for e in self.`vel` {
      try w.float64(e)
    }
    guard self.`acc`.count == 2 else { throw RosError(22) }
    for e in self.`acc` {
      try w.float64(e)
    }
    try w.float64(self.`time`)
    try w.integer(self.`taskAxis`)
    try w.integer(self.`ref`)
    try w.integer(self.`syncType`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveSpiralRequest {
    var v = Ros1Dsr_msgsMoveSpiralRequest()
    v.`revolution` = try r.float64()
    v.`maxRadius` = try r.float64()
    v.`maxLength` = try r.float64()
    let count3 = 2
    v.`vel` = []
    v.`vel`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`vel`.append(try r.float64())
    }
    let count4 = 2
    v.`acc` = []
    v.`acc`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`acc`.append(try r.float64())
    }
    v.`time` = try r.float64()
    v.`taskAxis` = try r.integer(Int8.self)
    v.`ref` = try r.integer(Int8.self)
    v.`syncType` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsMoveSpiralResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_be420ead496b05aafd3aa152a89bd04cc6dc1e584e700019a568f0dcae3a7691"
  public static let nativeType = "dsr_msgs/MoveSpiralResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveSpiralResponse {
    var v = Ros1Dsr_msgsMoveSpiralResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsMoveSplineJointRequest: Canonical {
  public static let maximumWireBytes = 2239
  public static let codecIdentity =
    "UWVMROS1_6e386632864f2315ba8737001727f9c03bb17a0e70b8eb990ce39fed669aac33"
  public static let nativeType = "dsr_msgs/MoveSplineJointRequest"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Ros1Std_msgsFloat64MultiArray] = []
  public var `posCnt`: Int8 = 0
  public var `vel`: Double = 0
  public var `acc`: Double = 0
  public var `time`: Double = 0
  public var `mode`: Int8 = 0
  public var `syncType`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`pos`.count))
    for e in self.`pos` {
      try e.write(to: &w)
    }
    try w.integer(self.`posCnt`)
    try w.float64(self.`vel`)
    try w.float64(self.`acc`)
    try w.float64(self.`time`)
    try w.integer(self.`mode`)
    try w.integer(self.`syncType`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveSplineJointRequest {
    var v = Ros1Dsr_msgsMoveSplineJointRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 6 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try Ros1Std_msgsFloat64MultiArray.read(from: &r))
    }
    v.`posCnt` = try r.integer(Int8.self)
    v.`vel` = try r.float64()
    v.`acc` = try r.float64()
    v.`time` = try r.float64()
    v.`mode` = try r.integer(Int8.self)
    v.`syncType` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsMoveSplineJointResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_b6fe363893f83066cfbf079aedf9fd6161316fe698b1a02713761aa46adb6e68"
  public static let nativeType = "dsr_msgs/MoveSplineJointResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveSplineJointResponse {
    var v = Ros1Dsr_msgsMoveSplineJointResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsMoveSplineTaskRequest: Canonical {
  public static let maximumWireBytes = 2257
  public static let codecIdentity =
    "UWVMROS1_fa8ee3b180d331309471cb20a1dbe4b46a3493cc0c7298222017200d2ff65e5a"
  public static let nativeType = "dsr_msgs/MoveSplineTaskRequest"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Ros1Std_msgsFloat64MultiArray] = []
  public var `posCnt`: Int8 = 0
  public var `vel`: [Double] = Array(repeating: 0, count: 2)
  public var `acc`: [Double] = Array(repeating: 0, count: 2)
  public var `time`: Double = 0
  public var `ref`: Int8 = 0
  public var `mode`: Int8 = 0
  public var `opt`: Int8 = 0
  public var `syncType`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`pos`.count))
    for e in self.`pos` {
      try e.write(to: &w)
    }
    try w.integer(self.`posCnt`)
    guard self.`vel`.count == 2 else { throw RosError(22) }
    for e in self.`vel` {
      try w.float64(e)
    }
    guard self.`acc`.count == 2 else { throw RosError(22) }
    for e in self.`acc` {
      try w.float64(e)
    }
    try w.float64(self.`time`)
    try w.integer(self.`ref`)
    try w.integer(self.`mode`)
    try w.integer(self.`opt`)
    try w.integer(self.`syncType`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveSplineTaskRequest {
    var v = Ros1Dsr_msgsMoveSplineTaskRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 6 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try Ros1Std_msgsFloat64MultiArray.read(from: &r))
    }
    v.`posCnt` = try r.integer(Int8.self)
    let count2 = 2
    v.`vel` = []
    v.`vel`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`vel`.append(try r.float64())
    }
    let count3 = 2
    v.`acc` = []
    v.`acc`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`acc`.append(try r.float64())
    }
    v.`time` = try r.float64()
    v.`ref` = try r.integer(Int8.self)
    v.`mode` = try r.integer(Int8.self)
    v.`opt` = try r.integer(Int8.self)
    v.`syncType` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsMoveSplineTaskResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_3d19b8f693f665703fc8b8ee151ee49ed94100de85668164f953095f718cdb7a"
  public static let nativeType = "dsr_msgs/MoveSplineTaskResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveSplineTaskResponse {
    var v = Ros1Dsr_msgsMoveSplineTaskResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsMoveStopRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8591a7188be1a528bbbb4b62f134825e0bf0f41517709604ac06c537f01423e4"
  public static let nativeType = "dsr_msgs/MoveStopRequest"
  public static let nativeIdentity: String? = nil
  public var `stop_mode`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`stop_mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveStopRequest {
    var v = Ros1Dsr_msgsMoveStopRequest()
    v.`stop_mode` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dsr_msgsMoveStopResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_25580dd85be376dcb588ebe62a49394f0f9c92abd7b094c2552df86b64f87427"
  public static let nativeType = "dsr_msgs/MoveStopResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveStopResponse {
    var v = Ros1Dsr_msgsMoveStopResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsMoveWaitRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_ca59fcddb15dd63fcf0481cb2e81be6a338d63167a15ad66585335eee1922a39"
  public static let nativeType = "dsr_msgs/MoveWaitRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveWaitRequest {
    var v = Ros1Dsr_msgsMoveWaitRequest()
    return v
  }
}
public struct Ros1Dsr_msgsMoveWaitResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_764dd1fba59b88d4baae818b06b9c735f62f156e67842013d95d55381d32f232"
  public static let nativeType = "dsr_msgs/MoveWaitResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveWaitResponse {
    var v = Ros1Dsr_msgsMoveWaitResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsRobotError: Canonical {
  public static let maximumWireBytes = 792
  public static let codecIdentity =
    "UWVMROS1_86d4b7b2d131374e05e7fe9d53988f0ed6713deb337a37182ac4998951ca5641"
  public static let nativeType = "dsr_msgs/RobotError"
  public static let nativeIdentity: String? = nil
  public var `level`: Int32 = 0
  public var `group`: Int32 = 0
  public var `code`: Int32 = 0
  public var `msg1`: String = ""
  public var `msg2`: String = ""
  public var `msg3`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`level`)
    try w.integer(self.`group`)
    try w.integer(self.`code`)
    try w.string(self.`msg1`, bound: 256)
    try w.string(self.`msg2`, bound: 256)
    try w.string(self.`msg3`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsRobotError {
    var v = Ros1Dsr_msgsRobotError()
    v.`level` = try r.integer(Int32.self)
    v.`group` = try r.integer(Int32.self)
    v.`code` = try r.integer(Int32.self)
    v.`msg1` = try r.string(bound: 256)
    v.`msg2` = try r.string(bound: 256)
    v.`msg3` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dsr_msgsRobotState: Canonical {
  public static let maximumWireBytes = 7595
  public static let codecIdentity =
    "UWVMROS1_67691d32d7b73ab123439c6f14dca8f626ad9e9a6f09f9ecb0e631b5f63d2574"
  public static let nativeType = "dsr_msgs/RobotState"
  public static let nativeIdentity: String? = nil
  public var `robot_state`: Int32 = 0
  public var `robot_state_str`: String = ""
  public var `actual_mode`: Int8 = 0
  public var `actual_space`: Int8 = 0
  public var `current_posj`: [Double] = Array(repeating: 0, count: 6)
  public var `current_velj`: [Double] = Array(repeating: 0, count: 6)
  public var `joint_abs`: [Double] = Array(repeating: 0, count: 6)
  public var `joint_err`: [Double] = Array(repeating: 0, count: 6)
  public var `target_posj`: [Double] = Array(repeating: 0, count: 6)
  public var `target_velj`: [Double] = Array(repeating: 0, count: 6)
  public var `current_posx`: [Double] = Array(repeating: 0, count: 6)
  public var `current_velx`: [Double] = Array(repeating: 0, count: 6)
  public var `task_err`: [Double] = Array(repeating: 0, count: 6)
  public var `target_velx`: [Double] = Array(repeating: 0, count: 6)
  public var `target_posx`: [Double] = Array(repeating: 0, count: 6)
  public var `solution_space`: Int8 = 0
  public var `rotation_matrix`: [Ros1Std_msgsFloat64MultiArray] = []
  public var `dynamic_tor`: [Double] = Array(repeating: 0, count: 6)
  public var `actual_jts`: [Double] = Array(repeating: 0, count: 6)
  public var `actual_ejt`: [Double] = Array(repeating: 0, count: 6)
  public var `actual_ett`: [Double] = Array(repeating: 0, count: 6)
  public var `sync_time`: Double = 0
  public var `actual_bk`: [Int8] = Array(repeating: 0, count: 6)
  public var `actual_bt`: [Int8] = Array(repeating: 0, count: 5)
  public var `actual_mc`: [Double] = Array(repeating: 0, count: 6)
  public var `actual_mt`: [Double] = Array(repeating: 0, count: 6)
  public var `ctrlbox_digital_input`: [Int8] = Array(repeating: 0, count: 16)
  public var `ctrlbox_digital_output`: [Int8] = Array(repeating: 0, count: 16)
  public var `flange_digital_input`: [Int8] = Array(repeating: 0, count: 6)
  public var `flange_digital_output`: [Int8] = Array(repeating: 0, count: 6)
  public var `modbus_state`: [Ros1Dsr_msgsModbusState] = []
  public var `access_control`: Int32 = 0
  public var `homming_completed`: Bool = false
  public var `tp_initialized`: Bool = false
  public var `mastering_need`: Int8 = 0
  public var `drl_stopped`: Bool = false
  public var `disconnected`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`robot_state`)
    try w.string(self.`robot_state_str`, bound: 256)
    try w.integer(self.`actual_mode`)
    try w.integer(self.`actual_space`)
    guard self.`current_posj`.count == 6 else { throw RosError(22) }
    for e in self.`current_posj` {
      try w.float64(e)
    }
    guard self.`current_velj`.count == 6 else { throw RosError(22) }
    for e in self.`current_velj` {
      try w.float64(e)
    }
    guard self.`joint_abs`.count == 6 else { throw RosError(22) }
    for e in self.`joint_abs` {
      try w.float64(e)
    }
    guard self.`joint_err`.count == 6 else { throw RosError(22) }
    for e in self.`joint_err` {
      try w.float64(e)
    }
    guard self.`target_posj`.count == 6 else { throw RosError(22) }
    for e in self.`target_posj` {
      try w.float64(e)
    }
    guard self.`target_velj`.count == 6 else { throw RosError(22) }
    for e in self.`target_velj` {
      try w.float64(e)
    }
    guard self.`current_posx`.count == 6 else { throw RosError(22) }
    for e in self.`current_posx` {
      try w.float64(e)
    }
    guard self.`current_velx`.count == 6 else { throw RosError(22) }
    for e in self.`current_velx` {
      try w.float64(e)
    }
    guard self.`task_err`.count == 6 else { throw RosError(22) }
    for e in self.`task_err` {
      try w.float64(e)
    }
    guard self.`target_velx`.count == 6 else { throw RosError(22) }
    for e in self.`target_velx` {
      try w.float64(e)
    }
    guard self.`target_posx`.count == 6 else { throw RosError(22) }
    for e in self.`target_posx` {
      try w.float64(e)
    }
    try w.integer(self.`solution_space`)
    guard self.`rotation_matrix`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`rotation_matrix`.count))
    for e in self.`rotation_matrix` {
      try e.write(to: &w)
    }
    guard self.`dynamic_tor`.count == 6 else { throw RosError(22) }
    for e in self.`dynamic_tor` {
      try w.float64(e)
    }
    guard self.`actual_jts`.count == 6 else { throw RosError(22) }
    for e in self.`actual_jts` {
      try w.float64(e)
    }
    guard self.`actual_ejt`.count == 6 else { throw RosError(22) }
    for e in self.`actual_ejt` {
      try w.float64(e)
    }
    guard self.`actual_ett`.count == 6 else { throw RosError(22) }
    for e in self.`actual_ett` {
      try w.float64(e)
    }
    try w.float64(self.`sync_time`)
    guard self.`actual_bk`.count == 6 else { throw RosError(22) }
    for e in self.`actual_bk` {
      try w.integer(e)
    }
    guard self.`actual_bt`.count == 5 else { throw RosError(22) }
    for e in self.`actual_bt` {
      try w.integer(e)
    }
    guard self.`actual_mc`.count == 6 else { throw RosError(22) }
    for e in self.`actual_mc` {
      try w.float64(e)
    }
    guard self.`actual_mt`.count == 6 else { throw RosError(22) }
    for e in self.`actual_mt` {
      try w.float64(e)
    }
    guard self.`ctrlbox_digital_input`.count == 16 else { throw RosError(22) }
    for e in self.`ctrlbox_digital_input` {
      try w.integer(e)
    }
    guard self.`ctrlbox_digital_output`.count == 16 else { throw RosError(22) }
    for e in self.`ctrlbox_digital_output` {
      try w.integer(e)
    }
    guard self.`flange_digital_input`.count == 6 else { throw RosError(22) }
    for e in self.`flange_digital_input` {
      try w.integer(e)
    }
    guard self.`flange_digital_output`.count == 6 else { throw RosError(22) }
    for e in self.`flange_digital_output` {
      try w.integer(e)
    }
    guard self.`modbus_state`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`modbus_state`.count))
    for e in self.`modbus_state` {
      try e.write(to: &w)
    }
    try w.integer(self.`access_control`)
    try w.boolean(self.`homming_completed`)
    try w.boolean(self.`tp_initialized`)
    try w.integer(self.`mastering_need`)
    try w.boolean(self.`drl_stopped`)
    try w.boolean(self.`disconnected`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsRobotState {
    var v = Ros1Dsr_msgsRobotState()
    v.`robot_state` = try r.integer(Int32.self)
    v.`robot_state_str` = try r.string(bound: 256)
    v.`actual_mode` = try r.integer(Int8.self)
    v.`actual_space` = try r.integer(Int8.self)
    let count4 = 6
    v.`current_posj` = []
    v.`current_posj`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`current_posj`.append(try r.float64())
    }
    let count5 = 6
    v.`current_velj` = []
    v.`current_velj`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`current_velj`.append(try r.float64())
    }
    let count6 = 6
    v.`joint_abs` = []
    v.`joint_abs`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`joint_abs`.append(try r.float64())
    }
    let count7 = 6
    v.`joint_err` = []
    v.`joint_err`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`joint_err`.append(try r.float64())
    }
    let count8 = 6
    v.`target_posj` = []
    v.`target_posj`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`target_posj`.append(try r.float64())
    }
    let count9 = 6
    v.`target_velj` = []
    v.`target_velj`.reserveCapacity(count9)
    for _ in 0..<count9 {
      v.`target_velj`.append(try r.float64())
    }
    let count10 = 6
    v.`current_posx` = []
    v.`current_posx`.reserveCapacity(count10)
    for _ in 0..<count10 {
      v.`current_posx`.append(try r.float64())
    }
    let count11 = 6
    v.`current_velx` = []
    v.`current_velx`.reserveCapacity(count11)
    for _ in 0..<count11 {
      v.`current_velx`.append(try r.float64())
    }
    let count12 = 6
    v.`task_err` = []
    v.`task_err`.reserveCapacity(count12)
    for _ in 0..<count12 {
      v.`task_err`.append(try r.float64())
    }
    let count13 = 6
    v.`target_velx` = []
    v.`target_velx`.reserveCapacity(count13)
    for _ in 0..<count13 {
      v.`target_velx`.append(try r.float64())
    }
    let count14 = 6
    v.`target_posx` = []
    v.`target_posx`.reserveCapacity(count14)
    for _ in 0..<count14 {
      v.`target_posx`.append(try r.float64())
    }
    v.`solution_space` = try r.integer(Int8.self)
    let rawcount16 = try r.integer(UInt32.self)
    guard rawcount16 <= 6 else { throw RosError(22) }
    let count16 = Int(rawcount16)
    v.`rotation_matrix` = []
    v.`rotation_matrix`.reserveCapacity(count16)
    for _ in 0..<count16 {
      v.`rotation_matrix`.append(try Ros1Std_msgsFloat64MultiArray.read(from: &r))
    }
    let count17 = 6
    v.`dynamic_tor` = []
    v.`dynamic_tor`.reserveCapacity(count17)
    for _ in 0..<count17 {
      v.`dynamic_tor`.append(try r.float64())
    }
    let count18 = 6
    v.`actual_jts` = []
    v.`actual_jts`.reserveCapacity(count18)
    for _ in 0..<count18 {
      v.`actual_jts`.append(try r.float64())
    }
    let count19 = 6
    v.`actual_ejt` = []
    v.`actual_ejt`.reserveCapacity(count19)
    for _ in 0..<count19 {
      v.`actual_ejt`.append(try r.float64())
    }
    let count20 = 6
    v.`actual_ett` = []
    v.`actual_ett`.reserveCapacity(count20)
    for _ in 0..<count20 {
      v.`actual_ett`.append(try r.float64())
    }
    v.`sync_time` = try r.float64()
    let count22 = 6
    v.`actual_bk` = []
    v.`actual_bk`.reserveCapacity(count22)
    for _ in 0..<count22 {
      v.`actual_bk`.append(try r.integer(Int8.self))
    }
    let count23 = 5
    v.`actual_bt` = []
    v.`actual_bt`.reserveCapacity(count23)
    for _ in 0..<count23 {
      v.`actual_bt`.append(try r.integer(Int8.self))
    }
    let count24 = 6
    v.`actual_mc` = []
    v.`actual_mc`.reserveCapacity(count24)
    for _ in 0..<count24 {
      v.`actual_mc`.append(try r.float64())
    }
    let count25 = 6
    v.`actual_mt` = []
    v.`actual_mt`.reserveCapacity(count25)
    for _ in 0..<count25 {
      v.`actual_mt`.append(try r.float64())
    }
    let count26 = 16
    v.`ctrlbox_digital_input` = []
    v.`ctrlbox_digital_input`.reserveCapacity(count26)
    for _ in 0..<count26 {
      v.`ctrlbox_digital_input`.append(try r.integer(Int8.self))
    }
    let count27 = 16
    v.`ctrlbox_digital_output` = []
    v.`ctrlbox_digital_output`.reserveCapacity(count27)
    for _ in 0..<count27 {
      v.`ctrlbox_digital_output`.append(try r.integer(Int8.self))
    }
    let count28 = 6
    v.`flange_digital_input` = []
    v.`flange_digital_input`.reserveCapacity(count28)
    for _ in 0..<count28 {
      v.`flange_digital_input`.append(try r.integer(Int8.self))
    }
    let count29 = 6
    v.`flange_digital_output` = []
    v.`flange_digital_output`.reserveCapacity(count29)
    for _ in 0..<count29 {
      v.`flange_digital_output`.append(try r.integer(Int8.self))
    }
    let rawcount30 = try r.integer(UInt32.self)
    guard rawcount30 <= 16 else { throw RosError(22) }
    let count30 = Int(rawcount30)
    v.`modbus_state` = []
    v.`modbus_state`.reserveCapacity(count30)
    for _ in 0..<count30 {
      v.`modbus_state`.append(try Ros1Dsr_msgsModbusState.read(from: &r))
    }
    v.`access_control` = try r.integer(Int32.self)
    v.`homming_completed` = try r.boolean()
    v.`tp_initialized` = try r.boolean()
    v.`mastering_need` = try r.integer(Int8.self)
    v.`drl_stopped` = try r.boolean()
    v.`disconnected` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsRobotStop: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_fd77182b171cc0c4eea28c26c78310584b38e47a3c7d987783648a9f230b6323"
  public static let nativeType = "dsr_msgs/RobotStop"
  public static let nativeIdentity: String? = nil
  public var `stop_mode`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`stop_mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsRobotStop {
    var v = Ros1Dsr_msgsRobotStop()
    v.`stop_mode` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dsr_msgsRobotiq2FCloseRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_208edddefb1fee08c3ba285600357951edca6b0328a14ea3cca56ec5b2c4d3b4"
  public static let nativeType = "dsr_msgs/Robotiq2FCloseRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsRobotiq2FCloseRequest {
    var v = Ros1Dsr_msgsRobotiq2FCloseRequest()
    return v
  }
}
public struct Ros1Dsr_msgsRobotiq2FCloseResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_21a215db4729d55b86ae1f56d932984a38c5c7093f09623a5a5cee1e5647a09d"
  public static let nativeType = "dsr_msgs/Robotiq2FCloseResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsRobotiq2FCloseResponse {
    var v = Ros1Dsr_msgsRobotiq2FCloseResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsRobotiq2FMoveRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_81cbba3bf5cd634b8c30fe914123d67da1294352a6e1a70a5c8a58259a79d6a2"
  public static let nativeType = "dsr_msgs/Robotiq2FMoveRequest"
  public static let nativeIdentity: String? = nil
  public var `width`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`width`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsRobotiq2FMoveRequest {
    var v = Ros1Dsr_msgsRobotiq2FMoveRequest()
    v.`width` = try r.float64()
    return v
  }
}
public struct Ros1Dsr_msgsRobotiq2FMoveResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_90f90a7486c727afb08f0e09f76f0bfa7f5b0d057be653258b6bdf1e935e7183"
  public static let nativeType = "dsr_msgs/Robotiq2FMoveResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsRobotiq2FMoveResponse {
    var v = Ros1Dsr_msgsRobotiq2FMoveResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsRobotiq2FOpenRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_64576393afca9ec6bd2e76eaf57324b5e625e62f5899d77762dc041dc1fbdda2"
  public static let nativeType = "dsr_msgs/Robotiq2FOpenRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsRobotiq2FOpenRequest {
    var v = Ros1Dsr_msgsRobotiq2FOpenRequest()
    return v
  }
}
public struct Ros1Dsr_msgsRobotiq2FOpenResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_83448b0daee950113e41814fe398efbb5624568e812f5989dd26cec24f24742a"
  public static let nativeType = "dsr_msgs/Robotiq2FOpenResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsRobotiq2FOpenResponse {
    var v = Ros1Dsr_msgsRobotiq2FOpenResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsSerialSendDataRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_19253624f5870830126073f19daa4e4f42dcdd10c4d3154989aa619ce2749498"
  public static let nativeType = "dsr_msgs/SerialSendDataRequest"
  public static let nativeIdentity: String? = nil
  public var `data`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`data`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSerialSendDataRequest {
    var v = Ros1Dsr_msgsSerialSendDataRequest()
    v.`data` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dsr_msgsSerialSendDataResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_0bb4f5a2bfcf02e9febe7846d2616c99141a8860f62d83b59ebb56da6c89dc43"
  public static let nativeType = "dsr_msgs/SerialSendDataResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSerialSendDataResponse {
    var v = Ros1Dsr_msgsSerialSendDataResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_934735469130eef5a4e4599d3033242f0dacf467b2d413d607f733bcdebb7f5b"
  public static let nativeType = "dsr_msgs/SetCtrlBoxAnalogInputTypeRequest"
  public static let nativeIdentity: String? = nil
  public var `channel`: Int8 = 0
  public var `mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`channel`)
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest
  {
    var v = Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest()
    v.`channel` = try r.integer(Int8.self)
    v.`mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_a1e73687962235470a5f55d1fa4abd910001dfae2b05aa7779fce0ad93137400"
  public static let nativeType = "dsr_msgs/SetCtrlBoxAnalogInputTypeResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse
  {
    var v = Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest: Canonical {
  public static let maximumWireBytes = 9
  public static let codecIdentity =
    "UWVMROS1_1ea5fd673a691bc7a51cf3c65c9a3b30352539155e6d7007181990c9a227efb4"
  public static let nativeType = "dsr_msgs/SetCtrlBoxAnalogOutputRequest"
  public static let nativeIdentity: String? = nil
  public var `channel`: Int8 = 0
  public var `value`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`channel`)
    try w.float64(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest
  {
    var v = Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest()
    v.`channel` = try r.integer(Int8.self)
    v.`value` = try r.float64()
    return v
  }
}
public struct Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_f0df03f3603b7ec2c0ef5f1e5d126b718ad8ca432130e32184dc87497bf707a5"
  public static let nativeType = "dsr_msgs/SetCtrlBoxAnalogOutputResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse
  {
    var v = Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_71aaf5f279052ba620d9cd13fa1751f96629c19d60e4030086b51e316ceab14f"
  public static let nativeType = "dsr_msgs/SetCtrlBoxAnalogOutputTypeRequest"
  public static let nativeIdentity: String? = nil
  public var `channel`: Int8 = 0
  public var `mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`channel`)
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest
  {
    var v = Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest()
    v.`channel` = try r.integer(Int8.self)
    v.`mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_a175ae12517731f2c2e4de021b1921920bd543d9c81469876b50b51b62ad8cc2"
  public static let nativeType = "dsr_msgs/SetCtrlBoxAnalogOutputTypeResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse
  {
    var v = Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_82a2c083195f7adc4fd3104cb05039cf109e9779920e36b4d3966edb819f83db"
  public static let nativeType = "dsr_msgs/SetCtrlBoxDigitalOutputRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int8 = 0
  public var `value`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest
  {
    var v = Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest()
    v.`index` = try r.integer(Int8.self)
    v.`value` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_dc0411c903a4350c81130d3343615212c4e3a9c259f7b193bff92c95b7039657"
  public static let nativeType = "dsr_msgs/SetCtrlBoxDigitalOutputResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse
  {
    var v = Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsSetCurrentTcpRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_6a403e6eb4e86aab4d76913e5dd679425f68c6e4c9b38c82af1eaa180dc65f00"
  public static let nativeType = "dsr_msgs/SetCurrentTcpRequest"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetCurrentTcpRequest {
    var v = Ros1Dsr_msgsSetCurrentTcpRequest()
    v.`name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dsr_msgsSetCurrentTcpResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_29c09f17453ac9fa413922b023f1a54ae253cecbbdea211202da551187bbf7ab"
  public static let nativeType = "dsr_msgs/SetCurrentTcpResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetCurrentTcpResponse {
    var v = Ros1Dsr_msgsSetCurrentTcpResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsSetCurrentToolRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_d5d71101193ff28fe86d6ba22de9922fda0c806bbd8cd5bfdb8ef3688f5bacb4"
  public static let nativeType = "dsr_msgs/SetCurrentToolRequest"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetCurrentToolRequest {
    var v = Ros1Dsr_msgsSetCurrentToolRequest()
    v.`name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dsr_msgsSetCurrentToolResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_89937411059cec969c42c90bdb4c81fa15dc645b627d10d376dc5ded2c56e1de"
  public static let nativeType = "dsr_msgs/SetCurrentToolResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetCurrentToolResponse {
    var v = Ros1Dsr_msgsSetCurrentToolResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsSetModbusOutputRequest: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_3482041cfb90233b59433f4749d9e8f422fc73cdb26525bdbc60370e73c7827f"
  public static let nativeType = "dsr_msgs/SetModbusOutputRequest"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetModbusOutputRequest {
    var v = Ros1Dsr_msgsSetModbusOutputRequest()
    v.`name` = try r.string(bound: 256)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dsr_msgsSetModbusOutputResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_763789f569991b2ba44844586d51b20f2c439e9b22ace4bc72b1bce7b23e0491"
  public static let nativeType = "dsr_msgs/SetModbusOutputResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetModbusOutputResponse {
    var v = Ros1Dsr_msgsSetModbusOutputResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsSetRobotModeRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_295575a2df0f007254f9aa7eac220e99fcae85ecb085181d5a3ca4e4e86f23fe"
  public static let nativeType = "dsr_msgs/SetRobotModeRequest"
  public static let nativeIdentity: String? = nil
  public var `robot_mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`robot_mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetRobotModeRequest {
    var v = Ros1Dsr_msgsSetRobotModeRequest()
    v.`robot_mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsSetRobotModeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_bbf3bda8cd2e9afbda89023639013686ecd7612a9323a6d4180b8ac092caaad1"
  public static let nativeType = "dsr_msgs/SetRobotModeResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetRobotModeResponse {
    var v = Ros1Dsr_msgsSetRobotModeResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsSetRobotSpeedModeRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_68f9a7f019ddfa1015de6c7e3115d632eb44ec794f364e6a0617fed34f70531c"
  public static let nativeType = "dsr_msgs/SetRobotSpeedModeRequest"
  public static let nativeIdentity: String? = nil
  public var `speed_mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`speed_mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetRobotSpeedModeRequest {
    var v = Ros1Dsr_msgsSetRobotSpeedModeRequest()
    v.`speed_mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsSetRobotSpeedModeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_6434538e8bf60b1b900aba530ed3e027eb13d854591eab5e0e93cc407e90c94b"
  public static let nativeType = "dsr_msgs/SetRobotSpeedModeResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetRobotSpeedModeResponse
  {
    var v = Ros1Dsr_msgsSetRobotSpeedModeResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsSetRobotSystemRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_75ffa8e1e77ea59a3b7a27151404682cfdef7226d32d3b78b6d67e562536eeee"
  public static let nativeType = "dsr_msgs/SetRobotSystemRequest"
  public static let nativeIdentity: String? = nil
  public var `robot_system`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`robot_system`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetRobotSystemRequest {
    var v = Ros1Dsr_msgsSetRobotSystemRequest()
    v.`robot_system` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsSetRobotSystemResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_38f3915ccf71872a966f2f511e73782a79df1923c76e6134ea8d72f0b96f6c27"
  public static let nativeType = "dsr_msgs/SetRobotSystemResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetRobotSystemResponse {
    var v = Ros1Dsr_msgsSetRobotSystemResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsSetSafeStopResetTypeRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_8a9961395d960217a4f867ee0d2994ea40afe83c4a33a7dcc5b348a85a7fff42"
  public static let nativeType = "dsr_msgs/SetSafeStopResetTypeRequest"
  public static let nativeIdentity: String? = nil
  public var `reset_type`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`reset_type`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsSetSafeStopResetTypeRequest
  {
    var v = Ros1Dsr_msgsSetSafeStopResetTypeRequest()
    v.`reset_type` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsSetSafeStopResetTypeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_2227553731ecf10a55eda31cd8735f90bd4539777661e3723f712a7a456cd4db"
  public static let nativeType = "dsr_msgs/SetSafeStopResetTypeResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsSetSafeStopResetTypeResponse
  {
    var v = Ros1Dsr_msgsSetSafeStopResetTypeResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsSetToolDigitalOutputRequest: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_6b384924cefbae3dfe50e02b8fb26ed9e228d2ada5c63070feb0375c125a2123"
  public static let nativeType = "dsr_msgs/SetToolDigitalOutputRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int8 = 0
  public var `value`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsSetToolDigitalOutputRequest
  {
    var v = Ros1Dsr_msgsSetToolDigitalOutputRequest()
    v.`index` = try r.integer(Int8.self)
    v.`value` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsSetToolDigitalOutputResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_4e0acd035740d1e47b42128818528aa3aa33736d979f46ada511ad0e6230ae94"
  public static let nativeType = "dsr_msgs/SetToolDigitalOutputResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsSetToolDigitalOutputResponse
  {
    var v = Ros1Dsr_msgsSetToolDigitalOutputResponse()
    v.`success` = try r.boolean()
    return v
  }
}
