/// @file records.swift
/// @brief Preserve the complete original dobot/ros1_demo_v4 canonical value domain.
/// @details The selected domain contains 188 complete record/components and 346 original fields. Declared
/// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
/// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
/// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
/// does not qualify a frontend, target ABI or native ROS transport.
/// @see The platform's localized language guide and complete API-CATALOG.md.
// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros1Rosdemo_v4AIRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_9a9e9cb237b8b84e16ed75126eb9cc9bbefa432d79761b6354b4793bef909e75"
  public static let nativeType = "rosdemo_v4/AIRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4AIRequest {
    var v = Ros1Rosdemo_v4AIRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4AIResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_272bd99c0de2e8a6a7147c6d23b4f87bb73a06f0d1cfc7e34ad746dceb14f24b"
  public static let nativeType = "rosdemo_v4/AIResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4AIResponse {
    var v = Ros1Rosdemo_v4AIResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4AORequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_319c8b9779bf77eebe820eede387578c3ceec1ae877847f3060d2b4e35b0f184"
  public static let nativeType = "rosdemo_v4/AORequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4AORequest {
    var v = Ros1Rosdemo_v4AORequest()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4AOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ed70f14a69e472eacb757bc92edd7cf77a5f33b247f053e93aef41bc0c453e7c"
  public static let nativeType = "rosdemo_v4/AOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4AOResponse {
    var v = Ros1Rosdemo_v4AOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4AOInstantRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_b1f33ddccebb7e459bbc61fc121b541fbf400713bec097869885f12fc6ec19f6"
  public static let nativeType = "rosdemo_v4/AOInstantRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4AOInstantRequest {
    var v = Ros1Rosdemo_v4AOInstantRequest()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4AOInstantResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7f025819db1b8e50ef5efd72ce5eb0ae17f37e6f886b447dfa9be45597a35447"
  public static let nativeType = "rosdemo_v4/AOInstantResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4AOInstantResponse {
    var v = Ros1Rosdemo_v4AOInstantResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4AccJRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_03980d6dad09b302198eed3e268f89cbdccb6262088e15d7aece03e55be7b149"
  public static let nativeType = "rosdemo_v4/AccJRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4AccJRequest {
    var v = Ros1Rosdemo_v4AccJRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4AccJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_6beeb4d555efe01650e515850d237a0975bd5e857212f6f96f06fede9ac0af1a"
  public static let nativeType = "rosdemo_v4/AccJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4AccJResponse {
    var v = Ros1Rosdemo_v4AccJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4AccLRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_05217bf256897d7a7ce48b7118f778aa017365618ee91fccd4d6c7df688fc85b"
  public static let nativeType = "rosdemo_v4/AccLRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4AccLRequest {
    var v = Ros1Rosdemo_v4AccLRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4AccLResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_58bbf77d78566356a9daf130bd2e06845f78cd6760925d3304b79047e617eba1"
  public static let nativeType = "rosdemo_v4/AccLResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4AccLResponse {
    var v = Ros1Rosdemo_v4AccLResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ArcRequest: Canonical {
  public static let maximumWireBytes = 4261
  public static let codecIdentity =
    "UWVMROS1_951088f16f6ef708a44ed7b36f032af570830dae415d4c95a1657f2c0fe92d30"
  public static let nativeType = "rosdemo_v4/ArcRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ArcRequest {
    var v = Ros1Rosdemo_v4ArcRequest()
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
public struct Ros1Rosdemo_v4ArcResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_0559f4edf675e06a604831aafc73e0642730205670614c44ac043491db9621c9"
  public static let nativeType = "rosdemo_v4/ArcResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ArcResponse {
    var v = Ros1Rosdemo_v4ArcResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4BrakeControlRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_8a85af65d2b24e7c5ec3dc061dea6c36e984cc4583888d02df9047d209c572ca"
  public static let nativeType = "rosdemo_v4/BrakeControlRequest"
  public static let nativeIdentity: String? = nil
  public var `axisID`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`axisID`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4BrakeControlRequest {
    var v = Ros1Rosdemo_v4BrakeControlRequest()
    v.`axisID` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4BrakeControlResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_cbb732b4d3b3abad69d3884f91e0044d4f3320eea779269871a262dcd2b66843"
  public static let nativeType = "rosdemo_v4/BrakeControlResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4BrakeControlResponse {
    var v = Ros1Rosdemo_v4BrakeControlResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4CPRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_9cdde37097235a464151f45e43c20af287ffd607a1192601ddad6e30ba9c652e"
  public static let nativeType = "rosdemo_v4/CPRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4CPRequest {
    var v = Ros1Rosdemo_v4CPRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4CPResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_d16642a1f436105969397d24b57278e2e7f75af08af9ef7ec08dbc26abb631a9"
  public static let nativeType = "rosdemo_v4/CPResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4CPResponse {
    var v = Ros1Rosdemo_v4CPResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4CalcToolRequest: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_cee057e98be4aad3812ca9dbd2bfc346f00d8c2ae2c58bf5ca6ecc80563ee2eb"
  public static let nativeType = "rosdemo_v4/CalcToolRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4CalcToolRequest {
    var v = Ros1Rosdemo_v4CalcToolRequest()
    v.`index` = try r.integer(Int32.self)
    v.`matrix` = try r.integer(Int32.self)
    v.`offset` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v4CalcToolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_fbe531e715f88a71f704013292ea6a48475b94634d28b04a9bbf65a023f76d0e"
  public static let nativeType = "rosdemo_v4/CalcToolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4CalcToolResponse {
    var v = Ros1Rosdemo_v4CalcToolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4CalcUserRequest: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_496ac7695efe9f049e8a2ddbed51f547cc1e2ccc268f630fcf52fd0081049392"
  public static let nativeType = "rosdemo_v4/CalcUserRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4CalcUserRequest {
    var v = Ros1Rosdemo_v4CalcUserRequest()
    v.`index` = try r.integer(Int32.self)
    v.`matrix` = try r.integer(Int32.self)
    v.`offset` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v4CalcUserResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_47513b8698e1a9ef2b026200673cda50bc300c4946ddae7a6988a6c5faee78a9"
  public static let nativeType = "rosdemo_v4/CalcUserResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4CalcUserResponse {
    var v = Ros1Rosdemo_v4CalcUserResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4CircleRequest: Canonical {
  public static let maximumWireBytes = 4265
  public static let codecIdentity =
    "UWVMROS1_fdcfb4d2426629c4719a7362ac4fd4c54c025e06f44fdade1925791937ddb417"
  public static let nativeType = "rosdemo_v4/CircleRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4CircleRequest {
    var v = Ros1Rosdemo_v4CircleRequest()
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
public struct Ros1Rosdemo_v4CircleResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_04e542491c8d2698099aa505719d90c46c4fb413aacf3fb34aa78d4c73548789"
  public static let nativeType = "rosdemo_v4/CircleResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4CircleResponse {
    var v = Ros1Rosdemo_v4CircleResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ClearErrorRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_5e7a728e3f4e78c12984902bd10fe1be54c380a6e7fb8c5f75afb27e36ac6120"
  public static let nativeType = "rosdemo_v4/ClearErrorRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ClearErrorRequest {
    var v = Ros1Rosdemo_v4ClearErrorRequest()
    return v
  }
}
public struct Ros1Rosdemo_v4ClearErrorResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_da3ce8d9a3ae2aa8ecf923831bef5424518e4c32c0fa38b38782806af2596d62"
  public static let nativeType = "rosdemo_v4/ClearErrorResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ClearErrorResponse {
    var v = Ros1Rosdemo_v4ClearErrorResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ContinueRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_397f44d553c5c2fd64cc769a6c6143d3c13922f44fe84c4be809a91e65c47f72"
  public static let nativeType = "rosdemo_v4/ContinueRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ContinueRequest {
    var v = Ros1Rosdemo_v4ContinueRequest()
    return v
  }
}
public struct Ros1Rosdemo_v4ContinueResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_0851e7d86a155b8a92c08c033bf0f3c99427aaaeec807012259587624fb1b804"
  public static let nativeType = "rosdemo_v4/ContinueResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ContinueResponse {
    var v = Ros1Rosdemo_v4ContinueResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4DIRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c87cdf10373272a55ac886bf1b0e21d3e7f9c54f0b3a4100d4562ea4c853e4b0"
  public static let nativeType = "rosdemo_v4/DIRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4DIRequest {
    var v = Ros1Rosdemo_v4DIRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4DIResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b9d1df9f63e84d8f121925e064f96b42d573927b0002f41ca87607cf2f3db99f"
  public static let nativeType = "rosdemo_v4/DIResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4DIResponse {
    var v = Ros1Rosdemo_v4DIResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4DIGroupRequest: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_f5ff525bb19137564db6b5266d5b3465008dd4e3f823e0d8c7b03cce7741f0f9"
  public static let nativeType = "rosdemo_v4/DIGroupRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4DIGroupRequest {
    var v = Ros1Rosdemo_v4DIGroupRequest()
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
public struct Ros1Rosdemo_v4DIGroupResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_1877d17f23719422e09490e6d1e42cbe19bd736296c42e56be43e4c095886dc0"
  public static let nativeType = "rosdemo_v4/DIGroupResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4DIGroupResponse {
    var v = Ros1Rosdemo_v4DIGroupResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4DORequest: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_38f733bcf75506efdf78db21a9e021542b122315c16f6046cd1aca359a6270cd"
  public static let nativeType = "rosdemo_v4/DORequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4DORequest {
    var v = Ros1Rosdemo_v4DORequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    v.`time` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4DOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2f59e1fc82fb86b1fce1ba23107e26f88d04e040f846b0bcac7c2a3b4861c9c8"
  public static let nativeType = "rosdemo_v4/DOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4DOResponse {
    var v = Ros1Rosdemo_v4DOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4DOGroupRequest: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_c291ef8a18c357312306bec37932f42de195523bfa594e2978a69db021074cd2"
  public static let nativeType = "rosdemo_v4/DOGroupRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4DOGroupRequest {
    var v = Ros1Rosdemo_v4DOGroupRequest()
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
public struct Ros1Rosdemo_v4DOGroupResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_dbca29796476fc2dacc1a8641bdc12643ff6202193cc5be6e1793ef18fb2394b"
  public static let nativeType = "rosdemo_v4/DOGroupResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4DOGroupResponse {
    var v = Ros1Rosdemo_v4DOGroupResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4DOInstantRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_e7bb078201c77bdd326c2e1c92199dddefab78d4f3253b2a910ff2875bd2b878"
  public static let nativeType = "rosdemo_v4/DOInstantRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4DOInstantRequest {
    var v = Ros1Rosdemo_v4DOInstantRequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4DOInstantResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_83ace895a553d20bd1b6e6e5731dc68fc7089543b0ebe103eb16f55554fa0dc5"
  public static let nativeType = "rosdemo_v4/DOInstantResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4DOInstantResponse {
    var v = Ros1Rosdemo_v4DOInstantResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4DisableRobotRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_ef74ada028c3cc15b11da2ac3f3d583f3667f953bfe75d3cbeda2790a4c15bcc"
  public static let nativeType = "rosdemo_v4/DisableRobotRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4DisableRobotRequest {
    var v = Ros1Rosdemo_v4DisableRobotRequest()
    return v
  }
}
public struct Ros1Rosdemo_v4DisableRobotResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_311d984435af0017644139b36f80deb046000d1bb6270bda9c746f05600a5521"
  public static let nativeType = "rosdemo_v4/DisableRobotResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4DisableRobotResponse {
    var v = Ros1Rosdemo_v4DisableRobotResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4DragSensivityRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_6fea90c5de6e58f95d2b2a173c0ff4d06dcd68fc564a9b9e4c2fc57576e5ef38"
  public static let nativeType = "rosdemo_v4/DragSensivityRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4DragSensivityRequest {
    var v = Ros1Rosdemo_v4DragSensivityRequest()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4DragSensivityResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f3e5b64cd5dd322783d86fcc4c7520a9817a6931b8b789139695cbc72be88003"
  public static let nativeType = "rosdemo_v4/DragSensivityResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4DragSensivityResponse {
    var v = Ros1Rosdemo_v4DragSensivityResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4EmergencyStopRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_29e3801ce5fd22b8b46d56855146fb277fd7a70d0bd839a976bd2b1cc8e6ef0c"
  public static let nativeType = "rosdemo_v4/EmergencyStopRequest"
  public static let nativeIdentity: String? = nil
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4EmergencyStopRequest {
    var v = Ros1Rosdemo_v4EmergencyStopRequest()
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4EmergencyStopResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_6ad7f402c9044401904b708335f56fc566965a1eba1e438257fdedf2a0ef79d0"
  public static let nativeType = "rosdemo_v4/EmergencyStopResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4EmergencyStopResponse {
    var v = Ros1Rosdemo_v4EmergencyStopResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4EnableRobotRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_50fa5b29527f53d986f0fdfe5ac40cccccea2723aa28a1bda183ea85437ab1d9"
  public static let nativeType = "rosdemo_v4/EnableRobotRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4EnableRobotRequest {
    var v = Ros1Rosdemo_v4EnableRobotRequest()
    return v
  }
}
public struct Ros1Rosdemo_v4EnableRobotResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_58f12f2a31c801ccf5e3b292645b72e979524c26a70d71c628ad73802a1369d5"
  public static let nativeType = "rosdemo_v4/EnableRobotResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4EnableRobotResponse {
    var v = Ros1Rosdemo_v4EnableRobotResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4EnableSafeSkinRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_cd375695f4654cbd46d759a017a5f298f1e168e5f3d0df6df8ab5c3c7afb5a7c"
  public static let nativeType = "rosdemo_v4/EnableSafeSkinRequest"
  public static let nativeIdentity: String? = nil
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4EnableSafeSkinRequest {
    var v = Ros1Rosdemo_v4EnableSafeSkinRequest()
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4EnableSafeSkinResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2d45e73631c4070c003de548b4e333eef29e64011d9ab6d92089f2dec8ca0ae9"
  public static let nativeType = "rosdemo_v4/EnableSafeSkinResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4EnableSafeSkinResponse {
    var v = Ros1Rosdemo_v4EnableSafeSkinResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetAORequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_926de338371ec01a402be7c060b5847a12f29a986f7d79547214709be7a8b60b"
  public static let nativeType = "rosdemo_v4/GetAORequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetAORequest {
    var v = Ros1Rosdemo_v4GetAORequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetAOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e00e5c6759d8f828d17a7ed4adbaec5196bf1176460267a555bc877946220ae3"
  public static let nativeType = "rosdemo_v4/GetAOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetAOResponse {
    var v = Ros1Rosdemo_v4GetAOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetAngleRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_0e6595e26df9c6a6c1b11d1b0d0be17eb12ce5811ea3b58415618703e63e4bf1"
  public static let nativeType = "rosdemo_v4/GetAngleRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetAngleRequest {
    var v = Ros1Rosdemo_v4GetAngleRequest()
    return v
  }
}
public struct Ros1Rosdemo_v4GetAngleResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_510fe33c83f2eb89bc3d181661431b5da8a99a9b51760596e2858fd1542327a5"
  public static let nativeType = "rosdemo_v4/GetAngleResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetAngleResponse {
    var v = Ros1Rosdemo_v4GetAngleResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetCoilsRequest: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_97eeaeae27ad4a42c2fd3286e6a7d87fe31409d8ca1f4e893221be3494c809ba"
  public static let nativeType = "rosdemo_v4/GetCoilsRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetCoilsRequest {
    var v = Ros1Rosdemo_v4GetCoilsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetCoilsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c10ce78d0c2c94a78ba606699c5adc2177b8207249f80c9c793955aae21184fd"
  public static let nativeType = "rosdemo_v4/GetCoilsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetCoilsResponse {
    var v = Ros1Rosdemo_v4GetCoilsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetCurrentCommandIdRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_c54881bb35c2390e1927166762f690a2c89938216a61f27a69cc710e5b10a6fc"
  public static let nativeType = "rosdemo_v4/GetCurrentCommandIdRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Rosdemo_v4GetCurrentCommandIdRequest
  {
    var v = Ros1Rosdemo_v4GetCurrentCommandIdRequest()
    return v
  }
}
public struct Ros1Rosdemo_v4GetCurrentCommandIdResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8bc582ffa6eb0003de3b76adbc9f08e538214d6b216b19b7ac817ca946f3cee9"
  public static let nativeType = "rosdemo_v4/GetCurrentCommandIdResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Rosdemo_v4GetCurrentCommandIdResponse
  {
    var v = Ros1Rosdemo_v4GetCurrentCommandIdResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetDORequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_529aab0c8d5268a6e4ac526eee3156061db0dfc197d79750f0937477c235ef13"
  public static let nativeType = "rosdemo_v4/GetDORequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetDORequest {
    var v = Ros1Rosdemo_v4GetDORequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetDOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_40d66623d9a4ee294c3be28fc27fdec008f35f2d74dd96ee08b37fd7f7f0f53c"
  public static let nativeType = "rosdemo_v4/GetDOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetDOResponse {
    var v = Ros1Rosdemo_v4GetDOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetDOGroupRequest: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_4a04a61c965ec8d64f74772c2572b1e80314ce484955e0cf2f874d33fa8d0fab"
  public static let nativeType = "rosdemo_v4/GetDOGroupRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetDOGroupRequest {
    var v = Ros1Rosdemo_v4GetDOGroupRequest()
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
public struct Ros1Rosdemo_v4GetDOGroupResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_025adf89234f29f92487e3383ac840a91ce7365af469eca51ffb4a02757ad08c"
  public static let nativeType = "rosdemo_v4/GetDOGroupResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetDOGroupResponse {
    var v = Ros1Rosdemo_v4GetDOGroupResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetErrorIDRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_7384e3f38489c046e1da3bd095fb0f9f1d7ab3ecff0c9f0a6f902afeb42a6afa"
  public static let nativeType = "rosdemo_v4/GetErrorIDRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetErrorIDRequest {
    var v = Ros1Rosdemo_v4GetErrorIDRequest()
    return v
  }
}
public struct Ros1Rosdemo_v4GetErrorIDResponse: Canonical {
  public static let maximumWireBytes = 72
  public static let codecIdentity =
    "UWVMROS1_04905126039b83561b99944a9f8fa997df0d33dc34a5c7fe5b5c9904bd801f8c"
  public static let nativeType = "rosdemo_v4/GetErrorIDResponse"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetErrorIDResponse {
    var v = Ros1Rosdemo_v4GetErrorIDResponse()
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
public struct Ros1Rosdemo_v4GetHoldRegsRequest: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_25c39e4774f962695d516aa5f727c1fc75c1999b05dad0e466d0e8f559768f4b"
  public static let nativeType = "rosdemo_v4/GetHoldRegsRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetHoldRegsRequest {
    var v = Ros1Rosdemo_v4GetHoldRegsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    v.`valType` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v4GetHoldRegsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_dd4564730e4960e4cd81b0315db69c80d188937af6ac664788568e4e94613086"
  public static let nativeType = "rosdemo_v4/GetHoldRegsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetHoldRegsResponse {
    var v = Ros1Rosdemo_v4GetHoldRegsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetInBitsRequest: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_87a10aba986f262775300a8bccf1e08bf6aa04391ce43e434f354e01600a5f41"
  public static let nativeType = "rosdemo_v4/GetInBitsRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetInBitsRequest {
    var v = Ros1Rosdemo_v4GetInBitsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetInBitsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f8c3dece574e815b8d1ec567c75e426419af10629b7b46df120df6f330688acd"
  public static let nativeType = "rosdemo_v4/GetInBitsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetInBitsResponse {
    var v = Ros1Rosdemo_v4GetInBitsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetInRegsRequest: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_b889d32021c7662e1c334b4985ee1892846e7ec9c22af12e10f8451954a1ebce"
  public static let nativeType = "rosdemo_v4/GetInRegsRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetInRegsRequest {
    var v = Ros1Rosdemo_v4GetInRegsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    v.`valType` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v4GetInRegsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8122e0be478fb07f064a8ad263bf2498f586d772ec94c1dae540e84c651a55da"
  public static let nativeType = "rosdemo_v4/GetInRegsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetInRegsResponse {
    var v = Ros1Rosdemo_v4GetInRegsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetInputBoolRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8c7ed79ac1c9d6eb3b8288ccf2ecf833cb01d9e28a1aad4c3298a301d37fc6e3"
  public static let nativeType = "rosdemo_v4/GetInputBoolRequest"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetInputBoolRequest {
    var v = Ros1Rosdemo_v4GetInputBoolRequest()
    v.`address` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetInputBoolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_4dd8f83b77312a6b67a0b7846a8a065ce38f1e44f86aafabda8178a3d215969c"
  public static let nativeType = "rosdemo_v4/GetInputBoolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetInputBoolResponse {
    var v = Ros1Rosdemo_v4GetInputBoolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetInputFloatRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_eb66f87e172e9a42fd3afafa4b33615c31d29ad800c1ffd40381e3b5e783e923"
  public static let nativeType = "rosdemo_v4/GetInputFloatRequest"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetInputFloatRequest {
    var v = Ros1Rosdemo_v4GetInputFloatRequest()
    v.`address` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetInputFloatResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_4a6e9db2cb925b1d929a798b4a5c36fdf8557edee7eb585e0e38c95f23172d42"
  public static let nativeType = "rosdemo_v4/GetInputFloatResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetInputFloatResponse {
    var v = Ros1Rosdemo_v4GetInputFloatResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetInputIntRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_297a110a4a935e442f5b00c1fa84645e97ff954a529b7f4ed7db09be797e6d37"
  public static let nativeType = "rosdemo_v4/GetInputIntRequest"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetInputIntRequest {
    var v = Ros1Rosdemo_v4GetInputIntRequest()
    v.`address` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetInputIntResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f1d7ccef84e5ce8eaf3d8daf2dd23afce098a845edaa3b23925e9d46c4c40abd"
  public static let nativeType = "rosdemo_v4/GetInputIntResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetInputIntResponse {
    var v = Ros1Rosdemo_v4GetInputIntResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetOutputBoolRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8434f5aea4bbdf565d050a3d09c845318982e2d2977339a58009be26b9154f5e"
  public static let nativeType = "rosdemo_v4/GetOutputBoolRequest"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetOutputBoolRequest {
    var v = Ros1Rosdemo_v4GetOutputBoolRequest()
    v.`address` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetOutputBoolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ceb74ba9fd10ad74dc9e04ec87687bc13246b4af9d376ea5a6de8c16fa1e54e4"
  public static let nativeType = "rosdemo_v4/GetOutputBoolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetOutputBoolResponse {
    var v = Ros1Rosdemo_v4GetOutputBoolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetOutputFloatRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_19f4a8c41b2e49b3c9da25da2de011c84257b420b89f6e15741de2589585f259"
  public static let nativeType = "rosdemo_v4/GetOutputFloatRequest"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetOutputFloatRequest {
    var v = Ros1Rosdemo_v4GetOutputFloatRequest()
    v.`address` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetOutputFloatResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_d52fb64b6fc6a6cef5c396912b6d22184845cfc32e51990dde429eb3f86f59ca"
  public static let nativeType = "rosdemo_v4/GetOutputFloatResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetOutputFloatResponse {
    var v = Ros1Rosdemo_v4GetOutputFloatResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetOutputIntRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_26a2d8df9463e82cb4752a0465c46fafaff8edef76e9545d7c21c1a2d81a62a4"
  public static let nativeType = "rosdemo_v4/GetOutputIntRequest"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetOutputIntRequest {
    var v = Ros1Rosdemo_v4GetOutputIntRequest()
    v.`address` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetOutputIntResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_db07169d30b15991b02c8552ab0823241442ae1dd15d60d8f7d66173ae88ec56"
  public static let nativeType = "rosdemo_v4/GetOutputIntResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetOutputIntResponse {
    var v = Ros1Rosdemo_v4GetOutputIntResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetPoseRequest: Canonical {
  public static let maximumWireBytes = 520
  public static let codecIdentity =
    "UWVMROS1_614f133e44f952b81c348c0d81268009734f12661ee60a3762f445c1f9763eeb"
  public static let nativeType = "rosdemo_v4/GetPoseRequest"
  public static let nativeIdentity: String? = nil
  public var `user`: String = ""
  public var `tool`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`user`, bound: 256)
    try w.string(self.`tool`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetPoseRequest {
    var v = Ros1Rosdemo_v4GetPoseRequest()
    v.`user` = try r.string(bound: 256)
    v.`tool` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v4GetPoseResponse: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_bb2309ea57bccca61b67960dabc71bb80f4d5e0bb9dbad2034912bcc33aa47db"
  public static let nativeType = "rosdemo_v4/GetPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `pose`: String = ""
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`pose`, bound: 256)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetPoseResponse {
    var v = Ros1Rosdemo_v4GetPoseResponse()
    v.`pose` = try r.string(bound: 256)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4GetStartPoseRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_8a7bb705fc5fad2f0919ea2be9eeef2056765b6fab4ab6e1dd5e4bf335af0e90"
  public static let nativeType = "rosdemo_v4/GetStartPoseRequest"
  public static let nativeIdentity: String? = nil
  public var `traceName`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`traceName`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetStartPoseRequest {
    var v = Ros1Rosdemo_v4GetStartPoseRequest()
    v.`traceName` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v4GetStartPoseResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_58928db4de4917d89cc26f1caeb08d8c63f275e430923ddd69822a7b0969d062"
  public static let nativeType = "rosdemo_v4/GetStartPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4GetStartPoseResponse {
    var v = Ros1Rosdemo_v4GetStartPoseResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4InverseKinRequest: Canonical {
  public static let maximumWireBytes = 1088
  public static let codecIdentity =
    "UWVMROS1_a36b2d397660e001f97f40e937f057cb0c9cbbf3019f119c48a217846e258b36"
  public static let nativeType = "rosdemo_v4/InverseKinRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4InverseKinRequest {
    var v = Ros1Rosdemo_v4InverseKinRequest()
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
public struct Ros1Rosdemo_v4InverseKinResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_3e1f483d7c0e1fab5574dbdedbde27321f0961b00f5a7d8ec60facaa660dce5d"
  public static let nativeType = "rosdemo_v4/InverseKinResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4InverseKinResponse {
    var v = Ros1Rosdemo_v4InverseKinResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4InverseSolutionRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_386aeead1b103c31d0803e46e5cf40444203576a01929a58655a9dbdad97e337"
  public static let nativeType = "rosdemo_v4/InverseSolutionRequest"
  public static let nativeIdentity: String? = nil
  public var `parameter`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`parameter`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4InverseSolutionRequest {
    var v = Ros1Rosdemo_v4InverseSolutionRequest()
    v.`parameter` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v4InverseSolutionResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_af164102f43d7ec09b29194756e137521be58cf7557e2e6cc1aa8984ad60edeb"
  public static let nativeType = "rosdemo_v4/InverseSolutionResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4InverseSolutionResponse
  {
    var v = Ros1Rosdemo_v4InverseSolutionResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ModbusCloseRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_312c47a996b26c9cceb2cd2cacd8f224d6503c095f8b05cb47d61cd0a86044a2"
  public static let nativeType = "rosdemo_v4/ModbusCloseRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ModbusCloseRequest {
    var v = Ros1Rosdemo_v4ModbusCloseRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ModbusCloseResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_023195c6b839ef052e27c0208dd80a3a65d519c75ae01a97fcc6ed0ba42792c7"
  public static let nativeType = "rosdemo_v4/ModbusCloseResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ModbusCloseResponse {
    var v = Ros1Rosdemo_v4ModbusCloseResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ModbusCreateRequest: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_89723aed3faa9b167f6c7140983191a0c8cc3e5ae65983199fac27f2cbd4fe3a"
  public static let nativeType = "rosdemo_v4/ModbusCreateRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ModbusCreateRequest {
    var v = Ros1Rosdemo_v4ModbusCreateRequest()
    v.`ip` = try r.string(bound: 256)
    v.`port` = try r.integer(Int32.self)
    v.`slave_id` = try r.integer(Int32.self)
    v.`isRTU` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ModbusCreateResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_fd842047956f95a53be2a1d12ceba2f7874276768ee972cc73e0857005f752eb"
  public static let nativeType = "rosdemo_v4/ModbusCreateResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ModbusCreateResponse {
    var v = Ros1Rosdemo_v4ModbusCreateResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ModbusRTUCreateRequest: Canonical {
  public static let maximumWireBytes = 276
  public static let codecIdentity =
    "UWVMROS1_2c24e7f5a9e996c62094b5f286daf6d70e5ea488084458e76387cc87bbf54829"
  public static let nativeType = "rosdemo_v4/ModbusRTUCreateRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ModbusRTUCreateRequest {
    var v = Ros1Rosdemo_v4ModbusRTUCreateRequest()
    v.`slave_id` = try r.integer(Int32.self)
    v.`baud` = try r.integer(Int32.self)
    v.`parity` = try r.string(bound: 256)
    v.`data_bit` = try r.integer(Int32.self)
    v.`stop_bit` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ModbusRTUCreateResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7789f6d13a84128d683d1e0298da922c019d2ad730776602baea355d3bb7af9b"
  public static let nativeType = "rosdemo_v4/ModbusRTUCreateResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ModbusRTUCreateResponse
  {
    var v = Ros1Rosdemo_v4ModbusRTUCreateResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4MovJRequest: Canonical {
  public static let maximumWireBytes = 4213
  public static let codecIdentity =
    "UWVMROS1_09e87fec00b64906ce52c1fd8fc258c5defcc95f0ff4f5c867fbb210677eb342"
  public static let nativeType = "rosdemo_v4/MovJRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4MovJRequest {
    var v = Ros1Rosdemo_v4MovJRequest()
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
public struct Ros1Rosdemo_v4MovJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_3a9b252271d5b325f608151171315767648c8d8edce2fac57446b40883e08b8c"
  public static let nativeType = "rosdemo_v4/MovJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4MovJResponse {
    var v = Ros1Rosdemo_v4MovJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4MovJIORequest: Canonical {
  public static let maximumWireBytes = 8377
  public static let codecIdentity =
    "UWVMROS1_09f78d0f6d9a87a17934a977fd150a42dd5ff2038b31ac99446753b82cf15766"
  public static let nativeType = "rosdemo_v4/MovJIORequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4MovJIORequest {
    var v = Ros1Rosdemo_v4MovJIORequest()
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
public struct Ros1Rosdemo_v4MovJIOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_6bdb6a02634e5eeca7efddd37d27f3eb4624f4f05abdf6bd96b107781d9fb077"
  public static let nativeType = "rosdemo_v4/MovJIOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4MovJIOResponse {
    var v = Ros1Rosdemo_v4MovJIOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4MovLRequest: Canonical {
  public static let maximumWireBytes = 4213
  public static let codecIdentity =
    "UWVMROS1_20cae327861ce263914777f3d78df62724214b7bdbc3e21d7164b7679e55a6dc"
  public static let nativeType = "rosdemo_v4/MovLRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4MovLRequest {
    var v = Ros1Rosdemo_v4MovLRequest()
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
public struct Ros1Rosdemo_v4MovLResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b638be013e579798f8394727df2a7f2520f458e8c9feb1be56518dc038dd7d04"
  public static let nativeType = "rosdemo_v4/MovLResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4MovLResponse {
    var v = Ros1Rosdemo_v4MovLResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4MovLIORequest: Canonical {
  public static let maximumWireBytes = 8377
  public static let codecIdentity =
    "UWVMROS1_ad460406816839da9bac13749cec3da5ec06cd4d814e9c13b61ade5a57959ddd"
  public static let nativeType = "rosdemo_v4/MovLIORequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4MovLIORequest {
    var v = Ros1Rosdemo_v4MovLIORequest()
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
public struct Ros1Rosdemo_v4MovLIOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_65153e2d930140d23fff126a8dedcb91eae040b36bd22ff54116067c75dec54c"
  public static let nativeType = "rosdemo_v4/MovLIOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4MovLIOResponse {
    var v = Ros1Rosdemo_v4MovLIOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4MoveJogRequest: Canonical {
  public static let maximumWireBytes = 4424
  public static let codecIdentity =
    "UWVMROS1_4405c2a5d68345e826adfa1517fde93d180c9526adfaa15c1eab72817bd400d4"
  public static let nativeType = "rosdemo_v4/MoveJogRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4MoveJogRequest {
    var v = Ros1Rosdemo_v4MoveJogRequest()
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
public struct Ros1Rosdemo_v4MoveJogResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_bfb8a659db448d7a32e409dccf3cf5678b093e7679a9463519951b8b572c5dad"
  public static let nativeType = "rosdemo_v4/MoveJogResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4MoveJogResponse {
    var v = Ros1Rosdemo_v4MoveJogResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4PauseRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_0724bc4dd3f14cc33b595fd5eddcc4169ae428f577cf17274d37031861491458"
  public static let nativeType = "rosdemo_v4/PauseRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4PauseRequest {
    var v = Ros1Rosdemo_v4PauseRequest()
    return v
  }
}
public struct Ros1Rosdemo_v4PauseResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_74ce1cb9c50a42453f3217187291957c2c27d23dfc0f03117b5c1f3f24924179"
  public static let nativeType = "rosdemo_v4/PauseResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4PauseResponse {
    var v = Ros1Rosdemo_v4PauseResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4PositiveKinRequest: Canonical {
  public static let maximumWireBytes = 568
  public static let codecIdentity =
    "UWVMROS1_8e5050dce84fba33aa575ce20b32bab4591c35f40736136cae5b3c6e1faef21c"
  public static let nativeType = "rosdemo_v4/PositiveKinRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4PositiveKinRequest {
    var v = Ros1Rosdemo_v4PositiveKinRequest()
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
public struct Ros1Rosdemo_v4PositiveKinResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a9ce6bea86295b52e94b959dd08e6b6d22d9673e3e07bbc34311d16757230d59"
  public static let nativeType = "rosdemo_v4/PositiveKinResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4PositiveKinResponse {
    var v = Ros1Rosdemo_v4PositiveKinResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4PowerOnRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_37a79bfbb6f1ce4b67d1f9d9a29102e62a63d94c7812c3f43432ede1eaa9e59f"
  public static let nativeType = "rosdemo_v4/PowerOnRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4PowerOnRequest {
    var v = Ros1Rosdemo_v4PowerOnRequest()
    return v
  }
}
public struct Ros1Rosdemo_v4PowerOnResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_dfc6bbc39e3c8e01192aa19ba8329286f314095381e8b6dedf0041b3d7336b88"
  public static let nativeType = "rosdemo_v4/PowerOnResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4PowerOnResponse {
    var v = Ros1Rosdemo_v4PowerOnResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4RelJointMovJRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_cd720cd9f632d655b6c3c8e7258d45ca8b533ab646296e741d849955ddb7df5d"
  public static let nativeType = "rosdemo_v4/RelJointMovJRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4RelJointMovJRequest {
    var v = Ros1Rosdemo_v4RelJointMovJRequest()
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
public struct Ros1Rosdemo_v4RelJointMovJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ef932bafd6a1fc19ae65cc284cf8073e11198a6295ea1b76b8fca30ae553c095"
  public static let nativeType = "rosdemo_v4/RelJointMovJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4RelJointMovJResponse {
    var v = Ros1Rosdemo_v4RelJointMovJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4RelMovJToolRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_447c2017041960c5a7908f9ed79b4031107299dc19a0706a58b63665f27722f2"
  public static let nativeType = "rosdemo_v4/RelMovJToolRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4RelMovJToolRequest {
    var v = Ros1Rosdemo_v4RelMovJToolRequest()
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
public struct Ros1Rosdemo_v4RelMovJToolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e257550023b466fd6a2b0f039548c73ab379feccb57f55a2cb7a56da5f89221e"
  public static let nativeType = "rosdemo_v4/RelMovJToolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4RelMovJToolResponse {
    var v = Ros1Rosdemo_v4RelMovJToolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4RelMovJUserRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_f575ab3530f4cdc9853504e65f3bcd190ad473513b334778eeae53f121550b42"
  public static let nativeType = "rosdemo_v4/RelMovJUserRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4RelMovJUserRequest {
    var v = Ros1Rosdemo_v4RelMovJUserRequest()
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
public struct Ros1Rosdemo_v4RelMovJUserResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7ec2020d09d1497e44bd1e5dc4c7d3f94fc9b40b525ad0abe0646c4c49830069"
  public static let nativeType = "rosdemo_v4/RelMovJUserResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4RelMovJUserResponse {
    var v = Ros1Rosdemo_v4RelMovJUserResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4RelMovLToolRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_4a38969222fc6b0dd15123e0752060b7d3818af030098e0f93f24702cb663bf6"
  public static let nativeType = "rosdemo_v4/RelMovLToolRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4RelMovLToolRequest {
    var v = Ros1Rosdemo_v4RelMovLToolRequest()
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
public struct Ros1Rosdemo_v4RelMovLToolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ba7d0e0a7f27aedcdb0ba1f8cf6d89eb0ac5bcd86da29e8683e3e19c290b01c8"
  public static let nativeType = "rosdemo_v4/RelMovLToolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4RelMovLToolResponse {
    var v = Ros1Rosdemo_v4RelMovLToolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4RelMovLUserRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_1c505d53cbfea745ed7f941c4658252d52f50c91e3a8d4d548ab1f90d3f63567"
  public static let nativeType = "rosdemo_v4/RelMovLUserRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4RelMovLUserRequest {
    var v = Ros1Rosdemo_v4RelMovLUserRequest()
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
public struct Ros1Rosdemo_v4RelMovLUserResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_dae3d0f42de8bbed4988150bc1d838ba033e0f675cf3089419fc548070e06846"
  public static let nativeType = "rosdemo_v4/RelMovLUserResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4RelMovLUserResponse {
    var v = Ros1Rosdemo_v4RelMovLUserResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4RobotModeRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_29ad7f5a2d2e1cdfc34e84f7c86d644d24892bb82fa4e764eb4889b3c2989630"
  public static let nativeType = "rosdemo_v4/RobotModeRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4RobotModeRequest {
    var v = Ros1Rosdemo_v4RobotModeRequest()
    return v
  }
}
public struct Ros1Rosdemo_v4RobotModeResponse: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_bda53abb273c252b346eefb4b4fec7b511e643e480326cc4c27c83a2898ee199"
  public static let nativeType = "rosdemo_v4/RobotModeResponse"
  public static let nativeIdentity: String? = nil
  public var `mode`: Int32 = 0
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4RobotModeResponse {
    var v = Ros1Rosdemo_v4RobotModeResponse()
    v.`mode` = try r.integer(Int32.self)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4RunScriptRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_91716b4cf7cb8978c45ade479780d8d59e6358589320945dfc12491f4db08a40"
  public static let nativeType = "rosdemo_v4/RunScriptRequest"
  public static let nativeIdentity: String? = nil
  public var `projectName`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`projectName`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4RunScriptRequest {
    var v = Ros1Rosdemo_v4RunScriptRequest()
    v.`projectName` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v4RunScriptResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_4dfe238cfd2fa4a1c858cab4101964ad855109e680ffbe00fc0d0739a3e581e8"
  public static let nativeType = "rosdemo_v4/RunScriptResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4RunScriptResponse {
    var v = Ros1Rosdemo_v4RunScriptResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ServoJRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_4291d3eaf7d1ef4fce2df5fef5d2ca1ef845dacb91f5321d11f5823140709071"
  public static let nativeType = "rosdemo_v4/ServoJRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ServoJRequest {
    var v = Ros1Rosdemo_v4ServoJRequest()
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
public struct Ros1Rosdemo_v4ServoJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_abafb6be9c5fb35f94d3e5731fe939dfbab4ef602609f041f7b415a5e26b4ad8"
  public static let nativeType = "rosdemo_v4/ServoJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ServoJResponse {
    var v = Ros1Rosdemo_v4ServoJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ServoPRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_6650fcc171dd0b172c19629e60f086f9b67e5930238aab6d16862f8549859bbe"
  public static let nativeType = "rosdemo_v4/ServoPRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ServoPRequest {
    var v = Ros1Rosdemo_v4ServoPRequest()
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
public struct Ros1Rosdemo_v4ServoPResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_606204f4bcaaefd1a1b6cc7d7d0cbe60efcf8ddc9e0a7df29eceb7d2d353622f"
  public static let nativeType = "rosdemo_v4/ServoPResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ServoPResponse {
    var v = Ros1Rosdemo_v4ServoPResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetBackDistanceRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_8b826d716076ee8d336ca859433bb7a8eae3970d3958f239494cc61c91603877"
  public static let nativeType = "rosdemo_v4/SetBackDistanceRequest"
  public static let nativeIdentity: String? = nil
  public var `distance`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`distance`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetBackDistanceRequest {
    var v = Ros1Rosdemo_v4SetBackDistanceRequest()
    v.`distance` = try r.float64()
    return v
  }
}
public struct Ros1Rosdemo_v4SetBackDistanceResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_d6276f328a689115bd05011b9ed443d9cb6587f3b92fa77e6b808cc625adbffa"
  public static let nativeType = "rosdemo_v4/SetBackDistanceResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetBackDistanceResponse
  {
    var v = Ros1Rosdemo_v4SetBackDistanceResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetCoilsRequest: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_668510a449bcf69f157ce9f973598434585e0effca009b4a2d105335546ef699"
  public static let nativeType = "rosdemo_v4/SetCoilsRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetCoilsRequest {
    var v = Ros1Rosdemo_v4SetCoilsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    v.`valTab` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v4SetCoilsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e3dc557bd4b773d6b1c95fd2c77d38995e9fd0d5b8cf1f9da3786012b31ab3c4"
  public static let nativeType = "rosdemo_v4/SetCoilsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetCoilsResponse {
    var v = Ros1Rosdemo_v4SetCoilsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetCollisionLevelRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_41ccc645b15211a05f0e385cf94ce8943f52f0db8d11b3ca6e96b2fd6eed6ede"
  public static let nativeType = "rosdemo_v4/SetCollisionLevelRequest"
  public static let nativeIdentity: String? = nil
  public var `level`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`level`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetCollisionLevelRequest
  {
    var v = Ros1Rosdemo_v4SetCollisionLevelRequest()
    v.`level` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetCollisionLevelResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_fe8beab960e6d28dd27ba1fec6fc3228692f1c3b09b7bd27460a218aba36e166"
  public static let nativeType = "rosdemo_v4/SetCollisionLevelResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Rosdemo_v4SetCollisionLevelResponse
  {
    var v = Ros1Rosdemo_v4SetCollisionLevelResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetHoldRegsRequest: Canonical {
  public static let maximumWireBytes = 532
  public static let codecIdentity =
    "UWVMROS1_1a30f714acb56987827196d8522a5411c2b94948a59427c7cfe3a3aacd31dd71"
  public static let nativeType = "rosdemo_v4/SetHoldRegsRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetHoldRegsRequest {
    var v = Ros1Rosdemo_v4SetHoldRegsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    v.`valTab` = try r.string(bound: 256)
    v.`valType` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v4SetHoldRegsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_15808e5f2cf1f577a6b0c60284b9a506ac006cf5e9dce48c77a85fb921c9c934"
  public static let nativeType = "rosdemo_v4/SetHoldRegsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetHoldRegsResponse {
    var v = Ros1Rosdemo_v4SetHoldRegsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetOutputBoolRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_c4524f5cb7e1cf9a16ab3444663cb7097dd16036b074602c0f94d6a729dfffd3"
  public static let nativeType = "rosdemo_v4/SetOutputBoolRequest"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetOutputBoolRequest {
    var v = Ros1Rosdemo_v4SetOutputBoolRequest()
    v.`address` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetOutputBoolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_49734ad4fb75dac84b329889d76b274fb95cd0116b22ff95b91d45bbf3901445"
  public static let nativeType = "rosdemo_v4/SetOutputBoolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetOutputBoolResponse {
    var v = Ros1Rosdemo_v4SetOutputBoolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetOutputFloatRequest: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_ca0404916a941f92cddc866b575652a4ed4550d30bd1b0e92140a81ff3e16de0"
  public static let nativeType = "rosdemo_v4/SetOutputFloatRequest"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public var `value`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.float64(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetOutputFloatRequest {
    var v = Ros1Rosdemo_v4SetOutputFloatRequest()
    v.`address` = try r.integer(Int32.self)
    v.`value` = try r.float64()
    return v
  }
}
public struct Ros1Rosdemo_v4SetOutputFloatResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_533fdaf7fb6fcdf7a7d9fb0e764b5efe4f2f82957a63b1f85131de3687957173"
  public static let nativeType = "rosdemo_v4/SetOutputFloatResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetOutputFloatResponse {
    var v = Ros1Rosdemo_v4SetOutputFloatResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetOutputIntRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_3abab70756725846970f1065edd99f39b5cb1be00f13588aad95b567d14aa0de"
  public static let nativeType = "rosdemo_v4/SetOutputIntRequest"
  public static let nativeIdentity: String? = nil
  public var `address`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetOutputIntRequest {
    var v = Ros1Rosdemo_v4SetOutputIntRequest()
    v.`address` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetOutputIntResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a7c706a60b351b6596c352dbf955a88a2c2d532abe24f2ec208b755afe975525"
  public static let nativeType = "rosdemo_v4/SetOutputIntResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetOutputIntResponse {
    var v = Ros1Rosdemo_v4SetOutputIntResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetPayloadRequest: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_99feda7d525eb9836bd9bb5123915816639d25657b7dcbc3353676234dd83087"
  public static let nativeType = "rosdemo_v4/SetPayloadRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetPayloadRequest {
    var v = Ros1Rosdemo_v4SetPayloadRequest()
    v.`load` = try r.float64()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
public struct Ros1Rosdemo_v4SetPayloadResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7decd187d884825cb1ebcfd6a30e8d52956fdf3635f77f573df005737dde1814"
  public static let nativeType = "rosdemo_v4/SetPayloadResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetPayloadResponse {
    var v = Ros1Rosdemo_v4SetPayloadResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetPostCollisionModeRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_5c3f53e0d872083bb0fe033564505113dd4cf447653d78e31ed07cec3f327557"
  public static let nativeType = "rosdemo_v4/SetPostCollisionModeRequest"
  public static let nativeIdentity: String? = nil
  public var `mode`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Rosdemo_v4SetPostCollisionModeRequest
  {
    var v = Ros1Rosdemo_v4SetPostCollisionModeRequest()
    v.`mode` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetPostCollisionModeResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_3515493683a99cc17beed55155f8a539dc46963961c469e564123cdb0718e896"
  public static let nativeType = "rosdemo_v4/SetPostCollisionModeResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Rosdemo_v4SetPostCollisionModeResponse
  {
    var v = Ros1Rosdemo_v4SetPostCollisionModeResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetSafeSkinRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_546964bab46e715348a7a9198b62fb8854045e65dec5abe9c4f17f65037278e6"
  public static let nativeType = "rosdemo_v4/SetSafeSkinRequest"
  public static let nativeIdentity: String? = nil
  public var `part`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`part`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetSafeSkinRequest {
    var v = Ros1Rosdemo_v4SetSafeSkinRequest()
    v.`part` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetSafeSkinResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_4554a225a629cc97b596f5c498906d1f3bfc840cb3c243285a9dddbe6abee576"
  public static let nativeType = "rosdemo_v4/SetSafeSkinResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetSafeSkinResponse {
    var v = Ros1Rosdemo_v4SetSafeSkinResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetSafeWallEnableRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_16b0daf7af42d7f14752f854a996aabb61c328999ccd13b0cb59c9f48fc645b4"
  public static let nativeType = "rosdemo_v4/SetSafeWallEnableRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetSafeWallEnableRequest
  {
    var v = Ros1Rosdemo_v4SetSafeWallEnableRequest()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetSafeWallEnableResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_28c807143ad6f567c7c7f1c16a37b5a9c65bf72b094994ea5ae23a72bfc13c38"
  public static let nativeType = "rosdemo_v4/SetSafeWallEnableResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Rosdemo_v4SetSafeWallEnableResponse
  {
    var v = Ros1Rosdemo_v4SetSafeWallEnableResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetToolRequest: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_95979e2c7d69ea6d4e60db52f1a6b2c83ff96c8913fa7149b9006c72377933da"
  public static let nativeType = "rosdemo_v4/SetToolRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.string(self.`value`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetToolRequest {
    var v = Ros1Rosdemo_v4SetToolRequest()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v4SetToolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_43022c007cc4c8345eac14b991870e5d7d451c0346ee6f870e6398fadf15333f"
  public static let nativeType = "rosdemo_v4/SetToolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetToolResponse {
    var v = Ros1Rosdemo_v4SetToolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetTool485Request: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_297e32de0960af99e4aff4a33b616c51b4087a6223665ce4993ab5f9c3dcced2"
  public static let nativeType = "rosdemo_v4/SetTool485Request"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetTool485Request {
    var v = Ros1Rosdemo_v4SetTool485Request()
    v.`baudrate` = try r.integer(Int32.self)
    v.`parity` = try r.string(bound: 256)
    v.`stop` = try r.integer(Int32.self)
    v.`identify` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetTool485Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f558d54d6caec7abf82558798a1254ce4ad782a6b3236c28786288674fdee6d7"
  public static let nativeType = "rosdemo_v4/SetTool485Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetTool485Response {
    var v = Ros1Rosdemo_v4SetTool485Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetToolModeRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_2d9e8ef921cc8e1eb10048869bc6b2cdbd3b43bde60329c4c5936ae78dae1e9b"
  public static let nativeType = "rosdemo_v4/SetToolModeRequest"
  public static let nativeIdentity: String? = nil
  public var `mode`: Int32 = 0
  public var `type`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
    try w.integer(self.`type`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetToolModeRequest {
    var v = Ros1Rosdemo_v4SetToolModeRequest()
    v.`mode` = try r.integer(Int32.self)
    v.`type` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetToolModeResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_1f4d3423a7057457bc7eeb44565ecb2c3c4da2ea67b9f8f5833f893320ec4f13"
  public static let nativeType = "rosdemo_v4/SetToolModeResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetToolModeResponse {
    var v = Ros1Rosdemo_v4SetToolModeResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetToolPowerRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b50da7a7513c57b7d7068835275af7245e904a21a7416bdea83c83b07dc2b985"
  public static let nativeType = "rosdemo_v4/SetToolPowerRequest"
  public static let nativeIdentity: String? = nil
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetToolPowerRequest {
    var v = Ros1Rosdemo_v4SetToolPowerRequest()
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetToolPowerResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_da8afa2a4b60234acd7b36aab53e15be6567b8aca3c45a1fa2af64a07f5a2227"
  public static let nativeType = "rosdemo_v4/SetToolPowerResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetToolPowerResponse {
    var v = Ros1Rosdemo_v4SetToolPowerResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SetUserRequest: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_ace2739af37656402842a9825cb98dcb0eeb80a9899330f5aa457305d74669aa"
  public static let nativeType = "rosdemo_v4/SetUserRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.string(self.`value`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetUserRequest {
    var v = Ros1Rosdemo_v4SetUserRequest()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v4SetUserResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_878da3404c6d0a82f1a567bb69a1280a0fea90aa54c12460fdd24810e9dfe919"
  public static let nativeType = "rosdemo_v4/SetUserResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SetUserResponse {
    var v = Ros1Rosdemo_v4SetUserResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SpeedFactorRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_3d627fa6ccc17b96d3d957c17e96f9e5338538159dfa85959610a9f901803a9a"
  public static let nativeType = "rosdemo_v4/SpeedFactorRequest"
  public static let nativeIdentity: String? = nil
  public var `ratio`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ratio`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SpeedFactorRequest {
    var v = Ros1Rosdemo_v4SpeedFactorRequest()
    v.`ratio` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4SpeedFactorResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_5f425013611e572961c782e71d24c4d3b37a26445b145896fab7c49d83e899d3"
  public static let nativeType = "rosdemo_v4/SpeedFactorResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4SpeedFactorResponse {
    var v = Ros1Rosdemo_v4SpeedFactorResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4StartDragRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_77b94a2182924aca83a63839ea536bb260a82938e4777d131965d6df4e296f3f"
  public static let nativeType = "rosdemo_v4/StartDragRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4StartDragRequest {
    var v = Ros1Rosdemo_v4StartDragRequest()
    return v
  }
}
public struct Ros1Rosdemo_v4StartDragResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f46b30ea4abf0eab654b8643dd8ec07ab1069615aa17cd77fba9a9e9b55be042"
  public static let nativeType = "rosdemo_v4/StartDragResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4StartDragResponse {
    var v = Ros1Rosdemo_v4StartDragResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4StartPathRequest: Canonical {
  public static let maximumWireBytes = 4424
  public static let codecIdentity =
    "UWVMROS1_bb496e5aa8efd5167f627af32c004204daefcc490e9402077cff3a5bde850bd8"
  public static let nativeType = "rosdemo_v4/StartPathRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4StartPathRequest {
    var v = Ros1Rosdemo_v4StartPathRequest()
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
public struct Ros1Rosdemo_v4StartPathResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2748c135187deaf6c46c8b764be8cd8b526aeb5f2725c9e39df6fbdc37db2296"
  public static let nativeType = "rosdemo_v4/StartPathResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4StartPathResponse {
    var v = Ros1Rosdemo_v4StartPathResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4StopRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_e290dd226267a51ec721800de05786d5e8855a5aa66f445d71bc66cdaefcac3a"
  public static let nativeType = "rosdemo_v4/StopRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4StopRequest {
    var v = Ros1Rosdemo_v4StopRequest()
    return v
  }
}
public struct Ros1Rosdemo_v4StopResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_433970515842257c1a95945bf5cb81459028497c081bb506168940124e01a4a6"
  public static let nativeType = "rosdemo_v4/StopResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4StopResponse {
    var v = Ros1Rosdemo_v4StopResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4StopDragRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_d6b0bd3ad7c38923dddb34e9dacb10957f8039ea8de975ed244e6f055f4382c7"
  public static let nativeType = "rosdemo_v4/StopDragRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4StopDragRequest {
    var v = Ros1Rosdemo_v4StopDragRequest()
    return v
  }
}
public struct Ros1Rosdemo_v4StopDragResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_983e05b8edb970adbca14ff844e9bb547fd1bbf5d73149672f0e3c64d62c3c49"
  public static let nativeType = "rosdemo_v4/StopDragResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4StopDragResponse {
    var v = Ros1Rosdemo_v4StopDragResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4StopMoveJogRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_ae0e9ee98e7383bbc1d4cfdd8f52c66f466533c9eeef583c6b3d815f5098e45c"
  public static let nativeType = "rosdemo_v4/StopMoveJogRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4StopMoveJogRequest {
    var v = Ros1Rosdemo_v4StopMoveJogRequest()
    return v
  }
}
public struct Ros1Rosdemo_v4StopMoveJogResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f1fc654fc70290eaa16187d80ad84b69ae2ba9adb1bb1e3ea6e7565247721955"
  public static let nativeType = "rosdemo_v4/StopMoveJogResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4StopMoveJogResponse {
    var v = Ros1Rosdemo_v4StopMoveJogResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4TcpDashboardRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_47cf7cf3c864691b6c60c2657b1491c56013ccffc389a850f72bacd89e101669"
  public static let nativeType = "rosdemo_v4/TcpDashboardRequest"
  public static let nativeIdentity: String? = nil
  public var `command`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`command`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4TcpDashboardRequest {
    var v = Ros1Rosdemo_v4TcpDashboardRequest()
    v.`command` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v4TcpDashboardResponse: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_7caec2f6f4bcb9e6bbb4a3adb1e20ad6935cfb77d72bc6d8772ccddfa9d57725"
  public static let nativeType = "rosdemo_v4/TcpDashboardResponse"
  public static let nativeIdentity: String? = nil
  public var `result`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`result`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4TcpDashboardResponse {
    var v = Ros1Rosdemo_v4TcpDashboardResponse()
    v.`result` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v4ToolRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a8ab3c5f3ba17c1da69c9b96c6c5b3351a9b814c4c564203fce628e1b06ca633"
  public static let nativeType = "rosdemo_v4/ToolRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ToolRequest {
    var v = Ros1Rosdemo_v4ToolRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ToolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a9027450905cbd15ab300924c74e2990df138d19bac12b7d1f5033fded01ea8e"
  public static let nativeType = "rosdemo_v4/ToolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ToolResponse {
    var v = Ros1Rosdemo_v4ToolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ToolAIRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c141fb5f247d29ef1f6af584320382779cfc3febf3f8e57722d4c49cad478c94"
  public static let nativeType = "rosdemo_v4/ToolAIRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ToolAIRequest {
    var v = Ros1Rosdemo_v4ToolAIRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ToolAIResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2b36d315526555b9c2890193d72da3bc11f28d96bd0666d1138e8d52ca2e96bd"
  public static let nativeType = "rosdemo_v4/ToolAIResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ToolAIResponse {
    var v = Ros1Rosdemo_v4ToolAIResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ToolDIRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8180502a73118db535342bee15363e88e24249bfbffb486e986f9b8481267a0f"
  public static let nativeType = "rosdemo_v4/ToolDIRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ToolDIRequest {
    var v = Ros1Rosdemo_v4ToolDIRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ToolDIResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e062173a11ff92dbdf6608de99da922ec66fdc55252a53f059b4fe7b4e73aedd"
  public static let nativeType = "rosdemo_v4/ToolDIResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ToolDIResponse {
    var v = Ros1Rosdemo_v4ToolDIResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ToolDORequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_fcd7e9d3287bcc24acb0dd5300d4804dbb716275e6d582b50ec6ff7c6670baa0"
  public static let nativeType = "rosdemo_v4/ToolDORequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ToolDORequest {
    var v = Ros1Rosdemo_v4ToolDORequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ToolDOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_06f053e9ad52998b7947587d9982a20f9e72bc0be403f419ea4a096b0d539852"
  public static let nativeType = "rosdemo_v4/ToolDOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ToolDOResponse {
    var v = Ros1Rosdemo_v4ToolDOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ToolDOInstantRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_c68c24ef0ec153f71f5c6805aa8e9ae3ff12b5dfe64415da75af18df97b4784b"
  public static let nativeType = "rosdemo_v4/ToolDOInstantRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ToolDOInstantRequest {
    var v = Ros1Rosdemo_v4ToolDOInstantRequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4ToolDOInstantResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c880a6b3852d4dad8365a6334075096ed221040fb9e86b8e9a545c11f9a48981"
  public static let nativeType = "rosdemo_v4/ToolDOInstantResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4ToolDOInstantResponse {
    var v = Ros1Rosdemo_v4ToolDOInstantResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4UserRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_1d043f84db26368dd7207cf5585380d24f89c9d990922652dd76720c7f6ff3dd"
  public static let nativeType = "rosdemo_v4/UserRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4UserRequest {
    var v = Ros1Rosdemo_v4UserRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4UserResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_84129d499ec84200cb970b87870fa4aaa2398bf8e55b3db49260da40b6521abb"
  public static let nativeType = "rosdemo_v4/UserResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4UserResponse {
    var v = Ros1Rosdemo_v4UserResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4VelJRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_979d0b0dc39a507d47ce758757b6abc933e2887ea56e713ef60c27a72b1ff864"
  public static let nativeType = "rosdemo_v4/VelJRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4VelJRequest {
    var v = Ros1Rosdemo_v4VelJRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4VelJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_37148bdc9a4c8d9dfb0249ffa5e87fe917ea88c4b212a793fafdcb92ec3a1749"
  public static let nativeType = "rosdemo_v4/VelJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4VelJResponse {
    var v = Ros1Rosdemo_v4VelJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4VelLRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ed647102e30f45418ff04cb3717694ba1c2256497773ccd24f6336e45877d05e"
  public static let nativeType = "rosdemo_v4/VelLRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4VelLRequest {
    var v = Ros1Rosdemo_v4VelLRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v4VelLResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_013b1c007d34ccc7d9f12c272ac0720eeb347727d6861995dd1a7290c8eace85"
  public static let nativeType = "rosdemo_v4/VelLResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v4VelLResponse {
    var v = Ros1Rosdemo_v4VelLResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
