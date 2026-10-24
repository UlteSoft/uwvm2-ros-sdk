/// @file records.swift
/// @brief Preserve the complete original dobot/ros1_v3 canonical value domain.
/// @details The selected domain contains 198 complete record/components and 362 original fields. Declared
/// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
/// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
/// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
/// does not qualify a frontend, target ABI or native ROS transport.
/// @see The platform's localized language guide and complete API-CATALOG.md.
// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros1Dobot_bringupRobotStatus: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_0e0f4d360201791cc42ab0240d4497e5398d4f308db124d56a8fbf718a553d69"
  public static let nativeType = "dobot_bringup/RobotStatus"
  public static let nativeIdentity: String? = nil
  public var `is_enable`: Bool = false
  public var `is_connected`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`is_enable`)
    try w.boolean(self.`is_connected`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupRobotStatus {
    var v = Ros1Dobot_bringupRobotStatus()
    v.`is_enable` = try r.boolean()
    v.`is_connected` = try r.boolean()
    return v
  }
}
public struct Ros1Dobot_bringupToolVectorActual: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_0ed32143752c7d1cda739d6ab711f5b08bae8794a4de17f0dee7868a005513d0"
  public static let nativeType = "dobot_bringup/ToolVectorActual"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `z`: Double = 0
  public var `rx`: Double = 0
  public var `ry`: Double = 0
  public var `rz`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
    try w.float64(self.`rx`)
    try w.float64(self.`ry`)
    try w.float64(self.`rz`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupToolVectorActual {
    var v = Ros1Dobot_bringupToolVectorActual()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`rx` = try r.float64()
    v.`ry` = try r.float64()
    v.`rz` = try r.float64()
    return v
  }
}
public struct Ros1Dobot_bringupAIRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_1572d590f41a0d6f05aa68153b045f434e6aef1033150732686784dbe21262c9"
  public static let nativeType = "dobot_bringup/AIRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupAIRequest {
    var v = Ros1Dobot_bringupAIRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupAIResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_486fdd9a49d80f9f4ba0b3db7f95c2bb68937f38f9426abe22c4bffe8db0db46"
  public static let nativeType = "dobot_bringup/AIResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupAIResponse {
    var v = Ros1Dobot_bringupAIResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupAORequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_6797d5a3adbbe8a6ac7e5152fd73d67219e6615f75e18fd5db7fce9e8358aa22"
  public static let nativeType = "dobot_bringup/AORequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupAORequest {
    var v = Ros1Dobot_bringupAORequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupAOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_3122150c18388d4b289f59639023bb27212e2948f9535118695a25f0b79000f6"
  public static let nativeType = "dobot_bringup/AOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupAOResponse {
    var v = Ros1Dobot_bringupAOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupAOExecuteRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_f70fe08e6be672788635df44d01ed0077112940783eca2a4a78969713c285e67"
  public static let nativeType = "dobot_bringup/AOExecuteRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupAOExecuteRequest {
    var v = Ros1Dobot_bringupAOExecuteRequest()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupAOExecuteResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8bf60f323e29bc412c07a6ba39cde403b25036ee7d64585ea3d2af45adcad2dc"
  public static let nativeType = "dobot_bringup/AOExecuteResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupAOExecuteResponse {
    var v = Ros1Dobot_bringupAOExecuteResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupAccJRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c89fb7653b967e0f03330123af09fd160c66fda96e68a581d1c6a3c53eeac8d7"
  public static let nativeType = "dobot_bringup/AccJRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupAccJRequest {
    var v = Ros1Dobot_bringupAccJRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupAccJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a90b5404c41ec9fc34a48af18f892bfc0ad74d63cbc74f4c80c25d53be89d045"
  public static let nativeType = "dobot_bringup/AccJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupAccJResponse {
    var v = Ros1Dobot_bringupAccJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupAccLRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e668d205c847dc78c096f98e55cf1be3672561cc801810bc3041a5cedaeb1202"
  public static let nativeType = "dobot_bringup/AccLRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupAccLRequest {
    var v = Ros1Dobot_bringupAccLRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupAccLResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_26854da8e7179bab20860844f9a6940853a0086d7585787662be01ab180adeec"
  public static let nativeType = "dobot_bringup/AccLResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupAccLResponse {
    var v = Ros1Dobot_bringupAccLResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupArcRequest: Canonical {
  public static let maximumWireBytes = 4260
  public static let codecIdentity =
    "UWVMROS1_de7367afbd65fe217782827576fe0c7b4ac23eb23a366c9a91b0274d62edf738"
  public static let nativeType = "dobot_bringup/ArcRequest"
  public static let nativeIdentity: String? = nil
  public var `x1`: Double = 0
  public var `y1`: Double = 0
  public var `z1`: Double = 0
  public var `a1`: Double = 0
  public var `b1`: Double = 0
  public var `c1`: Double = 0
  public var `x2`: Double = 0
  public var `y2`: Double = 0
  public var `z2`: Double = 0
  public var `a2`: Double = 0
  public var `b2`: Double = 0
  public var `c2`: Double = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x1`)
    try w.float64(self.`y1`)
    try w.float64(self.`z1`)
    try w.float64(self.`a1`)
    try w.float64(self.`b1`)
    try w.float64(self.`c1`)
    try w.float64(self.`x2`)
    try w.float64(self.`y2`)
    try w.float64(self.`z2`)
    try w.float64(self.`a2`)
    try w.float64(self.`b2`)
    try w.float64(self.`c2`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupArcRequest {
    var v = Ros1Dobot_bringupArcRequest()
    v.`x1` = try r.float64()
    v.`y1` = try r.float64()
    v.`z1` = try r.float64()
    v.`a1` = try r.float64()
    v.`b1` = try r.float64()
    v.`c1` = try r.float64()
    v.`x2` = try r.float64()
    v.`y2` = try r.float64()
    v.`z2` = try r.float64()
    v.`a2` = try r.float64()
    v.`b2` = try r.float64()
    v.`c2` = try r.float64()
    let rawcount12 = try r.integer(UInt32.self)
    guard rawcount12 <= 16 else { throw RosError(22) }
    let count12 = Int(rawcount12)
    v.`paramValue` = []
    v.`paramValue`.reserveCapacity(count12)
    for _ in 0..<count12 {
      v.`paramValue`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_bringupArcResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e61e8ccdcf767e9ed9da3a659758d19272b01ba08f41e13cdd02b7f238365f79"
  public static let nativeType = "dobot_bringup/ArcResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupArcResponse {
    var v = Ros1Dobot_bringupArcResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupArchRequest: Canonical {
  public static let maximumWireBytes = 4168
  public static let codecIdentity =
    "UWVMROS1_41a296f5b8470085d39eade8d524d7caa94b030090a7ec2121c6ddff2aa1374e"
  public static let nativeType = "dobot_bringup/ArchRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `cpValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    guard self.`cpValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`cpValue`.count))
    for e in self.`cpValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupArchRequest {
    var v = Ros1Dobot_bringupArchRequest()
    v.`index` = try r.integer(Int32.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`cpValue` = []
    v.`cpValue`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`cpValue`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_bringupArchResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_99b4e526921fef5113b08649372a843d360fee84e87f3d8631af5c0d6e837977"
  public static let nativeType = "dobot_bringup/ArchResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupArchResponse {
    var v = Ros1Dobot_bringupArchResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupBrakeControlRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_f0c49bbfa1f5a1c418222444fce2cdcf0855c2b6f3a17fd71641cd9cec03590b"
  public static let nativeType = "dobot_bringup/BrakeControlRequest"
  public static let nativeIdentity: String? = nil
  public var `axisID`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`axisID`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupBrakeControlRequest {
    var v = Ros1Dobot_bringupBrakeControlRequest()
    v.`axisID` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupBrakeControlResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b6783d6553b1ccfc1581dbe55448dba21d8d0df6f0b91786d28e39d5a15635b0"
  public static let nativeType = "dobot_bringup/BrakeControlResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupBrakeControlResponse
  {
    var v = Ros1Dobot_bringupBrakeControlResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupCPRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_6e8ebd37a19b8fdd242f684dfa008b80932ec3d760a3df958a108a6467e423e1"
  public static let nativeType = "dobot_bringup/CPRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupCPRequest {
    var v = Ros1Dobot_bringupCPRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupCPResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_05336cddc2a10a292d5950278941ad1642fb43d7689a6eb4ba60e0c2d9a23035"
  public static let nativeType = "dobot_bringup/CPResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupCPResponse {
    var v = Ros1Dobot_bringupCPResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupCircleRequest: Canonical {
  public static let maximumWireBytes = 4264
  public static let codecIdentity =
    "UWVMROS1_63de9534c40efc878aa4701ef01d7090ab3fd193b51b4d97fbd36e3c02d2ffea"
  public static let nativeType = "dobot_bringup/CircleRequest"
  public static let nativeIdentity: String? = nil
  public var `count`: Int32 = 0
  public var `x1`: Double = 0
  public var `y1`: Double = 0
  public var `z1`: Double = 0
  public var `a1`: Double = 0
  public var `b1`: Double = 0
  public var `c1`: Double = 0
  public var `x2`: Double = 0
  public var `y2`: Double = 0
  public var `z2`: Double = 0
  public var `a2`: Double = 0
  public var `b2`: Double = 0
  public var `c2`: Double = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`count`)
    try w.float64(self.`x1`)
    try w.float64(self.`y1`)
    try w.float64(self.`z1`)
    try w.float64(self.`a1`)
    try w.float64(self.`b1`)
    try w.float64(self.`c1`)
    try w.float64(self.`x2`)
    try w.float64(self.`y2`)
    try w.float64(self.`z2`)
    try w.float64(self.`a2`)
    try w.float64(self.`b2`)
    try w.float64(self.`c2`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupCircleRequest {
    var v = Ros1Dobot_bringupCircleRequest()
    v.`count` = try r.integer(Int32.self)
    v.`x1` = try r.float64()
    v.`y1` = try r.float64()
    v.`z1` = try r.float64()
    v.`a1` = try r.float64()
    v.`b1` = try r.float64()
    v.`c1` = try r.float64()
    v.`x2` = try r.float64()
    v.`y2` = try r.float64()
    v.`z2` = try r.float64()
    v.`a2` = try r.float64()
    v.`b2` = try r.float64()
    v.`c2` = try r.float64()
    let rawcount13 = try r.integer(UInt32.self)
    guard rawcount13 <= 16 else { throw RosError(22) }
    let count13 = Int(rawcount13)
    v.`paramValue` = []
    v.`paramValue`.reserveCapacity(count13)
    for _ in 0..<count13 {
      v.`paramValue`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_bringupCircleResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_dcc76a49a34c2355dcda26824e9e524ee8a2bc5ff96c5c13749706396327cddb"
  public static let nativeType = "dobot_bringup/CircleResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupCircleResponse {
    var v = Ros1Dobot_bringupCircleResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupClearErrorRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_5efd3497aa76e5b6777543f78b89e5b5917fd173819936c6f93fb2ce7de6e5e9"
  public static let nativeType = "dobot_bringup/ClearErrorRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupClearErrorRequest {
    var v = Ros1Dobot_bringupClearErrorRequest()
    return v
  }
}
public struct Ros1Dobot_bringupClearErrorResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_9d316550be928ba7da159505e55046aba2cb3f7951b88727b0900564f1a3de89"
  public static let nativeType = "dobot_bringup/ClearErrorResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupClearErrorResponse {
    var v = Ros1Dobot_bringupClearErrorResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupContinueScriptRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_94437c065c6198d333700a16b3bdaa1cfa1ad42043e579540ed8b9fb65be7132"
  public static let nativeType = "dobot_bringup/ContinueScriptRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupContinueScriptRequest
  {
    var v = Ros1Dobot_bringupContinueScriptRequest()
    return v
  }
}
public struct Ros1Dobot_bringupContinueScriptResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e24a269f34aca468ea7b91d7320f79052928a9c129a64a2603aba21ed8e802b5"
  public static let nativeType = "dobot_bringup/ContinueScriptResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupContinueScriptResponse
  {
    var v = Ros1Dobot_bringupContinueScriptResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupContinuesRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_36b892c0c9d45b816ca840ed228040d79ccc391c28fb99f593643d9b50c3b2b0"
  public static let nativeType = "dobot_bringup/ContinuesRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupContinuesRequest {
    var v = Ros1Dobot_bringupContinuesRequest()
    return v
  }
}
public struct Ros1Dobot_bringupContinuesResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_04e387a52444077a9b0a96653934c64f0ff576cd374928c8246de4add006615a"
  public static let nativeType = "dobot_bringup/ContinuesResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupContinuesResponse {
    var v = Ros1Dobot_bringupContinuesResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupDIRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_cf02229580f51ef51f0feb0a773e01691235810dabfc93d07ca52e83a2fbf894"
  public static let nativeType = "dobot_bringup/DIRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupDIRequest {
    var v = Ros1Dobot_bringupDIRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupDIResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2015cdb56d2e1cd584ceb18b79925109e77e3483cb07403339805605bac24eca"
  public static let nativeType = "dobot_bringup/DIResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupDIResponse {
    var v = Ros1Dobot_bringupDIResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupDIGroupRequest: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_f1eb7407b550066a63a3bb7f53e2b1dffaa20e587e62b926f06648224aa8836e"
  public static let nativeType = "dobot_bringup/DIGroupRequest"
  public static let nativeIdentity: String? = nil
  public var `args`: [Int32] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`args`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`args`.count))
    for e in self.`args` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupDIGroupRequest {
    var v = Ros1Dobot_bringupDIGroupRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`args` = []
    v.`args`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`args`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros1Dobot_bringupDIGroupResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_0a12d3d2a105be4a1fafe9698974f03731d3bc14f77b390e124da5c8cc747b1f"
  public static let nativeType = "dobot_bringup/DIGroupResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupDIGroupResponse {
    var v = Ros1Dobot_bringupDIGroupResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupDORequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_1ef488f375efc4acf7521f80910b3714cfecd30f3c111a12bf2d1e4d2e0aed7c"
  public static let nativeType = "dobot_bringup/DORequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupDORequest {
    var v = Ros1Dobot_bringupDORequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupDOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_05a1b8731cea3139845450022d18a75b530a876b60523005433a8136cc2bef34"
  public static let nativeType = "dobot_bringup/DOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupDOResponse {
    var v = Ros1Dobot_bringupDOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupDOExecuteRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_57da630cf5f390ee9d68d57c7a8767e3762f5814ab659706063872a1e220d606"
  public static let nativeType = "dobot_bringup/DOExecuteRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupDOExecuteRequest {
    var v = Ros1Dobot_bringupDOExecuteRequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupDOExecuteResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_90acf95e87ddb0797525c1726315fd10447e42b36710497f9f4642f84c166fe6"
  public static let nativeType = "dobot_bringup/DOExecuteResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupDOExecuteResponse {
    var v = Ros1Dobot_bringupDOExecuteResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupDOGroupRequest: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_05604172b0bd8330bee9236bf629815b1a6cc9ac39b1a3374fcd753b6686b8f0"
  public static let nativeType = "dobot_bringup/DOGroupRequest"
  public static let nativeIdentity: String? = nil
  public var `args`: [Int32] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`args`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`args`.count))
    for e in self.`args` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupDOGroupRequest {
    var v = Ros1Dobot_bringupDOGroupRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`args` = []
    v.`args`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`args`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros1Dobot_bringupDOGroupResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_99217a3263538d28cc5d7335906bdfaec128df8b3cfde6c3dbf1962320bcb00a"
  public static let nativeType = "dobot_bringup/DOGroupResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupDOGroupResponse {
    var v = Ros1Dobot_bringupDOGroupResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupDigitalOutputsRequest: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_940ad8d824ad890e4f33a9acf1871d26266dc65e5ae0263e761990a55507d97f"
  public static let nativeType = "dobot_bringup/DigitalOutputsRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.boolean(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupDigitalOutputsRequest
  {
    var v = Ros1Dobot_bringupDigitalOutputsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.boolean()
    return v
  }
}
public struct Ros1Dobot_bringupDigitalOutputsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_99e07211731bb0811c9a9c53fc18593839a0d413180d37ffbf33fd4c25cb1cf8"
  public static let nativeType = "dobot_bringup/DigitalOutputsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupDigitalOutputsResponse
  {
    var v = Ros1Dobot_bringupDigitalOutputsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupDisableRobotRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_f4ac3135f9e5b6c9a38ffc8fab4a747e4cb77fb47d4a8c35c08fb9dd1622add4"
  public static let nativeType = "dobot_bringup/DisableRobotRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupDisableRobotRequest {
    var v = Ros1Dobot_bringupDisableRobotRequest()
    return v
  }
}
public struct Ros1Dobot_bringupDisableRobotResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f21d2305cee15f4a09dddbb1224defc53541b14df7a81b8be011b9b8dd581c3d"
  public static let nativeType = "dobot_bringup/DisableRobotResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupDisableRobotResponse
  {
    var v = Ros1Dobot_bringupDisableRobotResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupEmergencyStopRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_b0f6de6358491a4d2651d2c3965faea793c2ab4fb09a237b31b22cd0b904ac6b"
  public static let nativeType = "dobot_bringup/EmergencyStopRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupEmergencyStopRequest
  {
    var v = Ros1Dobot_bringupEmergencyStopRequest()
    return v
  }
}
public struct Ros1Dobot_bringupEmergencyStopResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_734c45ffac6db73610807063dc89a50da8f35b061819e82e77fb51ee079ec929"
  public static let nativeType = "dobot_bringup/EmergencyStopResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupEmergencyStopResponse
  {
    var v = Ros1Dobot_bringupEmergencyStopResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupEnableRobotRequest: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_25d27ffd5d67239f85e389e4e0af813b25e69508542d83f6cf218f09010050d4"
  public static let nativeType = "dobot_bringup/EnableRobotRequest"
  public static let nativeIdentity: String? = nil
  public var `args`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`args`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`args`.count))
    for e in self.`args` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupEnableRobotRequest {
    var v = Ros1Dobot_bringupEnableRobotRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`args` = []
    v.`args`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`args`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Dobot_bringupEnableRobotResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c8f6c4992040b09f377700199904fabb54072d64f267e0ba3084328aa7e5de27"
  public static let nativeType = "dobot_bringup/EnableRobotResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupEnableRobotResponse {
    var v = Ros1Dobot_bringupEnableRobotResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupGetAngleRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_2546617abf6527da804ece97d489c1d2b15f3f804076f0978ca035000cb36f85"
  public static let nativeType = "dobot_bringup/GetAngleRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupGetAngleRequest {
    var v = Ros1Dobot_bringupGetAngleRequest()
    return v
  }
}
public struct Ros1Dobot_bringupGetAngleResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_84a2bdf2c23770ca10b62372141a6000b73ae8a2d644b576a06fd7e77293035c"
  public static let nativeType = "dobot_bringup/GetAngleResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupGetAngleResponse {
    var v = Ros1Dobot_bringupGetAngleResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupGetCoilsRequest: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_35b261250758e2990bfff2b3a4a3e96c320f77db155b94ea4ea8042b0682ff2e"
  public static let nativeType = "dobot_bringup/GetCoilsRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `addr`: Int32 = 0
  public var `count`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`addr`)
    try w.integer(self.`count`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupGetCoilsRequest {
    var v = Ros1Dobot_bringupGetCoilsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupGetCoilsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_cc0be6ab7b46ca1fbd08ca5d4fd75ee37a5b388b5aada2c9f6d2f15c8df13b79"
  public static let nativeType = "dobot_bringup/GetCoilsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupGetCoilsResponse {
    var v = Ros1Dobot_bringupGetCoilsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupGetErrorIDRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_d447f9b359f6546396b350d993222aeea1f928b390f7fcdf2c9d0f627d520976"
  public static let nativeType = "dobot_bringup/GetErrorIDRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupGetErrorIDRequest {
    var v = Ros1Dobot_bringupGetErrorIDRequest()
    return v
  }
}
public struct Ros1Dobot_bringupGetErrorIDResponse: Canonical {
  public static let maximumWireBytes = 72
  public static let codecIdentity =
    "UWVMROS1_7e6069235acae11eadfabed5fd9c9466c5ef27c0f174be883e842493d8c98f15"
  public static let nativeType = "dobot_bringup/GetErrorIDResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public var `errorID`: [Int32] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
    guard self.`errorID`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`errorID`.count))
    for e in self.`errorID` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupGetErrorIDResponse {
    var v = Ros1Dobot_bringupGetErrorIDResponse()
    v.`res` = try r.integer(Int32.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`errorID` = []
    v.`errorID`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`errorID`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros1Dobot_bringupGetHoldRegsRequest: Canonical {
  public static let maximumWireBytes = 4176
  public static let codecIdentity =
    "UWVMROS1_800fdfa6b1489a629db168b04df13fd96bd3d8168f53b0810e0ef6f8d4e5e364"
  public static let nativeType = "dobot_bringup/GetHoldRegsRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `addr`: Int32 = 0
  public var `count`: Int32 = 0
  public var `valtype`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`addr`)
    try w.integer(self.`count`)
    guard self.`valtype`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`valtype`.count))
    for e in self.`valtype` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupGetHoldRegsRequest {
    var v = Ros1Dobot_bringupGetHoldRegsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`valtype` = []
    v.`valtype`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`valtype`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_bringupGetHoldRegsResponse: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_41d34618b03ef7e49ee5519d20050c667cf64e204ec8e4c4116b065f5b388301"
  public static let nativeType = "dobot_bringup/GetHoldRegsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupGetHoldRegsResponse {
    var v = Ros1Dobot_bringupGetHoldRegsResponse()
    v.`res` = try r.integer(Int32.self)
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupGetInBitsRequest: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_3bb7becca72d44ad566098fc6a76ff5fdef3f3c52ef278b38faf37c3be4d3ed2"
  public static let nativeType = "dobot_bringup/GetInBitsRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `addr`: Int32 = 0
  public var `count`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`addr`)
    try w.integer(self.`count`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupGetInBitsRequest {
    var v = Ros1Dobot_bringupGetInBitsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupGetInBitsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_acd9a1d0238985a87fac498e3f83535c64d6eff4b6e923896c9105d9d0c37bae"
  public static let nativeType = "dobot_bringup/GetInBitsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupGetInBitsResponse {
    var v = Ros1Dobot_bringupGetInBitsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupGetInRegsRequest: Canonical {
  public static let maximumWireBytes = 4176
  public static let codecIdentity =
    "UWVMROS1_9bed4567aa6cdf6d02f1b4ed46378bceaa2ccc0c6699dee552de39ab6a6d924b"
  public static let nativeType = "dobot_bringup/GetInRegsRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `addr`: Int32 = 0
  public var `count`: Int32 = 0
  public var `valType`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`addr`)
    try w.integer(self.`count`)
    guard self.`valType`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`valType`.count))
    for e in self.`valType` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupGetInRegsRequest {
    var v = Ros1Dobot_bringupGetInRegsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`valType` = []
    v.`valType`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`valType`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_bringupGetInRegsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f7f69e7d7eef206ab1318296f737a3294aefb82a72078d6b45326171260e4bc2"
  public static let nativeType = "dobot_bringup/GetInRegsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupGetInRegsResponse {
    var v = Ros1Dobot_bringupGetInRegsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupGetPathStartPoseRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_eeac1255138e30057687e050b574b0817d70b68d350bfe12b45d77cbff506363"
  public static let nativeType = "dobot_bringup/GetPathStartPoseRequest"
  public static let nativeIdentity: String? = nil
  public var `traceName`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`traceName`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupGetPathStartPoseRequest
  {
    var v = Ros1Dobot_bringupGetPathStartPoseRequest()
    v.`traceName` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_bringupGetPathStartPoseResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_4b7d7f5af83e211f271d5ba502e38a6d8bd46fad22f8e8f130da274981a1a069"
  public static let nativeType = "dobot_bringup/GetPathStartPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupGetPathStartPoseResponse
  {
    var v = Ros1Dobot_bringupGetPathStartPoseResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupGetPoseRequest: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_025bce42be53ba183254bc0dc65439297c87f2a4fdc2fd861f3e2d642d1ec541"
  public static let nativeType = "dobot_bringup/GetPoseRequest"
  public static let nativeIdentity: String? = nil
  public var `user`: [Int32] = []
  public var `tool`: [Int32] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`user`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`user`.count))
    for e in self.`user` {
      try w.integer(e)
    }
    guard self.`tool`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`tool`.count))
    for e in self.`tool` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupGetPoseRequest {
    var v = Ros1Dobot_bringupGetPoseRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`user` = []
    v.`user`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`user`.append(try r.integer(Int32.self))
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`tool` = []
    v.`tool`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`tool`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros1Dobot_bringupGetPoseResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ddb44853f1e3b6f37e90c4d06d78c289c47188e9612f60226878ef38b55e2696"
  public static let nativeType = "dobot_bringup/GetPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupGetPoseResponse {
    var v = Ros1Dobot_bringupGetPoseResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupGetSixForceDataRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_a1cb669ffeccea55f3d0d2598b166e3ac4317c4268b81c27a1e829b96f244298"
  public static let nativeType = "dobot_bringup/GetSixForceDataRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupGetSixForceDataRequest
  {
    var v = Ros1Dobot_bringupGetSixForceDataRequest()
    return v
  }
}
public struct Ros1Dobot_bringupGetSixForceDataResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_184411501d79e153e2634bbf7328f3fff02180078203d8b5bd5bd77d0fcb3b1d"
  public static let nativeType = "dobot_bringup/GetSixForceDataResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupGetSixForceDataResponse
  {
    var v = Ros1Dobot_bringupGetSixForceDataResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupGetTerminal485Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_298f03b6d54aa27f605bf41a2dc9a7a8229fd0b692688da54eeec227afb712fd"
  public static let nativeType = "dobot_bringup/GetTerminal485Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupGetTerminal485Request
  {
    var v = Ros1Dobot_bringupGetTerminal485Request()
    return v
  }
}
public struct Ros1Dobot_bringupGetTerminal485Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_4813a10a2f80aa614e4cda21b81002cbb8721804e07109ed209969945b702779"
  public static let nativeType = "dobot_bringup/GetTerminal485Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupGetTerminal485Response
  {
    var v = Ros1Dobot_bringupGetTerminal485Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupGetTraceStartPoseRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_7a3e89eb5ade3cb2e2ea39e9f91b4e4e0ccf07405fdc3e2d59e7d57c2d9e7cb9"
  public static let nativeType = "dobot_bringup/GetTraceStartPoseRequest"
  public static let nativeIdentity: String? = nil
  public var `traceName`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`traceName`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupGetTraceStartPoseRequest
  {
    var v = Ros1Dobot_bringupGetTraceStartPoseRequest()
    v.`traceName` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_bringupGetTraceStartPoseResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ced9e3f9fccc6fc35ee90f70c4a3a40544136feefe21a513a244d8dc0aa04fcf"
  public static let nativeType = "dobot_bringup/GetTraceStartPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupGetTraceStartPoseResponse
  {
    var v = Ros1Dobot_bringupGetTraceStartPoseResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupHandleTrajPointsRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_2848aee3496e82c75a18c7c9dead4754d9bcfe5beb29311a1a09a3d9d83cf578"
  public static let nativeType = "dobot_bringup/HandleTrajPointsRequest"
  public static let nativeIdentity: String? = nil
  public var `traceName`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`traceName`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupHandleTrajPointsRequest
  {
    var v = Ros1Dobot_bringupHandleTrajPointsRequest()
    v.`traceName` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_bringupHandleTrajPointsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_45f7bf8391e5b54fce96fc80f93cf3aed773115cc14bb013fa5e3b8d43e7d05c"
  public static let nativeType = "dobot_bringup/HandleTrajPointsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupHandleTrajPointsResponse
  {
    var v = Ros1Dobot_bringupHandleTrajPointsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupInverseSolutionRequest: Canonical {
  public static let maximumWireBytes = 320
  public static let codecIdentity =
    "UWVMROS1_e8ec17af46a8beb1b8d825ce350560a00a2455ecbc7605917d62edcb51c5ed18"
  public static let nativeType = "dobot_bringup/InverseSolutionRequest"
  public static let nativeIdentity: String? = nil
  public var `offset1`: Double = 0
  public var `offset2`: Double = 0
  public var `offset3`: Double = 0
  public var `offset4`: Double = 0
  public var `offset5`: Double = 0
  public var `offset6`: Double = 0
  public var `user`: Int32 = 0
  public var `tool`: Int32 = 0
  public var `isJointNear`: Int32 = 0
  public var `JointNear`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`offset1`)
    try w.float64(self.`offset2`)
    try w.float64(self.`offset3`)
    try w.float64(self.`offset4`)
    try w.float64(self.`offset5`)
    try w.float64(self.`offset6`)
    try w.integer(self.`user`)
    try w.integer(self.`tool`)
    try w.integer(self.`isJointNear`)
    try w.string(self.`JointNear`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupInverseSolutionRequest
  {
    var v = Ros1Dobot_bringupInverseSolutionRequest()
    v.`offset1` = try r.float64()
    v.`offset2` = try r.float64()
    v.`offset3` = try r.float64()
    v.`offset4` = try r.float64()
    v.`offset5` = try r.float64()
    v.`offset6` = try r.float64()
    v.`user` = try r.integer(Int32.self)
    v.`tool` = try r.integer(Int32.self)
    v.`isJointNear` = try r.integer(Int32.self)
    v.`JointNear` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_bringupInverseSolutionResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_10c5f17f9346659de18bbabbadbe455cfa729d74264004f0ebe6edc4dc30658f"
  public static let nativeType = "dobot_bringup/InverseSolutionResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupInverseSolutionResponse
  {
    var v = Ros1Dobot_bringupInverseSolutionResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupJointMovJRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_2aada30efe661e8b57ecc0dedea12e5b30703530ad505b223bf9ab9c0763412c"
  public static let nativeType = "dobot_bringup/JointMovJRequest"
  public static let nativeIdentity: String? = nil
  public var `j1`: Double = 0
  public var `j2`: Double = 0
  public var `j3`: Double = 0
  public var `j4`: Double = 0
  public var `j5`: Double = 0
  public var `j6`: Double = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`j1`)
    try w.float64(self.`j2`)
    try w.float64(self.`j3`)
    try w.float64(self.`j4`)
    try w.float64(self.`j5`)
    try w.float64(self.`j6`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupJointMovJRequest {
    var v = Ros1Dobot_bringupJointMovJRequest()
    v.`j1` = try r.float64()
    v.`j2` = try r.float64()
    v.`j3` = try r.float64()
    v.`j4` = try r.float64()
    v.`j5` = try r.float64()
    v.`j6` = try r.float64()
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`paramValue` = []
    v.`paramValue`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`paramValue`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_bringupJointMovJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_51b50f481a2eb220df2c3e04755fdc6bf5443d31b1225557747ca4f82d70166c"
  public static let nativeType = "dobot_bringup/JointMovJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupJointMovJResponse {
    var v = Ros1Dobot_bringupJointMovJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupJumpRequest: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_a7c4f0702492f900e97e5aee203e294b9de7750846ecaf7973e1e86d494cec2b"
  public static let nativeType = "dobot_bringup/JumpRequest"
  public static let nativeIdentity: String? = nil
  public var `offset1`: Double = 0
  public var `offset2`: Double = 0
  public var `offset3`: Double = 0
  public var `offset4`: Double = 0
  public var `offset5`: Double = 0
  public var `offset6`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`offset1`)
    try w.float64(self.`offset2`)
    try w.float64(self.`offset3`)
    try w.float64(self.`offset4`)
    try w.float64(self.`offset5`)
    try w.float64(self.`offset6`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupJumpRequest {
    var v = Ros1Dobot_bringupJumpRequest()
    v.`offset1` = try r.float64()
    v.`offset2` = try r.float64()
    v.`offset3` = try r.float64()
    v.`offset4` = try r.float64()
    v.`offset5` = try r.float64()
    v.`offset6` = try r.float64()
    return v
  }
}
public struct Ros1Dobot_bringupJumpResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_0e8b42ba83c27ba738767c6a3aff68636a8508efa21db63f32922bb50023f549"
  public static let nativeType = "dobot_bringup/JumpResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupJumpResponse {
    var v = Ros1Dobot_bringupJumpResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupLimZRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_760f331cb5a4d17e32310035606466e7b04b628152017d57fc9f6dc77b38447f"
  public static let nativeType = "dobot_bringup/LimZRequest"
  public static let nativeIdentity: String? = nil
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupLimZRequest {
    var v = Ros1Dobot_bringupLimZRequest()
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupLimZResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_14a2dff05f9dca0f0933e9358cf155e71a5c2454d1e60f9ade481f784f9f126b"
  public static let nativeType = "dobot_bringup/LimZResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupLimZResponse {
    var v = Ros1Dobot_bringupLimZResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupLoadSwitchRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e28aad033d188565799b9b8cc00b2047d3e040e85d86b9d5bb8cfa44fb7d95ac"
  public static let nativeType = "dobot_bringup/LoadSwitchRequest"
  public static let nativeIdentity: String? = nil
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupLoadSwitchRequest {
    var v = Ros1Dobot_bringupLoadSwitchRequest()
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupLoadSwitchResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_6ee2761100a9f6763a906aaae51a6343c7f098d1f05c5b2afa32c6237c7e8cbe"
  public static let nativeType = "dobot_bringup/LoadSwitchResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupLoadSwitchResponse {
    var v = Ros1Dobot_bringupLoadSwitchResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupModbusCloseRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e54128af606780d1408abafad70bb37fec4bf75313413b9d35098ecf32ead7fa"
  public static let nativeType = "dobot_bringup/ModbusCloseRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupModbusCloseRequest {
    var v = Ros1Dobot_bringupModbusCloseRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupModbusCloseResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_37372c64022657c99622a2e15fb8d05dbcf4b5d4d3def0b170842343c728b5c3"
  public static let nativeType = "dobot_bringup/ModbusCloseResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupModbusCloseResponse {
    var v = Ros1Dobot_bringupModbusCloseResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupModbusCreateRequest: Canonical {
  public static let maximumWireBytes = 336
  public static let codecIdentity =
    "UWVMROS1_fdbd5da898506935d31be593a4e3549a3c528c3d68ff29875d6f06b589790b2d"
  public static let nativeType = "dobot_bringup/ModbusCreateRequest"
  public static let nativeIdentity: String? = nil
  public var `ip`: String = ""
  public var `port`: Int32 = 0
  public var `slave_id`: Int32 = 0
  public var `is_rtu`: [Int32] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`ip`, bound: 256)
    try w.integer(self.`port`)
    try w.integer(self.`slave_id`)
    guard self.`is_rtu`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`is_rtu`.count))
    for e in self.`is_rtu` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupModbusCreateRequest {
    var v = Ros1Dobot_bringupModbusCreateRequest()
    v.`ip` = try r.string(bound: 256)
    v.`port` = try r.integer(Int32.self)
    v.`slave_id` = try r.integer(Int32.self)
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 16 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`is_rtu` = []
    v.`is_rtu`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`is_rtu`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros1Dobot_bringupModbusCreateResponse: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_91ce4a52e69ed27977f8edc3d2bab68ded6fae45074906e9232e042481ba417f"
  public static let nativeType = "dobot_bringup/ModbusCreateResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupModbusCreateResponse
  {
    var v = Ros1Dobot_bringupModbusCreateResponse()
    v.`res` = try r.integer(Int32.self)
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupMovJRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_d5eb13b367f355ac8368e61572da8b80eba62e5361f739a99ed62a4cd4a79f4e"
  public static let nativeType = "dobot_bringup/MovJRequest"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `z`: Double = 0
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupMovJRequest {
    var v = Ros1Dobot_bringupMovJRequest()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`paramValue` = []
    v.`paramValue`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`paramValue`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_bringupMovJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_48c51c39fce08dcb92b28b150f546a488bbb228dcc3bced709dffe67155a5bdf"
  public static let nativeType = "dobot_bringup/MovJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupMovJResponse {
    var v = Ros1Dobot_bringupMovJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupMovJExtRequest: Canonical {
  public static let maximumWireBytes = 4172
  public static let codecIdentity =
    "UWVMROS1_91fca59f884c1c4db96c4b39260de4b6655c1a506422dd42c6955c2bdf8dcca1"
  public static let nativeType = "dobot_bringup/MovJExtRequest"
  public static let nativeIdentity: String? = nil
  public var `offset`: Double = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`offset`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupMovJExtRequest {
    var v = Ros1Dobot_bringupMovJExtRequest()
    v.`offset` = try r.float64()
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`paramValue` = []
    v.`paramValue`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`paramValue`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_bringupMovJExtResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_5e7863d2a76b91a515043a4c44d34753a25ed9f14e8d9e49ba223908dccf9f77"
  public static let nativeType = "dobot_bringup/MovJExtResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupMovJExtResponse {
    var v = Ros1Dobot_bringupMovJExtResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupMovJIORequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_1095eb0d3a8e2e3d8e75c13d00f96114e372ed87449772b1560b50015b6984dc"
  public static let nativeType = "dobot_bringup/MovJIORequest"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `z`: Double = 0
  public var `rx`: Double = 0
  public var `ry`: Double = 0
  public var `rz`: Double = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
    try w.float64(self.`rx`)
    try w.float64(self.`ry`)
    try w.float64(self.`rz`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupMovJIORequest {
    var v = Ros1Dobot_bringupMovJIORequest()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`rx` = try r.float64()
    v.`ry` = try r.float64()
    v.`rz` = try r.float64()
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`paramValue` = []
    v.`paramValue`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`paramValue`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_bringupMovJIOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a004faa73bc67c133087e14e11003d8fdb56f48c025c196986be3939719a5fca"
  public static let nativeType = "dobot_bringup/MovJIOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupMovJIOResponse {
    var v = Ros1Dobot_bringupMovJIOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupMovLRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_fd3a6a1c387cdde2f2da8eb8cce8bf5ef7ac60b8a45cc4fa3a1e64f01ed52c2d"
  public static let nativeType = "dobot_bringup/MovLRequest"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `z`: Double = 0
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupMovLRequest {
    var v = Ros1Dobot_bringupMovLRequest()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`paramValue` = []
    v.`paramValue`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`paramValue`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_bringupMovLResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_362cd26155c97a3dad48da79b105272e3a54f22b1f50978ee4883f427986aad3"
  public static let nativeType = "dobot_bringup/MovLResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupMovLResponse {
    var v = Ros1Dobot_bringupMovLResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupMovLIORequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_f9dc72d4456c6c4febd922b41d8ed68b7d402741911abef356ee2de12e43e0bb"
  public static let nativeType = "dobot_bringup/MovLIORequest"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `z`: Double = 0
  public var `rx`: Double = 0
  public var `ry`: Double = 0
  public var `rz`: Double = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
    try w.float64(self.`rx`)
    try w.float64(self.`ry`)
    try w.float64(self.`rz`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupMovLIORequest {
    var v = Ros1Dobot_bringupMovLIORequest()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`rx` = try r.float64()
    v.`ry` = try r.float64()
    v.`rz` = try r.float64()
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`paramValue` = []
    v.`paramValue`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`paramValue`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_bringupMovLIOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_433c70d71f2a6df46140ba0937a8de9d9e382cc86ca2db6a85ebed4d4476fc54"
  public static let nativeType = "dobot_bringup/MovLIOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupMovLIOResponse {
    var v = Ros1Dobot_bringupMovLIOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupMoveJogRequest: Canonical {
  public static let maximumWireBytes = 4424
  public static let codecIdentity =
    "UWVMROS1_f6b61799b2b1a2925f9b3581c69acea68ab5bf8e7cb34040bbe899249571ecf6"
  public static let nativeType = "dobot_bringup/MoveJogRequest"
  public static let nativeIdentity: String? = nil
  public var `axisID`: String = ""
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`axisID`, bound: 256)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupMoveJogRequest {
    var v = Ros1Dobot_bringupMoveJogRequest()
    v.`axisID` = try r.string(bound: 256)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 16 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`paramValue` = []
    v.`paramValue`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`paramValue`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_bringupMoveJogResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_4b920c29d6e337fdf0c464c76e1d6a65d367f2ed89d20159c54a06b28721652c"
  public static let nativeType = "dobot_bringup/MoveJogResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupMoveJogResponse {
    var v = Ros1Dobot_bringupMoveJogResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupPauseScriptRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_0515897101fed91dc0d0be12c7e792478604c83e54e377568542944fa66d23b7"
  public static let nativeType = "dobot_bringup/PauseScriptRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupPauseScriptRequest {
    var v = Ros1Dobot_bringupPauseScriptRequest()
    return v
  }
}
public struct Ros1Dobot_bringupPauseScriptResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2bee6a114025d88d91f794c68478a44bc2a20a3e65e9456eae75d39640cf32c0"
  public static let nativeType = "dobot_bringup/PauseScriptResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupPauseScriptResponse {
    var v = Ros1Dobot_bringupPauseScriptResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupPayLoadRequest: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_535f1e2c2c83a98b3572649905c96964c7ebc4ac7458292c4209f974188f29fd"
  public static let nativeType = "dobot_bringup/PayLoadRequest"
  public static let nativeIdentity: String? = nil
  public var `weight`: Double = 0
  public var `inertia`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`weight`)
    try w.float64(self.`inertia`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupPayLoadRequest {
    var v = Ros1Dobot_bringupPayLoadRequest()
    v.`weight` = try r.float64()
    v.`inertia` = try r.float64()
    return v
  }
}
public struct Ros1Dobot_bringupPayLoadResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e1d1b56d5b9d2191cf344b2b7cf721fff6a4303ad3aa4901f5c091111ad63b71"
  public static let nativeType = "dobot_bringup/PayLoadResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupPayLoadResponse {
    var v = Ros1Dobot_bringupPayLoadResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupPositiveSolutionRequest: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_c7f95fe8314cf60c3b9d9b3066c80a8da6070a7df2f31184d524344e8a9ac466"
  public static let nativeType = "dobot_bringup/PositiveSolutionRequest"
  public static let nativeIdentity: String? = nil
  public var `offset1`: Double = 0
  public var `offset2`: Double = 0
  public var `offset3`: Double = 0
  public var `offset4`: Double = 0
  public var `offset5`: Double = 0
  public var `offset6`: Double = 0
  public var `user`: Int32 = 0
  public var `tool`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`offset1`)
    try w.float64(self.`offset2`)
    try w.float64(self.`offset3`)
    try w.float64(self.`offset4`)
    try w.float64(self.`offset5`)
    try w.float64(self.`offset6`)
    try w.integer(self.`user`)
    try w.integer(self.`tool`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupPositiveSolutionRequest
  {
    var v = Ros1Dobot_bringupPositiveSolutionRequest()
    v.`offset1` = try r.float64()
    v.`offset2` = try r.float64()
    v.`offset3` = try r.float64()
    v.`offset4` = try r.float64()
    v.`offset5` = try r.float64()
    v.`offset6` = try r.float64()
    v.`user` = try r.integer(Int32.self)
    v.`tool` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupPositiveSolutionResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_eec24219ce537eb24bd619942dd63c5f53a1afcf3aabeb10e508852aaf0ee535"
  public static let nativeType = "dobot_bringup/PositiveSolutionResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupPositiveSolutionResponse
  {
    var v = Ros1Dobot_bringupPositiveSolutionResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupPowerOnRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_b1b1a3b4bd2a39d5e4ae58a1b4327af7ea8033facbd728fdf967406396b1f0b7"
  public static let nativeType = "dobot_bringup/PowerOnRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupPowerOnRequest {
    var v = Ros1Dobot_bringupPowerOnRequest()
    return v
  }
}
public struct Ros1Dobot_bringupPowerOnResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_fbb473d54d04cc853b531daa9657018737874bff18de8b13637794fe178a9c88"
  public static let nativeType = "dobot_bringup/PowerOnResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupPowerOnResponse {
    var v = Ros1Dobot_bringupPowerOnResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupRelJointMovJRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_99e2b4e1af44dfc16cd689b144ed6a49de27164cc9b00c0da3d73e9908d0e9e6"
  public static let nativeType = "dobot_bringup/RelJointMovJRequest"
  public static let nativeIdentity: String? = nil
  public var `offset1`: Double = 0
  public var `offset2`: Double = 0
  public var `offset3`: Double = 0
  public var `offset4`: Double = 0
  public var `offset5`: Double = 0
  public var `offset6`: Double = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`offset1`)
    try w.float64(self.`offset2`)
    try w.float64(self.`offset3`)
    try w.float64(self.`offset4`)
    try w.float64(self.`offset5`)
    try w.float64(self.`offset6`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupRelJointMovJRequest {
    var v = Ros1Dobot_bringupRelJointMovJRequest()
    v.`offset1` = try r.float64()
    v.`offset2` = try r.float64()
    v.`offset3` = try r.float64()
    v.`offset4` = try r.float64()
    v.`offset5` = try r.float64()
    v.`offset6` = try r.float64()
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`paramValue` = []
    v.`paramValue`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`paramValue`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_bringupRelJointMovJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_744c38052c9d8d6027746967dcf8f1924344eeddd3287320237476ad27fd930d"
  public static let nativeType = "dobot_bringup/RelJointMovJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupRelJointMovJResponse
  {
    var v = Ros1Dobot_bringupRelJointMovJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupRelMovJRequest: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_1947325988ffb928f24fa3a714e1becd9f1fbc5f66e7110179bda067b3ca4776"
  public static let nativeType = "dobot_bringup/RelMovJRequest"
  public static let nativeIdentity: String? = nil
  public var `offset1`: Double = 0
  public var `offset2`: Double = 0
  public var `offset3`: Double = 0
  public var `offset4`: Double = 0
  public var `offset5`: Double = 0
  public var `offset6`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`offset1`)
    try w.float64(self.`offset2`)
    try w.float64(self.`offset3`)
    try w.float64(self.`offset4`)
    try w.float64(self.`offset5`)
    try w.float64(self.`offset6`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupRelMovJRequest {
    var v = Ros1Dobot_bringupRelMovJRequest()
    v.`offset1` = try r.float64()
    v.`offset2` = try r.float64()
    v.`offset3` = try r.float64()
    v.`offset4` = try r.float64()
    v.`offset5` = try r.float64()
    v.`offset6` = try r.float64()
    return v
  }
}
public struct Ros1Dobot_bringupRelMovJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_eaa103b9f4c61702145d348c8763329deb4be9d0f010bf5cca0431d1d97ffea2"
  public static let nativeType = "dobot_bringup/RelMovJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupRelMovJResponse {
    var v = Ros1Dobot_bringupRelMovJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupRelMovJToolRequest: Canonical {
  public static let maximumWireBytes = 4216
  public static let codecIdentity =
    "UWVMROS1_8ea1454d38ebe4cb9d30d018079ce142bbaa1010d2ea321763b37dc47db5d783"
  public static let nativeType = "dobot_bringup/RelMovJToolRequest"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `z`: Double = 0
  public var `rx`: Double = 0
  public var `ry`: Double = 0
  public var `rz`: Double = 0
  public var `tool`: Int32 = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
    try w.float64(self.`rx`)
    try w.float64(self.`ry`)
    try w.float64(self.`rz`)
    try w.integer(self.`tool`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupRelMovJToolRequest {
    var v = Ros1Dobot_bringupRelMovJToolRequest()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`rx` = try r.float64()
    v.`ry` = try r.float64()
    v.`rz` = try r.float64()
    v.`tool` = try r.integer(Int32.self)
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 16 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`paramValue` = []
    v.`paramValue`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`paramValue`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_bringupRelMovJToolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_9b9aa05571fab18d37f0fca3adef2497ee315e3a9c146878aaa7746eacf770d0"
  public static let nativeType = "dobot_bringup/RelMovJToolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupRelMovJToolResponse {
    var v = Ros1Dobot_bringupRelMovJToolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupRelMovJUserRequest: Canonical {
  public static let maximumWireBytes = 4216
  public static let codecIdentity =
    "UWVMROS1_e6780787473801ef6ae69c160e9df61c9bf10941a47dd9c102e2c7003ca14f63"
  public static let nativeType = "dobot_bringup/RelMovJUserRequest"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `z`: Double = 0
  public var `rx`: Double = 0
  public var `ry`: Double = 0
  public var `rz`: Double = 0
  public var `user`: Int32 = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
    try w.float64(self.`rx`)
    try w.float64(self.`ry`)
    try w.float64(self.`rz`)
    try w.integer(self.`user`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupRelMovJUserRequest {
    var v = Ros1Dobot_bringupRelMovJUserRequest()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`rx` = try r.float64()
    v.`ry` = try r.float64()
    v.`rz` = try r.float64()
    v.`user` = try r.integer(Int32.self)
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 16 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`paramValue` = []
    v.`paramValue`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`paramValue`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_bringupRelMovJUserResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_20448df974bf51cd04f80e2ed5c819f4f2f9740b6d919e656fe3a18c2a87efc1"
  public static let nativeType = "dobot_bringup/RelMovJUserResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupRelMovJUserResponse {
    var v = Ros1Dobot_bringupRelMovJUserResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupRelMovLRequest: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_ebf192c073879d1900d884545f9c91fc54ece1c42220f77493217f02b00cadf6"
  public static let nativeType = "dobot_bringup/RelMovLRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupRelMovLRequest {
    var v = Ros1Dobot_bringupRelMovLRequest()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
public struct Ros1Dobot_bringupRelMovLResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_67d62b01e54f7df98e5209f948d3d45610e3bf3853a4fc04ca458cb30ea42e88"
  public static let nativeType = "dobot_bringup/RelMovLResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupRelMovLResponse {
    var v = Ros1Dobot_bringupRelMovLResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupRelMovLToolRequest: Canonical {
  public static let maximumWireBytes = 4216
  public static let codecIdentity =
    "UWVMROS1_9318cd6154f2cc90d20d188cb1aa38ac2f160b75bb3b0d13f1a78326ac40ad9d"
  public static let nativeType = "dobot_bringup/RelMovLToolRequest"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `z`: Double = 0
  public var `rx`: Double = 0
  public var `ry`: Double = 0
  public var `rz`: Double = 0
  public var `tool`: Int32 = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
    try w.float64(self.`rx`)
    try w.float64(self.`ry`)
    try w.float64(self.`rz`)
    try w.integer(self.`tool`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupRelMovLToolRequest {
    var v = Ros1Dobot_bringupRelMovLToolRequest()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`rx` = try r.float64()
    v.`ry` = try r.float64()
    v.`rz` = try r.float64()
    v.`tool` = try r.integer(Int32.self)
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 16 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`paramValue` = []
    v.`paramValue`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`paramValue`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_bringupRelMovLToolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_4e5837f832c42d29b74a9a2536ab80b94f1087972685da74e021edd315bf5bec"
  public static let nativeType = "dobot_bringup/RelMovLToolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupRelMovLToolResponse {
    var v = Ros1Dobot_bringupRelMovLToolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupRelMovLUserRequest: Canonical {
  public static let maximumWireBytes = 4216
  public static let codecIdentity =
    "UWVMROS1_03e9b9ec0fb14fcdb1b52404a78d29c4f952d296aa1ccf209ee257abed479b61"
  public static let nativeType = "dobot_bringup/RelMovLUserRequest"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `z`: Double = 0
  public var `rx`: Double = 0
  public var `ry`: Double = 0
  public var `rz`: Double = 0
  public var `user`: Int32 = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
    try w.float64(self.`rx`)
    try w.float64(self.`ry`)
    try w.float64(self.`rz`)
    try w.integer(self.`user`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupRelMovLUserRequest {
    var v = Ros1Dobot_bringupRelMovLUserRequest()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`rx` = try r.float64()
    v.`ry` = try r.float64()
    v.`rz` = try r.float64()
    v.`user` = try r.integer(Int32.self)
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 16 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`paramValue` = []
    v.`paramValue`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`paramValue`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_bringupRelMovLUserResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b0e9fcdd28f7e8fb3f4cd2c6398d9b2cde483028f5c24c43336ae032f9fad24d"
  public static let nativeType = "dobot_bringup/RelMovLUserResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupRelMovLUserResponse {
    var v = Ros1Dobot_bringupRelMovLUserResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupResetRobotRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_64b2cfe8bd1c6b646e7bb126f681f6ba917466a1403ed0d04f0c900c1066e46c"
  public static let nativeType = "dobot_bringup/ResetRobotRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupResetRobotRequest {
    var v = Ros1Dobot_bringupResetRobotRequest()
    return v
  }
}
public struct Ros1Dobot_bringupResetRobotResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_0982186f56a3d0956566915e33ce268845367d7dadeaea8a07acbd737e63181a"
  public static let nativeType = "dobot_bringup/ResetRobotResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupResetRobotResponse {
    var v = Ros1Dobot_bringupResetRobotResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupRobotModeRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_4a53406f3fb93ae98bd17673cd8215d0112537faff604d49c74bc4f517e16c5d"
  public static let nativeType = "dobot_bringup/RobotModeRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupRobotModeRequest {
    var v = Ros1Dobot_bringupRobotModeRequest()
    return v
  }
}
public struct Ros1Dobot_bringupRobotModeResponse: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_68b34eb2c4fe7e7cacb6055a4259fcf5776ad4a28013281a3e9cf19521908d5c"
  public static let nativeType = "dobot_bringup/RobotModeResponse"
  public static let nativeIdentity: String? = nil
  public var `mode`: Int32 = 0
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupRobotModeResponse {
    var v = Ros1Dobot_bringupRobotModeResponse()
    v.`mode` = try r.integer(Int32.self)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupRunScriptRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_616fc1d43590d9935733cd8de381585d170a01cf3a9e7972136a31783d49a29f"
  public static let nativeType = "dobot_bringup/RunScriptRequest"
  public static let nativeIdentity: String? = nil
  public var `projectName`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`projectName`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupRunScriptRequest {
    var v = Ros1Dobot_bringupRunScriptRequest()
    v.`projectName` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_bringupRunScriptResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_3940b9344c72e35651072e75ca4c3839c0bd420fb741938402e95ad627cbf45c"
  public static let nativeType = "dobot_bringup/RunScriptResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupRunScriptResponse {
    var v = Ros1Dobot_bringupRunScriptResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupServoJRequest: Canonical {
  public static let maximumWireBytes = 444
  public static let codecIdentity =
    "UWVMROS1_89edbee19c86acd41f4cac814ac40e09262a17bd96ad1b697c0ffdecc69f20e2"
  public static let nativeType = "dobot_bringup/ServoJRequest"
  public static let nativeIdentity: String? = nil
  public var `offset1`: Double = 0
  public var `offset2`: Double = 0
  public var `offset3`: Double = 0
  public var `offset4`: Double = 0
  public var `offset5`: Double = 0
  public var `offset6`: Double = 0
  public var `t`: [Double] = []
  public var `lookahead_time`: [Double] = []
  public var `gain`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`offset1`)
    try w.float64(self.`offset2`)
    try w.float64(self.`offset3`)
    try w.float64(self.`offset4`)
    try w.float64(self.`offset5`)
    try w.float64(self.`offset6`)
    guard self.`t`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`t`.count))
    for e in self.`t` {
      try w.float64(e)
    }
    guard self.`lookahead_time`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`lookahead_time`.count))
    for e in self.`lookahead_time` {
      try w.float64(e)
    }
    guard self.`gain`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`gain`.count))
    for e in self.`gain` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupServoJRequest {
    var v = Ros1Dobot_bringupServoJRequest()
    v.`offset1` = try r.float64()
    v.`offset2` = try r.float64()
    v.`offset3` = try r.float64()
    v.`offset4` = try r.float64()
    v.`offset5` = try r.float64()
    v.`offset6` = try r.float64()
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 16 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`t` = []
    v.`t`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`t`.append(try r.float64())
    }
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 16 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`lookahead_time` = []
    v.`lookahead_time`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`lookahead_time`.append(try r.float64())
    }
    let rawcount8 = try r.integer(UInt32.self)
    guard rawcount8 <= 16 else { throw RosError(22) }
    let count8 = Int(rawcount8)
    v.`gain` = []
    v.`gain`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`gain`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Dobot_bringupServoJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8ec56aaaeec2ef71903513b001fd2a11d183cfa6eca330256d3adc5df58da301"
  public static let nativeType = "dobot_bringup/ServoJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupServoJResponse {
    var v = Ros1Dobot_bringupServoJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupServoJParamRequest: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_3b2ef76c800c3d483dca43cbe981ed2dd10a7c8a6806051e08b72c83209bc98f"
  public static let nativeType = "dobot_bringup/ServoJParamRequest"
  public static let nativeIdentity: String? = nil
  public var `trajectory_duration`: Double = 0
  public var `t`: Double = 0
  public var `lookahead_time`: Double = 0
  public var `gain`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`trajectory_duration`)
    try w.float64(self.`t`)
    try w.float64(self.`lookahead_time`)
    try w.float64(self.`gain`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupServoJParamRequest {
    var v = Ros1Dobot_bringupServoJParamRequest()
    v.`trajectory_duration` = try r.float64()
    v.`t` = try r.float64()
    v.`lookahead_time` = try r.float64()
    v.`gain` = try r.float64()
    return v
  }
}
public struct Ros1Dobot_bringupServoJParamResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_06226db8595d10cc98203d618d19f9f21a647c198f30c80247f996a17da5c466"
  public static let nativeType = "dobot_bringup/ServoJParamResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupServoJParamResponse {
    var v = Ros1Dobot_bringupServoJParamResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupServoPRequest: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_03eca79138b155d8fbef7d31479f1db91d3044efd354cbb2220f8158453df94e"
  public static let nativeType = "dobot_bringup/ServoPRequest"
  public static let nativeIdentity: String? = nil
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `z`: Double = 0
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupServoPRequest {
    var v = Ros1Dobot_bringupServoPRequest()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    return v
  }
}
public struct Ros1Dobot_bringupServoPResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_3878a67e350ae73e7c02104a8fc010d8837c1f0b99cb5ca121d5fea37dea0d6b"
  public static let nativeType = "dobot_bringup/ServoPResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupServoPResponse {
    var v = Ros1Dobot_bringupServoPResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSetArmOrientationRequest: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_411ea8eea1cb7f7bb5693a95b8657a3e60eafb3dcf82838c36232f72ae886e7b"
  public static let nativeType = "dobot_bringup/SetArmOrientationRequest"
  public static let nativeIdentity: String? = nil
  public var `LorR`: Int32 = 0
  public var `UorD`: Int32 = 0
  public var `ForN`: Int32 = 0
  public var `Config6`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`LorR`)
    try w.integer(self.`UorD`)
    try w.integer(self.`ForN`)
    try w.integer(self.`Config6`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupSetArmOrientationRequest
  {
    var v = Ros1Dobot_bringupSetArmOrientationRequest()
    v.`LorR` = try r.integer(Int32.self)
    v.`UorD` = try r.integer(Int32.self)
    v.`ForN` = try r.integer(Int32.self)
    v.`Config6` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSetArmOrientationResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8c9af233c61c52e029c51a6d59d53d2d37d8fa6fdfd009b08bee5e51f605a159"
  public static let nativeType = "dobot_bringup/SetArmOrientationResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupSetArmOrientationResponse
  {
    var v = Ros1Dobot_bringupSetArmOrientationResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSetCoilsRequest: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_45771482b61ce634858abc167e63a421d7533ff9650b09d2ba6d58cb01ce8c82"
  public static let nativeType = "dobot_bringup/SetCoilsRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `addr`: Int32 = 0
  public var `count`: Int32 = 0
  public var `valTab`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`addr`)
    try w.integer(self.`count`)
    try w.string(self.`valTab`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSetCoilsRequest {
    var v = Ros1Dobot_bringupSetCoilsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    v.`valTab` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_bringupSetCoilsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_65a61c2bcb39a67ae79dc7552f2c383db8561d8e6fbd585c50b048beabd4537d"
  public static let nativeType = "dobot_bringup/SetCoilsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSetCoilsResponse {
    var v = Ros1Dobot_bringupSetCoilsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSetCollideDragRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_6bbf174fa78c4e6706fe6ebdcfc77d6d80dfb153c91d3b8a815446bcae0fce31"
  public static let nativeType = "dobot_bringup/SetCollideDragRequest"
  public static let nativeIdentity: String? = nil
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSetCollideDragRequest
  {
    var v = Ros1Dobot_bringupSetCollideDragRequest()
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSetCollideDragResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_d78a1536cb221635491e59985011f879de22151bca4a40dcfdfad42e80465904"
  public static let nativeType = "dobot_bringup/SetCollideDragResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupSetCollideDragResponse
  {
    var v = Ros1Dobot_bringupSetCollideDragResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSetCollisionLevelRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_d356e0e035b01033a24c4ce155acb2e1edf1197f3efcf868defa4ee8eb6a1d85"
  public static let nativeType = "dobot_bringup/SetCollisionLevelRequest"
  public static let nativeIdentity: String? = nil
  public var `level`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`level`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupSetCollisionLevelRequest
  {
    var v = Ros1Dobot_bringupSetCollisionLevelRequest()
    v.`level` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSetCollisionLevelResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c1014bc49ba25fa4a922a84009a746d6e5f1462bd91ad457e27c5779f7c711d7"
  public static let nativeType = "dobot_bringup/SetCollisionLevelResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupSetCollisionLevelResponse
  {
    var v = Ros1Dobot_bringupSetCollisionLevelResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSetHoldRegsRequest: Canonical {
  public static let maximumWireBytes = 4436
  public static let codecIdentity =
    "UWVMROS1_a62adf80d85c268ded993bcf79fb5e36a4010373b82122b20bfa7dedd7ba9d4a"
  public static let nativeType = "dobot_bringup/SetHoldRegsRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `addr`: Int32 = 0
  public var `count`: Int32 = 0
  public var `valTab`: String = ""
  public var `valtype`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`addr`)
    try w.integer(self.`count`)
    try w.string(self.`valTab`, bound: 256)
    guard self.`valtype`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`valtype`.count))
    for e in self.`valtype` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSetHoldRegsRequest {
    var v = Ros1Dobot_bringupSetHoldRegsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    v.`valTab` = try r.string(bound: 256)
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 16 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`valtype` = []
    v.`valtype`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`valtype`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_bringupSetHoldRegsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8c7bc9280585f3f48d94492a977a043154d9f7014d40c75c3423e6920c185006"
  public static let nativeType = "dobot_bringup/SetHoldRegsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSetHoldRegsResponse {
    var v = Ros1Dobot_bringupSetHoldRegsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSetObstacleAvoidRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_fdabddcd2e3aedae53795c3f88db4af1e8b088276bacde73d2f743bc85abb2b7"
  public static let nativeType = "dobot_bringup/SetObstacleAvoidRequest"
  public static let nativeIdentity: String? = nil
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupSetObstacleAvoidRequest
  {
    var v = Ros1Dobot_bringupSetObstacleAvoidRequest()
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSetObstacleAvoidResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_6326eb040ce327709390b27c7cdcdcdc5e4b482078083d8e9211b85a0b516765"
  public static let nativeType = "dobot_bringup/SetObstacleAvoidResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupSetObstacleAvoidResponse
  {
    var v = Ros1Dobot_bringupSetObstacleAvoidResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSetPayloadRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_b78f4ea1c2dba35204ce4a4c707f47e1203525613c0f8e2b6bde4d4ebe31fd0a"
  public static let nativeType = "dobot_bringup/SetPayloadRequest"
  public static let nativeIdentity: String? = nil
  public var `load`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`load`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSetPayloadRequest {
    var v = Ros1Dobot_bringupSetPayloadRequest()
    v.`load` = try r.float64()
    return v
  }
}
public struct Ros1Dobot_bringupSetPayloadResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ef8118977e3535e707b28e87413af7b5d87aefe192cb904e76388f26a0e48451"
  public static let nativeType = "dobot_bringup/SetPayloadResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSetPayloadResponse {
    var v = Ros1Dobot_bringupSetPayloadResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSetSafeSkinRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_757fbe6b10abe9fab751c9a26e653dfb88aa9863f8aa02574a4853596dea0b1f"
  public static let nativeType = "dobot_bringup/SetSafeSkinRequest"
  public static let nativeIdentity: String? = nil
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSetSafeSkinRequest {
    var v = Ros1Dobot_bringupSetSafeSkinRequest()
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSetSafeSkinResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_6faa7971380cc42c37cb8e465e04bc61565a0d13afc4e13a3dae14538bdcc7ef"
  public static let nativeType = "dobot_bringup/SetSafeSkinResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSetSafeSkinResponse {
    var v = Ros1Dobot_bringupSetSafeSkinResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSetTerminal485Request: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_68f16c3a44c421922cc0200bb6d08ad44b475feae3d9b35b075749b31c84b7b0"
  public static let nativeType = "dobot_bringup/SetTerminal485Request"
  public static let nativeIdentity: String? = nil
  public var `baudRate`: Int32 = 0
  public var `dataLen`: Int32 = 0
  public var `parityBit`: String = ""
  public var `stopBit`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`baudRate`)
    try w.integer(self.`dataLen`)
    try w.string(self.`parityBit`, bound: 256)
    try w.integer(self.`stopBit`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSetTerminal485Request
  {
    var v = Ros1Dobot_bringupSetTerminal485Request()
    v.`baudRate` = try r.integer(Int32.self)
    v.`dataLen` = try r.integer(Int32.self)
    v.`parityBit` = try r.string(bound: 256)
    v.`stopBit` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSetTerminal485Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8d9147b63b5a0a8fe5a55cf1539cdccac2db65f169edd15f7de6961b7c69f987"
  public static let nativeType = "dobot_bringup/SetTerminal485Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupSetTerminal485Response
  {
    var v = Ros1Dobot_bringupSetTerminal485Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSetTerminalKeysRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_5ccdea027664fa4de7f7eede24f55c1be9e48bcc69c304f6ed20364bdf2316c8"
  public static let nativeType = "dobot_bringup/SetTerminalKeysRequest"
  public static let nativeIdentity: String? = nil
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupSetTerminalKeysRequest
  {
    var v = Ros1Dobot_bringupSetTerminalKeysRequest()
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSetTerminalKeysResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_59413ce06c871427dc5bfe441c8486cee8a580c75a4b1b979e90f5002f405ca8"
  public static let nativeType = "dobot_bringup/SetTerminalKeysResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_bringupSetTerminalKeysResponse
  {
    var v = Ros1Dobot_bringupSetTerminalKeysResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSpeedFactorRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_bc9b2b41a6825b0b62591195bdfe8c496a9330b769077ba68fa6955fee05bac3"
  public static let nativeType = "dobot_bringup/SpeedFactorRequest"
  public static let nativeIdentity: String? = nil
  public var `ratio`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ratio`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSpeedFactorRequest {
    var v = Ros1Dobot_bringupSpeedFactorRequest()
    v.`ratio` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSpeedFactorResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f3dccd2d89672165a8a3f322921c526503ceea62853596deff249b8db9561f4d"
  public static let nativeType = "dobot_bringup/SpeedFactorResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSpeedFactorResponse {
    var v = Ros1Dobot_bringupSpeedFactorResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSpeedJRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_530734a5d3c9d4ad506868f4037248b87a3ecb910a9a326bd3bd887b8a55710d"
  public static let nativeType = "dobot_bringup/SpeedJRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSpeedJRequest {
    var v = Ros1Dobot_bringupSpeedJRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSpeedJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_17695b04e91ceb9ea10c863908d474e587160eac3132a560bc06a15c18a2e447"
  public static let nativeType = "dobot_bringup/SpeedJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSpeedJResponse {
    var v = Ros1Dobot_bringupSpeedJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSpeedLRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_92cfdf1adae35ed62eb8a92f9bcf4ffd01e8db8c57989e008e2073e3e07b9c51"
  public static let nativeType = "dobot_bringup/SpeedLRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSpeedLRequest {
    var v = Ros1Dobot_bringupSpeedLRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSpeedLResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_413b189f4830e3bff05be7c2f80251242e6c07ca696fd78dd91ae326f703e5b2"
  public static let nativeType = "dobot_bringup/SpeedLResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSpeedLResponse {
    var v = Ros1Dobot_bringupSpeedLResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupStartDragRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_5edde2ed92d68be374f7a234ae31d5e939747fda13dd2abd093c98b9bbefd0b2"
  public static let nativeType = "dobot_bringup/StartDragRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupStartDragRequest {
    var v = Ros1Dobot_bringupStartDragRequest()
    return v
  }
}
public struct Ros1Dobot_bringupStartDragResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_3f845cd661102409cc5077d245b89fca9250f265f783478473a86e92528b7cb9"
  public static let nativeType = "dobot_bringup/StartDragResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupStartDragResponse {
    var v = Ros1Dobot_bringupStartDragResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupStartFCTraceRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_1f215de662fd0408919e61128d88b5e36ef8caf22a3d60a00722c9dc7828d01e"
  public static let nativeType = "dobot_bringup/StartFCTraceRequest"
  public static let nativeIdentity: String? = nil
  public var `trace_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`trace_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupStartFCTraceRequest {
    var v = Ros1Dobot_bringupStartFCTraceRequest()
    v.`trace_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_bringupStartFCTraceResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_943645444330cdd8076254071d311237eee917c45c30d6038458a3b3122ab67c"
  public static let nativeType = "dobot_bringup/StartFCTraceResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupStartFCTraceResponse
  {
    var v = Ros1Dobot_bringupStartFCTraceResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupStartPathRequest: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_c2bda8488e715407a73897eaf8a63da4d77e1371d257ebeebf7d4d855aa6eb89"
  public static let nativeType = "dobot_bringup/StartPathRequest"
  public static let nativeIdentity: String? = nil
  public var `trace_name`: String = ""
  public var `const_val`: Int32 = 0
  public var `cart`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`trace_name`, bound: 256)
    try w.integer(self.`const_val`)
    try w.integer(self.`cart`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupStartPathRequest {
    var v = Ros1Dobot_bringupStartPathRequest()
    v.`trace_name` = try r.string(bound: 256)
    v.`const_val` = try r.integer(Int32.self)
    v.`cart` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupStartPathResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7e0c7e7594e78bca3183f6e68170dcf40e3341f9f7a63c3b00f8e0ec51ae46a0"
  public static let nativeType = "dobot_bringup/StartPathResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupStartPathResponse {
    var v = Ros1Dobot_bringupStartPathResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupStartTraceRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_2cb708228939aa747aded7cd96aa8a01855a09a27ae9bd855d6d3f0c42a6ff45"
  public static let nativeType = "dobot_bringup/StartTraceRequest"
  public static let nativeIdentity: String? = nil
  public var `trace_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`trace_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupStartTraceRequest {
    var v = Ros1Dobot_bringupStartTraceRequest()
    v.`trace_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_bringupStartTraceResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_5c7ae42d0c2057dbdf32d5bf0bc6199d3a5b45f452f58cd58aec217ac5161bdd"
  public static let nativeType = "dobot_bringup/StartTraceResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupStartTraceResponse {
    var v = Ros1Dobot_bringupStartTraceResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupStopDragRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_b0cc9836f6159cd14e2fbe1d17946df1195933b6185c58e92a9ccfe2110ab3c9"
  public static let nativeType = "dobot_bringup/StopDragRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupStopDragRequest {
    var v = Ros1Dobot_bringupStopDragRequest()
    return v
  }
}
public struct Ros1Dobot_bringupStopDragResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c799d7ef2592c59d6765107cb18ae3a8e811da39fd3c4f53000ed1f0ce73ce64"
  public static let nativeType = "dobot_bringup/StopDragResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupStopDragResponse {
    var v = Ros1Dobot_bringupStopDragResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupStopScriptRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_7e9a2e0200b130410e48357bf3bebe80084239ba05f75effbf2b96e6d5fa6230"
  public static let nativeType = "dobot_bringup/StopScriptRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupStopScriptRequest {
    var v = Ros1Dobot_bringupStopScriptRequest()
    return v
  }
}
public struct Ros1Dobot_bringupStopScriptResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2fdc976b5bb7a6270a362a8ec31184d2034068a1806f501517c472efceda804b"
  public static let nativeType = "dobot_bringup/StopScriptResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupStopScriptResponse {
    var v = Ros1Dobot_bringupStopScriptResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupStopmoveJogRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_0f938c260d9371e39e84a1a01447c7992ad15b5c6c322def739d0919e5af3176"
  public static let nativeType = "dobot_bringup/StopmoveJogRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupStopmoveJogRequest {
    var v = Ros1Dobot_bringupStopmoveJogRequest()
    return v
  }
}
public struct Ros1Dobot_bringupStopmoveJogResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8af5a7425dcbbed499016ce18bf9f721da5ee806e9e4360368267f925e169940"
  public static let nativeType = "dobot_bringup/StopmoveJogResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupStopmoveJogResponse {
    var v = Ros1Dobot_bringupStopmoveJogResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSyncRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_6335c57c7c8e3d52e8c5bb288f87946d11228777e2277aec29560d5f7bebb327"
  public static let nativeType = "dobot_bringup/SyncRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSyncRequest {
    var v = Ros1Dobot_bringupSyncRequest()
    return v
  }
}
public struct Ros1Dobot_bringupSyncResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_bccb43d699c8000b02cd2f97349bf7d16df2409ba0ab02fcc1889acb8827fb24"
  public static let nativeType = "dobot_bringup/SyncResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSyncResponse {
    var v = Ros1Dobot_bringupSyncResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupSyncAllRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_d4e09d99b799b37456dd01b35b7c5c6f83b34899bd8942c6c324018087bd5a76"
  public static let nativeType = "dobot_bringup/SyncAllRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSyncAllRequest {
    var v = Ros1Dobot_bringupSyncAllRequest()
    return v
  }
}
public struct Ros1Dobot_bringupSyncAllResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_1431a93a4eb81a5180888dcbef05bb55aca2ba282e51b07df6a1578ebb38b69b"
  public static let nativeType = "dobot_bringup/SyncAllResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupSyncAllResponse {
    var v = Ros1Dobot_bringupSyncAllResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupTCPSpeedRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a49b5d50c6b624f0fa07e22f80248b5199a2158c6211b1e6c0eca4a975ab7463"
  public static let nativeType = "dobot_bringup/TCPSpeedRequest"
  public static let nativeIdentity: String? = nil
  public var `vt`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`vt`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupTCPSpeedRequest {
    var v = Ros1Dobot_bringupTCPSpeedRequest()
    v.`vt` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupTCPSpeedResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8fda9d4671efacc4b7831694bd9e2cf16c90efbb3b790f17879896a48fb78d40"
  public static let nativeType = "dobot_bringup/TCPSpeedResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupTCPSpeedResponse {
    var v = Ros1Dobot_bringupTCPSpeedResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupTCPSpeedEndRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_11b32554e05b4dd64f7965fb8909226ee845f6fe236bf44c3cee6e1b58dc56ab"
  public static let nativeType = "dobot_bringup/TCPSpeedEndRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupTCPSpeedEndRequest {
    var v = Ros1Dobot_bringupTCPSpeedEndRequest()
    return v
  }
}
public struct Ros1Dobot_bringupTCPSpeedEndResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_209df9451cdd6aa01da6297a3dd200a7d48e7775c37e0f29210b6662f6025106"
  public static let nativeType = "dobot_bringup/TCPSpeedEndResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupTCPSpeedEndResponse {
    var v = Ros1Dobot_bringupTCPSpeedEndResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupTcpDashboardRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_d3db7b6a90c40d75214e005ed14a4556f064853544f887b22b37d475eaaaac4b"
  public static let nativeType = "dobot_bringup/TcpDashboardRequest"
  public static let nativeIdentity: String? = nil
  public var `command`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`command`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupTcpDashboardRequest {
    var v = Ros1Dobot_bringupTcpDashboardRequest()
    v.`command` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_bringupTcpDashboardResponse: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_eef5e6ea6b43d898ab0af1d6162c3d1738e437313aae7998802ec80e26345ae1"
  public static let nativeType = "dobot_bringup/TcpDashboardResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`result`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupTcpDashboardResponse
  {
    var v = Ros1Dobot_bringupTcpDashboardResponse()
    v.`result` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_bringupTcpRealDataRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_0da7b4edbd97640aa057410bfb4d67e0ab554f0a8776421def225798d99b5aba"
  public static let nativeType = "dobot_bringup/TcpRealDataRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: UInt32 = 0
  public var `size`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`size`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupTcpRealDataRequest {
    var v = Ros1Dobot_bringupTcpRealDataRequest()
    v.`index` = try r.integer(UInt32.self)
    v.`size` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros1Dobot_bringupTcpRealDataResponse: Canonical {
  public static let maximumWireBytes = 20
  public static let codecIdentity =
    "UWVMROS1_ed7ac4b91bfae3d1c2fdcf3ffe1efcbec473a5138c204115f6ec17adf3bf1d91"
  public static let nativeType = "dobot_bringup/TcpRealDataResponse"
  public static let nativeIdentity: String? = nil
  public var `real_data`: [UInt8] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`real_data`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`real_data`.count))
    for e in self.`real_data` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupTcpRealDataResponse {
    var v = Ros1Dobot_bringupTcpRealDataResponse()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`real_data` = []
    v.`real_data`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`real_data`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros1Dobot_bringupToolRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_0bd7f266c2fad2e0b91d423ed4c7ea0fd1e5af5b600f13406d1d777466a0fd16"
  public static let nativeType = "dobot_bringup/ToolRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupToolRequest {
    var v = Ros1Dobot_bringupToolRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupToolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_56b265050ea32f5b7ae269f92cfc71218d5c5ba05646909ea59069e33510466e"
  public static let nativeType = "dobot_bringup/ToolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupToolResponse {
    var v = Ros1Dobot_bringupToolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupToolAIRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a5268a08cb93da6f4c38764aa0236abde3f8c57e232a1dbc6f53134111ce2fd8"
  public static let nativeType = "dobot_bringup/ToolAIRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupToolAIRequest {
    var v = Ros1Dobot_bringupToolAIRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupToolAIResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_92c55f5b614847d1f3be252d07dcd9a30598232d3b4e8f522f8ec83994b56397"
  public static let nativeType = "dobot_bringup/ToolAIResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupToolAIResponse {
    var v = Ros1Dobot_bringupToolAIResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupToolDIRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_1ca6c66e74e3487aa95f47be019816e7186fc78866d0de3d8bf0387cd3df0076"
  public static let nativeType = "dobot_bringup/ToolDIRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupToolDIRequest {
    var v = Ros1Dobot_bringupToolDIRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupToolDIResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b82c8b78569e743f5ed6820f51a94e4df7a7123263480abe95d98c9d4eaaea6e"
  public static let nativeType = "dobot_bringup/ToolDIResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupToolDIResponse {
    var v = Ros1Dobot_bringupToolDIResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupToolDORequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_dc39c212586e15229136735c829a895bad7fc6a98ffc0bdce7ff979f922d23ab"
  public static let nativeType = "dobot_bringup/ToolDORequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupToolDORequest {
    var v = Ros1Dobot_bringupToolDORequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupToolDOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_9e7bf45f71e429e87a8b13e65ddef93703613393c6919c1533515c654e6c8bee"
  public static let nativeType = "dobot_bringup/ToolDOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupToolDOResponse {
    var v = Ros1Dobot_bringupToolDOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupToolDOExecuteRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_22cb71605a1372615814017f66f61ce144cbf3c8b7d8494afbed7738eb29903b"
  public static let nativeType = "dobot_bringup/ToolDOExecuteRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupToolDOExecuteRequest
  {
    var v = Ros1Dobot_bringupToolDOExecuteRequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupToolDOExecuteResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_4cb0bead175157db1ca3856044e06fde9cd2cd8775a973a50bba2829d3170cdd"
  public static let nativeType = "dobot_bringup/ToolDOExecuteResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupToolDOExecuteResponse
  {
    var v = Ros1Dobot_bringupToolDOExecuteResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupUserRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_76f5181e8f7f06636dbaf1f1cdac40cf5551f4b3c09894eb7fc0089f71e81e73"
  public static let nativeType = "dobot_bringup/UserRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupUserRequest {
    var v = Ros1Dobot_bringupUserRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupUserResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7f5730d781123bc19cadcdf6e3777368db7b6ea770a2fa42116af9b247bbec07"
  public static let nativeType = "dobot_bringup/UserResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupUserResponse {
    var v = Ros1Dobot_bringupUserResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupWaitRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2e5591a43882cc95d007f376128e7db03376cae95e637f77fff14ed3c115ff85"
  public static let nativeType = "dobot_bringup/WaitRequest"
  public static let nativeIdentity: String? = nil
  public var `time`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`time`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupWaitRequest {
    var v = Ros1Dobot_bringupWaitRequest()
    v.`time` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupWaitResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f745fbd59f29bdca82788cb44ef5848836cd510328fd4dcec6ae2cbe1b57a07f"
  public static let nativeType = "dobot_bringup/WaitResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupWaitResponse {
    var v = Ros1Dobot_bringupWaitResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_bringupPauseRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_524834ff32e2a939481b311a79efe4e67183379ae04516e87d75e4449d219b89"
  public static let nativeType = "dobot_bringup/pauseRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupPauseRequest {
    var v = Ros1Dobot_bringupPauseRequest()
    return v
  }
}
public struct Ros1Dobot_bringupPauseResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_791459101db2af7fdc04aa2e3778aeb684bc7f4b4fae16420c9b551383c2f545"
  public static let nativeType = "dobot_bringup/pauseResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_bringupPauseResponse {
    var v = Ros1Dobot_bringupPauseResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
