// @file Records.swift
// @brief Full fourier swift codecs and original record metadata.
// @details Complete fourier ros1_aurora_bridge_v1 values in swift. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros1Uwvm_fourier_bridgeMotionRecipe: Canonical {
  public static let maximumWireBytes = 1170
  public static let codecIdentity =
    "UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a"
  public static let nativeType = "uwvm_fourier_bridge/MotionRecipe"
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
  public static func read(from r: inout WireReader) throws -> Ros1Uwvm_fourier_bridgeMotionRecipe {
    var v = Ros1Uwvm_fourier_bridgeMotionRecipe()
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
public struct Ros1Uwvm_fourier_bridgeExecuteMoveRequest: Canonical {
  public static let maximumWireBytes = 9372
  public static let codecIdentity =
    "UWVMROS1_25e369f6b32bdc9983664fd4d857000a6a664364cb8bd0ff3d123cbc3c87e61b"
  public static let nativeType = "uwvm_fourier_bridge/ExecuteMoveRequest"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `moves`: [Ros1Uwvm_fourier_bridgeMotionRecipe] = []
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
    -> Ros1Uwvm_fourier_bridgeExecuteMoveRequest
  {
    var v = Ros1Uwvm_fourier_bridgeExecuteMoveRequest()
    v.`sequence` = try r.integer(UInt64.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`moves` = []
    v.`moves`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`moves`.append(try Ros1Uwvm_fourier_bridgeMotionRecipe.read(from: &r))
    }
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeExecuteMoveResponse: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_9a801e77130d12c30d67a874cb1e8c5a7cc912a2968af304d1cfd263e6242115"
  public static let nativeType = "uwvm_fourier_bridge/ExecuteMoveResponse"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeExecuteMoveResponse
  {
    var v = Ros1Uwvm_fourier_bridgeExecuteMoveResponse()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetBaseDataRequest: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_17883b19f1dcc3d68263b6196eb5ec7afb8c902b8ab4f9b7eb66a58ef5e78528"
  public static let nativeType = "uwvm_fourier_bridge/GetBaseDataRequest"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `key`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    try w.string(self.`key`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeGetBaseDataRequest
  {
    var v = Ros1Uwvm_fourier_bridgeGetBaseDataRequest()
    v.`sequence` = try r.integer(UInt64.self)
    v.`key` = try r.string(bound: 128)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetBaseDataResponse: Canonical {
  public static let maximumWireBytes = 652
  public static let codecIdentity =
    "UWVMROS1_e8928e07d6dd18cfa8a7031e0a947fa6b2f36bb608f5d2178ec01b92bb78b79a"
  public static let nativeType = "uwvm_fourier_bridge/GetBaseDataResponse"
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
    -> Ros1Uwvm_fourier_bridgeGetBaseDataResponse
  {
    var v = Ros1Uwvm_fourier_bridgeGetBaseDataResponse()
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
public struct Ros1Uwvm_fourier_bridgeGetCartesianStateRequest: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_658626f7fbd0f788149208230f03cef299bcb2a6ca4cf96d4e3af807d9b336ae"
  public static let nativeType = "uwvm_fourier_bridge/GetCartesianStateRequest"
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
    -> Ros1Uwvm_fourier_bridgeGetCartesianStateRequest
  {
    var v = Ros1Uwvm_fourier_bridgeGetCartesianStateRequest()
    v.`sequence` = try r.integer(UInt64.self)
    v.`group` = try r.string(bound: 128)
    v.`key` = try r.string(bound: 128)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetCartesianStateResponse: Canonical {
  public static let maximumWireBytes = 652
  public static let codecIdentity =
    "UWVMROS1_a4fcd5f01a992b9aed4089b2c77ecda4656fe9aeb11c40777603805af964f671"
  public static let nativeType = "uwvm_fourier_bridge/GetCartesianStateResponse"
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
    -> Ros1Uwvm_fourier_bridgeGetCartesianStateResponse
  {
    var v = Ros1Uwvm_fourier_bridgeGetCartesianStateResponse()
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
public struct Ros1Uwvm_fourier_bridgeGetContactDataRequest: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_38d1fa3409948748e19fdff39259fbb51503a98e03e996addb560cb404931787"
  public static let nativeType = "uwvm_fourier_bridge/GetContactDataRequest"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `key`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    try w.string(self.`key`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeGetContactDataRequest
  {
    var v = Ros1Uwvm_fourier_bridgeGetContactDataRequest()
    v.`sequence` = try r.integer(UInt64.self)
    v.`key` = try r.string(bound: 128)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetContactDataResponse: Canonical {
  public static let maximumWireBytes = 652
  public static let codecIdentity =
    "UWVMROS1_c4381d31ad73640e2f4302bd200d4507cd5a1a4ca4ee180ad009589864f3f293"
  public static let nativeType = "uwvm_fourier_bridge/GetContactDataResponse"
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
    -> Ros1Uwvm_fourier_bridgeGetContactDataResponse
  {
    var v = Ros1Uwvm_fourier_bridgeGetContactDataResponse()
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
public struct Ros1Uwvm_fourier_bridgeGetFsmNameRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_4257279fd241dee60ef24d1d5ebdcadbc84701b2e8709a6e269d2259b9293b33"
  public static let nativeType = "uwvm_fourier_bridge/GetFsmNameRequest"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeGetFsmNameRequest
  {
    var v = Ros1Uwvm_fourier_bridgeGetFsmNameRequest()
    v.`sequence` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetFsmNameResponse: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_9016d706e2afed027dd150f1534e615e551c3f26d581313bb3d36a279e1d7c55"
  public static let nativeType = "uwvm_fourier_bridge/GetFsmNameResponse"
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
    -> Ros1Uwvm_fourier_bridgeGetFsmNameResponse
  {
    var v = Ros1Uwvm_fourier_bridgeGetFsmNameResponse()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    v.`value` = try r.string(bound: 128)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetFsmStateRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_573f497168578dce3680e1d423f64993e9fccf7774cc2fc0db38ccce8286ee3e"
  public static let nativeType = "uwvm_fourier_bridge/GetFsmStateRequest"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeGetFsmStateRequest
  {
    var v = Ros1Uwvm_fourier_bridgeGetFsmStateRequest()
    v.`sequence` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetFsmStateResponse: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_1d25f46d335312a766f3c0a7f410a45f283515396c8c6bfc4a49bcf6bc37a812"
  public static let nativeType = "uwvm_fourier_bridge/GetFsmStateResponse"
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
    -> Ros1Uwvm_fourier_bridgeGetFsmStateResponse
  {
    var v = Ros1Uwvm_fourier_bridgeGetFsmStateResponse()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_a2b6c77c903d5d4dc5ca20805e1ed2fa7dfa0852bc3f590638a577cec9d7248f"
  public static let nativeType = "uwvm_fourier_bridge/GetGroupMotionStateRequest"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `group`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    try w.string(self.`group`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest
  {
    var v = Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest()
    v.`sequence` = try r.integer(UInt64.self)
    v.`group` = try r.string(bound: 128)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_e41b911990c306e8f264f1f9d961b822fb6669ad1ca5ee8f81609ba13a0fc8a2"
  public static let nativeType = "uwvm_fourier_bridge/GetGroupMotionStateResponse"
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
    -> Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse
  {
    var v = Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_bbcfb5561a970d7d086aa5a3a832dfbd8c3e2c2a9b4c5e9bea8224c6c7fc0576"
  public static let nativeType = "uwvm_fourier_bridge/GetGroupMotorCfgRequest"
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
    -> Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest
  {
    var v = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest()
    v.`sequence` = try r.integer(UInt64.self)
    v.`group` = try r.string(bound: 128)
    v.`key` = try r.string(bound: 128)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse: Canonical {
  public static let maximumWireBytes = 652
  public static let codecIdentity =
    "UWVMROS1_cf7f2a81246842d851104edb7d422ff5342fc65dc56e573d552b10d02c81ad72"
  public static let nativeType = "uwvm_fourier_bridge/GetGroupMotorCfgResponse"
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
    -> Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
  {
    var v = Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse()
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
public struct Ros1Uwvm_fourier_bridgeGetGroupStateRequest: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_d24ebea89b1c6e7963c8058109704033c9e1f1f74673732093412c5ac453b8fc"
  public static let nativeType = "uwvm_fourier_bridge/GetGroupStateRequest"
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
    -> Ros1Uwvm_fourier_bridgeGetGroupStateRequest
  {
    var v = Ros1Uwvm_fourier_bridgeGetGroupStateRequest()
    v.`sequence` = try r.integer(UInt64.self)
    v.`group` = try r.string(bound: 128)
    v.`key` = try r.string(bound: 128)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetGroupStateResponse: Canonical {
  public static let maximumWireBytes = 652
  public static let codecIdentity =
    "UWVMROS1_e21f17f91821b5a3154e108d0bcdb027a320b948d32e5637d20745c85edb0acb"
  public static let nativeType = "uwvm_fourier_bridge/GetGroupStateResponse"
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
    -> Ros1Uwvm_fourier_bridgeGetGroupStateResponse
  {
    var v = Ros1Uwvm_fourier_bridgeGetGroupStateResponse()
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
public struct Ros1Uwvm_fourier_bridgeGetSnapshotRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_384b9be938d41321afe3ef0765bdd442baa4f0c10049efd656c52d5ac1c89d4c"
  public static let nativeType = "uwvm_fourier_bridge/GetSnapshotRequest"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeGetSnapshotRequest
  {
    var v = Ros1Uwvm_fourier_bridgeGetSnapshotRequest()
    v.`sequence` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGroupState: Canonical {
  public static let maximumWireBytes = 1684
  public static let codecIdentity =
    "UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855"
  public static let nativeType = "uwvm_fourier_bridge/GroupState"
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
  public static func read(from r: inout WireReader) throws -> Ros1Uwvm_fourier_bridgeGroupState {
    var v = Ros1Uwvm_fourier_bridgeGroupState()
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
public struct Ros1Uwvm_fourier_bridgeStatus: Canonical {
  public static let maximumWireBytes = 14400
  public static let codecIdentity =
    "UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e"
  public static let nativeType = "uwvm_fourier_bridge/Status"
  public static let nativeIdentity: String? = nil
  public var `fsm_state`: Int32 = 0
  public var `fsm_name`: String = ""
  public var `upper_fsm_state`: Int32 = 0
  public var `upper_fsm_name`: String = ""
  public var `velocity_source`: Int32 = 0
  public var `velocity_source_name`: String = ""
  public var `stand_pose`: [Double] = []
  public var `groups`: [Ros1Uwvm_fourier_bridgeGroupState] = []
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
  public static func read(from r: inout WireReader) throws -> Ros1Uwvm_fourier_bridgeStatus {
    var v = Ros1Uwvm_fourier_bridgeStatus()
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
      v.`groups`.append(try Ros1Uwvm_fourier_bridgeGroupState.read(from: &r))
    }
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetSnapshotResponse: Canonical {
  public static let maximumWireBytes = 14536
  public static let codecIdentity =
    "UWVMROS1_3b8b79195d53d3e0d22ac318e8f0898cb774cfaed35bebbc5210288273137c6a"
  public static let nativeType = "uwvm_fourier_bridge/GetSnapshotResponse"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public var `value`: Ros1Uwvm_fourier_bridgeStatus = Ros1Uwvm_fourier_bridgeStatus()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
    try self.`value`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeGetSnapshotResponse
  {
    var v = Ros1Uwvm_fourier_bridgeGetSnapshotResponse()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    v.`value` = try Ros1Uwvm_fourier_bridgeStatus.read(from: &r)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetStandPoseRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_5c3b18c383a9a9a162bf3b656007f56e791c26125e0dc59fd8dc87bd3ef54738"
  public static let nativeType = "uwvm_fourier_bridge/GetStandPoseRequest"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeGetStandPoseRequest
  {
    var v = Ros1Uwvm_fourier_bridgeGetStandPoseRequest()
    v.`sequence` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetStandPoseResponse: Canonical {
  public static let maximumWireBytes = 652
  public static let codecIdentity =
    "UWVMROS1_302692ae2e86c23efb3edf132e0b7a6e48fc2072a34bb941039db459f99cd15d"
  public static let nativeType = "uwvm_fourier_bridge/GetStandPoseResponse"
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
    -> Ros1Uwvm_fourier_bridgeGetStandPoseResponse
  {
    var v = Ros1Uwvm_fourier_bridgeGetStandPoseResponse()
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
public struct Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_57fbba93abe5e136ae1522ad47155377e8a55ddaa3f02793e8a605e3b596115a"
  public static let nativeType = "uwvm_fourier_bridge/GetUpperFsmNameRequest"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest
  {
    var v = Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest()
    v.`sequence` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_e98befbd1c290a3cb2c99facb33334ac0d908db39247d869d0715c024e75c7fe"
  public static let nativeType = "uwvm_fourier_bridge/GetUpperFsmNameResponse"
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
    -> Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse
  {
    var v = Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    v.`value` = try r.string(bound: 128)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_d38f791d76cec09de5bfa0b32d88d987ec3b077408682519f4c23940c4af0d12"
  public static let nativeType = "uwvm_fourier_bridge/GetUpperFsmStateRequest"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest
  {
    var v = Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest()
    v.`sequence` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_3864ff479fa6b85dffd39e772e3260f9e5094cf8179f98c2184a09971d577e71"
  public static let nativeType = "uwvm_fourier_bridge/GetUpperFsmStateResponse"
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
    -> Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse
  {
    var v = Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_e38af8b3fc5b65c6f364f5949b42d694d7012d32d900f55e08b87d08bcf83042"
  public static let nativeType = "uwvm_fourier_bridge/GetVelocitySourceRequest"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest
  {
    var v = Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest()
    v.`sequence` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse: Canonical {
  public static let maximumWireBytes = 140
  public static let codecIdentity =
    "UWVMROS1_5bf809b889573acff549030cda017455303b009379d495aa7c3ab4399c862f60"
  public static let nativeType = "uwvm_fourier_bridge/GetVelocitySourceResponse"
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
    -> Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse
  {
    var v = Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_a880cea6f506d0670df709e9e86726272e242bd969b5917a9698efa2f6dd897b"
  public static let nativeType = "uwvm_fourier_bridge/GetVelocitySourceNameRequest"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest
  {
    var v = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest()
    v.`sequence` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_4b746944429d7c07719da06a13b9a396dff3b51167894309e8cf46f64f049a9b"
  public static let nativeType = "uwvm_fourier_bridge/GetVelocitySourceNameResponse"
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
    -> Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
  {
    var v = Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    v.`value` = try r.string(bound: 128)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeGroupValues: Canonical {
  public static let maximumWireBytes = 648
  public static let codecIdentity =
    "UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c"
  public static let nativeType = "uwvm_fourier_bridge/GroupValues"
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
  public static func read(from r: inout WireReader) throws -> Ros1Uwvm_fourier_bridgeGroupValues {
    var v = Ros1Uwvm_fourier_bridgeGroupValues()
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
public struct Ros1Uwvm_fourier_bridgeSetFsmStateRequest: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_303406629d56a2b60a273488cd1e12081e7541374653bac04e2ca073d8c20885"
  public static let nativeType = "uwvm_fourier_bridge/SetFsmStateRequest"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `state`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    try w.integer(self.`state`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeSetFsmStateRequest
  {
    var v = Ros1Uwvm_fourier_bridgeSetFsmStateRequest()
    v.`sequence` = try r.integer(UInt64.self)
    v.`state` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeSetFsmStateResponse: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_cffc820dc64a954aa94912941d3678a59a839b3dde4a6ebafdaf7d4367c22bd1"
  public static let nativeType = "uwvm_fourier_bridge/SetFsmStateResponse"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeSetFsmStateResponse
  {
    var v = Ros1Uwvm_fourier_bridgeSetFsmStateResponse()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeSetGroupCommandRequest: Canonical {
  public static let maximumWireBytes = 15572
  public static let codecIdentity =
    "UWVMROS1_b313435600ece44507300ad1ea5e375244387cde33301484ffda0390ca523220"
  public static let nativeType = "uwvm_fourier_bridge/SetGroupCommandRequest"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `position`: [Ros1Uwvm_fourier_bridgeGroupValues] = []
  public var `velocity`: [Ros1Uwvm_fourier_bridgeGroupValues] = []
  public var `torque`: [Ros1Uwvm_fourier_bridgeGroupValues] = []
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
    -> Ros1Uwvm_fourier_bridgeSetGroupCommandRequest
  {
    var v = Ros1Uwvm_fourier_bridgeSetGroupCommandRequest()
    v.`sequence` = try r.integer(UInt64.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`position` = []
    v.`position`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`position`.append(try Ros1Uwvm_fourier_bridgeGroupValues.read(from: &r))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`velocity` = []
    v.`velocity`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`velocity`.append(try Ros1Uwvm_fourier_bridgeGroupValues.read(from: &r))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 8 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`torque` = []
    v.`torque`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`torque`.append(try Ros1Uwvm_fourier_bridgeGroupValues.read(from: &r))
    }
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeSetGroupCommandResponse: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_d4c199515080deccf6a7bbd7101c84f45d7b280a7ed618c2165231343aae558b"
  public static let nativeType = "uwvm_fourier_bridge/SetGroupCommandResponse"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeSetGroupCommandResponse
  {
    var v = Ros1Uwvm_fourier_bridgeSetGroupCommandResponse()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest: Canonical {
  public static let maximumWireBytes = 10384
  public static let codecIdentity =
    "UWVMROS1_b6dc93532397dc9016b751bf29f651e5cbb0823b5a03a3f8473823bb234bc51d"
  public static let nativeType = "uwvm_fourier_bridge/SetMotorCfgPdRequest"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `kp`: [Ros1Uwvm_fourier_bridgeGroupValues] = []
  public var `kd`: [Ros1Uwvm_fourier_bridgeGroupValues] = []
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
    -> Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest
  {
    var v = Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest()
    v.`sequence` = try r.integer(UInt64.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 8 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`kp` = []
    v.`kp`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`kp`.append(try Ros1Uwvm_fourier_bridgeGroupValues.read(from: &r))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`kd` = []
    v.`kd`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`kd`.append(try Ros1Uwvm_fourier_bridgeGroupValues.read(from: &r))
    }
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_c1a69a2c03c6cee9b43484b29a800a5f82be4b9188e3b199eb2db8babd205bdc"
  public static let nativeType = "uwvm_fourier_bridge/SetMotorCfgPdResponse"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse
  {
    var v = Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeSetStandPoseRequest: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_75a21fe3986a90ff45b9e7ef023a93be9852d1174b5724b77b82b87e002492ed"
  public static let nativeType = "uwvm_fourier_bridge/SetStandPoseRequest"
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
    -> Ros1Uwvm_fourier_bridgeSetStandPoseRequest
  {
    var v = Ros1Uwvm_fourier_bridgeSetStandPoseRequest()
    v.`sequence` = try r.integer(UInt64.self)
    v.`delta_z` = try r.float64()
    v.`delta_pitch` = try r.float64()
    v.`delta_yaw` = try r.float64()
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeSetStandPoseResponse: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_257da5b52ebfca54b067ced2acfab01e3aa3187c77751a5f82f9fda25885fe7e"
  public static let nativeType = "uwvm_fourier_bridge/SetStandPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeSetStandPoseResponse
  {
    var v = Ros1Uwvm_fourier_bridgeSetStandPoseResponse()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_cc12b01c002d9e3662f16595a55df6abebdea2fe06e350b7e81f33bee0d47758"
  public static let nativeType = "uwvm_fourier_bridge/SetUpperFsmStateRequest"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `state`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    try w.integer(self.`state`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest
  {
    var v = Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest()
    v.`sequence` = try r.integer(UInt64.self)
    v.`state` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_27ee9830ebf52c3cfcdd8691bf1be9a1a63f7cd12c43cd30531b73501cd423c1"
  public static let nativeType = "uwvm_fourier_bridge/SetUpperFsmStateResponse"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse
  {
    var v = Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeSetVelocityRequest: Canonical {
  public static let maximumWireBytes = 40
  public static let codecIdentity =
    "UWVMROS1_33eb9021c19ed28c9aabc0076b8e5cc9f36b1fcaebbb93ebfa3dc38e9691ed2d"
  public static let nativeType = "uwvm_fourier_bridge/SetVelocityRequest"
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
    -> Ros1Uwvm_fourier_bridgeSetVelocityRequest
  {
    var v = Ros1Uwvm_fourier_bridgeSetVelocityRequest()
    v.`sequence` = try r.integer(UInt64.self)
    v.`vx` = try r.float64()
    v.`vy` = try r.float64()
    v.`yaw` = try r.float64()
    v.`duration` = try r.float64()
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeSetVelocityResponse: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_3325d6b620d3481b6976cd4579f197ed19d6a5074618f700273ca89e0eba762a"
  public static let nativeType = "uwvm_fourier_bridge/SetVelocityResponse"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeSetVelocityResponse
  {
    var v = Ros1Uwvm_fourier_bridgeSetVelocityResponse()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_769c68344260812d775718b441b2a0e5e26422995c946031b919707994e295eb"
  public static let nativeType = "uwvm_fourier_bridge/SetVelocitySourceRequest"
  public static let nativeIdentity: String? = nil
  public var `sequence`: UInt64 = 0
  public var `source`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sequence`)
    try w.integer(self.`source`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest
  {
    var v = Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest()
    v.`sequence` = try r.integer(UInt64.self)
    v.`source` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse: Canonical {
  public static let maximumWireBytes = 136
  public static let codecIdentity =
    "UWVMROS1_d791bd1ff7d8219a98a9ad475cdf0274fa87638452ce0359de57abc05ff0c3be"
  public static let nativeType = "uwvm_fourier_bridge/SetVelocitySourceResponse"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.string(self.`error`, bound: 128)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse
  {
    var v = Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeVelocityCommand: Canonical {
  public static let maximumWireBytes = 40
  public static let codecIdentity =
    "UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54"
  public static let nativeType = "uwvm_fourier_bridge/VelocityCommand"
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
  public static func read(from r: inout WireReader) throws -> Ros1Uwvm_fourier_bridgeVelocityCommand
  {
    var v = Ros1Uwvm_fourier_bridgeVelocityCommand()
    v.`sequence` = try r.integer(UInt64.self)
    v.`vx` = try r.float64()
    v.`vy` = try r.float64()
    v.`yaw` = try r.float64()
    v.`duration` = try r.float64()
    return v
  }
}
public struct Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest: Canonical {
  public static let maximumWireBytes = 1084
  public static let codecIdentity =
    "UWVMROS1_27bdd6aa7689099eb40b3bdf96a1c3939677b016c685bd6fb6a275233b933b33"
  public static let nativeType = "uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest"
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
    -> Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest
  {
    var v = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest()
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
public struct Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse: Canonical {
  public static let maximumWireBytes = 137
  public static let codecIdentity =
    "UWVMROS1_7d0a1faabf2934ec1a75981a5ed4251017a666975174efca8be48c152a15fee8"
  public static let nativeType = "uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse"
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
    -> Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse
  {
    var v = Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse()
    v.`status` = try r.integer(UInt32.self)
    v.`error` = try r.string(bound: 128)
    v.`complete` = try r.boolean()
    return v
  }
}
