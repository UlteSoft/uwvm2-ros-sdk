/// @file records.swift
/// @brief Preserve the complete original dobot/ros1_demo_v3 canonical value domain.
/// @details The selected domain contains 190 complete record/components and 344 original fields. Declared
/// scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
/// Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
/// create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
/// does not qualify a frontend, target ABI or native ROS transport.
/// @see The platform's localized language guide and complete API-CATALOG.md.
// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros1Rosdemo_v3AIRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b602a1e465dd6b75ba4a2e0217613655696ef285e83432e80defff56712d7684"
  public static let nativeType = "rosdemo_v3/AIRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3AIRequest {
    var v = Ros1Rosdemo_v3AIRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3AIResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_6b3106431d74363789930f01dffcae6ad1d1bc6ca7a7f1e9e018df51700e922f"
  public static let nativeType = "rosdemo_v3/AIResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3AIResponse {
    var v = Ros1Rosdemo_v3AIResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3AORequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_ea8f0fd6d894e1a23e149adfc51b8c3a5b9c037df95290e63cb3e3e0bdd552b6"
  public static let nativeType = "rosdemo_v3/AORequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3AORequest {
    var v = Ros1Rosdemo_v3AORequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3AOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_d4031006ac8b81a933b1d80c47e218cbcba3cb3a50b8f0cad2aa52267fb97923"
  public static let nativeType = "rosdemo_v3/AOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3AOResponse {
    var v = Ros1Rosdemo_v3AOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3AOExecuteRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_2342287600070fe6036788d4e658dfb03a15a1f7e63bec0eb9c59604ba47c633"
  public static let nativeType = "rosdemo_v3/AOExecuteRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3AOExecuteRequest {
    var v = Ros1Rosdemo_v3AOExecuteRequest()
    v.`index` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3AOExecuteResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ec6a75397d1e0bf9c66ff9bf7531960e8c92225c7b632a213e7912a80b106be8"
  public static let nativeType = "rosdemo_v3/AOExecuteResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3AOExecuteResponse {
    var v = Ros1Rosdemo_v3AOExecuteResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3AccJRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ee7fc2b23de9a24fefd510bc63d67aa38d66051ef6a00e714f512eaeb0d30b15"
  public static let nativeType = "rosdemo_v3/AccJRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3AccJRequest {
    var v = Ros1Rosdemo_v3AccJRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3AccJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_1bc2c42b4088dcf05aa9d517c86ee0d32aa29bbe0a0eaa4089a963657490f604"
  public static let nativeType = "rosdemo_v3/AccJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3AccJResponse {
    var v = Ros1Rosdemo_v3AccJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3AccLRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_bd2180c136263ccbcae8759c605671f612aafcbbc3d6e210d190358e77a3f1f8"
  public static let nativeType = "rosdemo_v3/AccLRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3AccLRequest {
    var v = Ros1Rosdemo_v3AccLRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3AccLResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_44e3c490f73cef68983ad0778534665a2410a94c35d2ee4051a5e4806e1ec52d"
  public static let nativeType = "rosdemo_v3/AccLResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3AccLResponse {
    var v = Ros1Rosdemo_v3AccLResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ArcRequest: Canonical {
  public static let maximumWireBytes = 4260
  public static let codecIdentity =
    "UWVMROS1_0a58fd6305724f29468dfe7c962552e0a3ccacc8acc3dc35a0a425540ce7b827"
  public static let nativeType = "rosdemo_v3/ArcRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ArcRequest {
    var v = Ros1Rosdemo_v3ArcRequest()
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
public struct Ros1Rosdemo_v3ArcResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_654b0ad2eab7c5246beb6e9214fd7aad5c48ea87c7d7ff723742a1adef0157e7"
  public static let nativeType = "rosdemo_v3/ArcResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ArcResponse {
    var v = Ros1Rosdemo_v3ArcResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ArchRequest: Canonical {
  public static let maximumWireBytes = 4168
  public static let codecIdentity =
    "UWVMROS1_7b963ad26c84e7d97cdde31b5433e9e047c2e6bf308ba8b84f2be45c4edf84b5"
  public static let nativeType = "rosdemo_v3/ArchRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ArchRequest {
    var v = Ros1Rosdemo_v3ArchRequest()
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
public struct Ros1Rosdemo_v3ArchResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8f2ce9205a4747044bd72d6fcd196abcfd05c26091e73a05aeeceedce5492db8"
  public static let nativeType = "rosdemo_v3/ArchResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ArchResponse {
    var v = Ros1Rosdemo_v3ArchResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3BrakeControlRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_9512b030827f41d17e39c78ff60c18d91023f3dbbf4156e456a2d2009c2ff1f9"
  public static let nativeType = "rosdemo_v3/BrakeControlRequest"
  public static let nativeIdentity: String? = nil
  public var `axisID`: Int32 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`axisID`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3BrakeControlRequest {
    var v = Ros1Rosdemo_v3BrakeControlRequest()
    v.`axisID` = try r.integer(Int32.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3BrakeControlResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2bd6142faf934f639bdb6bb58f962091e1e7ac31987a3e5f1f66e807fdab7ed9"
  public static let nativeType = "rosdemo_v3/BrakeControlResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3BrakeControlResponse {
    var v = Ros1Rosdemo_v3BrakeControlResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3CPRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f7e35d289326ac400d9b9480874de4c64cf6fac6b00c7cb1e174f0885289c8b1"
  public static let nativeType = "rosdemo_v3/CPRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3CPRequest {
    var v = Ros1Rosdemo_v3CPRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3CPResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b1dcc779238507d4226b4532e54677fdc1b5d8df00944b3b9490affe5c90694f"
  public static let nativeType = "rosdemo_v3/CPResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3CPResponse {
    var v = Ros1Rosdemo_v3CPResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3CircleRequest: Canonical {
  public static let maximumWireBytes = 4264
  public static let codecIdentity =
    "UWVMROS1_56fcfc6f974a83502fd82f10d9188e6be62cdbbefc367df7ac42e7870a38d819"
  public static let nativeType = "rosdemo_v3/CircleRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3CircleRequest {
    var v = Ros1Rosdemo_v3CircleRequest()
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
public struct Ros1Rosdemo_v3CircleResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_77b6bd5164520bd43a51d52db0775c36101c832410ea253c3e8affe28613d465"
  public static let nativeType = "rosdemo_v3/CircleResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3CircleResponse {
    var v = Ros1Rosdemo_v3CircleResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ClearErrorRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_10a58a18f55822228afad043c190b2108b736ac3bc846bad306f878e72970b45"
  public static let nativeType = "rosdemo_v3/ClearErrorRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ClearErrorRequest {
    var v = Ros1Rosdemo_v3ClearErrorRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3ClearErrorResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_bd4b09f1dd37b4e8bf7c26147e4e956e3b768a09a7fa062b9d0791326cfc443f"
  public static let nativeType = "rosdemo_v3/ClearErrorResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ClearErrorResponse {
    var v = Ros1Rosdemo_v3ClearErrorResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ContinueScriptRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_4a9a03292712f96433cd8ffa390bb6a9b8d2c240ba3ccad086834e065618c0ae"
  public static let nativeType = "rosdemo_v3/ContinueScriptRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ContinueScriptRequest {
    var v = Ros1Rosdemo_v3ContinueScriptRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3ContinueScriptResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_5bcedbffe96126d06ecfd342b8e09ed27d17ee4c696b6bf2cba9110eb22812a6"
  public static let nativeType = "rosdemo_v3/ContinueScriptResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ContinueScriptResponse {
    var v = Ros1Rosdemo_v3ContinueScriptResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ContinuesRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_69ffe640251ba368c4276f9b3051b68fa7fa21f6cc5fd79d77369b8ec76721ce"
  public static let nativeType = "rosdemo_v3/ContinuesRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ContinuesRequest {
    var v = Ros1Rosdemo_v3ContinuesRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3ContinuesResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f2136b7af34df7644815eacb207211915ab103e9ddfd701e2db74acef0886cdd"
  public static let nativeType = "rosdemo_v3/ContinuesResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ContinuesResponse {
    var v = Ros1Rosdemo_v3ContinuesResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3DIRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a056a7e904b0e24c7d94573364baa09f564d73f7abfe731624b6415012cf5211"
  public static let nativeType = "rosdemo_v3/DIRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3DIRequest {
    var v = Ros1Rosdemo_v3DIRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3DIResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8c764acc5c7170755a41db12875eeb4376b63419ba2165920fce6e930a413333"
  public static let nativeType = "rosdemo_v3/DIResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3DIResponse {
    var v = Ros1Rosdemo_v3DIResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3DIGroupRequest: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_6cdd5c2c3f926c92b0e44917cc57ece31ba92fc680b4aad7a756180f92251e4d"
  public static let nativeType = "rosdemo_v3/DIGroupRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3DIGroupRequest {
    var v = Ros1Rosdemo_v3DIGroupRequest()
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
public struct Ros1Rosdemo_v3DIGroupResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2e50223024312a513bbea9f92c05fc3238e277ebeaed639de866da419917f7b8"
  public static let nativeType = "rosdemo_v3/DIGroupResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3DIGroupResponse {
    var v = Ros1Rosdemo_v3DIGroupResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3DORequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_e94e2138062ab0a7034e2dcdd7ef239a7d88939fad1fcd670019cb5eadbab929"
  public static let nativeType = "rosdemo_v3/DORequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3DORequest {
    var v = Ros1Rosdemo_v3DORequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3DOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_6e5bccf43f36bcefb4a4f4546dc85298f1dd23a383db5db7e5a0959efdb90d48"
  public static let nativeType = "rosdemo_v3/DOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3DOResponse {
    var v = Ros1Rosdemo_v3DOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3DOExecuteRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_ce6129f7a0acf19faa0e6b3dc9e6ceb88a049cf6e1f8d8bce39287bca09282a5"
  public static let nativeType = "rosdemo_v3/DOExecuteRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3DOExecuteRequest {
    var v = Ros1Rosdemo_v3DOExecuteRequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3DOExecuteResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_048260cfdda06abf9129494dcdb273ce906a0e360d8d57de67c5288f6b04cfab"
  public static let nativeType = "rosdemo_v3/DOExecuteResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3DOExecuteResponse {
    var v = Ros1Rosdemo_v3DOExecuteResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3DOGroupRequest: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_6d518336c4a90e6cd094cb4dd7c00a305a623f8bc7a5c7cd2a4361ac3434115e"
  public static let nativeType = "rosdemo_v3/DOGroupRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3DOGroupRequest {
    var v = Ros1Rosdemo_v3DOGroupRequest()
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
public struct Ros1Rosdemo_v3DOGroupResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_232face7e889eef783b5d78ac61468563dcccf638ac2afd4d76c59e1deca3a58"
  public static let nativeType = "rosdemo_v3/DOGroupResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3DOGroupResponse {
    var v = Ros1Rosdemo_v3DOGroupResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3DigitalOutputsRequest: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_d6f5d01c8735191a0917ca61a1f86fada2ff87fb7bafeeae61f360005ae22f4b"
  public static let nativeType = "rosdemo_v3/DigitalOutputsRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.boolean(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3DigitalOutputsRequest {
    var v = Ros1Rosdemo_v3DigitalOutputsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.boolean()
    return v
  }
}
public struct Ros1Rosdemo_v3DigitalOutputsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_77f11a8dcca8f519569757ae3959a3b4f5cd048eb8430a7982be2859d32024fa"
  public static let nativeType = "rosdemo_v3/DigitalOutputsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3DigitalOutputsResponse {
    var v = Ros1Rosdemo_v3DigitalOutputsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3DisableRobotRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_cc359148b9f8b8e5191ffde7d3c67bd4cf7706e188fd7f90ee4e28ac19517f10"
  public static let nativeType = "rosdemo_v3/DisableRobotRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3DisableRobotRequest {
    var v = Ros1Rosdemo_v3DisableRobotRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3DisableRobotResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_180186300237bfc48937494a4ddc72e9b6519d37b16980f3f6cd94df10ec9fbd"
  public static let nativeType = "rosdemo_v3/DisableRobotResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3DisableRobotResponse {
    var v = Ros1Rosdemo_v3DisableRobotResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3EmergencyStopRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_c76b900e2c1af4b53e667851a3cee4c61f8e01f17bef03518c1c5cc905d73042"
  public static let nativeType = "rosdemo_v3/EmergencyStopRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3EmergencyStopRequest {
    var v = Ros1Rosdemo_v3EmergencyStopRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3EmergencyStopResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_68b18beb9782c54f72fc689498e6b814d379bb13f45ec4126a46a1cb4a0ca842"
  public static let nativeType = "rosdemo_v3/EmergencyStopResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3EmergencyStopResponse {
    var v = Ros1Rosdemo_v3EmergencyStopResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3EnableRobotRequest: Canonical {
  public static let maximumWireBytes = 132
  public static let codecIdentity =
    "UWVMROS1_ccbdde2b629cecdbab93a2d6fa374e7037079f8eace470b2390b76e373aca67d"
  public static let nativeType = "rosdemo_v3/EnableRobotRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3EnableRobotRequest {
    var v = Ros1Rosdemo_v3EnableRobotRequest()
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
public struct Ros1Rosdemo_v3EnableRobotResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_06cc454eb7c17dbeec3e6b65613cffb6c8f01d1ea6553059419182b301ff1f1d"
  public static let nativeType = "rosdemo_v3/EnableRobotResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3EnableRobotResponse {
    var v = Ros1Rosdemo_v3EnableRobotResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3GetAngleRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_c911203946a7243ce65eeb56ed7d0173201695e2f35e36f3dd8b34c90e629326"
  public static let nativeType = "rosdemo_v3/GetAngleRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetAngleRequest {
    var v = Ros1Rosdemo_v3GetAngleRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3GetAngleResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e282207443c5e087238aef0db3f261fe7d634ec947798e96e579c150b7282850"
  public static let nativeType = "rosdemo_v3/GetAngleResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetAngleResponse {
    var v = Ros1Rosdemo_v3GetAngleResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3GetCoilsRequest: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_49ec91ec3a1f3e35b80f5791cad20187acf42972167e3c0452f2d41c40b94b8b"
  public static let nativeType = "rosdemo_v3/GetCoilsRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetCoilsRequest {
    var v = Ros1Rosdemo_v3GetCoilsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3GetCoilsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_93d27292ab877e94f7d917bb7b5aee79e2f43cd6e824a00bc671502f6e6d2a6f"
  public static let nativeType = "rosdemo_v3/GetCoilsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetCoilsResponse {
    var v = Ros1Rosdemo_v3GetCoilsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3GetErrorIDRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_48580c69404b4714464101180638a24138945f254bc5ca49d10204ed45ffc4b5"
  public static let nativeType = "rosdemo_v3/GetErrorIDRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetErrorIDRequest {
    var v = Ros1Rosdemo_v3GetErrorIDRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3GetErrorIDResponse: Canonical {
  public static let maximumWireBytes = 72
  public static let codecIdentity =
    "UWVMROS1_ffbc8bd3d575db372c48159424450fd4e40abe94c640d7c0f6cfe7aa207a9c58"
  public static let nativeType = "rosdemo_v3/GetErrorIDResponse"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetErrorIDResponse {
    var v = Ros1Rosdemo_v3GetErrorIDResponse()
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
public struct Ros1Rosdemo_v3GetHoldRegsRequest: Canonical {
  public static let maximumWireBytes = 4176
  public static let codecIdentity =
    "UWVMROS1_442a8b8cc035aa85941b272888f6386166b8adffed06faa932d1adc3bd09071a"
  public static let nativeType = "rosdemo_v3/GetHoldRegsRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetHoldRegsRequest {
    var v = Ros1Rosdemo_v3GetHoldRegsRequest()
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
public struct Ros1Rosdemo_v3GetHoldRegsResponse: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_a7ae19ad05cb63a9e1abf60e1eeead85d20f0ed051f98d8592537a1b68091a68"
  public static let nativeType = "rosdemo_v3/GetHoldRegsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetHoldRegsResponse {
    var v = Ros1Rosdemo_v3GetHoldRegsResponse()
    v.`res` = try r.integer(Int32.self)
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3GetInBitsRequest: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_e584699a619da41a1adc99cb6330016810b0cedb7f6e7a53e4a90e7e29b92b90"
  public static let nativeType = "rosdemo_v3/GetInBitsRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetInBitsRequest {
    var v = Ros1Rosdemo_v3GetInBitsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3GetInBitsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_6282410fe1c5c76f9ab5ee4937c1400e30731a3562011b79119786edb7856709"
  public static let nativeType = "rosdemo_v3/GetInBitsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetInBitsResponse {
    var v = Ros1Rosdemo_v3GetInBitsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3GetInRegsRequest: Canonical {
  public static let maximumWireBytes = 4176
  public static let codecIdentity =
    "UWVMROS1_478634f60e4acc3c40fd1baa41b09d5186b920e3f3a0f57e8d60e150789447eb"
  public static let nativeType = "rosdemo_v3/GetInRegsRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetInRegsRequest {
    var v = Ros1Rosdemo_v3GetInRegsRequest()
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
public struct Ros1Rosdemo_v3GetInRegsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_56a7fe78e00f7560809c68ca363e06bfdb8f2317f821f802e4879f4c65b754fc"
  public static let nativeType = "rosdemo_v3/GetInRegsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetInRegsResponse {
    var v = Ros1Rosdemo_v3GetInRegsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3GetPathStartPoseRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_331dcc72642af66b9050d0d931d0bce3f184506634030162bd734157e2b74f9d"
  public static let nativeType = "rosdemo_v3/GetPathStartPoseRequest"
  public static let nativeIdentity: String? = nil
  public var `traceName`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`traceName`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetPathStartPoseRequest
  {
    var v = Ros1Rosdemo_v3GetPathStartPoseRequest()
    v.`traceName` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v3GetPathStartPoseResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ac09b3653ef09231f1255b7823e76160d638826cb54cd7a5036377d9e6cfa8e4"
  public static let nativeType = "rosdemo_v3/GetPathStartPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetPathStartPoseResponse
  {
    var v = Ros1Rosdemo_v3GetPathStartPoseResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3GetPoseRequest: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_896c131a221c827fd65edacc327abd669c6a4e781e87f5320482d96af44daa43"
  public static let nativeType = "rosdemo_v3/GetPoseRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetPoseRequest {
    var v = Ros1Rosdemo_v3GetPoseRequest()
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
public struct Ros1Rosdemo_v3GetPoseResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f9e71c9e4764010aafa79a277e6e92f59556fcd3d4732e9a8f6f0ae53f937cb5"
  public static let nativeType = "rosdemo_v3/GetPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetPoseResponse {
    var v = Ros1Rosdemo_v3GetPoseResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3GetSixForceDataRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_39a2e96ac8e519373f779446a91ccbf8415446a018e3864f6c15d79ac58538c2"
  public static let nativeType = "rosdemo_v3/GetSixForceDataRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetSixForceDataRequest {
    var v = Ros1Rosdemo_v3GetSixForceDataRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3GetSixForceDataResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f3432a7cbc328bea276d4d18d55511e1ec8bd8bd6b3d63cae88e3be023f0ff84"
  public static let nativeType = "rosdemo_v3/GetSixForceDataResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetSixForceDataResponse
  {
    var v = Ros1Rosdemo_v3GetSixForceDataResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3GetTerminal485Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_08e15ecbdc640b0898bab0105ac64e93138e91d5c535b3044522bb9cb43e717f"
  public static let nativeType = "rosdemo_v3/GetTerminal485Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetTerminal485Request {
    var v = Ros1Rosdemo_v3GetTerminal485Request()
    return v
  }
}
public struct Ros1Rosdemo_v3GetTerminal485Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8ed4380b139d4bd132cc1662e2f695360ef4ade63b49cf4a874b3f8429c7ca80"
  public static let nativeType = "rosdemo_v3/GetTerminal485Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetTerminal485Response {
    var v = Ros1Rosdemo_v3GetTerminal485Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3GetTraceStartPoseRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_e07c64f2ba6bfaf0f1dbd05f4e61636832a50f6af6ad571e8ce01e85ecc90568"
  public static let nativeType = "rosdemo_v3/GetTraceStartPoseRequest"
  public static let nativeIdentity: String? = nil
  public var `traceName`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`traceName`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3GetTraceStartPoseRequest
  {
    var v = Ros1Rosdemo_v3GetTraceStartPoseRequest()
    v.`traceName` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v3GetTraceStartPoseResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8176884452822c703744a5ce3d0b13fa77956b878779fbe017f6155397687dd7"
  public static let nativeType = "rosdemo_v3/GetTraceStartPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Rosdemo_v3GetTraceStartPoseResponse
  {
    var v = Ros1Rosdemo_v3GetTraceStartPoseResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3HandleTrajPointsRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_29884d4e93ab372204478ebd497fce85779515ad65369b36ee0af78d160ee664"
  public static let nativeType = "rosdemo_v3/HandleTrajPointsRequest"
  public static let nativeIdentity: String? = nil
  public var `traceName`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`traceName`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3HandleTrajPointsRequest
  {
    var v = Ros1Rosdemo_v3HandleTrajPointsRequest()
    v.`traceName` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v3HandleTrajPointsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_d47096773589fe6cffdfd7a780cf25163726622d4a793df7db8c9b4b9d0e95d5"
  public static let nativeType = "rosdemo_v3/HandleTrajPointsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3HandleTrajPointsResponse
  {
    var v = Ros1Rosdemo_v3HandleTrajPointsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3InverseSolutionRequest: Canonical {
  public static let maximumWireBytes = 320
  public static let codecIdentity =
    "UWVMROS1_decba94e28aa387148f50f0ab90558a54c35856ab0ae8daa24fac9f1e3595e49"
  public static let nativeType = "rosdemo_v3/InverseSolutionRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3InverseSolutionRequest {
    var v = Ros1Rosdemo_v3InverseSolutionRequest()
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
public struct Ros1Rosdemo_v3InverseSolutionResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_19a3a772ac22dd37514907ca5329a3907fd13421193f8c8854a06a9466f7488b"
  public static let nativeType = "rosdemo_v3/InverseSolutionResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3InverseSolutionResponse
  {
    var v = Ros1Rosdemo_v3InverseSolutionResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3JointMovJRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_1b018efcb95b7685413731002be666531223150e2d13e33a2e4f43ce73dbb4bb"
  public static let nativeType = "rosdemo_v3/JointMovJRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3JointMovJRequest {
    var v = Ros1Rosdemo_v3JointMovJRequest()
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
public struct Ros1Rosdemo_v3JointMovJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_5996d59a93c7f5a263481652ac32db771dac4174fdf8b54ac906b258b60d3f3b"
  public static let nativeType = "rosdemo_v3/JointMovJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3JointMovJResponse {
    var v = Ros1Rosdemo_v3JointMovJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3JumpRequest: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_c2fb51d18a84a52328a8d07aa1e052176519b2c6f45c7f51b8dd784491012750"
  public static let nativeType = "rosdemo_v3/JumpRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3JumpRequest {
    var v = Ros1Rosdemo_v3JumpRequest()
    v.`offset1` = try r.float64()
    v.`offset2` = try r.float64()
    v.`offset3` = try r.float64()
    v.`offset4` = try r.float64()
    v.`offset5` = try r.float64()
    v.`offset6` = try r.float64()
    return v
  }
}
public struct Ros1Rosdemo_v3JumpResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_21893b7688b8a4ffbc9d1be6465cf78974412d31a9dea1f18b95af77099eef2c"
  public static let nativeType = "rosdemo_v3/JumpResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3JumpResponse {
    var v = Ros1Rosdemo_v3JumpResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3LimZRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_23003bbb2cbfa14be2b7231332055b219b90bb9633c5339a041164b46f8197a6"
  public static let nativeType = "rosdemo_v3/LimZRequest"
  public static let nativeIdentity: String? = nil
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3LimZRequest {
    var v = Ros1Rosdemo_v3LimZRequest()
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3LimZResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e833074fbb70e137eda6c4ffac0556442f18fb957a4e25b720f8a106d83f56d5"
  public static let nativeType = "rosdemo_v3/LimZResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3LimZResponse {
    var v = Ros1Rosdemo_v3LimZResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3LoadSwitchRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_aa093213c23854df4b464bf3cc29e8d2d37275753a768636c72b3464d8edd865"
  public static let nativeType = "rosdemo_v3/LoadSwitchRequest"
  public static let nativeIdentity: String? = nil
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3LoadSwitchRequest {
    var v = Ros1Rosdemo_v3LoadSwitchRequest()
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3LoadSwitchResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7094d6951089c63108119d3a9738f7f8d1c1eb693412ac3134bcbaf96857004c"
  public static let nativeType = "rosdemo_v3/LoadSwitchResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3LoadSwitchResponse {
    var v = Ros1Rosdemo_v3LoadSwitchResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ModbusCloseRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8e0745e9e3af32de6fc10dd2dd6d04d7e287ae9079b788b45a2b4a927f20c977"
  public static let nativeType = "rosdemo_v3/ModbusCloseRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ModbusCloseRequest {
    var v = Ros1Rosdemo_v3ModbusCloseRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ModbusCloseResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a583752c25f6aaa3fdd2e98c9f37b3fb72a824fd1488c11afc73bc579f608f57"
  public static let nativeType = "rosdemo_v3/ModbusCloseResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ModbusCloseResponse {
    var v = Ros1Rosdemo_v3ModbusCloseResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ModbusCreateRequest: Canonical {
  public static let maximumWireBytes = 336
  public static let codecIdentity =
    "UWVMROS1_2e9b4748374005ce9e03475e25ec415f8845f1c8857d91499d90abc34cff0726"
  public static let nativeType = "rosdemo_v3/ModbusCreateRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ModbusCreateRequest {
    var v = Ros1Rosdemo_v3ModbusCreateRequest()
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
public struct Ros1Rosdemo_v3ModbusCreateResponse: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_d17e98dab4089b5ba7707be37bbce0d4885c34b303aa5e041cfb5e36de6a8f12"
  public static let nativeType = "rosdemo_v3/ModbusCreateResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ModbusCreateResponse {
    var v = Ros1Rosdemo_v3ModbusCreateResponse()
    v.`res` = try r.integer(Int32.self)
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3MovJRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_b8d2d2e55470b783eb429af073db3d6de195617244237e1b44c9a75d2705bf6f"
  public static let nativeType = "rosdemo_v3/MovJRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3MovJRequest {
    var v = Ros1Rosdemo_v3MovJRequest()
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
public struct Ros1Rosdemo_v3MovJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_333d13e27b2f53aff1d0596e26f89a8ac4f43a3e62906889eeb9bb502832ffd0"
  public static let nativeType = "rosdemo_v3/MovJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3MovJResponse {
    var v = Ros1Rosdemo_v3MovJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3MovJExtRequest: Canonical {
  public static let maximumWireBytes = 4172
  public static let codecIdentity =
    "UWVMROS1_b74b6d4fb73681f633bdd3c6e34ca4bb0fe6d0a663f0bcd89a1b8046170b2c7c"
  public static let nativeType = "rosdemo_v3/MovJExtRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3MovJExtRequest {
    var v = Ros1Rosdemo_v3MovJExtRequest()
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
public struct Ros1Rosdemo_v3MovJExtResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f616e8948086e695cb50db53ff21ade119b9f174b6036c8d5c2d5c22ab3e0e2b"
  public static let nativeType = "rosdemo_v3/MovJExtResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3MovJExtResponse {
    var v = Ros1Rosdemo_v3MovJExtResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3MovJIORequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_d082f8679ddc163eaa58c427147b523feabe6a3a6fe12c9b10af8a07766734e1"
  public static let nativeType = "rosdemo_v3/MovJIORequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3MovJIORequest {
    var v = Ros1Rosdemo_v3MovJIORequest()
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
public struct Ros1Rosdemo_v3MovJIOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2bbdaa014c5fbb6ea1b82771568b02b325589edec4057c0d275280a6333005df"
  public static let nativeType = "rosdemo_v3/MovJIOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3MovJIOResponse {
    var v = Ros1Rosdemo_v3MovJIOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3MovLRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_cedf553a7f6bd05c4529a64115165290540a1cd651f434f084829414e7fc61c3"
  public static let nativeType = "rosdemo_v3/MovLRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3MovLRequest {
    var v = Ros1Rosdemo_v3MovLRequest()
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
public struct Ros1Rosdemo_v3MovLResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b2dfdf236fc265d978a41bad53a30b11cef5b5093bfbd92b81944c6e4cfa2736"
  public static let nativeType = "rosdemo_v3/MovLResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3MovLResponse {
    var v = Ros1Rosdemo_v3MovLResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3MovLIORequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_14331d07956217f647760051d2cb24613152741c8c31c0cc511458711fa8beb8"
  public static let nativeType = "rosdemo_v3/MovLIORequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3MovLIORequest {
    var v = Ros1Rosdemo_v3MovLIORequest()
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
public struct Ros1Rosdemo_v3MovLIOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_488d5646de4855aef24a1627d9d5345d60c669336012f6ea92d989e782e0909f"
  public static let nativeType = "rosdemo_v3/MovLIOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3MovLIOResponse {
    var v = Ros1Rosdemo_v3MovLIOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3MoveJogRequest: Canonical {
  public static let maximumWireBytes = 4424
  public static let codecIdentity =
    "UWVMROS1_d3f0802abbb5dda85a34cb66408d80859f3f4f71baa1ada8ad1d65ef1739d6d7"
  public static let nativeType = "rosdemo_v3/MoveJogRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3MoveJogRequest {
    var v = Ros1Rosdemo_v3MoveJogRequest()
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
public struct Ros1Rosdemo_v3MoveJogResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c90dbe74867276b593807f1c6e1a653abe209e9c8847e2e46f8deb9fc98b4094"
  public static let nativeType = "rosdemo_v3/MoveJogResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3MoveJogResponse {
    var v = Ros1Rosdemo_v3MoveJogResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3PauseScriptRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_5fcd670ac91cb4a0524ff8d1a6c9f53388c0fc74d020915b45ccb26912c9d5e0"
  public static let nativeType = "rosdemo_v3/PauseScriptRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3PauseScriptRequest {
    var v = Ros1Rosdemo_v3PauseScriptRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3PauseScriptResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_45c93ca5c04e256517d48ac97dd3cf12350c0c66db4f92e94bd248bc741a2766"
  public static let nativeType = "rosdemo_v3/PauseScriptResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3PauseScriptResponse {
    var v = Ros1Rosdemo_v3PauseScriptResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3PayLoadRequest: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_5e6b0b852425c735fcedc7335cc6b3cf75c9361840a3efa132b14476d943f85a"
  public static let nativeType = "rosdemo_v3/PayLoadRequest"
  public static let nativeIdentity: String? = nil
  public var `weight`: Double = 0
  public var `inertia`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`weight`)
    try w.float64(self.`inertia`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3PayLoadRequest {
    var v = Ros1Rosdemo_v3PayLoadRequest()
    v.`weight` = try r.float64()
    v.`inertia` = try r.float64()
    return v
  }
}
public struct Ros1Rosdemo_v3PayLoadResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_cbeb06c1de730199ac6fd931401e3d476332efc5b9784f3eb3ed35b6115afdd4"
  public static let nativeType = "rosdemo_v3/PayLoadResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3PayLoadResponse {
    var v = Ros1Rosdemo_v3PayLoadResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3PositiveSolutionRequest: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_d0ae6b1e7839714afe87033f06c984aeb257fdc2884ca4f64711f67bced621b6"
  public static let nativeType = "rosdemo_v3/PositiveSolutionRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3PositiveSolutionRequest
  {
    var v = Ros1Rosdemo_v3PositiveSolutionRequest()
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
public struct Ros1Rosdemo_v3PositiveSolutionResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a6f7526303d8bf7dc30f89c055af0767cc64a4add7ab7327ca8d8f3f6f04c2ac"
  public static let nativeType = "rosdemo_v3/PositiveSolutionResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3PositiveSolutionResponse
  {
    var v = Ros1Rosdemo_v3PositiveSolutionResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3PowerOnRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_ed3377f0557381cfee7a8fd299b5eb43c53fa4757968d5f304a4bb0a7012fbf9"
  public static let nativeType = "rosdemo_v3/PowerOnRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3PowerOnRequest {
    var v = Ros1Rosdemo_v3PowerOnRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3PowerOnResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_0860e43dd3f61a65723cc3e0f238ac6049436afdd693134a0987af626ac4e90e"
  public static let nativeType = "rosdemo_v3/PowerOnResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3PowerOnResponse {
    var v = Ros1Rosdemo_v3PowerOnResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3RelJointMovJRequest: Canonical {
  public static let maximumWireBytes = 4212
  public static let codecIdentity =
    "UWVMROS1_a465c4da9859f55052b46a6137186f699378b8781b4102deb8cfbbc8fe5b8e7e"
  public static let nativeType = "rosdemo_v3/RelJointMovJRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3RelJointMovJRequest {
    var v = Ros1Rosdemo_v3RelJointMovJRequest()
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
public struct Ros1Rosdemo_v3RelJointMovJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_1c1daf15c200adb8a186d3ee568e2f79cb1336e9ce593f7147768904a7377770"
  public static let nativeType = "rosdemo_v3/RelJointMovJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3RelJointMovJResponse {
    var v = Ros1Rosdemo_v3RelJointMovJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3RelMovJRequest: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_f940a25fce9ac5574bca35728f1467e1671d218e3ff444bb18f94c8236d0dbbe"
  public static let nativeType = "rosdemo_v3/RelMovJRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3RelMovJRequest {
    var v = Ros1Rosdemo_v3RelMovJRequest()
    v.`offset1` = try r.float64()
    v.`offset2` = try r.float64()
    v.`offset3` = try r.float64()
    v.`offset4` = try r.float64()
    v.`offset5` = try r.float64()
    v.`offset6` = try r.float64()
    return v
  }
}
public struct Ros1Rosdemo_v3RelMovJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_3bfae65655a52453c353e99c8a4c6f9fdae043f8d1a59550f5165a5add978150"
  public static let nativeType = "rosdemo_v3/RelMovJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3RelMovJResponse {
    var v = Ros1Rosdemo_v3RelMovJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3RelMovJToolRequest: Canonical {
  public static let maximumWireBytes = 4216
  public static let codecIdentity =
    "UWVMROS1_dc136e7feb88329e8a2d329a049990d4740bd4ebd97b08c0296f40280615065e"
  public static let nativeType = "rosdemo_v3/RelMovJToolRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3RelMovJToolRequest {
    var v = Ros1Rosdemo_v3RelMovJToolRequest()
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
public struct Ros1Rosdemo_v3RelMovJToolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_dcaaf76c3faeb793a2c1d66b337fdd5da6ee7d246cb8b2b7b58b5d4515f2ba17"
  public static let nativeType = "rosdemo_v3/RelMovJToolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3RelMovJToolResponse {
    var v = Ros1Rosdemo_v3RelMovJToolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3RelMovJUserRequest: Canonical {
  public static let maximumWireBytes = 4216
  public static let codecIdentity =
    "UWVMROS1_275bd83ace00c2af373c40cd2a741fe42b1d39a0e32d440835fe2e8b4cbb0f44"
  public static let nativeType = "rosdemo_v3/RelMovJUserRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3RelMovJUserRequest {
    var v = Ros1Rosdemo_v3RelMovJUserRequest()
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
public struct Ros1Rosdemo_v3RelMovJUserResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_81472eba2978e502b1f44e90e47766f72019dab8c5fff6f5a9305c4de4614e80"
  public static let nativeType = "rosdemo_v3/RelMovJUserResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3RelMovJUserResponse {
    var v = Ros1Rosdemo_v3RelMovJUserResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3RelMovLRequest: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_fa377e81bf3af0b548ab2ff132eaab7d39318fe2e9e536355074e020130c149f"
  public static let nativeType = "rosdemo_v3/RelMovLRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3RelMovLRequest {
    var v = Ros1Rosdemo_v3RelMovLRequest()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
public struct Ros1Rosdemo_v3RelMovLResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_d4badf88de28860873f1fa3955d24ba637717c4f36036b92f2e67ba3f11a57b5"
  public static let nativeType = "rosdemo_v3/RelMovLResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3RelMovLResponse {
    var v = Ros1Rosdemo_v3RelMovLResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3RelMovLToolRequest: Canonical {
  public static let maximumWireBytes = 4216
  public static let codecIdentity =
    "UWVMROS1_c68f019a7009ae26e9df05565c851eea8aa84c4382af372bac8a20083e99f37d"
  public static let nativeType = "rosdemo_v3/RelMovLToolRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3RelMovLToolRequest {
    var v = Ros1Rosdemo_v3RelMovLToolRequest()
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
public struct Ros1Rosdemo_v3RelMovLToolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_cd234d9d5d6e898fc8cb907aff0420c8bd7dc9f0ff176df249f25c54dd9211b5"
  public static let nativeType = "rosdemo_v3/RelMovLToolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3RelMovLToolResponse {
    var v = Ros1Rosdemo_v3RelMovLToolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3RelMovLUserRequest: Canonical {
  public static let maximumWireBytes = 4216
  public static let codecIdentity =
    "UWVMROS1_866bfdaeee41bde4a92a0d3331ad11d541b955a1d6efc6f4a770d28d006a5a0d"
  public static let nativeType = "rosdemo_v3/RelMovLUserRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3RelMovLUserRequest {
    var v = Ros1Rosdemo_v3RelMovLUserRequest()
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
public struct Ros1Rosdemo_v3RelMovLUserResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_53d0a319b09b0965fe87bf4a1f3d92af6190cb855fb07461fbe9ee816590ab39"
  public static let nativeType = "rosdemo_v3/RelMovLUserResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3RelMovLUserResponse {
    var v = Ros1Rosdemo_v3RelMovLUserResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ResetRobotRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_fce0ae6f0abe6282250a175a484b119af4b67e21488365e4fc3dd0466c77baf6"
  public static let nativeType = "rosdemo_v3/ResetRobotRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ResetRobotRequest {
    var v = Ros1Rosdemo_v3ResetRobotRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3ResetRobotResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ef692ba1ec5c8fbf0bd55b912d1451d3b0405326dc7610f406a609c92ddbb983"
  public static let nativeType = "rosdemo_v3/ResetRobotResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ResetRobotResponse {
    var v = Ros1Rosdemo_v3ResetRobotResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3RobotModeRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_b7f5ab0c1430e11c2159757d7e63947be0562364cdf77b815494a3668cd0bd39"
  public static let nativeType = "rosdemo_v3/RobotModeRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3RobotModeRequest {
    var v = Ros1Rosdemo_v3RobotModeRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3RobotModeResponse: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_4e7646026c2b8e6d9fd8c8e7ed30d7c97324b08be17123343773b6aaa5fdf6df"
  public static let nativeType = "rosdemo_v3/RobotModeResponse"
  public static let nativeIdentity: String? = nil
  public var `mode`: Int32 = 0
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3RobotModeResponse {
    var v = Ros1Rosdemo_v3RobotModeResponse()
    v.`mode` = try r.integer(Int32.self)
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3RunScriptRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_4c09ebd3354368a8a51fa269c263cd5d236ef99fe667ab2d54da2ff1ecd51df2"
  public static let nativeType = "rosdemo_v3/RunScriptRequest"
  public static let nativeIdentity: String? = nil
  public var `projectName`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`projectName`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3RunScriptRequest {
    var v = Ros1Rosdemo_v3RunScriptRequest()
    v.`projectName` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v3RunScriptResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_032bff023c12c89777f1680aba9bf322fa8a2eb931647ad43c520f74b2f5ba76"
  public static let nativeType = "rosdemo_v3/RunScriptResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3RunScriptResponse {
    var v = Ros1Rosdemo_v3RunScriptResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ServoJRequest: Canonical {
  public static let maximumWireBytes = 444
  public static let codecIdentity =
    "UWVMROS1_fe11b680dccbfe85d53005f73357b91ada5e7c097e435f86bd09a1e07155b32e"
  public static let nativeType = "rosdemo_v3/ServoJRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ServoJRequest {
    var v = Ros1Rosdemo_v3ServoJRequest()
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
public struct Ros1Rosdemo_v3ServoJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c969ba286c7a721a554f2892ecb1f9124b9d7499f112c5df498709e1baa3f924"
  public static let nativeType = "rosdemo_v3/ServoJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ServoJResponse {
    var v = Ros1Rosdemo_v3ServoJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ServoPRequest: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_cc4dc31ad6f496881f462eff953d3be36aff07de0964fda97ea008c022af30ae"
  public static let nativeType = "rosdemo_v3/ServoPRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ServoPRequest {
    var v = Ros1Rosdemo_v3ServoPRequest()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`a` = try r.float64()
    v.`b` = try r.float64()
    v.`c` = try r.float64()
    return v
  }
}
public struct Ros1Rosdemo_v3ServoPResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_eafc00c243fcf6de83823d72d726b0713152d8832681bdb7ff5f1f87d2b3cbd7"
  public static let nativeType = "rosdemo_v3/ServoPResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ServoPResponse {
    var v = Ros1Rosdemo_v3ServoPResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SetArmOrientationRequest: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_fb8ff0fff5a3493469b950b7d5a85d583cd1097f8e5032b7ecb06a0b4526c128"
  public static let nativeType = "rosdemo_v3/SetArmOrientationRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SetArmOrientationRequest
  {
    var v = Ros1Rosdemo_v3SetArmOrientationRequest()
    v.`LorR` = try r.integer(Int32.self)
    v.`UorD` = try r.integer(Int32.self)
    v.`ForN` = try r.integer(Int32.self)
    v.`Config6` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SetArmOrientationResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_1533dbaec769feda21a1f2995c57e6633ba36392290b245321d1eba345104c0a"
  public static let nativeType = "rosdemo_v3/SetArmOrientationResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Rosdemo_v3SetArmOrientationResponse
  {
    var v = Ros1Rosdemo_v3SetArmOrientationResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SetCoilsRequest: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_15853054579c8b2a28634d6ef82bec746f0ec64de52eb61abd9f31a08b46f374"
  public static let nativeType = "rosdemo_v3/SetCoilsRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SetCoilsRequest {
    var v = Ros1Rosdemo_v3SetCoilsRequest()
    v.`index` = try r.integer(Int32.self)
    v.`addr` = try r.integer(Int32.self)
    v.`count` = try r.integer(Int32.self)
    v.`valTab` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v3SetCoilsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_6a6fe5110c5873f87d5d74fb28b931154070627da48ef745c9ac33e0df1d8703"
  public static let nativeType = "rosdemo_v3/SetCoilsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SetCoilsResponse {
    var v = Ros1Rosdemo_v3SetCoilsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SetCollideDragRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e5ae701dc2a0b22d6fcc4c332cbb4b2305a81db865b79340d23ddaac61abbff7"
  public static let nativeType = "rosdemo_v3/SetCollideDragRequest"
  public static let nativeIdentity: String? = nil
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SetCollideDragRequest {
    var v = Ros1Rosdemo_v3SetCollideDragRequest()
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SetCollideDragResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_bf19795adc3e41241e60562dead6032e8e8167032070424e4f9169194bfb8fb6"
  public static let nativeType = "rosdemo_v3/SetCollideDragResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SetCollideDragResponse {
    var v = Ros1Rosdemo_v3SetCollideDragResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SetCollisionLevelRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7226e3995d906b08ddf99ea8f9d4693c0b2c580a723b83ec5a097579b2bf5e80"
  public static let nativeType = "rosdemo_v3/SetCollisionLevelRequest"
  public static let nativeIdentity: String? = nil
  public var `level`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`level`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SetCollisionLevelRequest
  {
    var v = Ros1Rosdemo_v3SetCollisionLevelRequest()
    v.`level` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SetCollisionLevelResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8e96ec3b9cd603cea701b91bbf3d42f016783daf4f7425fbb3093ce36fbbd347"
  public static let nativeType = "rosdemo_v3/SetCollisionLevelResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Rosdemo_v3SetCollisionLevelResponse
  {
    var v = Ros1Rosdemo_v3SetCollisionLevelResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SetHoldRegsRequest: Canonical {
  public static let maximumWireBytes = 4436
  public static let codecIdentity =
    "UWVMROS1_b3105cf18db264d41f40e7810a65439da54eb899e2feee1eceebbb83b995cc04"
  public static let nativeType = "rosdemo_v3/SetHoldRegsRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SetHoldRegsRequest {
    var v = Ros1Rosdemo_v3SetHoldRegsRequest()
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
public struct Ros1Rosdemo_v3SetHoldRegsResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_5388c7956e9a01c7dff7d8d8a500ea9455477da73b24c01dbe89faedad921652"
  public static let nativeType = "rosdemo_v3/SetHoldRegsResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SetHoldRegsResponse {
    var v = Ros1Rosdemo_v3SetHoldRegsResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SetObstacleAvoidRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_58e82fcba3a381f180f783a086b9c49d3db8620c6d78fbc3a58cc63dd2647df9"
  public static let nativeType = "rosdemo_v3/SetObstacleAvoidRequest"
  public static let nativeIdentity: String? = nil
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SetObstacleAvoidRequest
  {
    var v = Ros1Rosdemo_v3SetObstacleAvoidRequest()
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SetObstacleAvoidResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ea1fd0275a79f2a4b057f021560e6f3a507e1fe6dbc2f0d63a419ab4c8e2f206"
  public static let nativeType = "rosdemo_v3/SetObstacleAvoidResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SetObstacleAvoidResponse
  {
    var v = Ros1Rosdemo_v3SetObstacleAvoidResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SetPayloadRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_5945ea62369d23d567a7045cfbfa0a3f12f59d8de64e674d407c0769a81bb90d"
  public static let nativeType = "rosdemo_v3/SetPayloadRequest"
  public static let nativeIdentity: String? = nil
  public var `load`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`load`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SetPayloadRequest {
    var v = Ros1Rosdemo_v3SetPayloadRequest()
    v.`load` = try r.float64()
    return v
  }
}
public struct Ros1Rosdemo_v3SetPayloadResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c665f5bfac577202780caa2f5b674d7e9fdeacacb2c9e752a08465c43a72b5ec"
  public static let nativeType = "rosdemo_v3/SetPayloadResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SetPayloadResponse {
    var v = Ros1Rosdemo_v3SetPayloadResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SetSafeSkinRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c5b2b68b66c0bfaa63714d319ecb69ee3593def3189c807f3d9936c17a08c458"
  public static let nativeType = "rosdemo_v3/SetSafeSkinRequest"
  public static let nativeIdentity: String? = nil
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SetSafeSkinRequest {
    var v = Ros1Rosdemo_v3SetSafeSkinRequest()
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SetSafeSkinResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_729b417c58f25d814a25992ffc2a352ca29b92047ce17a6a4cf189f043c46e7a"
  public static let nativeType = "rosdemo_v3/SetSafeSkinResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SetSafeSkinResponse {
    var v = Ros1Rosdemo_v3SetSafeSkinResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SetTerminal485Request: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_03bf89ffb1f9cd37df930234dafc1d8e7506b81bd00de1da9178e366dee3b040"
  public static let nativeType = "rosdemo_v3/SetTerminal485Request"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SetTerminal485Request {
    var v = Ros1Rosdemo_v3SetTerminal485Request()
    v.`baudRate` = try r.integer(Int32.self)
    v.`dataLen` = try r.integer(Int32.self)
    v.`parityBit` = try r.string(bound: 256)
    v.`stopBit` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SetTerminal485Response: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_79a17f908406ad319523cf118c71b4e8b1835d32f650d4987bd75b7420f19958"
  public static let nativeType = "rosdemo_v3/SetTerminal485Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SetTerminal485Response {
    var v = Ros1Rosdemo_v3SetTerminal485Response()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SetTerminalKeysRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_23ef708280f922fcd28bc3e511bbc136d1ff67fbfbe735c1aa7b35507259b87e"
  public static let nativeType = "rosdemo_v3/SetTerminalKeysRequest"
  public static let nativeIdentity: String? = nil
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SetTerminalKeysRequest {
    var v = Ros1Rosdemo_v3SetTerminalKeysRequest()
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SetTerminalKeysResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a7e50d5d3268bf6d3136f64ecbbbbc2d48a697c6e177641b682b66baf26a2c6e"
  public static let nativeType = "rosdemo_v3/SetTerminalKeysResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SetTerminalKeysResponse
  {
    var v = Ros1Rosdemo_v3SetTerminalKeysResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SpeedFactorRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_27eace5a4955aa126cd355813f6f99c059d132460b68c6da24e6d4de994ce989"
  public static let nativeType = "rosdemo_v3/SpeedFactorRequest"
  public static let nativeIdentity: String? = nil
  public var `ratio`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ratio`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SpeedFactorRequest {
    var v = Ros1Rosdemo_v3SpeedFactorRequest()
    v.`ratio` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SpeedFactorResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_0293d4c59bb3b19f907394b27a9b2b761a295a36a0b74ede3962061ac57817f3"
  public static let nativeType = "rosdemo_v3/SpeedFactorResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SpeedFactorResponse {
    var v = Ros1Rosdemo_v3SpeedFactorResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SpeedJRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b61df947b4762894c7e37b7c3fb0e31f3fb97da9947883ffa0d3762e3bb49566"
  public static let nativeType = "rosdemo_v3/SpeedJRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SpeedJRequest {
    var v = Ros1Rosdemo_v3SpeedJRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SpeedJResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_79d8b89b3e2b4d4b665595fac6007ab4d19a1317417868b5d09ad2e08cc016e2"
  public static let nativeType = "rosdemo_v3/SpeedJResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SpeedJResponse {
    var v = Ros1Rosdemo_v3SpeedJResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SpeedLRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_8bd0d035775bb612455d4a38f439c2c6169e02d9ad27351cea15ae3ae6630f7b"
  public static let nativeType = "rosdemo_v3/SpeedLRequest"
  public static let nativeIdentity: String? = nil
  public var `r`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`r`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SpeedLRequest {
    var v = Ros1Rosdemo_v3SpeedLRequest()
    v.`r` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SpeedLResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_e4f7fcaea26d662b7c780e5ab026c42da86d3530d95148cd99a0f9a2ef08771c"
  public static let nativeType = "rosdemo_v3/SpeedLResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SpeedLResponse {
    var v = Ros1Rosdemo_v3SpeedLResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3StartDragRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_3f183ba57a0470c73eb18b2e333984f0d8dee22818a29fa33c69637f06716893"
  public static let nativeType = "rosdemo_v3/StartDragRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3StartDragRequest {
    var v = Ros1Rosdemo_v3StartDragRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3StartDragResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_4d23bf7baccfc02083e579bbeb144de5d1ad21a141fc7742fd95392f099d6d14"
  public static let nativeType = "rosdemo_v3/StartDragResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3StartDragResponse {
    var v = Ros1Rosdemo_v3StartDragResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3StartFCTraceRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_92a1b2ab02c07a31d4b33f68a29ca2777d7ec65d9a5fadf5510654d065277c50"
  public static let nativeType = "rosdemo_v3/StartFCTraceRequest"
  public static let nativeIdentity: String? = nil
  public var `trace_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`trace_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3StartFCTraceRequest {
    var v = Ros1Rosdemo_v3StartFCTraceRequest()
    v.`trace_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v3StartFCTraceResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_cb79d45087294083f17158d16ac9a65583ddb7d810e7bf2ec34a2e5527a8b941"
  public static let nativeType = "rosdemo_v3/StartFCTraceResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3StartFCTraceResponse {
    var v = Ros1Rosdemo_v3StartFCTraceResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3StartPathRequest: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_a5da2451fa2092225ba5eba2c1ff512f18ce310d4c8ac5a97f5a89d36c2da8ec"
  public static let nativeType = "rosdemo_v3/StartPathRequest"
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
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3StartPathRequest {
    var v = Ros1Rosdemo_v3StartPathRequest()
    v.`trace_name` = try r.string(bound: 256)
    v.`const_val` = try r.integer(Int32.self)
    v.`cart` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3StartPathResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_78460c5e24ed0e5666b463a79ebc31246ce2c116cf88c54019ac60bc5f95b4b9"
  public static let nativeType = "rosdemo_v3/StartPathResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3StartPathResponse {
    var v = Ros1Rosdemo_v3StartPathResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3StartTraceRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_81be6f644de5a9566d43ec3d31f7684e9128a95a93dc7dce2a06e740b6845102"
  public static let nativeType = "rosdemo_v3/StartTraceRequest"
  public static let nativeIdentity: String? = nil
  public var `trace_name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`trace_name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3StartTraceRequest {
    var v = Ros1Rosdemo_v3StartTraceRequest()
    v.`trace_name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Rosdemo_v3StartTraceResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_bea1ee17889d0bb19ca137f2cde296a4be092af12357877698bdd936ade33097"
  public static let nativeType = "rosdemo_v3/StartTraceResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3StartTraceResponse {
    var v = Ros1Rosdemo_v3StartTraceResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3StopDragRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_c3d69f0a11792173d11812d4e44f789f098005e7685ec460e6a841e219a8730d"
  public static let nativeType = "rosdemo_v3/StopDragRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3StopDragRequest {
    var v = Ros1Rosdemo_v3StopDragRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3StopDragResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_7361eaaf076a2616fc3b2dc7e1e9cefc7f0c3c5a5307cc4e191b008048e30932"
  public static let nativeType = "rosdemo_v3/StopDragResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3StopDragResponse {
    var v = Ros1Rosdemo_v3StopDragResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3StopScriptRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_bc02e00e36fd3835572d2afb763887e832032c874b6585eec0df9a4b1148c0b9"
  public static let nativeType = "rosdemo_v3/StopScriptRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3StopScriptRequest {
    var v = Ros1Rosdemo_v3StopScriptRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3StopScriptResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_533dfab0a4ad0cfb2d6b2612e68e8e1ccda08f2a393f7407880cbbedf1f5ca0a"
  public static let nativeType = "rosdemo_v3/StopScriptResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3StopScriptResponse {
    var v = Ros1Rosdemo_v3StopScriptResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3StopmoveJogRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_a37f2a4e4dce6d365ee4f7f1ee67dbd4b882519e9d20ffad22120c7d551d375c"
  public static let nativeType = "rosdemo_v3/StopmoveJogRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3StopmoveJogRequest {
    var v = Ros1Rosdemo_v3StopmoveJogRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3StopmoveJogResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_78c6636434ca7719187f75b6d0fff281deaa3f2de5719b37d1593487d500063a"
  public static let nativeType = "rosdemo_v3/StopmoveJogResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3StopmoveJogResponse {
    var v = Ros1Rosdemo_v3StopmoveJogResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SyncRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_1648adc20cf279d423a2d1d1c7aacf35c18097c5a0b258228e6540b8bcfe4a53"
  public static let nativeType = "rosdemo_v3/SyncRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SyncRequest {
    var v = Ros1Rosdemo_v3SyncRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3SyncResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_82cd8666f9adf6f9b701497d9a3f7d93a041061d04505c103f209c7434fd929e"
  public static let nativeType = "rosdemo_v3/SyncResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SyncResponse {
    var v = Ros1Rosdemo_v3SyncResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3SyncAllRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_4e6c510a2496eadd59783159fee09add28ae0542bbd4a1b63163aba97cd7de6f"
  public static let nativeType = "rosdemo_v3/SyncAllRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SyncAllRequest {
    var v = Ros1Rosdemo_v3SyncAllRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3SyncAllResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_c5810875e2b156152e57707f98a670b88fa4d1c3feac99d0f4f165f139084a48"
  public static let nativeType = "rosdemo_v3/SyncAllResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3SyncAllResponse {
    var v = Ros1Rosdemo_v3SyncAllResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3TCPSpeedRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ec0c0a283dcb234f8f8d30a5b8442bcc85fdcefac6e8193372a8c05fd0292178"
  public static let nativeType = "rosdemo_v3/TCPSpeedRequest"
  public static let nativeIdentity: String? = nil
  public var `vt`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`vt`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3TCPSpeedRequest {
    var v = Ros1Rosdemo_v3TCPSpeedRequest()
    v.`vt` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3TCPSpeedResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_3527911df41aee85117021d0eeefad35efa4d813401975ae09c0ca4e0abc95b8"
  public static let nativeType = "rosdemo_v3/TCPSpeedResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3TCPSpeedResponse {
    var v = Ros1Rosdemo_v3TCPSpeedResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3TCPSpeedEndRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_04af23558c725c993e785590ffc34676aa7a37c6b74d7f650749436fbfa4898c"
  public static let nativeType = "rosdemo_v3/TCPSpeedEndRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3TCPSpeedEndRequest {
    var v = Ros1Rosdemo_v3TCPSpeedEndRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3TCPSpeedEndResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_44d6723fc85750a34de4780298ee1853e2a44761aa11432fdeb9c0282dc68d26"
  public static let nativeType = "rosdemo_v3/TCPSpeedEndResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3TCPSpeedEndResponse {
    var v = Ros1Rosdemo_v3TCPSpeedEndResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ToolRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_a0f881c47df89cadf7f6bf9ea389e27a7dbc0f77706c31624c358a3d441897ae"
  public static let nativeType = "rosdemo_v3/ToolRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ToolRequest {
    var v = Ros1Rosdemo_v3ToolRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ToolResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_3deaf8f72c671ad7a240ec42434b3f0636aec78d065ecce8b5ebdc5ebf4afe48"
  public static let nativeType = "rosdemo_v3/ToolResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ToolResponse {
    var v = Ros1Rosdemo_v3ToolResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ToolAIRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_1dca438edde8f793175366f3e1f65e25edaec63b1a6039f76ff28071ef05260e"
  public static let nativeType = "rosdemo_v3/ToolAIRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ToolAIRequest {
    var v = Ros1Rosdemo_v3ToolAIRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ToolAIResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_b9b1d3c257a11bc6fedcd10126a406db344dcae6a3515402b23635b47e44a30c"
  public static let nativeType = "rosdemo_v3/ToolAIResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ToolAIResponse {
    var v = Ros1Rosdemo_v3ToolAIResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ToolDIRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_5f37fc3221ae0d5fe0434838e806bb17bc8c328efde222bc6d6fb0f8ffc4accb"
  public static let nativeType = "rosdemo_v3/ToolDIRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ToolDIRequest {
    var v = Ros1Rosdemo_v3ToolDIRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ToolDIResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_ec2baddf4aed850d538d2f9ca9fbe9a7a6636919e7f23ac5ef7f270acc4336fa"
  public static let nativeType = "rosdemo_v3/ToolDIResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ToolDIResponse {
    var v = Ros1Rosdemo_v3ToolDIResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ToolDORequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_7bebf547b4cecce30f37d3b8594de9d5955cacf74509a21e4fc5902925e1de5e"
  public static let nativeType = "rosdemo_v3/ToolDORequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ToolDORequest {
    var v = Ros1Rosdemo_v3ToolDORequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ToolDOResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_4c803e6af978915a6bb34ce68d5ee822fba221ffa1fee5de7301da91b45a2e8f"
  public static let nativeType = "rosdemo_v3/ToolDOResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ToolDOResponse {
    var v = Ros1Rosdemo_v3ToolDOResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ToolDOExecuteRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_5014af5cd86d2d24210895f0fd18df1caa0f9f4b11dc06c3dcc4e0b0a88abe3f"
  public static let nativeType = "rosdemo_v3/ToolDOExecuteRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public var `status`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`status`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ToolDOExecuteRequest {
    var v = Ros1Rosdemo_v3ToolDOExecuteRequest()
    v.`index` = try r.integer(Int32.self)
    v.`status` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3ToolDOExecuteResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_bc295dbf3890fc96fedcc4b04df9e3e0f90a9efa18a024345fd19d2de62123ee"
  public static let nativeType = "rosdemo_v3/ToolDOExecuteResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3ToolDOExecuteResponse {
    var v = Ros1Rosdemo_v3ToolDOExecuteResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3UserRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2895dad54ee215055795cb93356fe5a552ca3e5e76dfc8669ead033de0481556"
  public static let nativeType = "rosdemo_v3/UserRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3UserRequest {
    var v = Ros1Rosdemo_v3UserRequest()
    v.`index` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3UserResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_2238f34627525b09f9791bc70ed62a25934128041232f2ac8f047f4315491b12"
  public static let nativeType = "rosdemo_v3/UserResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3UserResponse {
    var v = Ros1Rosdemo_v3UserResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3WaitRequest: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_44ab4cbc8f4eda00a8a516105d1e8cd9a70601c5abcaf825e722a8abce9d8e85"
  public static let nativeType = "rosdemo_v3/WaitRequest"
  public static let nativeIdentity: String? = nil
  public var `time`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`time`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3WaitRequest {
    var v = Ros1Rosdemo_v3WaitRequest()
    v.`time` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3WaitResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_0d770361fd97c0828105b70cfaa161d949d4a8f6f3b8bd8ab00ab1a3bf8ab1ae"
  public static let nativeType = "rosdemo_v3/WaitResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3WaitResponse {
    var v = Ros1Rosdemo_v3WaitResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Rosdemo_v3PauseRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_a32393020c581655886f934dc95dd62ec2cf039d69dc420354f901a7ae0ba6ca"
  public static let nativeType = "rosdemo_v3/pauseRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3PauseRequest {
    var v = Ros1Rosdemo_v3PauseRequest()
    return v
  }
}
public struct Ros1Rosdemo_v3PauseResponse: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f4b189021f9e721ee09ed5593e77541c1759c118f73cbededfc406c04547f094"
  public static let nativeType = "rosdemo_v3/pauseResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Rosdemo_v3PauseResponse {
    var v = Ros1Rosdemo_v3PauseResponse()
    v.`res` = try r.integer(Int32.self)
    return v
  }
}
