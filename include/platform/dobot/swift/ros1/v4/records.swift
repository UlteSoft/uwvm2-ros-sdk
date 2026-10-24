/// @file records.swift
/// @brief Preserve the complete original dobot/ros1_v4 canonical value domain.
/// @details The selected domain contains 190 complete record/components and 356 original fields. Declared
/// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
/// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
/// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
/// does not qualify a frontend, target ABI or native ROS transport.
/// @see The platform's localized language guide and complete API-CATALOG.md.
// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros1Dobot_v4_bringupRobotStatus: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_82bd02d6cae133bcc64f6bc44d1a99cf9d37557aab1c1d8fa3ba8db5ee624c4f"
  public static let nativeType = "dobot_v4_bringup/RobotStatus"
  public static let nativeIdentity: String? = nil
  public var `is_enable`: Bool = false
  public var `is_connected`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`is_enable`)
    try w.boolean(self.`is_connected`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupRobotStatus {
    var v = Ros1Dobot_v4_bringupRobotStatus()
    v.`is_enable` = try r.boolean()
    v.`is_connected` = try r.boolean()
    return v
  }
}
public struct Ros1Dobot_v4_bringupToolVectorActual: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_82ced795eaf8a686e3c4ef7b1d4385f2db2119990d10261086993e82049f0eb3"
  public static let nativeType = "dobot_v4_bringup/ToolVectorActual"
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
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupToolVectorActual {
    var v = Ros1Dobot_v4_bringupToolVectorActual()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`rx` = try r.float64()
    v.`ry` = try r.float64()
    v.`rz` = try r.float64()
    return v
  }
}
public struct Ros1Dobot_v4_bringupAIRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2214b217765bff4c163b4dc5d97631b8d69ff185f57d94fe05eb9de59aad3916"
  public static let nativeType = "dobot_v4_bringup/AIRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupAIRequest {
    var v = Ros1Dobot_v4_bringupAIRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupAIResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_47792956dab8fdbe34409d3fbb171c596c10fa7d51f1794e23139a1d1896a723"
  public static let nativeType = "dobot_v4_bringup/AIResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupAIResponse {
    var v = Ros1Dobot_v4_bringupAIResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupAORequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_67c96ce3587b6f894d311d80b9a25e5b23a25b6b3aa8b2e5ba1bfab0983064e5"
  public static let nativeType = "dobot_v4_bringup/AORequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupAORequest {
    var v = Ros1Dobot_v4_bringupAORequest()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupAOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_38ebdda40649964474bb27ed9212950b8f43b0eac13b2dd79bf0a605bdb121dd"
  public static let nativeType = "dobot_v4_bringup/AOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupAOResponse {
    var v = Ros1Dobot_v4_bringupAOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupAOInstantRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_69e03a2eebb2a231b59d673abe15a742fce22ea06c8efd1d684c5e62391adb43"
  public static let nativeType = "dobot_v4_bringup/AOInstantRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupAOInstantRequest {
    var v = Ros1Dobot_v4_bringupAOInstantRequest()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupAOInstantResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2ff0bd24267296503bc726f5c56730b44883589410fe761ebb20610b5f69a4ca"
  public static let nativeType = "dobot_v4_bringup/AOInstantResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupAOInstantResponse
  {
    var v = Ros1Dobot_v4_bringupAOInstantResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupAccJRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a6d27425ba463d6d990c5c62dde45ad47f89ae14fd2832df3387b6a19ab0fc05"
  public static let nativeType = "dobot_v4_bringup/AccJRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupAccJRequest {
    var v = Ros1Dobot_v4_bringupAccJRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupAccJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ff9508fd4b7dc283d453e43ca8637de582724fe7a5da37f7a7904e319215b5f1"
  public static let nativeType = "dobot_v4_bringup/AccJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupAccJResponse {
    var v = Ros1Dobot_v4_bringupAccJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupAccLRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_be3fa95380632fb2131388acdfabf9f98bed108ddf8290a001309cf8d870d8a8"
  public static let nativeType = "dobot_v4_bringup/AccLRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupAccLRequest {
    var v = Ros1Dobot_v4_bringupAccLRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupAccLResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8d93105e9d13cca877153ccef2879370ee21f0676ea0979a5829e5580c006ac3"
  public static let nativeType = "dobot_v4_bringup/AccLResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupAccLResponse {
    var v = Ros1Dobot_v4_bringupAccLResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupArcRequest: Canonical {
  public static let maximumWireBytes = 4261
  public static let codecIdentity =
    "UWVMROS1_0058b89dc12f71d3464fbc58e14c2fbb9aca71bcc927efe3c3d991df5433cde2"
  public static let nativeType = "dobot_v4_bringup/ArcRequest"
  public static let nativeIdentity: String? = nil
  public var `mode`: Bool = false
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `a2`: Double = 0
  public var `b2`: Double = 0
  public var `c2`: Double = 0
  public var `d2`: Double = 0
  public var `e2`: Double = 0
  public var `f2`: Double = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`mode`)
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    try w.float64(self.`a2`)
    try w.float64(self.`b2`)
    try w.float64(self.`c2`)
    try w.float64(self.`d2`)
    try w.float64(self.`e2`)
    try w.float64(self.`f2`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupArcRequest {
    var v = Ros1Dobot_v4_bringupArcRequest()
    v.`mode` = try r.boolean()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
    v.`a2` = try r.float64()
    v.`b2` = try r.float64()
    v.`c2` = try r.float64()
    v.`d2` = try r.float64()
    v.`e2` = try r.float64()
    v.`f2` = try r.float64()
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
public struct Ros1Dobot_v4_bringupArcResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7527828d6f107213576c2c1733b3978916baa255cf282df6ca77ac1d9364d263"
  public static let nativeType = "dobot_v4_bringup/ArcResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupArcResponse {
    var v = Ros1Dobot_v4_bringupArcResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupBrakeControlRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_3b295b5b162337e56aa01d87fef42c7bf25568bb6dd3ce63c252831f5f934618"
  public static let nativeType = "dobot_v4_bringup/BrakeControlRequest"
  public static let nativeIdentity: String? = nil
  public var `axisID`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`axisID`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupBrakeControlRequest
  {
    var v = Ros1Dobot_v4_bringupBrakeControlRequest()
    v.`axisID` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupBrakeControlResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_984998184713f59986fc50b3d31a4f33211b1fd340cef600e2bb43e8955c38e2"
  public static let nativeType = "dobot_v4_bringup/BrakeControlResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupBrakeControlResponse
  {
    var v = Ros1Dobot_v4_bringupBrakeControlResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupCPRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7bad993bf7a0a34147982828fe416072f9c03ecec034c66c47c0a12a94be7d76"
  public static let nativeType = "dobot_v4_bringup/CPRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupCPRequest {
    var v = Ros1Dobot_v4_bringupCPRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupCPResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_68fd2bec24a6b67275838832909dbb0b8dc0e733c2366ad37ebe7a7e71693513"
  public static let nativeType = "dobot_v4_bringup/CPResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupCPResponse {
    var v = Ros1Dobot_v4_bringupCPResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupCalcToolRequest: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_0df2645542e9b21986f200bc67313c82873f09b1ddaf09fcf0508d8db54a4424"
  public static let nativeType = "dobot_v4_bringup/CalcToolRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `matrix`: Int32 = 0
  public var `offset`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`matrix`)
    try w.string(self.`offset`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupCalcToolRequest {
    var v = Ros1Dobot_v4_bringupCalcToolRequest()
    v.`index` = try r.integer(Int32.self)
    v.`matrix` = try r.integer(Int32.self)
    v.`offset` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupCalcToolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7053f39e313c5cc7d9b7778a01c253dd6557a0909f287c916d1fc95b9495c9b0"
  public static let nativeType = "dobot_v4_bringup/CalcToolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupCalcToolResponse {
    var v = Ros1Dobot_v4_bringupCalcToolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupCalcUserRequest: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_50aba389bc763c0c8e652ea7bb6f1a270708ebc5225f2a1377d1089db4a79a45"
  public static let nativeType = "dobot_v4_bringup/CalcUserRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `matrix`: Int32 = 0
  public var `offset`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`matrix`)
    try w.string(self.`offset`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupCalcUserRequest {
    var v = Ros1Dobot_v4_bringupCalcUserRequest()
    v.`index` = try r.integer(Int32.self)
    v.`matrix` = try r.integer(Int32.self)
    v.`offset` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupCalcUserResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_76e431bdd83d3eab9bbd5c729403625c35800cc54969db89f07ed123f6573516"
  public static let nativeType = "dobot_v4_bringup/CalcUserResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupCalcUserResponse {
    var v = Ros1Dobot_v4_bringupCalcUserResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupCircleRequest: Canonical {
  public static let maximumWireBytes = 4265
  public static let codecIdentity =
    "UWVMROS1_c4cf7ae596c53bd499bb42c41e255bb11fa8502b8b7b755b4f93a90f935a1315"
  public static let nativeType = "dobot_v4_bringup/CircleRequest"
  public static let nativeIdentity: String? = nil
  public var `mode`: Bool = false
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `a2`: Double = 0
  public var `b2`: Double = 0
  public var `c2`: Double = 0
  public var `d2`: Double = 0
  public var `e2`: Double = 0
  public var `f2`: Double = 0
  public var `count`: Int32 = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`mode`)
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    try w.float64(self.`a2`)
    try w.float64(self.`b2`)
    try w.float64(self.`c2`)
    try w.float64(self.`d2`)
    try w.float64(self.`e2`)
    try w.float64(self.`f2`)
    try w.integer(self.`count`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupCircleRequest {
    var v = Ros1Dobot_v4_bringupCircleRequest()
    v.`mode` = try r.boolean()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
    v.`a2` = try r.float64()
    v.`b2` = try r.float64()
    v.`c2` = try r.float64()
    v.`d2` = try r.float64()
    v.`e2` = try r.float64()
    v.`f2` = try r.float64()
    v.`count` = try r.integer(Int32.self)
    let rawcount14 = try r.integer(UInt32.self)
    guard rawcount14 <= 16 else { throw RosError(22) }
    let count14 = Int(rawcount14)
    v.`paramValue` = []
    v.`paramValue`.reserveCapacity(count14)
    for _ in 0..<count14 {
      v.`paramValue`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_v4_bringupCircleResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2862bd2f86cf2bae6ecb3a4ad66028cbec380b50f1ad68e8d8e8eb5edbe07ee2"
  public static let nativeType = "dobot_v4_bringup/CircleResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupCircleResponse {
    var v = Ros1Dobot_v4_bringupCircleResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupClearErrorRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_e19d003e7788f8e7fab5248172d7a065af2810a88a170ff180c6b89a665efdbe"
  public static let nativeType = "dobot_v4_bringup/ClearErrorRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupClearErrorRequest
  {
    var v = Ros1Dobot_v4_bringupClearErrorRequest()
    return v
  }
}
public struct Ros1Dobot_v4_bringupClearErrorResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7d9ddcd9d69236ba1f0d8507d11e8c831fae9da929789911b2a861ae1902f8cd"
  public static let nativeType = "dobot_v4_bringup/ClearErrorResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupClearErrorResponse
  {
    var v = Ros1Dobot_v4_bringupClearErrorResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupContinueRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_a45b75caa5a568ad0a6e5c16860905ab09c2a235422b55c65eadde4bee1527bb"
  public static let nativeType = "dobot_v4_bringup/ContinueRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupContinueRequest {
    var v = Ros1Dobot_v4_bringupContinueRequest()
    return v
  }
}
public struct Ros1Dobot_v4_bringupContinueResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_cedb844bcaeeb932ba5cb519c2a9c1b53bbfac16187afd91122500199422f200"
  public static let nativeType = "dobot_v4_bringup/ContinueResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupContinueResponse {
    var v = Ros1Dobot_v4_bringupContinueResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupDIRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_6a8bb81e4400e5877fa1e45ab7ca52d7489bec2d1e7962f68ae3746ce86f1d00"
  public static let nativeType = "dobot_v4_bringup/DIRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupDIRequest {
    var v = Ros1Dobot_v4_bringupDIRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupDIResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ce95967f7dd2a0e517da80142d0ccc626dbbeee7e704a5a6fc2acec4a4c80127"
  public static let nativeType = "dobot_v4_bringup/DIResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupDIResponse {
    var v = Ros1Dobot_v4_bringupDIResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupDIGroupRequest: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_8743b807e224b75c331e7b45610542ec1bfbac56a3dce7a233036b81de6d98f3"
  public static let nativeType = "dobot_v4_bringup/DIGroupRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupDIGroupRequest {
    var v = Ros1Dobot_v4_bringupDIGroupRequest()
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
public struct Ros1Dobot_v4_bringupDIGroupResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f2c8281e742dd72d2678aa27c9392fb28b894e171a76c5572f7e761d9943859b"
  public static let nativeType = "dobot_v4_bringup/DIGroupResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupDIGroupResponse {
    var v = Ros1Dobot_v4_bringupDIGroupResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupDORequest: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_217446154f7ccb7edfe8300a81eefa28b74ac62ed827815582d0fc94187fbce4"
  public static let nativeType = "dobot_v4_bringup/DORequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public var `time`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
    try w.integer(self.`time`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupDORequest {
    var v = Ros1Dobot_v4_bringupDORequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    v.`time` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupDOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_4d6137412e39525097890303751e6c4b961617716513dc9f2b97a8cf63f09f68"
  public static let nativeType = "dobot_v4_bringup/DOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupDOResponse {
    var v = Ros1Dobot_v4_bringupDOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupDOGroupRequest: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_6c5ae015279806913f33fa50fa9e9d52d89666db9a54e93b83838cce3bb836c7"
  public static let nativeType = "dobot_v4_bringup/DOGroupRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupDOGroupRequest {
    var v = Ros1Dobot_v4_bringupDOGroupRequest()
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
public struct Ros1Dobot_v4_bringupDOGroupResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_3c9906d6a26c050fc8cf0595fab79bb1c8477f17f2a0733bc0751d0c228f37e6"
  public static let nativeType = "dobot_v4_bringup/DOGroupResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupDOGroupResponse {
    var v = Ros1Dobot_v4_bringupDOGroupResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupDOInstantRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_f968dae5e7f68a2a1e1c32404558c63be2e8aec8ff023b0fbb3e026bb673aad4"
  public static let nativeType = "dobot_v4_bringup/DOInstantRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupDOInstantRequest {
    var v = Ros1Dobot_v4_bringupDOInstantRequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupDOInstantResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_5a5d9e8621454763bfba5d951fea0fbc812392c05480eb9e3c68467be0205b80"
  public static let nativeType = "dobot_v4_bringup/DOInstantResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupDOInstantResponse
  {
    var v = Ros1Dobot_v4_bringupDOInstantResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupDisableRobotRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_c6e708a921cafac92702f7ac2a4d4d8a99bdca411c6c62c668d86c6b1246af8d"
  public static let nativeType = "dobot_v4_bringup/DisableRobotRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupDisableRobotRequest
  {
    var v = Ros1Dobot_v4_bringupDisableRobotRequest()
    return v
  }
}
public struct Ros1Dobot_v4_bringupDisableRobotResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_57dcc628039c6319ae3d47d4bee25019b22a516da860f7561231c4a31b198ca9"
  public static let nativeType = "dobot_v4_bringup/DisableRobotResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupDisableRobotResponse
  {
    var v = Ros1Dobot_v4_bringupDisableRobotResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupDragSensivityRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_e34dfb6c394f5fd6d364731a6edd4d7911c27984ae9c60ec20fb2e622bb65441"
  public static let nativeType = "dobot_v4_bringup/DragSensivityRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupDragSensivityRequest
  {
    var v = Ros1Dobot_v4_bringupDragSensivityRequest()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupDragSensivityResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_519737a35d454c88bdae4aaeffc61034760b17b845b3b2266f6ad6098601cd76"
  public static let nativeType = "dobot_v4_bringup/DragSensivityResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupDragSensivityResponse
  {
    var v = Ros1Dobot_v4_bringupDragSensivityResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupEmergencyStopRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_751a963045462cb152b6149d95f78f18be48efd3c34cddd43920b6df82363499"
  public static let nativeType = "dobot_v4_bringup/EmergencyStopRequest"
  public static let nativeIdentity: String? = nil
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupEmergencyStopRequest
  {
    var v = Ros1Dobot_v4_bringupEmergencyStopRequest()
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupEmergencyStopResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_5d4c00864d6e596dd996a12f3e13433bc25c75a21c7dd59c98aac974b42b5b8e"
  public static let nativeType = "dobot_v4_bringup/EmergencyStopResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupEmergencyStopResponse
  {
    var v = Ros1Dobot_v4_bringupEmergencyStopResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupEnableRobotRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_9a90b41b0ae5a740685220749838870540605b68d6ed85f5cdf56e218890d53b"
  public static let nativeType = "dobot_v4_bringup/EnableRobotRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupEnableRobotRequest
  {
    var v = Ros1Dobot_v4_bringupEnableRobotRequest()
    return v
  }
}
public struct Ros1Dobot_v4_bringupEnableRobotResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_1c645bec5758f33cc9dc330ca00591e042088ac27794c76f670e1d0a52a869c9"
  public static let nativeType = "dobot_v4_bringup/EnableRobotResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupEnableRobotResponse
  {
    var v = Ros1Dobot_v4_bringupEnableRobotResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupEnableSafeSkinRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_808633a5f3d4d6957be1585bae876d0b40f46c7fdec3a5df0e8161473fe989cf"
  public static let nativeType = "dobot_v4_bringup/EnableSafeSkinRequest"
  public static let nativeIdentity: String? = nil
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupEnableSafeSkinRequest
  {
    var v = Ros1Dobot_v4_bringupEnableSafeSkinRequest()
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupEnableSafeSkinResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_fb8254b1bc58adce25fcffb34d9bdcf5a4e07b6ab11ea4a91b449bf2917f3310"
  public static let nativeType = "dobot_v4_bringup/EnableSafeSkinResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupEnableSafeSkinResponse
  {
    var v = Ros1Dobot_v4_bringupEnableSafeSkinResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetAORequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_6edf6d9edc215d7cdc0d4c2027be30c4c6f4a62b08882e4a80a49bf714fe6766"
  public static let nativeType = "dobot_v4_bringup/GetAORequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetAORequest {
    var v = Ros1Dobot_v4_bringupGetAORequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetAOResponse: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_a2471d7551b75a07f5f567140cbfd17a9b6f7caf94d318188fc50d5e15dd2746"
  public static let nativeType = "dobot_v4_bringup/GetAOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public var `robot_return`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
    try w.string(self.`robot_return`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetAOResponse {
    var v = Ros1Dobot_v4_bringupGetAOResponse()
    v.`res` = try r.integer(Int32.self)
    v.`robot_return` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetAngleRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_16c02d9ba6329342c29a8819abe4fd8f48e8267f8ff2dbec35ede12905a611d0"
  public static let nativeType = "dobot_v4_bringup/GetAngleRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetAngleRequest {
    var v = Ros1Dobot_v4_bringupGetAngleRequest()
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetAngleResponse: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_4fe5219badc2c657bd42c12ea64e9c5dab3365bb3c37246a29ed8bd3ae8e22f5"
  public static let nativeType = "dobot_v4_bringup/GetAngleResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public var `robot_return`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
    try w.string(self.`robot_return`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetAngleResponse {
    var v = Ros1Dobot_v4_bringupGetAngleResponse()
    v.`res` = try r.integer(Int32.self)
    v.`robot_return` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetCoilsRequest: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_db257b1f763246d21165a2bc458ed7a46aa556d9a96d088c730e6372e3d2fb92"
  public static let nativeType = "dobot_v4_bringup/GetCoilsRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetCoilsRequest {
    var v = Ros1Dobot_v4_bringupGetCoilsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetCoilsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_4a6d5b73423a5f0f8097d7ca7475d0843182b48110da4aace20a74f95f6dafc5"
  public static let nativeType = "dobot_v4_bringup/GetCoilsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetCoilsResponse {
    var v = Ros1Dobot_v4_bringupGetCoilsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetCurrentCommandIdRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_8b2749c6976e425cfc622010d79df2e9528097e1941c454d7f6f4f5f5fc54e8d"
  public static let nativeType = "dobot_v4_bringup/GetCurrentCommandIdRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupGetCurrentCommandIdRequest
  {
    var v = Ros1Dobot_v4_bringupGetCurrentCommandIdRequest()
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetCurrentCommandIdResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_565405eaf7f5fcac5ae019988c00f2899cea6ff4c4250a67005b06887f1ae5ac"
  public static let nativeType = "dobot_v4_bringup/GetCurrentCommandIdResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupGetCurrentCommandIdResponse
  {
    var v = Ros1Dobot_v4_bringupGetCurrentCommandIdResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetDORequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_19195b8cf21c0a7cae4fe54c048b2503c2a9908cdf31e38bdabff62c70d961d2"
  public static let nativeType = "dobot_v4_bringup/GetDORequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetDORequest {
    var v = Ros1Dobot_v4_bringupGetDORequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetDOResponse: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_a92d0f090fddd9ad8f59c65806847c6398245fa2bbd5b4b39fe37819710bdd11"
  public static let nativeType = "dobot_v4_bringup/GetDOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public var `robot_return`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
    try w.string(self.`robot_return`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetDOResponse {
    var v = Ros1Dobot_v4_bringupGetDOResponse()
    v.`res` = try r.integer(Int32.self)
    v.`robot_return` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetDOGroupRequest: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_9beafb5ca7d5b030df02f8d5f31a84dd88cc1e517cd4a77452ebfab11f3da2e5"
  public static let nativeType = "dobot_v4_bringup/GetDOGroupRequest"
  public static let nativeIdentity: String? = nil
  public var `index_group`: [Int32] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`index_group`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`index_group`.count))
    for e in self.`index_group` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetDOGroupRequest
  {
    var v = Ros1Dobot_v4_bringupGetDOGroupRequest()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`index_group` = []
    v.`index_group`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`index_group`.append(try r.integer(Int32.self))
    }
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetDOGroupResponse: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_1796d32cb1299efd973c1e4dececb02d8de2fc808f51301b9fc879074d5b8ff8"
  public static let nativeType = "dobot_v4_bringup/GetDOGroupResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public var `robot_return`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
    try w.string(self.`robot_return`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetDOGroupResponse
  {
    var v = Ros1Dobot_v4_bringupGetDOGroupResponse()
    v.`res` = try r.integer(Int32.self)
    v.`robot_return` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetErrorIDRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_f5ddee0cd0b4a7957f7383fba800ed224d777a10f4131f9c8e58f08cfa2725af"
  public static let nativeType = "dobot_v4_bringup/GetErrorIDRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetErrorIDRequest
  {
    var v = Ros1Dobot_v4_bringupGetErrorIDRequest()
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetErrorIDResponse: Canonical {
  public static let maximumWireBytes = 72
  public static let codecIdentity =
    "UWVMROS1_441486082ce57caa45b1c8bcf59c8e030121ccf2c02a768bad75cf48251912ad"
  public static let nativeType = "dobot_v4_bringup/GetErrorIDResponse"
  public static let nativeIdentity: String? = nil
  public var `error_id`: [Int32] = []
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`error_id`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`error_id`.count))
    for e in self.`error_id` {
      try w.integer(e)
    }
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetErrorIDResponse
  {
    var v = Ros1Dobot_v4_bringupGetErrorIDResponse()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 16 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`error_id` = []
    v.`error_id`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`error_id`.append(try r.integer(Int32.self))
    }
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetHoldRegsRequest: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_3650c4e191a889cef5e991e5e0addd3ef179e1e2a97701c45ccc52983732665f"
  public static let nativeType = "dobot_v4_bringup/GetHoldRegsRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `addr`: Int32 = 0
  public var `count`: Int32 = 0
  public var `valType`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`addr`)
    try w.integer(self.`count`)
    try w.string(self.`valType`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetHoldRegsRequest
  {
    var v = Ros1Dobot_v4_bringupGetHoldRegsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    v.`valType` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetHoldRegsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b1cc22537d26e548a8e6af625e1834eb6e2b72583c8fcfd670fbfdc3f02af7c9"
  public static let nativeType = "dobot_v4_bringup/GetHoldRegsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupGetHoldRegsResponse
  {
    var v = Ros1Dobot_v4_bringupGetHoldRegsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetInBitsRequest: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_211d7c410772f45147665b8006d620537cb9882f1458b913418b7366ea78b589"
  public static let nativeType = "dobot_v4_bringup/GetInBitsRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetInBitsRequest {
    var v = Ros1Dobot_v4_bringupGetInBitsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetInBitsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_cc0a3d63f3ddd678b5a6e634bd08e2bf2bd4ef3da044e113ef7c6bc26a58c330"
  public static let nativeType = "dobot_v4_bringup/GetInBitsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetInBitsResponse
  {
    var v = Ros1Dobot_v4_bringupGetInBitsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetInRegsRequest: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_bbe0aa5f578101e5b6fb5fbec91d1709dc2300534dbcbd0477703ac031a83906"
  public static let nativeType = "dobot_v4_bringup/GetInRegsRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `addr`: Int32 = 0
  public var `count`: Int32 = 0
  public var `valType`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`addr`)
    try w.integer(self.`count`)
    try w.string(self.`valType`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetInRegsRequest {
    var v = Ros1Dobot_v4_bringupGetInRegsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    v.`valType` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetInRegsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_bc6b6dddf948716f9aecdcf7c63a76e3ab7af2e9c1a1d89963a2b98f03072bc4"
  public static let nativeType = "dobot_v4_bringup/GetInRegsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetInRegsResponse
  {
    var v = Ros1Dobot_v4_bringupGetInRegsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetInputBoolRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_af3ba33796db3f3ba7797d8f906d6dc05045046195f269e919476a20291a28cc"
  public static let nativeType = "dobot_v4_bringup/GetInputBoolRequest"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupGetInputBoolRequest
  {
    var v = Ros1Dobot_v4_bringupGetInputBoolRequest()
    v.`address` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetInputBoolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_dfe96bdd3f71be06416875e14d869467b372eb527a771521819c8c175bc0b97d"
  public static let nativeType = "dobot_v4_bringup/GetInputBoolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupGetInputBoolResponse
  {
    var v = Ros1Dobot_v4_bringupGetInputBoolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetInputFloatRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_49735777bcc4877ea6258cbd7e78b7eff3e4bf755a06aff3349e8209717aa30f"
  public static let nativeType = "dobot_v4_bringup/GetInputFloatRequest"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupGetInputFloatRequest
  {
    var v = Ros1Dobot_v4_bringupGetInputFloatRequest()
    v.`address` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetInputFloatResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b416d69f80a62975bd44ed6ae96b661e3fefab6a6fa4e7502b95e8b58a34c9dc"
  public static let nativeType = "dobot_v4_bringup/GetInputFloatResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupGetInputFloatResponse
  {
    var v = Ros1Dobot_v4_bringupGetInputFloatResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetInputIntRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2c8f2a7af769f2b7deb8424c85cabf8b2d20724123814db147d3e730db5c63be"
  public static let nativeType = "dobot_v4_bringup/GetInputIntRequest"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetInputIntRequest
  {
    var v = Ros1Dobot_v4_bringupGetInputIntRequest()
    v.`address` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetInputIntResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_dd5128340e3165bbbede1cdda7ed5a9f2bd581cc784d7ae9574cc901ce75fa74"
  public static let nativeType = "dobot_v4_bringup/GetInputIntResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupGetInputIntResponse
  {
    var v = Ros1Dobot_v4_bringupGetInputIntResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetOutputBoolRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e97f4a2a8f0ce7e0f0131882f8c8200362c0fe2566da4fcdd6306025acd33e82"
  public static let nativeType = "dobot_v4_bringup/GetOutputBoolRequest"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupGetOutputBoolRequest
  {
    var v = Ros1Dobot_v4_bringupGetOutputBoolRequest()
    v.`address` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetOutputBoolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_af8f6ede73968ba90408f39db9ad6efdfb1191cc09fabd2f9e9a4178ca30e575"
  public static let nativeType = "dobot_v4_bringup/GetOutputBoolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupGetOutputBoolResponse
  {
    var v = Ros1Dobot_v4_bringupGetOutputBoolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetOutputFloatRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_990689595afde1ed64940238b7dd332e5f570e0242413c7cfe3ba0c5eebfa064"
  public static let nativeType = "dobot_v4_bringup/GetOutputFloatRequest"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupGetOutputFloatRequest
  {
    var v = Ros1Dobot_v4_bringupGetOutputFloatRequest()
    v.`address` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetOutputFloatResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_d63bd12901980b0c11cc5ab5a9b189fb28607a009273cd3ebd24ecc7ec32f41e"
  public static let nativeType = "dobot_v4_bringup/GetOutputFloatResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupGetOutputFloatResponse
  {
    var v = Ros1Dobot_v4_bringupGetOutputFloatResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetOutputIntRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_9ab878fc3c207c7e4a06ca94cfe2bb7884abaf00486178014cc4b0a6eeebb0a8"
  public static let nativeType = "dobot_v4_bringup/GetOutputIntRequest"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupGetOutputIntRequest
  {
    var v = Ros1Dobot_v4_bringupGetOutputIntRequest()
    v.`address` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetOutputIntResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ea5487388ef99cbfed64ed989030505e48e86b129722e0316f2d31f8311417f9"
  public static let nativeType = "dobot_v4_bringup/GetOutputIntResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupGetOutputIntResponse
  {
    var v = Ros1Dobot_v4_bringupGetOutputIntResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetPoseRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_b14d36ef472212b0064947960115f9227536b0c759748c9fb6c9fa6458d704bd"
  public static let nativeType = "dobot_v4_bringup/GetPoseRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetPoseRequest {
    var v = Ros1Dobot_v4_bringupGetPoseRequest()
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetPoseResponse: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_f19589706bd734833519083d4c8273fd8c2b570535b7617fea2384364b604f94"
  public static let nativeType = "dobot_v4_bringup/GetPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public var `robot_return`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
    try w.string(self.`robot_return`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupGetPoseResponse {
    var v = Ros1Dobot_v4_bringupGetPoseResponse()
    v.`res` = try r.integer(Int32.self)
    v.`robot_return` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetStartPoseRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_b85c88ac53f37bbcec66d8507f254a034f3b293b79f06c567c0bf56b35cf0982"
  public static let nativeType = "dobot_v4_bringup/GetStartPoseRequest"
  public static let nativeIdentity: String? = nil
  public var `traceName`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`traceName`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupGetStartPoseRequest
  {
    var v = Ros1Dobot_v4_bringupGetStartPoseRequest()
    v.`traceName` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupGetStartPoseResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_0c6ab6a86912de5662ac8a4b70b92f2814b6bf0bc60ae4b8a3e6aea7597f4d4e"
  public static let nativeType = "dobot_v4_bringup/GetStartPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupGetStartPoseResponse
  {
    var v = Ros1Dobot_v4_bringupGetStartPoseResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupInverseKinRequest: Canonical {
  public static let maximumWireBytes = 1088
  public static let codecIdentity =
    "UWVMROS1_1fc643085bcd0497163c216049ede91418cdae716192a40200946df7b78c1593"
  public static let nativeType = "dobot_v4_bringup/InverseKinRequest"
  public static let nativeIdentity: String? = nil
  public var `X`: Double = 0
  public var `Y`: Double = 0
  public var `Z`: Double = 0
  public var `Rx`: Double = 0
  public var `Ry`: Double = 0
  public var `Rz`: Double = 0
  public var `useJointNear`: String = ""
  public var `jointNear`: String = ""
  public var `user`: String = ""
  public var `tool`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`X`)
    try w.float64(self.`Y`)
    try w.float64(self.`Z`)
    try w.float64(self.`Rx`)
    try w.float64(self.`Ry`)
    try w.float64(self.`Rz`)
    try w.string(self.`useJointNear`, bound: 256)
    try w.string(self.`jointNear`, bound: 256)
    try w.string(self.`user`, bound: 256)
    try w.string(self.`tool`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupInverseKinRequest
  {
    var v = Ros1Dobot_v4_bringupInverseKinRequest()
    v.`X` = try r.float64()
    v.`Y` = try r.float64()
    v.`Z` = try r.float64()
    v.`Rx` = try r.float64()
    v.`Ry` = try r.float64()
    v.`Rz` = try r.float64()
    v.`useJointNear` = try r.string(bound: 256)
    v.`jointNear` = try r.string(bound: 256)
    v.`user` = try r.string(bound: 256)
    v.`tool` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupInverseKinResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_5a69917a9c3130c4c46715c919ef1d8ed3de7008d99f1ac5008dd2d6ebc675c7"
  public static let nativeType = "dobot_v4_bringup/InverseKinResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupInverseKinResponse
  {
    var v = Ros1Dobot_v4_bringupInverseKinResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupInverseSolutionRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_4150dfc83a8068093066ac2fe63a2f9b1f2cc3698da4c42fc8972c9a620bf896"
  public static let nativeType = "dobot_v4_bringup/InverseSolutionRequest"
  public static let nativeIdentity: String? = nil
  public var `parameter`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`parameter`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupInverseSolutionRequest
  {
    var v = Ros1Dobot_v4_bringupInverseSolutionRequest()
    v.`parameter` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupInverseSolutionResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_1530a9f8f40c2a470d09f448daffaddbcdef69f38b1465d63fc1bc911eab961c"
  public static let nativeType = "dobot_v4_bringup/InverseSolutionResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupInverseSolutionResponse
  {
    var v = Ros1Dobot_v4_bringupInverseSolutionResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupModbusCloseRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c00f96f924c6dd2acada1843246631cfb2c93debb4016a05aac6acdee33635fa"
  public static let nativeType = "dobot_v4_bringup/ModbusCloseRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupModbusCloseRequest
  {
    var v = Ros1Dobot_v4_bringupModbusCloseRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupModbusCloseResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2f5c36f5e16f70b47d1931b5bbd568d0f315c8b1dc50f69340327f0e30c4909e"
  public static let nativeType = "dobot_v4_bringup/ModbusCloseResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupModbusCloseResponse
  {
    var v = Ros1Dobot_v4_bringupModbusCloseResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupModbusCreateRequest: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_64da2676ebcc30b9e29ec04e635f05386a3ff347fa6df3ff493aa25e4d78b26d"
  public static let nativeType = "dobot_v4_bringup/ModbusCreateRequest"
  public static let nativeIdentity: String? = nil
  public var `ip`: String = ""
  public var `port`: Int32 = 0
  public var `slave_id`: Int32 = 0
  public var `isRTU`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`ip`, bound: 256)
    try w.integer(self.`port`)
    try w.integer(self.`slave_id`)
    try w.integer(self.`isRTU`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupModbusCreateRequest
  {
    var v = Ros1Dobot_v4_bringupModbusCreateRequest()
    v.`ip` = try r.string(bound: 256)
    v.`port` = try r.integer(Int32.self)
    v.`slave_id` = try r.integer(Int32.self)
    v.`isRTU` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupModbusCreateResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_32376a5b5a7a278cd7bc728ea0ffda38c64a16c35f595ce6b13b83372cbb083b"
  public static let nativeType = "dobot_v4_bringup/ModbusCreateResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupModbusCreateResponse
  {
    var v = Ros1Dobot_v4_bringupModbusCreateResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupModbusRTUCreateRequest: Canonical {
  public static let maximumWireBytes = 276
  public static let codecIdentity =
    "UWVMROS1_684c27217fe081396d625eb0809a3aa3eec48fda11e6ff0eebb315dddac6175d"
  public static let nativeType = "dobot_v4_bringup/ModbusRTUCreateRequest"
  public static let nativeIdentity: String? = nil
  public var `slave_id`: Int32 = 0
  public var `baud`: Int32 = 0
  public var `parity`: String = ""
  public var `data_bit`: Int32 = 0
  public var `stop_bit`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`slave_id`)
    try w.integer(self.`baud`)
    try w.string(self.`parity`, bound: 256)
    try w.integer(self.`data_bit`)
    try w.integer(self.`stop_bit`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupModbusRTUCreateRequest
  {
    var v = Ros1Dobot_v4_bringupModbusRTUCreateRequest()
    v.`slave_id` = try r.integer(Int32.self)
    v.`baud` = try r.integer(Int32.self)
    v.`parity` = try r.string(bound: 256)
    v.`data_bit` = try r.integer(Int32.self)
    v.`stop_bit` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupModbusRTUCreateResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_28a693e382f42f9edc460ef956a0b6108aebeaef33b8db6ae2625425963912df"
  public static let nativeType = "dobot_v4_bringup/ModbusRTUCreateResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupModbusRTUCreateResponse
  {
    var v = Ros1Dobot_v4_bringupModbusRTUCreateResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupMovJRequest: Canonical {
  public static let maximumWireBytes = 4213
  public static let codecIdentity =
    "UWVMROS1_2d2d053541befd5bcd9a058f7f50709ed7a1ddf0caa743cd567187e467f99ae0"
  public static let nativeType = "dobot_v4_bringup/MovJRequest"
  public static let nativeIdentity: String? = nil
  public var `mode`: Bool = false
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`mode`)
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupMovJRequest {
    var v = Ros1Dobot_v4_bringupMovJRequest()
    v.`mode` = try r.boolean()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
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
public struct Ros1Dobot_v4_bringupMovJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_921c511aec3f1fbf1fb965317b30be98aaeab757bb24052f27219083fe5012d0"
  public static let nativeType = "dobot_v4_bringup/MovJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupMovJResponse {
    var v = Ros1Dobot_v4_bringupMovJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupMovJIORequest: Canonical {
  public static let maximumWireBytes = 8377
  public static let codecIdentity =
    "UWVMROS1_6639020680bee5c91a094deba0a308821d7ee51c255cee6952f6773a43484193"
  public static let nativeType = "dobot_v4_bringup/MovJIORequest"
  public static let nativeIdentity: String? = nil
  public var `mode`: Bool = false
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `MDIS`: [String] = []
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`mode`)
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`MDIS`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`MDIS`.count))
    for e in self.`MDIS` {
      try w.string(e, bound: 256)
    }
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupMovJIORequest {
    var v = Ros1Dobot_v4_bringupMovJIORequest()
    v.`mode` = try r.boolean()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 16 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`MDIS` = []
    v.`MDIS`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`MDIS`.append(try r.string(bound: 256))
    }
    let rawcount8 = try r.integer(UInt32.self)
    guard rawcount8 <= 16 else { throw RosError(22) }
    let count8 = Int(rawcount8)
    v.`paramValue` = []
    v.`paramValue`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`paramValue`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_v4_bringupMovJIOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c410d54a6ab703948c0841151572e618741eb2441af100d68480eddf6cdb2e45"
  public static let nativeType = "dobot_v4_bringup/MovJIOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupMovJIOResponse {
    var v = Ros1Dobot_v4_bringupMovJIOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupMovLRequest: Canonical {
  public static let maximumWireBytes = 4213
  public static let codecIdentity =
    "UWVMROS1_72589769e592fb4d1bded8fc453ee435d45b11d94e5179cdf19f7e4bab04173f"
  public static let nativeType = "dobot_v4_bringup/MovLRequest"
  public static let nativeIdentity: String? = nil
  public var `mode`: Bool = false
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`mode`)
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupMovLRequest {
    var v = Ros1Dobot_v4_bringupMovLRequest()
    v.`mode` = try r.boolean()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
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
public struct Ros1Dobot_v4_bringupMovLResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_04c674d611a52c37184c4b8991acbb81d9edda1185f5210082e9a77ba9dfcd6d"
  public static let nativeType = "dobot_v4_bringup/MovLResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupMovLResponse {
    var v = Ros1Dobot_v4_bringupMovLResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupMovLIORequest: Canonical {
  public static let maximumWireBytes = 8377
  public static let codecIdentity =
    "UWVMROS1_df87ae10d55cdb0566a7ba522ce4df0f53b1c291e647ab8f073448280fdcd43f"
  public static let nativeType = "dobot_v4_bringup/MovLIORequest"
  public static let nativeIdentity: String? = nil
  public var `mode`: Bool = false
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `MDIS`: [String] = []
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`mode`)
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`MDIS`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`MDIS`.count))
    for e in self.`MDIS` {
      try w.string(e, bound: 256)
    }
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupMovLIORequest {
    var v = Ros1Dobot_v4_bringupMovLIORequest()
    v.`mode` = try r.boolean()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 16 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`MDIS` = []
    v.`MDIS`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`MDIS`.append(try r.string(bound: 256))
    }
    let rawcount8 = try r.integer(UInt32.self)
    guard rawcount8 <= 16 else { throw RosError(22) }
    let count8 = Int(rawcount8)
    v.`paramValue` = []
    v.`paramValue`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`paramValue`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros1Dobot_v4_bringupMovLIOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c9cb157242bbaa12d30ff4010775c96c4596668e07f1fffa18700f7f0aeeec47"
  public static let nativeType = "dobot_v4_bringup/MovLIOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupMovLIOResponse {
    var v = Ros1Dobot_v4_bringupMovLIOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupMoveJogRequest: Canonical {
  public static let maximumWireBytes = 4424
  public static let codecIdentity =
    "UWVMROS1_450e321ee26aed642b7e5bfb7b7faec3ac86c3cce7d03e61bceea90ec0a195d4"
  public static let nativeType = "dobot_v4_bringup/MoveJogRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupMoveJogRequest {
    var v = Ros1Dobot_v4_bringupMoveJogRequest()
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
public struct Ros1Dobot_v4_bringupMoveJogResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_d7fcf1ce9c2d2ccc437ca0fc9abe4963bdf6ca6ce7f549e130286f14fe5f6781"
  public static let nativeType = "dobot_v4_bringup/MoveJogResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupMoveJogResponse {
    var v = Ros1Dobot_v4_bringupMoveJogResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupPauseRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_a3cbf1728596a646540afd89a3de57662a65b53cd973098a97e604ea9e8c5f79"
  public static let nativeType = "dobot_v4_bringup/PauseRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupPauseRequest {
    var v = Ros1Dobot_v4_bringupPauseRequest()
    return v
  }
}
public struct Ros1Dobot_v4_bringupPauseResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_67fc61818824bc4608b94d2af853eee7835331d0d4b64cb62f98f08ec2050030"
  public static let nativeType = "dobot_v4_bringup/PauseResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupPauseResponse {
    var v = Ros1Dobot_v4_bringupPauseResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupPositiveKinRequest: Canonical {
  public static let maximumWireBytes = 568
  public static let codecIdentity =
    "UWVMROS1_591cc2000db7e9c1bd10f43c28ec13dc902d3f8ab5c37ff7a9f9ca080d26bccc"
  public static let nativeType = "dobot_v4_bringup/PositiveKinRequest"
  public static let nativeIdentity: String? = nil
  public var `J1`: Double = 0
  public var `J2`: Double = 0
  public var `J3`: Double = 0
  public var `J4`: Double = 0
  public var `J5`: Double = 0
  public var `J6`: Double = 0
  public var `user`: String = ""
  public var `tool`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`J1`)
    try w.float64(self.`J2`)
    try w.float64(self.`J3`)
    try w.float64(self.`J4`)
    try w.float64(self.`J5`)
    try w.float64(self.`J6`)
    try w.string(self.`user`, bound: 256)
    try w.string(self.`tool`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupPositiveKinRequest
  {
    var v = Ros1Dobot_v4_bringupPositiveKinRequest()
    v.`J1` = try r.float64()
    v.`J2` = try r.float64()
    v.`J3` = try r.float64()
    v.`J4` = try r.float64()
    v.`J5` = try r.float64()
    v.`J6` = try r.float64()
    v.`user` = try r.string(bound: 256)
    v.`tool` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupPositiveKinResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a06a04b9c67a9891835877ce46bdbc9a6d56cc9880798b4534154c0695b5606a"
  public static let nativeType = "dobot_v4_bringup/PositiveKinResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupPositiveKinResponse
  {
    var v = Ros1Dobot_v4_bringupPositiveKinResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupPowerOnRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_febf93c0dc17185154a3ad45760e9aa3b22642fb5c7c86ac3269befcb9e2a27c"
  public static let nativeType = "dobot_v4_bringup/PowerOnRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupPowerOnRequest {
    var v = Ros1Dobot_v4_bringupPowerOnRequest()
    return v
  }
}
public struct Ros1Dobot_v4_bringupPowerOnResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_083b811d381b30810ae8741b69bfc8c18634f4003f0216ce535dc2187c337622"
  public static let nativeType = "dobot_v4_bringup/PowerOnResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupPowerOnResponse {
    var v = Ros1Dobot_v4_bringupPowerOnResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupRelJointMovJRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_03f3ee9c0715609f67b971e2588df919c7a23ea6bf3a520ba737e4d1e1c08141"
  public static let nativeType = "dobot_v4_bringup/RelJointMovJRequest"
  public static let nativeIdentity: String? = nil
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupRelJointMovJRequest
  {
    var v = Ros1Dobot_v4_bringupRelJointMovJRequest()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
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
public struct Ros1Dobot_v4_bringupRelJointMovJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_3ba9eb45a9f54a9f705c20ec1cce417003d702415cf0fc1280694e226c54084f"
  public static let nativeType = "dobot_v4_bringup/RelJointMovJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupRelJointMovJResponse
  {
    var v = Ros1Dobot_v4_bringupRelJointMovJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupRelMovJToolRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_7f7882c7e426f08ad98387385892480255a9824c5ca72c424f8424ceae14e621"
  public static let nativeType = "dobot_v4_bringup/RelMovJToolRequest"
  public static let nativeIdentity: String? = nil
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupRelMovJToolRequest
  {
    var v = Ros1Dobot_v4_bringupRelMovJToolRequest()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
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
public struct Ros1Dobot_v4_bringupRelMovJToolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_3173c722c2d008f6e7964d46324d691863810f1b98904fb8f56cf4a1f97b6fdc"
  public static let nativeType = "dobot_v4_bringup/RelMovJToolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupRelMovJToolResponse
  {
    var v = Ros1Dobot_v4_bringupRelMovJToolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupRelMovJUserRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_12612601f4b55c9c84b6822877d95821ac1aec746eac88e24b17dd352f2d63b8"
  public static let nativeType = "dobot_v4_bringup/RelMovJUserRequest"
  public static let nativeIdentity: String? = nil
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupRelMovJUserRequest
  {
    var v = Ros1Dobot_v4_bringupRelMovJUserRequest()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
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
public struct Ros1Dobot_v4_bringupRelMovJUserResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c29d480624bcb6db26ed0b3e38f7183135f13be6412a93a6bcdd1efd46428489"
  public static let nativeType = "dobot_v4_bringup/RelMovJUserResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupRelMovJUserResponse
  {
    var v = Ros1Dobot_v4_bringupRelMovJUserResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupRelMovLToolRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_11c9c4d6308ddc948238fce13e554bfba93ef74e6f6cb1086ee02bd2818709ce"
  public static let nativeType = "dobot_v4_bringup/RelMovLToolRequest"
  public static let nativeIdentity: String? = nil
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupRelMovLToolRequest
  {
    var v = Ros1Dobot_v4_bringupRelMovLToolRequest()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
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
public struct Ros1Dobot_v4_bringupRelMovLToolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_bfe57ec92c1f5cc5251706b273b15cae12d35ed49463b47008027272c5d51236"
  public static let nativeType = "dobot_v4_bringup/RelMovLToolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupRelMovLToolResponse
  {
    var v = Ros1Dobot_v4_bringupRelMovLToolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupRelMovLUserRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_7eec6fcd3cac592a1f516e25e58e3b5bd5da693c08fe5df4cadf294147d4e591"
  public static let nativeType = "dobot_v4_bringup/RelMovLUserRequest"
  public static let nativeIdentity: String? = nil
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupRelMovLUserRequest
  {
    var v = Ros1Dobot_v4_bringupRelMovLUserRequest()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
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
public struct Ros1Dobot_v4_bringupRelMovLUserResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_054f03b4d48cded4e1712243f4d5eb8b989a16124b4202ab42b0e634997b472c"
  public static let nativeType = "dobot_v4_bringup/RelMovLUserResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupRelMovLUserResponse
  {
    var v = Ros1Dobot_v4_bringupRelMovLUserResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupRobotModeRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_db094c3c5c75ecc89ac3be728e54b84fb5354509cf7632263f6797df9db109c7"
  public static let nativeType = "dobot_v4_bringup/RobotModeRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupRobotModeRequest {
    var v = Ros1Dobot_v4_bringupRobotModeRequest()
    return v
  }
}
public struct Ros1Dobot_v4_bringupRobotModeResponse: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_f501109846c455fc295cd94a65059561dfee05fc6755573801460fe140bf6e40"
  public static let nativeType = "dobot_v4_bringup/RobotModeResponse"
  public static let nativeIdentity: String? = nil
  public var `mode`: Int32 = 0
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupRobotModeResponse
  {
    var v = Ros1Dobot_v4_bringupRobotModeResponse()
    v.`mode` = try r.integer(Int32.self)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupRunScriptRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_45c7863ab78220099ce9ad559ac406d490317ac47ef35d662cdf9ef64774ec98"
  public static let nativeType = "dobot_v4_bringup/RunScriptRequest"
  public static let nativeIdentity: String? = nil
  public var `projectName`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`projectName`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupRunScriptRequest {
    var v = Ros1Dobot_v4_bringupRunScriptRequest()
    v.`projectName` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupRunScriptResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_bbe00f0e717c2efe2ff2f2b42985635e9813dbabb584d814a335e447a85d0209"
  public static let nativeType = "dobot_v4_bringup/RunScriptResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupRunScriptResponse
  {
    var v = Ros1Dobot_v4_bringupRunScriptResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupServoJRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_8c9b347c879ceef3a11dfcfc0fc2ada53897da98b02d9dee443784e25471ed51"
  public static let nativeType = "dobot_v4_bringup/ServoJRequest"
  public static let nativeIdentity: String? = nil
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupServoJRequest {
    var v = Ros1Dobot_v4_bringupServoJRequest()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
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
public struct Ros1Dobot_v4_bringupServoJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a0391d4e27035d998781aedc40c4098c8ff026cc8808a8888dd322ecb91446c1"
  public static let nativeType = "dobot_v4_bringup/ServoJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupServoJResponse {
    var v = Ros1Dobot_v4_bringupServoJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupServoPRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_0ec8a39a2ec5e21509b6012a05ac9af8c71f4e268079bc611519fd397bd4ea8e"
  public static let nativeType = "dobot_v4_bringup/ServoPRequest"
  public static let nativeIdentity: String? = nil
  public var `a`: Double = 0
  public var `b`: Double = 0
  public var `c`: Double = 0
  public var `d`: Double = 0
  public var `e`: Double = 0
  public var `f`: Double = 0
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`a`)
    try w.float64(self.`b`)
    try w.float64(self.`c`)
    try w.float64(self.`d`)
    try w.float64(self.`e`)
    try w.float64(self.`f`)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupServoPRequest {
    var v = Ros1Dobot_v4_bringupServoPRequest()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    v.`d` = try r.float64()
    v.`e` = try r.float64()
    v.`f` = try r.float64()
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
public struct Ros1Dobot_v4_bringupServoPResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_534495c7b3b9faed99ab16dd7c20ba75a0d603b146a4fdff3285109630915104"
  public static let nativeType = "dobot_v4_bringup/ServoPResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupServoPResponse {
    var v = Ros1Dobot_v4_bringupServoPResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetBackDistanceRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_adcf7f43e4a0bed230f8a1c884fed6fa9fc905f06f5b2a5d8e7423eba6b43678"
  public static let nativeType = "dobot_v4_bringup/SetBackDistanceRequest"
  public static let nativeIdentity: String? = nil
  public var `distance`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`distance`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSetBackDistanceRequest
  {
    var v = Ros1Dobot_v4_bringupSetBackDistanceRequest()
    v.`distance` = try r.float64()
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetBackDistanceResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_48b61c9636dd4d31c3913e6bb59786ddc18d32e376ff86b5dd05cd9899933afe"
  public static let nativeType = "dobot_v4_bringup/SetBackDistanceResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSetBackDistanceResponse
  {
    var v = Ros1Dobot_v4_bringupSetBackDistanceResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetCoilsRequest: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_d2c663c0cd38d7aae9af549af9f152da09208ba3ce16fd573241b9f0b99d2073"
  public static let nativeType = "dobot_v4_bringup/SetCoilsRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupSetCoilsRequest {
    var v = Ros1Dobot_v4_bringupSetCoilsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    v.`valTab` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetCoilsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c3bea118bd8b50d72266258c8cbcaa8db4528cdcc85e4c7234f50c6429f1f4f7"
  public static let nativeType = "dobot_v4_bringup/SetCoilsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupSetCoilsResponse {
    var v = Ros1Dobot_v4_bringupSetCoilsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetCollisionLevelRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_95070390623bee07bf7b44485a93ab842dc625bd7f888fa2a396081d276cccfc"
  public static let nativeType = "dobot_v4_bringup/SetCollisionLevelRequest"
  public static let nativeIdentity: String? = nil
  public var `level`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`level`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSetCollisionLevelRequest
  {
    var v = Ros1Dobot_v4_bringupSetCollisionLevelRequest()
    v.`level` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetCollisionLevelResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_324d9b64e48fa00ed7f6af2340626606c8dd0ba2600cda102795b035a57a5c9f"
  public static let nativeType = "dobot_v4_bringup/SetCollisionLevelResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSetCollisionLevelResponse
  {
    var v = Ros1Dobot_v4_bringupSetCollisionLevelResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetHoldRegsRequest: Canonical {
  public static let maximumWireBytes = 532
  public static let codecIdentity =
    "UWVMROS1_ce0be97769833910877870774a7c09712b508d0d5e85f667bb035078cf5930c3"
  public static let nativeType = "dobot_v4_bringup/SetHoldRegsRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `addr`: Int32 = 0
  public var `count`: Int32 = 0
  public var `valTab`: String = ""
  public var `valType`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`addr`)
    try w.integer(self.`count`)
    try w.string(self.`valTab`, bound: 256)
    try w.string(self.`valType`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupSetHoldRegsRequest
  {
    var v = Ros1Dobot_v4_bringupSetHoldRegsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    v.`valTab` = try r.string(bound: 256)
    v.`valType` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetHoldRegsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a229c428efede3153687496efa244e092b74a6c2005f1423c50a7a90e21f7e7b"
  public static let nativeType = "dobot_v4_bringup/SetHoldRegsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSetHoldRegsResponse
  {
    var v = Ros1Dobot_v4_bringupSetHoldRegsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetOutputBoolRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_4dc10539aa485449c8f65b7ad655c5c717d0c76c41fa716701e9cf5d6e7d97e9"
  public static let nativeType = "dobot_v4_bringup/SetOutputBoolRequest"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSetOutputBoolRequest
  {
    var v = Ros1Dobot_v4_bringupSetOutputBoolRequest()
    v.`address` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetOutputBoolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b43783a0f3182850b9202524236865cc1bb5cb20ee6a89591254ca04be13569a"
  public static let nativeType = "dobot_v4_bringup/SetOutputBoolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSetOutputBoolResponse
  {
    var v = Ros1Dobot_v4_bringupSetOutputBoolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetOutputFloatRequest: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_e11b4f70006a95e074cf18a7c890bf33e0d2f387e881a953bad162926fe05f50"
  public static let nativeType = "dobot_v4_bringup/SetOutputFloatRequest"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public var `value`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.float64(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSetOutputFloatRequest
  {
    var v = Ros1Dobot_v4_bringupSetOutputFloatRequest()
    v.`address` = try r.integer(Int32.self)
    v.`value` = try r.float64()
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetOutputFloatResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_653b5afbd26aab760b89953a1c3743bf0fa4b1b2380b9f38b6f3fcb53f0ddfba"
  public static let nativeType = "dobot_v4_bringup/SetOutputFloatResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSetOutputFloatResponse
  {
    var v = Ros1Dobot_v4_bringupSetOutputFloatResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetOutputIntRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_54cfb622d13838cc5e615d9defaccac8afeb3f4892af057eccf5a19a64d5f8ff"
  public static let nativeType = "dobot_v4_bringup/SetOutputIntRequest"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSetOutputIntRequest
  {
    var v = Ros1Dobot_v4_bringupSetOutputIntRequest()
    v.`address` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetOutputIntResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_0d7a10823e931d77cc176cd8546bbb4acbe9f785ff85f7b82c692022d963d9c8"
  public static let nativeType = "dobot_v4_bringup/SetOutputIntResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSetOutputIntResponse
  {
    var v = Ros1Dobot_v4_bringupSetOutputIntResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetPayloadRequest: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_f595c502f4b08f1d2cffbd7f5a03e468f544acd0cfb4e3b8c162b9597baa6d00"
  public static let nativeType = "dobot_v4_bringup/SetPayloadRequest"
  public static let nativeIdentity: String? = nil
  public var `load`: Double = 0
  public var `x`: Double = 0
  public var `y`: Double = 0
  public var `z`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`load`)
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupSetPayloadRequest
  {
    var v = Ros1Dobot_v4_bringupSetPayloadRequest()
    v.`load` = try r.float64()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetPayloadResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_48b853fc66e97448549a9c89d644dac6be37cd5482ed23eb6a5e966bd9a3fc5a"
  public static let nativeType = "dobot_v4_bringup/SetPayloadResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupSetPayloadResponse
  {
    var v = Ros1Dobot_v4_bringupSetPayloadResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetPostCollisionModeRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_0545d1a4bb62c939cb3a555bb86c8d1451c0a94fb5f58161cce4a00a69317ca1"
  public static let nativeType = "dobot_v4_bringup/SetPostCollisionModeRequest"
  public static let nativeIdentity: String? = nil
  public var `mode`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSetPostCollisionModeRequest
  {
    var v = Ros1Dobot_v4_bringupSetPostCollisionModeRequest()
    v.`mode` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetPostCollisionModeResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2c4ded3d9403c49014bb1aaa918df2298e2b1ea0879de86dcdc7afa9c74a13ca"
  public static let nativeType = "dobot_v4_bringup/SetPostCollisionModeResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSetPostCollisionModeResponse
  {
    var v = Ros1Dobot_v4_bringupSetPostCollisionModeResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetSafeSkinRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_286a323ff9b51342a23b7c9befae1957ee665b168085693211752f07100043a5"
  public static let nativeType = "dobot_v4_bringup/SetSafeSkinRequest"
  public static let nativeIdentity: String? = nil
  public var `part`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`part`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupSetSafeSkinRequest
  {
    var v = Ros1Dobot_v4_bringupSetSafeSkinRequest()
    v.`part` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetSafeSkinResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_428dd7f45382c6a5ebe42c6ddb9f17fc6b01c7ed776aecf2c9f9570448da3410"
  public static let nativeType = "dobot_v4_bringup/SetSafeSkinResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSetSafeSkinResponse
  {
    var v = Ros1Dobot_v4_bringupSetSafeSkinResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetSafeWallEnableRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_e6bef1c1d7179067d1462e9e907c460de545291a2667edd848d98d315f3c3752"
  public static let nativeType = "dobot_v4_bringup/SetSafeWallEnableRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSetSafeWallEnableRequest
  {
    var v = Ros1Dobot_v4_bringupSetSafeWallEnableRequest()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetSafeWallEnableResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7f0d58947a5f34736a3c5a9636d635bd491687c3f2c893f1518ea5541b762eb9"
  public static let nativeType = "dobot_v4_bringup/SetSafeWallEnableResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSetSafeWallEnableResponse
  {
    var v = Ros1Dobot_v4_bringupSetSafeWallEnableResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetToolRequest: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_234d8c421ca776a041338014ac44f72771adaf6ff651ba106860f046a8c08be6"
  public static let nativeType = "dobot_v4_bringup/SetToolRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.string(self.`value`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupSetToolRequest {
    var v = Ros1Dobot_v4_bringupSetToolRequest()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetToolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_61868fe36fc4a8662d3a9f49fb85a4cb634ea4cf75aa605df90483f068f8b58b"
  public static let nativeType = "dobot_v4_bringup/SetToolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupSetToolResponse {
    var v = Ros1Dobot_v4_bringupSetToolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetTool485Request: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_7e2ae0a5cf35e88a8a75cea89420a1ff2d98b105ba632b1e8e1f79243cad0f23"
  public static let nativeType = "dobot_v4_bringup/SetTool485Request"
  public static let nativeIdentity: String? = nil
  public var `baudrate`: Int32 = 0
  public var `parity`: String = ""
  public var `stop`: Int32 = 0
  public var `identify`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`baudrate`)
    try w.string(self.`parity`, bound: 256)
    try w.integer(self.`stop`)
    try w.integer(self.`identify`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupSetTool485Request
  {
    var v = Ros1Dobot_v4_bringupSetTool485Request()
    v.`baudrate` = try r.integer(Int32.self)
    v.`parity` = try r.string(bound: 256)
    v.`stop` = try r.integer(Int32.self)
    v.`identify` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetTool485Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_480290ba112a8b97a9bb095b562a4785163ac5eef16456d7f0d71aecd261b106"
  public static let nativeType = "dobot_v4_bringup/SetTool485Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupSetTool485Response
  {
    var v = Ros1Dobot_v4_bringupSetTool485Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetToolModeRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_4d5f4cc539ac40ca9e1a3391a8ecec08bd21a7cf6786e446f0d7a5715e6602c6"
  public static let nativeType = "dobot_v4_bringup/SetToolModeRequest"
  public static let nativeIdentity: String? = nil
  public var `mode`: Int32 = 0
  public var `type`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
    try w.integer(self.`type`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupSetToolModeRequest
  {
    var v = Ros1Dobot_v4_bringupSetToolModeRequest()
    v.`mode` = try r.integer(Int32.self)
    v.`type` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetToolModeResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_649722f4a14ae41877d63a3548e85d84c9a6806fea7d196e95edb36af1ef6e4c"
  public static let nativeType = "dobot_v4_bringup/SetToolModeResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSetToolModeResponse
  {
    var v = Ros1Dobot_v4_bringupSetToolModeResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetToolPowerRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_cea4d794f6180bafb35e19e2e71af5a5a42292cb73e766c158a004c6f345d23d"
  public static let nativeType = "dobot_v4_bringup/SetToolPowerRequest"
  public static let nativeIdentity: String? = nil
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSetToolPowerRequest
  {
    var v = Ros1Dobot_v4_bringupSetToolPowerRequest()
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetToolPowerResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_eb775fbc240808c8ea01782321a17dbdeabbcf83fde9c216cd8e6f4cfec090fa"
  public static let nativeType = "dobot_v4_bringup/SetToolPowerResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSetToolPowerResponse
  {
    var v = Ros1Dobot_v4_bringupSetToolPowerResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetUserRequest: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_eec1aad23f7d3246de4f87119f8290891020284f8bf3e4f8acef1e2bffb97e7f"
  public static let nativeType = "dobot_v4_bringup/SetUserRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.string(self.`value`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupSetUserRequest {
    var v = Ros1Dobot_v4_bringupSetUserRequest()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSetUserResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_da1d0c25b01b85a2269be1ec836cb0da150f8832bdd06ffc53d9d4f5deae2d8f"
  public static let nativeType = "dobot_v4_bringup/SetUserResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupSetUserResponse {
    var v = Ros1Dobot_v4_bringupSetUserResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSpeedFactorRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_4eab746249dee5320f3bc0d731d85eeb8060c60b65f204e6e833508ff3faef57"
  public static let nativeType = "dobot_v4_bringup/SpeedFactorRequest"
  public static let nativeIdentity: String? = nil
  public var `ratio`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ratio`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupSpeedFactorRequest
  {
    var v = Ros1Dobot_v4_bringupSpeedFactorRequest()
    v.`ratio` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupSpeedFactorResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b448225f95253f9ce0a7012e38f01c908eef51a11a320849354ed7fc1f3b1f25"
  public static let nativeType = "dobot_v4_bringup/SpeedFactorResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupSpeedFactorResponse
  {
    var v = Ros1Dobot_v4_bringupSpeedFactorResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupStartDragRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_2ede11b1e30e11d5ed503b7bc204770414f1bb33c9f2119c6b03b82969cafe13"
  public static let nativeType = "dobot_v4_bringup/StartDragRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupStartDragRequest {
    var v = Ros1Dobot_v4_bringupStartDragRequest()
    return v
  }
}
public struct Ros1Dobot_v4_bringupStartDragResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_89cee72ba144cb297405a8fdea43615365becf766786ee720d031650281e19fe"
  public static let nativeType = "dobot_v4_bringup/StartDragResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupStartDragResponse
  {
    var v = Ros1Dobot_v4_bringupStartDragResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupStartPathRequest: Canonical {
  public static let maximumWireBytes = 4424
  public static let codecIdentity =
    "UWVMROS1_3b60e3b0507f96d0eb0b57d3505fb8ce1dcca24b7c2c4f085a6a4b112522b287"
  public static let nativeType = "dobot_v4_bringup/StartPathRequest"
  public static let nativeIdentity: String? = nil
  public var `traceName`: String = ""
  public var `paramValue`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`traceName`, bound: 256)
    guard self.`paramValue`.count <= 16 else { throw RosError(22) }
    try w.integer(UInt32(self.`paramValue`.count))
    for e in self.`paramValue` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupStartPathRequest {
    var v = Ros1Dobot_v4_bringupStartPathRequest()
    v.`traceName` = try r.string(bound: 256)
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
public struct Ros1Dobot_v4_bringupStartPathResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_02f4dd92d34dc45a6af3ccc2b502a191a9a2fbb20cb9e2a06d2c8b01a3584f5b"
  public static let nativeType = "dobot_v4_bringup/StartPathResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupStartPathResponse
  {
    var v = Ros1Dobot_v4_bringupStartPathResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupStopRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_78ab4eea783ce8abe9194f8b2d616c24f964979810b362293fd98e91fc5f6944"
  public static let nativeType = "dobot_v4_bringup/StopRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupStopRequest {
    var v = Ros1Dobot_v4_bringupStopRequest()
    return v
  }
}
public struct Ros1Dobot_v4_bringupStopResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_1ce859a03909196a0930210187ca68de91d59e4342ab4b14cce539ca47deb658"
  public static let nativeType = "dobot_v4_bringup/StopResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupStopResponse {
    var v = Ros1Dobot_v4_bringupStopResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupStopDragRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_6dc356f2c21a015b15bac869f7b5b09546d439cc565ca1e975747da4f10fe1fa"
  public static let nativeType = "dobot_v4_bringup/StopDragRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupStopDragRequest {
    var v = Ros1Dobot_v4_bringupStopDragRequest()
    return v
  }
}
public struct Ros1Dobot_v4_bringupStopDragResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_9a31820a0cc661ee6a4a0353861278179d1eddd145559a15b8ae8a5ee0ca7b2b"
  public static let nativeType = "dobot_v4_bringup/StopDragResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupStopDragResponse {
    var v = Ros1Dobot_v4_bringupStopDragResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupStopMoveJogRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_765c4ab2ea63c07eb4e7ce4154299c807fdffe0753ecbf534abf6ea19585ece4"
  public static let nativeType = "dobot_v4_bringup/StopMoveJogRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupStopMoveJogRequest
  {
    var v = Ros1Dobot_v4_bringupStopMoveJogRequest()
    return v
  }
}
public struct Ros1Dobot_v4_bringupStopMoveJogResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f462238c13bd0c400ff2b12654522ca62cf977fab46d7fa005b3657569024388"
  public static let nativeType = "dobot_v4_bringup/StopMoveJogResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupStopMoveJogResponse
  {
    var v = Ros1Dobot_v4_bringupStopMoveJogResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupTcpDashboardRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_988e229bfb04a13951a62933389efbc38eddc8e05ce5fc70cad3b73d308c7563"
  public static let nativeType = "dobot_v4_bringup/TcpDashboardRequest"
  public static let nativeIdentity: String? = nil
  public var `command`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`command`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupTcpDashboardRequest
  {
    var v = Ros1Dobot_v4_bringupTcpDashboardRequest()
    v.`command` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupTcpDashboardResponse: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_f1a6ef1b972cedaae3ebd9715ceb6ee42e954452b041d5049eb884e0fa339706"
  public static let nativeType = "dobot_v4_bringup/TcpDashboardResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`result`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupTcpDashboardResponse
  {
    var v = Ros1Dobot_v4_bringupTcpDashboardResponse()
    v.`result` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dobot_v4_bringupToolRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_3669e9fcacdc173c5f21c23ec0e37660297060da2f7729463a3d0c47e970e622"
  public static let nativeType = "dobot_v4_bringup/ToolRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupToolRequest {
    var v = Ros1Dobot_v4_bringupToolRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupToolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_dc6e1fd014bfa55d4a20dad58f2f4a4c5affb997c20b9ba632fa95bb06bcfac5"
  public static let nativeType = "dobot_v4_bringup/ToolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupToolResponse {
    var v = Ros1Dobot_v4_bringupToolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupToolAIRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b06a075924f700c691dd0d1c82ab595a2143fc34c4c894ac04a380f42b00f2cc"
  public static let nativeType = "dobot_v4_bringup/ToolAIRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupToolAIRequest {
    var v = Ros1Dobot_v4_bringupToolAIRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupToolAIResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2daa4fde9a7192cd5443ef47bed4a4ada4f09dd3b061acb978749d6b33998ca9"
  public static let nativeType = "dobot_v4_bringup/ToolAIResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupToolAIResponse {
    var v = Ros1Dobot_v4_bringupToolAIResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupToolDIRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_75272c99d4d77f910dbfd19e61f61a8bb5706076c16668532f4cd7b4cf8bf949"
  public static let nativeType = "dobot_v4_bringup/ToolDIRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupToolDIRequest {
    var v = Ros1Dobot_v4_bringupToolDIRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupToolDIResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_26e9c240222943e006e4c8194ea789db5719d2243183fa6caa86cf00cf5319cc"
  public static let nativeType = "dobot_v4_bringup/ToolDIResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupToolDIResponse {
    var v = Ros1Dobot_v4_bringupToolDIResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupToolDORequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_4b3db5babcb1f5473c73c012caed742d0694602036cd862ff7435c3952ff48c5"
  public static let nativeType = "dobot_v4_bringup/ToolDORequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupToolDORequest {
    var v = Ros1Dobot_v4_bringupToolDORequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupToolDOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a47635396fe974009f299a094aaf67c9d2bccdffa501698202db1509c8ff7f92"
  public static let nativeType = "dobot_v4_bringup/ToolDOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupToolDOResponse {
    var v = Ros1Dobot_v4_bringupToolDOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupToolDOInstantRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_991e0d49865375856a7bdacd55fabfa20def4e87ef5d66f021034115a14a3f60"
  public static let nativeType = "dobot_v4_bringup/ToolDOInstantRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupToolDOInstantRequest
  {
    var v = Ros1Dobot_v4_bringupToolDOInstantRequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupToolDOInstantResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_adb900e79eb6414a18e06232d805412c1f7855f5fb2092649e8ec9727872bcef"
  public static let nativeType = "dobot_v4_bringup/ToolDOInstantResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dobot_v4_bringupToolDOInstantResponse
  {
    var v = Ros1Dobot_v4_bringupToolDOInstantResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupUserRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_49eaa2afaa3d556502d532fc34ffe98ee4bf07a13efcaf087ef7cb95f5b1aefe"
  public static let nativeType = "dobot_v4_bringup/UserRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupUserRequest {
    var v = Ros1Dobot_v4_bringupUserRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupUserResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_6b295b759e0ff1df4853172d4aeb76a8fa9725088d4be7c5aefad507fba61212"
  public static let nativeType = "dobot_v4_bringup/UserResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupUserResponse {
    var v = Ros1Dobot_v4_bringupUserResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupVelJRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_65a75a22e3bc63eb0285537c53d961d9914ad7bd726d43bae830b716e47c048b"
  public static let nativeType = "dobot_v4_bringup/VelJRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupVelJRequest {
    var v = Ros1Dobot_v4_bringupVelJRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupVelJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_0026c3603218e7fce5110658e05c662cadb38bd7e1c2eb1d534a460f684dba0a"
  public static let nativeType = "dobot_v4_bringup/VelJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupVelJResponse {
    var v = Ros1Dobot_v4_bringupVelJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupVelLRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_43e94a364628f207a29aacfc0ae9f6d9e19b6ec3c908b82dcbb32213b81b9c7b"
  public static let nativeType = "dobot_v4_bringup/VelLRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupVelLRequest {
    var v = Ros1Dobot_v4_bringupVelLRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Dobot_v4_bringupVelLResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_73b2cedcbfb536d3b706547f6f5f52f237e9c955674675dd686d857b3a4b2130"
  public static let nativeType = "dobot_v4_bringup/VelLResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dobot_v4_bringupVelLResponse {
    var v = Ros1Dobot_v4_bringupVelLResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
