/// @file Records.swift
/// @brief Complete doosan values and adapters for the selected original interface catalog.
/// @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
/// defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
/// roles require the separately admitted SDK owner.
/// @see share/platform/doosan/domains/doosan-ros1-kinetic-devel-descrepted-complete.ir.json
/// @see document/platform/doosan/en_US/README.md

// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros1Dsr_msgsAlignAxis1Request: Canonical {
  public static let maximumWireBytes = 170
  public static let codecIdentity =
    "UWVMROS1_708643fa3a09d74f06ee9ba327c3fc05fb60dd73447ea95e43d9d96f7c5b6e54"
  public static let nativeType = "dsr_msgs/AlignAxis1Request"
  public static let nativeIdentity: String? = nil
  public var `x1`: [Double] = Array(repeating: 0, count: 6)
  public var `x2`: [Double] = Array(repeating: 0, count: 6)
  public var `x3`: [Double] = Array(repeating: 0, count: 6)
  public var `source_vect`: [Double] = Array(repeating: 0, count: 3)
  public var `axis`: Int8 = 0
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`x1`.count == 6 else { throw RosError(22) }
    for e in self.`x1` {
      try w.float64(e)
    }
    guard self.`x2`.count == 6 else { throw RosError(22) }
    for e in self.`x2` {
      try w.float64(e)
    }
    guard self.`x3`.count == 6 else { throw RosError(22) }
    for e in self.`x3` {
      try w.float64(e)
    }
    guard self.`source_vect`.count == 3 else { throw RosError(22) }
    for e in self.`source_vect` {
      try w.float64(e)
    }
    try w.integer(self.`axis`)
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsAlignAxis1Request {
    var v = Ros1Dsr_msgsAlignAxis1Request()
    let count0 = 6
    v.`x1` = []
    v.`x1`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`x1`.append(try r.float64())
    }
    let count1 = 6
    v.`x2` = []
    v.`x2`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`x2`.append(try r.float64())
    }
    let count2 = 6
    v.`x3` = []
    v.`x3`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`x3`.append(try r.float64())
    }
    let count3 = 3
    v.`source_vect` = []
    v.`source_vect`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`source_vect`.append(try r.float64())
    }
    v.`axis` = try r.integer(Int8.self)
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsAlignAxis1Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_dda31d7d89f3f8b2bb3c68c0d685a30ccfc32a9c363ea5399a1777da80d2f33d"
  public static let nativeType = "dsr_msgs/AlignAxis1Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsAlignAxis1Response {
    var v = Ros1Dsr_msgsAlignAxis1Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsAlignAxis2Request: Canonical {
  public static let maximumWireBytes = 50
  public static let codecIdentity =
    "UWVMROS1_3e1c136bdfe0d97015a19c2fffc6b40460933a3ada556e57142d6309f99fe1ea"
  public static let nativeType = "dsr_msgs/AlignAxis2Request"
  public static let nativeIdentity: String? = nil
  public var `target_vect`: [Double] = Array(repeating: 0, count: 3)
  public var `source_vect`: [Double] = Array(repeating: 0, count: 3)
  public var `axis`: Int8 = 0
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`target_vect`.count == 3 else { throw RosError(22) }
    for e in self.`target_vect` {
      try w.float64(e)
    }
    guard self.`source_vect`.count == 3 else { throw RosError(22) }
    for e in self.`source_vect` {
      try w.float64(e)
    }
    try w.integer(self.`axis`)
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsAlignAxis2Request {
    var v = Ros1Dsr_msgsAlignAxis2Request()
    let count0 = 3
    v.`target_vect` = []
    v.`target_vect`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`target_vect`.append(try r.float64())
    }
    let count1 = 3
    v.`source_vect` = []
    v.`source_vect`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`source_vect`.append(try r.float64())
    }
    v.`axis` = try r.integer(Int8.self)
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsAlignAxis2Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_79618c7ede73decd7a8cb4f0cc013b95c463ca37126d49c0b54e17ad17224ade"
  public static let nativeType = "dsr_msgs/AlignAxis2Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsAlignAxis2Response {
    var v = Ros1Dsr_msgsAlignAxis2Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsAlterMotionRequest: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_2230e6b8bc09c902ab6ba9ed4e9fdb59a9e8d691cf614599e5f96fd8d2820787"
  public static let nativeType = "dsr_msgs/AlterMotionRequest"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsAlterMotionRequest {
    var v = Ros1Dsr_msgsAlterMotionRequest()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Dsr_msgsAlterMotionResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d27db25bae1cbb78fedfb24b96acbe023949948766ed856ad91e942fe367f716"
  public static let nativeType = "dsr_msgs/AlterMotionResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsAlterMotionResponse {
    var v = Ros1Dsr_msgsAlterMotionResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsCalcCoordRequest: Canonical {
  public static let maximumWireBytes = 195
  public static let codecIdentity =
    "UWVMROS1_7124a7312fd476b49ef2fd9fb468ea19ce7ae644da5c8fffb3ddfc67c175c70d"
  public static let nativeType = "dsr_msgs/CalcCoordRequest"
  public static let nativeIdentity: String? = nil
  public var `input_pos_cnt`: Int8 = 0
  public var `x1`: [Double] = Array(repeating: 0, count: 6)
  public var `x2`: [Double] = Array(repeating: 0, count: 6)
  public var `x3`: [Double] = Array(repeating: 0, count: 6)
  public var `x4`: [Double] = Array(repeating: 0, count: 6)
  public var `ref`: Int8 = 0
  public var `mod`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`input_pos_cnt`)
    guard self.`x1`.count == 6 else { throw RosError(22) }
    for e in self.`x1` {
      try w.float64(e)
    }
    guard self.`x2`.count == 6 else { throw RosError(22) }
    for e in self.`x2` {
      try w.float64(e)
    }
    guard self.`x3`.count == 6 else { throw RosError(22) }
    for e in self.`x3` {
      try w.float64(e)
    }
    guard self.`x4`.count == 6 else { throw RosError(22) }
    for e in self.`x4` {
      try w.float64(e)
    }
    try w.integer(self.`ref`)
    try w.integer(self.`mod`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsCalcCoordRequest {
    var v = Ros1Dsr_msgsCalcCoordRequest()
    v.`input_pos_cnt` = try r.integer(Int8.self)
    let count1 = 6
    v.`x1` = []
    v.`x1`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`x1`.append(try r.float64())
    }
    let count2 = 6
    v.`x2` = []
    v.`x2`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`x2`.append(try r.float64())
    }
    let count3 = 6
    v.`x3` = []
    v.`x3`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`x3`.append(try r.float64())
    }
    let count4 = 6
    v.`x4` = []
    v.`x4`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`x4`.append(try r.float64())
    }
    v.`ref` = try r.integer(Int8.self)
    v.`mod` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsCalcCoordResponse: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_c34ef9bfe05948a853305174e1084443e5358bc5877c0dd5d05ba6655dc6d993"
  public static let nativeType = "dsr_msgs/CalcCoordResponse"
  public static let nativeIdentity: String? = nil
  public var `conv_posx`: [Double] = Array(repeating: 0, count: 6)
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`conv_posx`.count == 6 else { throw RosError(22) }
    for e in self.`conv_posx` {
      try w.float64(e)
    }
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsCalcCoordResponse {
    var v = Ros1Dsr_msgsCalcCoordResponse()
    let count0 = 6
    v.`conv_posx` = []
    v.`conv_posx`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`conv_posx`.append(try r.float64())
    }
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsChangeOperationSpeedRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_8d8beb40ab8ebd7d0f69509832bc71ac9e460ec01bdecc41a82f4eab28017616"
  public static let nativeType = "dsr_msgs/ChangeOperationSpeedRequest"
  public static let nativeIdentity: String? = nil
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsChangeOperationSpeedRequest
  {
    var v = Ros1Dsr_msgsChangeOperationSpeedRequest()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsChangeOperationSpeedResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_bf8b7e30e18d38f6dde9b02576151cb57c4789cef7b7ea6c56fc8581eafc08f6"
  public static let nativeType = "dsr_msgs/ChangeOperationSpeedResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsChangeOperationSpeedResponse
  {
    var v = Ros1Dsr_msgsChangeOperationSpeedResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsCheckForceConditionRequest: Canonical {
  public static let maximumWireBytes = 18
  public static let codecIdentity =
    "UWVMROS1_590694ea44b90bb2aa6fa1f903d129e2a58a33af58fe26c9f67f9b0272b34673"
  public static let nativeType = "dsr_msgs/CheckForceConditionRequest"
  public static let nativeIdentity: String? = nil
  public var `axis`: Int8 = 0
  public var `min`: Double = 0
  public var `max`: Double = 0
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`axis`)
    try w.float64(self.`min`)
    try w.float64(self.`max`)
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsCheckForceConditionRequest
  {
    var v = Ros1Dsr_msgsCheckForceConditionRequest()
    v.`axis` = try r.integer(Int8.self)
    v.`min` = try r.float64()
    v.`max` = try r.float64()
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsCheckForceConditionResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_6d0cb8413b824c1a469f77cd592946e67dd0a0c15d5945b0ea908c0e0e7a3270"
  public static let nativeType = "dsr_msgs/CheckForceConditionResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsCheckForceConditionResponse
  {
    var v = Ros1Dsr_msgsCheckForceConditionResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsCheckMotionRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_f38bee5e76ececdf4868a092e4ee673da6bcd95db9baacd504ef31017b94b7d5"
  public static let nativeType = "dsr_msgs/CheckMotionRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsCheckMotionRequest {
    var v = Ros1Dsr_msgsCheckMotionRequest()
    return v
  }
}
public struct Ros1Dsr_msgsCheckMotionResponse: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_2e11dbf1b2a447dd3b6f302f3839b2383f6c3e0c0408c138cb7acb12062df480"
  public static let nativeType = "dsr_msgs/CheckMotionResponse"
  public static let nativeIdentity: String? = nil
  public var `status`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsCheckMotionResponse {
    var v = Ros1Dsr_msgsCheckMotionResponse()
    v.`status` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsCheckOrientationCondition1Request: Canonical {
  public static let maximumWireBytes = 99
  public static let codecIdentity =
    "UWVMROS1_048532f02d47e889e7299755886812a454c0457d4c70fda58bd090c959a52c6e"
  public static let nativeType = "dsr_msgs/CheckOrientationCondition1Request"
  public static let nativeIdentity: String? = nil
  public var `axis`: Int8 = 0
  public var `min`: [Double] = Array(repeating: 0, count: 6)
  public var `max`: [Double] = Array(repeating: 0, count: 6)
  public var `ref`: Int8 = 0
  public var `mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`axis`)
    guard self.`min`.count == 6 else { throw RosError(22) }
    for e in self.`min` {
      try w.float64(e)
    }
    guard self.`max`.count == 6 else { throw RosError(22) }
    for e in self.`max` {
      try w.float64(e)
    }
    try w.integer(self.`ref`)
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsCheckOrientationCondition1Request
  {
    var v = Ros1Dsr_msgsCheckOrientationCondition1Request()
    v.`axis` = try r.integer(Int8.self)
    let count1 = 6
    v.`min` = []
    v.`min`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`min`.append(try r.float64())
    }
    let count2 = 6
    v.`max` = []
    v.`max`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`max`.append(try r.float64())
    }
    v.`ref` = try r.integer(Int8.self)
    v.`mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsCheckOrientationCondition1Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_4b8359166eedb70a505b0d1829168618088cbedada2bc5d6f7d9e9a5dfa79b32"
  public static let nativeType = "dsr_msgs/CheckOrientationCondition1Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsCheckOrientationCondition1Response
  {
    var v = Ros1Dsr_msgsCheckOrientationCondition1Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsCheckOrientationCondition2Request: Canonical {
  public static let maximumWireBytes = 67
  public static let codecIdentity =
    "UWVMROS1_42287a8e7cef2b93a1bd5778de6ae4ef4d1aa484dd0c74fcd29c660b400b6ff0"
  public static let nativeType = "dsr_msgs/CheckOrientationCondition2Request"
  public static let nativeIdentity: String? = nil
  public var `axis`: Int8 = 0
  public var `min`: Double = 0
  public var `max`: Double = 0
  public var `ref`: Int8 = 0
  public var `mode`: Int8 = 0
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`axis`)
    try w.float64(self.`min`)
    try w.float64(self.`max`)
    try w.integer(self.`ref`)
    try w.integer(self.`mode`)
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsCheckOrientationCondition2Request
  {
    var v = Ros1Dsr_msgsCheckOrientationCondition2Request()
    v.`axis` = try r.integer(Int8.self)
    v.`min` = try r.float64()
    v.`max` = try r.float64()
    v.`ref` = try r.integer(Int8.self)
    v.`mode` = try r.integer(Int8.self)
    let count5 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`pos`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Dsr_msgsCheckOrientationCondition2Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_334774329557c04594f02ee344f0af39d250c482c3f9c4b2dd5f275e87880e83"
  public static let nativeType = "dsr_msgs/CheckOrientationCondition2Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsCheckOrientationCondition2Response
  {
    var v = Ros1Dsr_msgsCheckOrientationCondition2Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsCheckPositionConditionRequest: Canonical {
  public static let maximumWireBytes = 67
  public static let codecIdentity =
    "UWVMROS1_973c397ac52f4eba5f5956bd25c6552749d14ebd070ea659cea7601bf2bfdbeb"
  public static let nativeType = "dsr_msgs/CheckPositionConditionRequest"
  public static let nativeIdentity: String? = nil
  public var `axis`: Int8 = 0
  public var `min`: Double = 0
  public var `max`: Double = 0
  public var `ref`: Int8 = 0
  public var `mode`: Int8 = 0
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`axis`)
    try w.float64(self.`min`)
    try w.float64(self.`max`)
    try w.integer(self.`ref`)
    try w.integer(self.`mode`)
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsCheckPositionConditionRequest
  {
    var v = Ros1Dsr_msgsCheckPositionConditionRequest()
    v.`axis` = try r.integer(Int8.self)
    v.`min` = try r.float64()
    v.`max` = try r.float64()
    v.`ref` = try r.integer(Int8.self)
    v.`mode` = try r.integer(Int8.self)
    let count5 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`pos`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Dsr_msgsCheckPositionConditionResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e809f6231e9bea172a7c00c6d32bb553e97026a607a6070e6fa82d007c3bf94a"
  public static let nativeType = "dsr_msgs/CheckPositionConditionResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsCheckPositionConditionResponse
  {
    var v = Ros1Dsr_msgsCheckPositionConditionResponse()
    v.`success` = try r.boolean()
    return v
  }
}
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
public struct Ros1Dsr_msgsCoordTransformRequest: Canonical {
  public static let maximumWireBytes = 50
  public static let codecIdentity =
    "UWVMROS1_28b33cdb83f95f41982ccc99d276cc4efb34ff33707101e1d56cf63580095436"
  public static let nativeType = "dsr_msgs/CoordTransformRequest"
  public static let nativeIdentity: String? = nil
  public var `pos_in`: [Double] = Array(repeating: 0, count: 6)
  public var `ref_in`: Int8 = 0
  public var `ref_out`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos_in`.count == 6 else { throw RosError(22) }
    for e in self.`pos_in` {
      try w.float64(e)
    }
    try w.integer(self.`ref_in`)
    try w.integer(self.`ref_out`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsCoordTransformRequest {
    var v = Ros1Dsr_msgsCoordTransformRequest()
    let count0 = 6
    v.`pos_in` = []
    v.`pos_in`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos_in`.append(try r.float64())
    }
    v.`ref_in` = try r.integer(Int8.self)
    v.`ref_out` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsCoordTransformResponse: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_1b9492d45f096bfd2a53e1ed8a701d53698a7aebc525b70e95de70c6275035c9"
  public static let nativeType = "dsr_msgs/CoordTransformResponse"
  public static let nativeIdentity: String? = nil
  public var `conv_posx`: [Double] = Array(repeating: 0, count: 6)
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`conv_posx`.count == 6 else { throw RosError(22) }
    for e in self.`conv_posx` {
      try w.float64(e)
    }
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsCoordTransformResponse {
    var v = Ros1Dsr_msgsCoordTransformResponse()
    let count0 = 6
    v.`conv_posx` = []
    v.`conv_posx`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`conv_posx`.append(try r.float64())
    }
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsDisableAlterMotionRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_4ff4905d3843c08022003c96abd4031a5438078e919e0b8e43554aae3229bbc1"
  public static let nativeType = "dsr_msgs/DisableAlterMotionRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsDisableAlterMotionRequest
  {
    var v = Ros1Dsr_msgsDisableAlterMotionRequest()
    return v
  }
}
public struct Ros1Dsr_msgsDisableAlterMotionResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_feff25cf5412112d1ebc9fd4dd0aca62f1a9af7f63673a0633f6f32e915a27b1"
  public static let nativeType = "dsr_msgs/DisableAlterMotionResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsDisableAlterMotionResponse
  {
    var v = Ros1Dsr_msgsDisableAlterMotionResponse()
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
public struct Ros1Dsr_msgsEnableAlterMotionRequest: Canonical {
  public static let maximumWireBytes = 38
  public static let codecIdentity =
    "UWVMROS1_fa62f478a04e6d92a170e62e1ea690f6e6827e3784388fab3ecc58966c25c99f"
  public static let nativeType = "dsr_msgs/EnableAlterMotionRequest"
  public static let nativeIdentity: String? = nil
  public var `n`: Int32 = 0
  public var `mode`: Int8 = 0
  public var `ref`: Int8 = 0
  public var `limit_dPOS`: [Double] = Array(repeating: 0, count: 2)
  public var `limit_dPOS_per`: [Double] = Array(repeating: 0, count: 2)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`n`)
    try w.integer(self.`mode`)
    try w.integer(self.`ref`)
    guard self.`limit_dPOS`.count == 2 else { throw RosError(22) }
    for e in self.`limit_dPOS` {
      try w.float64(e)
    }
    guard self.`limit_dPOS_per`.count == 2 else { throw RosError(22) }
    for e in self.`limit_dPOS_per` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsEnableAlterMotionRequest {
    var v = Ros1Dsr_msgsEnableAlterMotionRequest()
    v.`n` = try r.integer(Int32.self)
    v.`mode` = try r.integer(Int8.self)
    v.`ref` = try r.integer(Int8.self)
    let count3 = 2
    v.`limit_dPOS` = []
    v.`limit_dPOS`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`limit_dPOS`.append(try r.float64())
    }
    let count4 = 2
    v.`limit_dPOS_per` = []
    v.`limit_dPOS_per`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`limit_dPOS_per`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Dsr_msgsEnableAlterMotionResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_24f3d751a4b49ff5f3280893ecb2f896ae57a9a05309a8827c5ae8eb18daf885"
  public static let nativeType = "dsr_msgs/EnableAlterMotionResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsEnableAlterMotionResponse
  {
    var v = Ros1Dsr_msgsEnableAlterMotionResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsFkinRequest: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_6bbd7ead217dd4d6ed0f5d044df5a32d3be159fcc929a395396ec7c1208c325d"
  public static let nativeType = "dsr_msgs/FkinRequest"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsFkinRequest {
    var v = Ros1Dsr_msgsFkinRequest()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsFkinResponse: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_86e79e02833be0498aef75436df542063454b0e5b0a46fb153467afc5a492c94"
  public static let nativeType = "dsr_msgs/FkinResponse"
  public static let nativeIdentity: String? = nil
  public var `conv_posx`: [Double] = Array(repeating: 0, count: 6)
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`conv_posx`.count == 6 else { throw RosError(22) }
    for e in self.`conv_posx` {
      try w.float64(e)
    }
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsFkinResponse {
    var v = Ros1Dsr_msgsFkinResponse()
    let count0 = 6
    v.`conv_posx` = []
    v.`conv_posx`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`conv_posx`.append(try r.float64())
    }
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetControlModeRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_c7872f67adf097ccf8b60b910ea0c9ce8831a88b1ab82827b3789355b19fbaab"
  public static let nativeType = "dsr_msgs/GetControlModeRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetControlModeRequest {
    var v = Ros1Dsr_msgsGetControlModeRequest()
    return v
  }
}
public struct Ros1Dsr_msgsGetControlModeResponse: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_29bcb7b65473a8e0c70660a270b9110c95d486358b6ccece3580214cb47d8f4f"
  public static let nativeType = "dsr_msgs/GetControlModeResponse"
  public static let nativeIdentity: String? = nil
  public var `control_mode`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`control_mode`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetControlModeResponse {
    var v = Ros1Dsr_msgsGetControlModeResponse()
    v.`control_mode` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetControlSpaceRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_eaff6359de691c20936219f59c4c63b1a439ef1367afee1e554d22c013bf74cf"
  public static let nativeType = "dsr_msgs/GetControlSpaceRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetControlSpaceRequest {
    var v = Ros1Dsr_msgsGetControlSpaceRequest()
    return v
  }
}
public struct Ros1Dsr_msgsGetControlSpaceResponse: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_4ef8cc2465e8d38e5d44fa83e907ea5658f14f5f4f95776f8044f791e8311dfb"
  public static let nativeType = "dsr_msgs/GetControlSpaceResponse"
  public static let nativeIdentity: String? = nil
  public var `space`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`space`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetControlSpaceResponse {
    var v = Ros1Dsr_msgsGetControlSpaceResponse()
    v.`space` = try r.integer(Int8.self)
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
  public static let maximumWireBytes = 9
  public static let codecIdentity =
    "UWVMROS1_a23bcb46f249dc92a614e37a44ebb9e683921ee4104a22446855c8f3b35a6be7"
  public static let nativeType = "dsr_msgs/GetCtrlBoxAnalogInputResponse"
  public static let nativeIdentity: String? = nil
  public var `value`: Double = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`value`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse
  {
    var v = Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse()
    v.`value` = try r.float64()
    v.`success` = try r.boolean()
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
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_f838432468390d51d64a6d9bc714b503b168a9fedfabcfb96cce7a202a34613f"
  public static let nativeType = "dsr_msgs/GetCtrlBoxDigitalInputResponse"
  public static let nativeIdentity: String? = nil
  public var `value`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse
  {
    var v = Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse()
    v.`value` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_a33419794c2431ab9d5b6c3a96becb14edca0d7b00953aa7a7ec1f11ea7bbdb5"
  public static let nativeType = "dsr_msgs/GetCtrlBoxDigitalOutputRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest
  {
    var v = Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest()
    v.`index` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_cf472a4ed84d8005ce6ea97ae3c2fd72aba049015924069ee16c79ad41c76534"
  public static let nativeType = "dsr_msgs/GetCtrlBoxDigitalOutputResponse"
  public static let nativeIdentity: String? = nil
  public var `value`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse
  {
    var v = Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse()
    v.`value` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
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
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_8b57d2561b1a04d2ddb60c29f9a4ffb6ba6eeb2f73e8b7e704ee091b49861fe1"
  public static let nativeType = "dsr_msgs/GetCurrentPoseResponse"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetCurrentPoseResponse {
    var v = Ros1Dsr_msgsGetCurrentPoseResponse()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetCurrentPosjRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_5a4d2e7f7304671d96e5ee9ff83ad957d6e74f49ac2562aea6e3dbfcc1726be7"
  public static let nativeType = "dsr_msgs/GetCurrentPosjRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetCurrentPosjRequest {
    var v = Ros1Dsr_msgsGetCurrentPosjRequest()
    return v
  }
}
public struct Ros1Dsr_msgsGetCurrentPosjResponse: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_6d9f277e82052e84ee2494991ffcca6b8cb8457c2d0fdeb805122f99ae583c29"
  public static let nativeType = "dsr_msgs/GetCurrentPosjResponse"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetCurrentPosjResponse {
    var v = Ros1Dsr_msgsGetCurrentPosjResponse()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetCurrentPosxRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e134a62a318034e8ab66c88085f8e9f0380500394b9d61bb2998a618fc7d3437"
  public static let nativeType = "dsr_msgs/GetCurrentPosxRequest"
  public static let nativeIdentity: String? = nil
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetCurrentPosxRequest {
    var v = Ros1Dsr_msgsGetCurrentPosxRequest()
    v.`ref` = try r.integer(Int8.self)
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
public struct Ros1Dsr_msgsGetCurrentPosxResponse: Canonical {
  public static let maximumWireBytes = 2213
  public static let codecIdentity =
    "UWVMROS1_2fb411b9e660dddd17fcd65507bd6437db63aa41b3d1eeecd5c0048405828bf4"
  public static let nativeType = "dsr_msgs/GetCurrentPosxResponse"
  public static let nativeIdentity: String? = nil
  public var `task_pos_info`: [Ros1Std_msgsFloat64MultiArray] = []
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`task_pos_info`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`task_pos_info`.count))
    for e in self.`task_pos_info` {
      try e.write(to: &w)
    }
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetCurrentPosxResponse {
    var v = Ros1Dsr_msgsGetCurrentPosxResponse()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 6 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`task_pos_info` = []
    v.`task_pos_info`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`task_pos_info`.append(try Ros1Std_msgsFloat64MultiArray.read(from: &r))
    }
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetCurrentRotmRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e0f4ee3e0c208a87004cca9771a0696f4acfa8a09ab6a861b8a83bd28ccfb436"
  public static let nativeType = "dsr_msgs/GetCurrentRotmRequest"
  public static let nativeIdentity: String? = nil
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetCurrentRotmRequest {
    var v = Ros1Dsr_msgsGetCurrentRotmRequest()
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetCurrentRotmResponse: Canonical {
  public static let maximumWireBytes = 2213
  public static let codecIdentity =
    "UWVMROS1_6cfa5fffb8e5c1575cb821b9330dd9e1f60ab3b325d54ff4d00bc8859e7535d1"
  public static let nativeType = "dsr_msgs/GetCurrentRotmResponse"
  public static let nativeIdentity: String? = nil
  public var `rot_matrix`: [Ros1Std_msgsFloat64MultiArray] = []
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`rot_matrix`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`rot_matrix`.count))
    for e in self.`rot_matrix` {
      try e.write(to: &w)
    }
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetCurrentRotmResponse {
    var v = Ros1Dsr_msgsGetCurrentRotmResponse()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 6 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`rot_matrix` = []
    v.`rot_matrix`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`rot_matrix`.append(try Ros1Std_msgsFloat64MultiArray.read(from: &r))
    }
    v.`success` = try r.boolean()
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
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_e7ef22b6516c92acb76e6173e0d14f0b7c25a7ec669ef18060b4f1158e877c68"
  public static let nativeType = "dsr_msgs/GetCurrentSolutionSpaceResponse"
  public static let nativeIdentity: String? = nil
  public var `sol_space`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sol_space`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsGetCurrentSolutionSpaceResponse
  {
    var v = Ros1Dsr_msgsGetCurrentSolutionSpaceResponse()
    v.`sol_space` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
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
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_e0041507b5cdc970e31a6df40a0af22a4115724b1e4c4f615b54c788cf2f27b6"
  public static let nativeType = "dsr_msgs/GetCurrentTcpResponse"
  public static let nativeIdentity: String? = nil
  public var `info`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`info`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetCurrentTcpResponse {
    var v = Ros1Dsr_msgsGetCurrentTcpResponse()
    v.`info` = try r.string(bound: 256)
    v.`success` = try r.boolean()
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
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_ab0de7b251e53fe03818ec0169e428bf70c27bdef187c792c54e65e37b2e717b"
  public static let nativeType = "dsr_msgs/GetCurrentToolResponse"
  public static let nativeIdentity: String? = nil
  public var `info`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`info`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetCurrentToolResponse {
    var v = Ros1Dsr_msgsGetCurrentToolResponse()
    v.`info` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetCurrentToolFlangePosxRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_c5377881231716926a6e0abeff2b115eaf5292f0d7e41478a7f1b4ccf7896d53"
  public static let nativeType = "dsr_msgs/GetCurrentToolFlangePosxRequest"
  public static let nativeIdentity: String? = nil
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsGetCurrentToolFlangePosxRequest
  {
    var v = Ros1Dsr_msgsGetCurrentToolFlangePosxRequest()
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetCurrentToolFlangePosxResponse: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_0de91ced161ef1b14003e0e248887f641fd366500674aae15cbbb0f7d915caac"
  public static let nativeType = "dsr_msgs/GetCurrentToolFlangePosxResponse"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsGetCurrentToolFlangePosxResponse
  {
    var v = Ros1Dsr_msgsGetCurrentToolFlangePosxResponse()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetCurrentVeljRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_ee4ef9a4e0b65ed58844e3b545094c569113b23d2478717306a14edb399242fa"
  public static let nativeType = "dsr_msgs/GetCurrentVeljRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetCurrentVeljRequest {
    var v = Ros1Dsr_msgsGetCurrentVeljRequest()
    return v
  }
}
public struct Ros1Dsr_msgsGetCurrentVeljResponse: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_000fed042d8de5fd8a1d95fe6b45cec5e4ad20ea2833199d7836ebb9e3ae5b2c"
  public static let nativeType = "dsr_msgs/GetCurrentVeljResponse"
  public static let nativeIdentity: String? = nil
  public var `joint_speed`: [Double] = Array(repeating: 0, count: 6)
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_speed`.count == 6 else { throw RosError(22) }
    for e in self.`joint_speed` {
      try w.float64(e)
    }
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetCurrentVeljResponse {
    var v = Ros1Dsr_msgsGetCurrentVeljResponse()
    let count0 = 6
    v.`joint_speed` = []
    v.`joint_speed`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_speed`.append(try r.float64())
    }
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetCurrentVelxRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_6f37a0ffd22a29a6b7812d551680cacb146192c25b234806ff16686992c34efb"
  public static let nativeType = "dsr_msgs/GetCurrentVelxRequest"
  public static let nativeIdentity: String? = nil
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetCurrentVelxRequest {
    var v = Ros1Dsr_msgsGetCurrentVelxRequest()
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetCurrentVelxResponse: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_98c1cd7ae5663063ce12ea61d9be3dbfd37e9e0b10b6a7f4cc1c212419392f40"
  public static let nativeType = "dsr_msgs/GetCurrentVelxResponse"
  public static let nativeIdentity: String? = nil
  public var `vel`: [Double] = Array(repeating: 0, count: 6)
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`vel`.count == 6 else { throw RosError(22) }
    for e in self.`vel` {
      try w.float64(e)
    }
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetCurrentVelxResponse {
    var v = Ros1Dsr_msgsGetCurrentVelxResponse()
    let count0 = 6
    v.`vel` = []
    v.`vel`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`vel`.append(try r.float64())
    }
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetDesiredPosjRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_2937a5625d07a7681c80c13557018978107abc537a22ee85ff562f15925caf1e"
  public static let nativeType = "dsr_msgs/GetDesiredPosjRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetDesiredPosjRequest {
    var v = Ros1Dsr_msgsGetDesiredPosjRequest()
    return v
  }
}
public struct Ros1Dsr_msgsGetDesiredPosjResponse: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_11ac4a05e65b0142f18a152904020780179fadfe540fbff7d5c53e4f177bc833"
  public static let nativeType = "dsr_msgs/GetDesiredPosjResponse"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetDesiredPosjResponse {
    var v = Ros1Dsr_msgsGetDesiredPosjResponse()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetDesiredPosxRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_812744777c143dfb5c4b60f71ab9461b3e95ead9e599473f87f88ba4f21d3563"
  public static let nativeType = "dsr_msgs/GetDesiredPosxRequest"
  public static let nativeIdentity: String? = nil
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetDesiredPosxRequest {
    var v = Ros1Dsr_msgsGetDesiredPosxRequest()
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetDesiredPosxResponse: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_2cf88bb8a14a1c2083a659a509fc1d29531aed1a1f9eb18590ad4381ff00a10a"
  public static let nativeType = "dsr_msgs/GetDesiredPosxResponse"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetDesiredPosxResponse {
    var v = Ros1Dsr_msgsGetDesiredPosxResponse()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetDesiredVeljRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_0b93381c0f1e5f57e086d316056912ecb10e3697346e5f250fa5efa612d76e99"
  public static let nativeType = "dsr_msgs/GetDesiredVeljRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetDesiredVeljRequest {
    var v = Ros1Dsr_msgsGetDesiredVeljRequest()
    return v
  }
}
public struct Ros1Dsr_msgsGetDesiredVeljResponse: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_753747a45767aad1a06f610e11bfd405d07aa365ff1ede44c4b78de99ef6ef22"
  public static let nativeType = "dsr_msgs/GetDesiredVeljResponse"
  public static let nativeIdentity: String? = nil
  public var `joint_vel`: [Double] = Array(repeating: 0, count: 6)
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`joint_vel`.count == 6 else { throw RosError(22) }
    for e in self.`joint_vel` {
      try w.float64(e)
    }
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetDesiredVeljResponse {
    var v = Ros1Dsr_msgsGetDesiredVeljResponse()
    let count0 = 6
    v.`joint_vel` = []
    v.`joint_vel`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`joint_vel`.append(try r.float64())
    }
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetDesiredVelxRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_f26e4ab51d82b3afdaf0f628f62346c740e2bb331d7f482001662884fd6d8aff"
  public static let nativeType = "dsr_msgs/GetDesiredVelxRequest"
  public static let nativeIdentity: String? = nil
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetDesiredVelxRequest {
    var v = Ros1Dsr_msgsGetDesiredVelxRequest()
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetDesiredVelxResponse: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_30fd91ceb67fa5a2cdaf78fc9b537befc89bac4e3db1203f1da10181fb7d9e51"
  public static let nativeType = "dsr_msgs/GetDesiredVelxResponse"
  public static let nativeIdentity: String? = nil
  public var `vel`: [Double] = Array(repeating: 0, count: 6)
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`vel`.count == 6 else { throw RosError(22) }
    for e in self.`vel` {
      try w.float64(e)
    }
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetDesiredVelxResponse {
    var v = Ros1Dsr_msgsGetDesiredVelxResponse()
    let count0 = 6
    v.`vel` = []
    v.`vel`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`vel`.append(try r.float64())
    }
    v.`success` = try r.boolean()
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
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_2d0e1a81d0a1b5cda2cc3c4a9a5e627878324c67a0843e8a47583d4d86c149c9"
  public static let nativeType = "dsr_msgs/GetDrlStateResponse"
  public static let nativeIdentity: String? = nil
  public var `drl_state`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`drl_state`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetDrlStateResponse {
    var v = Ros1Dsr_msgsGetDrlStateResponse()
    v.`drl_state` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
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
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_bdcda8b96e5a22a9143c70f5af6ea56deabe1c68fbf03eb176689c14cc2f50e4"
  public static let nativeType = "dsr_msgs/GetExternalTorqueResponse"
  public static let nativeIdentity: String? = nil
  public var `ext_torque`: [Double] = Array(repeating: 0, count: 6)
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`ext_torque`.count == 6 else { throw RosError(22) }
    for e in self.`ext_torque` {
      try w.float64(e)
    }
    try w.boolean(self.`success`)
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
    v.`success` = try r.boolean()
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
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_da41dbdbac4580eaab3ad355caaa9e0075b87894256722521303559c698b9962"
  public static let nativeType = "dsr_msgs/GetJointTorqueResponse"
  public static let nativeIdentity: String? = nil
  public var `jts`: [Double] = Array(repeating: 0, count: 6)
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`jts`.count == 6 else { throw RosError(22) }
    for e in self.`jts` {
      try w.float64(e)
    }
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetJointTorqueResponse {
    var v = Ros1Dsr_msgsGetJointTorqueResponse()
    let count0 = 6
    v.`jts` = []
    v.`jts`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`jts`.append(try r.float64())
    }
    v.`success` = try r.boolean()
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
  public static let maximumWireBytes = 793
  public static let codecIdentity =
    "UWVMROS1_477c434da50cd9b26e93b02ca9072542afc22b62084cf5a9eb785cd43cb4d61e"
  public static let nativeType = "dsr_msgs/GetLastAlarmResponse"
  public static let nativeIdentity: String? = nil
  public var `log_alarm`: Ros1Dsr_msgsLogAlarm = Ros1Dsr_msgsLogAlarm()
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`log_alarm`.write(to: &w)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetLastAlarmResponse {
    var v = Ros1Dsr_msgsGetLastAlarmResponse()
    v.`log_alarm` = try Ros1Dsr_msgsLogAlarm.read(from: &r)
    v.`success` = try r.boolean()
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
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_29360b7702eec80f1dd7915cc8bb58fb5126d93b545cb921b7eb9c3ffa0b49d5"
  public static let nativeType = "dsr_msgs/GetModbusInputResponse"
  public static let nativeIdentity: String? = nil
  public var `value`: Int32 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetModbusInputResponse {
    var v = Ros1Dsr_msgsGetModbusInputResponse()
    v.`value` = try r.integer(Int32.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetOrientationErrorRequest: Canonical {
  public static let maximumWireBytes = 97
  public static let codecIdentity =
    "UWVMROS1_db1e637c2f187602b5c3aaa2b3e33fb1b7636b28281832d393d3516984e9e01e"
  public static let nativeType = "dsr_msgs/GetOrientationErrorRequest"
  public static let nativeIdentity: String? = nil
  public var `xd`: [Double] = Array(repeating: 0, count: 6)
  public var `xc`: [Double] = Array(repeating: 0, count: 6)
  public var `axis`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`xd`.count == 6 else { throw RosError(22) }
    for e in self.`xd` {
      try w.float64(e)
    }
    guard self.`xc`.count == 6 else { throw RosError(22) }
    for e in self.`xc` {
      try w.float64(e)
    }
    try w.integer(self.`axis`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetOrientationErrorRequest
  {
    var v = Ros1Dsr_msgsGetOrientationErrorRequest()
    let count0 = 6
    v.`xd` = []
    v.`xd`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`xd`.append(try r.float64())
    }
    let count1 = 6
    v.`xc` = []
    v.`xc`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`xc`.append(try r.float64())
    }
    v.`axis` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetOrientationErrorResponse: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_909be18b65c95198ce5c5a7b2a11ae97cfad9509c360aec833bbfd239497b9e6"
  public static let nativeType = "dsr_msgs/GetOrientationErrorResponse"
  public static let nativeIdentity: String? = nil
  public var `ori_error`: Float = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`ori_error`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsGetOrientationErrorResponse
  {
    var v = Ros1Dsr_msgsGetOrientationErrorResponse()
    v.`ori_error` = try r.float32()
    v.`success` = try r.boolean()
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
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_559f9328cba413aa572f66818aace6061020777c2cbb6bea475adf3cbca1a88c"
  public static let nativeType = "dsr_msgs/GetRobotModeResponse"
  public static let nativeIdentity: String? = nil
  public var `robot_mode`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`robot_mode`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetRobotModeResponse {
    var v = Ros1Dsr_msgsGetRobotModeResponse()
    v.`robot_mode` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
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
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_eaef45ce098108c89a49b2ed3e0cfeba901d7a9e8e4fee86d7c646e181cfe3c4"
  public static let nativeType = "dsr_msgs/GetRobotSpeedModeResponse"
  public static let nativeIdentity: String? = nil
  public var `speed_mode`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`speed_mode`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetRobotSpeedModeResponse
  {
    var v = Ros1Dsr_msgsGetRobotSpeedModeResponse()
    v.`speed_mode` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
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
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_1e210aa1fd0a833b8d8dedbbda759f12b860c7cbe161f2bed50b41015451ba51"
  public static let nativeType = "dsr_msgs/GetRobotStateResponse"
  public static let nativeIdentity: String? = nil
  public var `robot_state`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`robot_state`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetRobotStateResponse {
    var v = Ros1Dsr_msgsGetRobotStateResponse()
    v.`robot_state` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
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
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_b7f7ec9a3e0bf607295bc5d0af1d82d192bc35103401c913c4ed8a8c77811c7f"
  public static let nativeType = "dsr_msgs/GetRobotSystemResponse"
  public static let nativeIdentity: String? = nil
  public var `robot_system`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`robot_system`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetRobotSystemResponse {
    var v = Ros1Dsr_msgsGetRobotSystemResponse()
    v.`robot_system` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetSolutionSpaceRequest: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_416c6623add6fed0900f585292905890932f326162a1431b481b28aac52c7bf3"
  public static let nativeType = "dsr_msgs/GetSolutionSpaceRequest"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetSolutionSpaceRequest {
    var v = Ros1Dsr_msgsGetSolutionSpaceRequest()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    return v
  }
}
public struct Ros1Dsr_msgsGetSolutionSpaceResponse: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_d6cf69fb571a6947cabc01a594e84d1eed7a581511e755db9dde5452f1230511"
  public static let nativeType = "dsr_msgs/GetSolutionSpaceResponse"
  public static let nativeIdentity: String? = nil
  public var `sol_space`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sol_space`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetSolutionSpaceResponse {
    var v = Ros1Dsr_msgsGetSolutionSpaceResponse()
    v.`sol_space` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
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
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_ba289ccf352c0560a70d99ec99a95c01b84ab7436f5638874ae4e1d89364a8b6"
  public static let nativeType = "dsr_msgs/GetToolDigitalInputResponse"
  public static let nativeIdentity: String? = nil
  public var `value`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsGetToolDigitalInputResponse
  {
    var v = Ros1Dsr_msgsGetToolDigitalInputResponse()
    v.`value` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetToolDigitalOutputRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_bfed701bd5b788685802e15709a594b065dff57f5c6706b14ad41bc6f80736ce"
  public static let nativeType = "dsr_msgs/GetToolDigitalOutputRequest"
  public static let nativeIdentity: String? = nil
  public var `index`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsGetToolDigitalOutputRequest
  {
    var v = Ros1Dsr_msgsGetToolDigitalOutputRequest()
    v.`index` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetToolDigitalOutputResponse: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_0873d83b7b79d0270af4d61d86fd77bb248a75ebfe91177e4acc9299c46a309d"
  public static let nativeType = "dsr_msgs/GetToolDigitalOutputResponse"
  public static let nativeIdentity: String? = nil
  public var `value`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsGetToolDigitalOutputResponse
  {
    var v = Ros1Dsr_msgsGetToolDigitalOutputResponse()
    v.`value` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetToolForceRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_2df77a1075113a1c8febd77c89e13417c596c6d1d4abd26454a4439620e397b4"
  public static let nativeType = "dsr_msgs/GetToolForceRequest"
  public static let nativeIdentity: String? = nil
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetToolForceRequest {
    var v = Ros1Dsr_msgsGetToolForceRequest()
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetToolForceResponse: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_11dfdda93d1818dbcb331bba86cf08815f24bb8adb34e70792a730ce27d95ed9"
  public static let nativeType = "dsr_msgs/GetToolForceResponse"
  public static let nativeIdentity: String? = nil
  public var `tool_force`: [Double] = Array(repeating: 0, count: 6)
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`tool_force`.count == 6 else { throw RosError(22) }
    for e in self.`tool_force` {
      try w.float64(e)
    }
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetToolForceResponse {
    var v = Ros1Dsr_msgsGetToolForceResponse()
    let count0 = 6
    v.`tool_force` = []
    v.`tool_force`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`tool_force`.append(try r.float64())
    }
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetUserCartCoordRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_07824b4c8403d59fad8e8a33c615fcf96a0556bd8de1c1639a16d3aa28db0637"
  public static let nativeType = "dsr_msgs/GetUserCartCoordRequest"
  public static let nativeIdentity: String? = nil
  public var `id`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetUserCartCoordRequest {
    var v = Ros1Dsr_msgsGetUserCartCoordRequest()
    v.`id` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsGetUserCartCoordResponse: Canonical {
  public static let maximumWireBytes = 50
  public static let codecIdentity =
    "UWVMROS1_2fea411082260a3dbaf3fb3f4c1314f74dda9fb864222fe5837e1d5f62502a22"
  public static let nativeType = "dsr_msgs/GetUserCartCoordResponse"
  public static let nativeIdentity: String? = nil
  public var `conv_posx`: [Double] = Array(repeating: 0, count: 6)
  public var `ref`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`conv_posx`.count == 6 else { throw RosError(22) }
    for e in self.`conv_posx` {
      try w.float64(e)
    }
    try w.integer(self.`ref`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetUserCartCoordResponse {
    var v = Ros1Dsr_msgsGetUserCartCoordResponse()
    let count0 = 6
    v.`conv_posx` = []
    v.`conv_posx`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`conv_posx`.append(try r.float64())
    }
    v.`ref` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsGetWorkpieceWeightRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_fa987920bd5c89882bd52b444bec319c5b83c3fdf6086c065c87e924d40890ec"
  public static let nativeType = "dsr_msgs/GetWorkpieceWeightRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetWorkpieceWeightRequest
  {
    var v = Ros1Dsr_msgsGetWorkpieceWeightRequest()
    return v
  }
}
public struct Ros1Dsr_msgsGetWorkpieceWeightResponse: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_687f2eaa565bbbb878ff0018ad4fa9bc1596316cbbb83c07df85df5cd81887ca"
  public static let nativeType = "dsr_msgs/GetWorkpieceWeightResponse"
  public static let nativeIdentity: String? = nil
  public var `weight`: Float = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`weight`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsGetWorkpieceWeightResponse
  {
    var v = Ros1Dsr_msgsGetWorkpieceWeightResponse()
    v.`weight` = try r.float32()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsIkinRequest: Canonical {
  public static let maximumWireBytes = 50
  public static let codecIdentity =
    "UWVMROS1_64192c8fc182151b11fe48b99d05e142994a0724cbde8572058378e843fe7f27"
  public static let nativeType = "dsr_msgs/IkinRequest"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `sol_space`: Int8 = 0
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
    try w.integer(self.`sol_space`)
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsIkinRequest {
    var v = Ros1Dsr_msgsIkinRequest()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    v.`sol_space` = try r.integer(Int8.self)
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsIkinResponse: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_fa64a9417d777219d7142d600391a80c0001464e3777174bef040ecd80df1e23"
  public static let nativeType = "dsr_msgs/IkinResponse"
  public static let nativeIdentity: String? = nil
  public var `conv_posj`: [Double] = Array(repeating: 0, count: 6)
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`conv_posj`.count == 6 else { throw RosError(22) }
    for e in self.`conv_posj` {
      try w.float64(e)
    }
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsIkinResponse {
    var v = Ros1Dsr_msgsIkinResponse()
    let count0 = 6
    v.`conv_posj` = []
    v.`conv_posj`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`conv_posj`.append(try r.float64())
    }
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsIsDoneBoltTighteningRequest: Canonical {
  public static let maximumWireBytes = 17
  public static let codecIdentity =
    "UWVMROS1_40ab245e2e736f9171f7ab55ff340717ef3f1ec89614730f4f9e3811ba6afa9e"
  public static let nativeType = "dsr_msgs/IsDoneBoltTighteningRequest"
  public static let nativeIdentity: String? = nil
  public var `m`: Double = 0
  public var `timeout`: Double = 0
  public var `axis`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`m`)
    try w.float64(self.`timeout`)
    try w.integer(self.`axis`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsIsDoneBoltTighteningRequest
  {
    var v = Ros1Dsr_msgsIsDoneBoltTighteningRequest()
    v.`m` = try r.float64()
    v.`timeout` = try r.float64()
    v.`axis` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsIsDoneBoltTighteningResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_86e7eb378e84a1feec9b2abfb3b8af889b9cf986c7455e0d74bb8832af6ff611"
  public static let nativeType = "dsr_msgs/IsDoneBoltTighteningResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsIsDoneBoltTighteningResponse
  {
    var v = Ros1Dsr_msgsIsDoneBoltTighteningResponse()
    v.`success` = try r.boolean()
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
public struct Ros1Dsr_msgsMoveHomeRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_99b3fe492438ffc71627412077f7b0ced950e0f6038722ecfb34191093e0308f"
  public static let nativeType = "dsr_msgs/MoveHomeRequest"
  public static let nativeIdentity: String? = nil
  public var `target`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`target`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveHomeRequest {
    var v = Ros1Dsr_msgsMoveHomeRequest()
    v.`target` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsMoveHomeResponse: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_9906457df2f7eccd40564fb7ba76fe7245ad943f20461bf23192cfbcba3a596f"
  public static let nativeType = "dsr_msgs/MoveHomeResponse"
  public static let nativeIdentity: String? = nil
  public var `res`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsMoveHomeResponse {
    var v = Ros1Dsr_msgsMoveHomeResponse()
    v.`res` = try r.integer(Int8.self)
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
  public static let maximumWireBytes = 2319
  public static let codecIdentity =
    "UWVMROS1_f5ccf9a5eade1a2f7f11c741c26e3b045fa11d81d8f03587e4a527b0256e2a8a"
  public static let nativeType = "dsr_msgs/MoveSplineJointRequest"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Ros1Std_msgsFloat64MultiArray] = []
  public var `posCnt`: Int8 = 0
  public var `vel`: [Double] = Array(repeating: 0, count: 6)
  public var `acc`: [Double] = Array(repeating: 0, count: 6)
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
    guard self.`vel`.count == 6 else { throw RosError(22) }
    for e in self.`vel` {
      try w.float64(e)
    }
    guard self.`acc`.count == 6 else { throw RosError(22) }
    for e in self.`acc` {
      try w.float64(e)
    }
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
    let count2 = 6
    v.`vel` = []
    v.`vel`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`vel`.append(try r.float64())
    }
    let count3 = 6
    v.`acc` = []
    v.`acc`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`acc`.append(try r.float64())
    }
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
public struct Ros1Dsr_msgsOverwriteUserCartCoordRequest: Canonical {
  public static let maximumWireBytes = 50
  public static let codecIdentity =
    "UWVMROS1_b89858cf40ee4ae756c90e048fb0cffd362dd2477ca23ba1172749353eb63721"
  public static let nativeType = "dsr_msgs/OverwriteUserCartCoordRequest"
  public static let nativeIdentity: String? = nil
  public var `id`: Int8 = 0
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsOverwriteUserCartCoordRequest
  {
    var v = Ros1Dsr_msgsOverwriteUserCartCoordRequest()
    v.`id` = try r.integer(Int8.self)
    let count1 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`pos`.append(try r.float64())
    }
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsOverwriteUserCartCoordResponse: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_953c73d75e0381b067612ea733d58faf95919f5f20f940b6827396fc9d363833"
  public static let nativeType = "dsr_msgs/OverwriteUserCartCoordResponse"
  public static let nativeIdentity: String? = nil
  public var `id`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsOverwriteUserCartCoordResponse
  {
    var v = Ros1Dsr_msgsOverwriteUserCartCoordResponse()
    v.`id` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsParallelAxis1Request: Canonical {
  public static let maximumWireBytes = 146
  public static let codecIdentity =
    "UWVMROS1_d032b8ab9d71b7f30b395c0f7ecf376e7ca056fa893479754780a90c8db7f7fe"
  public static let nativeType = "dsr_msgs/ParallelAxis1Request"
  public static let nativeIdentity: String? = nil
  public var `x1`: [Double] = Array(repeating: 0, count: 6)
  public var `x2`: [Double] = Array(repeating: 0, count: 6)
  public var `x3`: [Double] = Array(repeating: 0, count: 6)
  public var `axis`: Int8 = 0
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`x1`.count == 6 else { throw RosError(22) }
    for e in self.`x1` {
      try w.float64(e)
    }
    guard self.`x2`.count == 6 else { throw RosError(22) }
    for e in self.`x2` {
      try w.float64(e)
    }
    guard self.`x3`.count == 6 else { throw RosError(22) }
    for e in self.`x3` {
      try w.float64(e)
    }
    try w.integer(self.`axis`)
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsParallelAxis1Request {
    var v = Ros1Dsr_msgsParallelAxis1Request()
    let count0 = 6
    v.`x1` = []
    v.`x1`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`x1`.append(try r.float64())
    }
    let count1 = 6
    v.`x2` = []
    v.`x2`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`x2`.append(try r.float64())
    }
    let count2 = 6
    v.`x3` = []
    v.`x3`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`x3`.append(try r.float64())
    }
    v.`axis` = try r.integer(Int8.self)
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsParallelAxis1Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_f7ba09a96d450b53ef9b2fb77b6de6a6e760de65fc8dce42dcbc7dace8fef543"
  public static let nativeType = "dsr_msgs/ParallelAxis1Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsParallelAxis1Response {
    var v = Ros1Dsr_msgsParallelAxis1Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsParallelAxis2Request: Canonical {
  public static let maximumWireBytes = 26
  public static let codecIdentity =
    "UWVMROS1_11dcf871306958211993961d60c607836696edf5c825bb7a109ec5efd885f191"
  public static let nativeType = "dsr_msgs/ParallelAxis2Request"
  public static let nativeIdentity: String? = nil
  public var `vect`: [Double] = Array(repeating: 0, count: 3)
  public var `axis`: Int8 = 0
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`vect`.count == 3 else { throw RosError(22) }
    for e in self.`vect` {
      try w.float64(e)
    }
    try w.integer(self.`axis`)
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsParallelAxis2Request {
    var v = Ros1Dsr_msgsParallelAxis2Request()
    let count0 = 3
    v.`vect` = []
    v.`vect`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`vect`.append(try r.float64())
    }
    v.`axis` = try r.integer(Int8.self)
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsParallelAxis2Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_41ca262ffdbabdde6ee4bbb0521813cc08cb56a86eb59335be8af82aa5d629c4"
  public static let nativeType = "dsr_msgs/ParallelAxis2Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsParallelAxis2Response {
    var v = Ros1Dsr_msgsParallelAxis2Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsReleaseComplianceCtrlRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_963f201a73d6cb461e28bf94dc6223bf0c8e603adb96142cde94a764349ccdd2"
  public static let nativeType = "dsr_msgs/ReleaseComplianceCtrlRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsReleaseComplianceCtrlRequest
  {
    var v = Ros1Dsr_msgsReleaseComplianceCtrlRequest()
    return v
  }
}
public struct Ros1Dsr_msgsReleaseComplianceCtrlResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_5c5e9252fd9e8c346e8317f600fa46eb18c8e53be3447eddf3fb5f474a44682d"
  public static let nativeType = "dsr_msgs/ReleaseComplianceCtrlResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsReleaseComplianceCtrlResponse
  {
    var v = Ros1Dsr_msgsReleaseComplianceCtrlResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsReleaseForceRequest: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_5809993bacca15147eaf819181a6c1d187512d169539b6125e112b56bc0d2bc2"
  public static let nativeType = "dsr_msgs/ReleaseForceRequest"
  public static let nativeIdentity: String? = nil
  public var `time`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`time`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsReleaseForceRequest {
    var v = Ros1Dsr_msgsReleaseForceRequest()
    v.`time` = try r.float64()
    return v
  }
}
public struct Ros1Dsr_msgsReleaseForceResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_59e8fed1895c6e1664d689126a2df57918728f4006b20e50c1bc0055e76cc2d5"
  public static let nativeType = "dsr_msgs/ReleaseForceResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsReleaseForceResponse {
    var v = Ros1Dsr_msgsReleaseForceResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsResetWorkpieceWeightRequest: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_b2cf228390cc1aa473c6e1a9025d7ea7e789acb3f7dd6a0a4178402b6d843ed6"
  public static let nativeType = "dsr_msgs/ResetWorkpieceWeightRequest"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsResetWorkpieceWeightRequest
  {
    var v = Ros1Dsr_msgsResetWorkpieceWeightRequest()
    return v
  }
}
public struct Ros1Dsr_msgsResetWorkpieceWeightResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_f11776348fcebca43e64f7a635e2a080642a29c32762704029bd1429055cc025"
  public static let nativeType = "dsr_msgs/ResetWorkpieceWeightResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsResetWorkpieceWeightResponse
  {
    var v = Ros1Dsr_msgsResetWorkpieceWeightResponse()
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
  public static let maximumWireBytes = 17004
  public static let codecIdentity =
    "UWVMROS1_3f34278ee2cdceff51b3bb665ce314cc4a0d4e164b110969102a04c96e374456"
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
  public var `current_tool_posx`: [Double] = Array(repeating: 0, count: 6)
  public var `current_velx`: [Double] = Array(repeating: 0, count: 6)
  public var `task_err`: [Double] = Array(repeating: 0, count: 6)
  public var `target_velx`: [Double] = Array(repeating: 0, count: 6)
  public var `target_posx`: [Double] = Array(repeating: 0, count: 6)
  public var `dynamic_tor`: [Double] = Array(repeating: 0, count: 6)
  public var `actual_jts`: [Double] = Array(repeating: 0, count: 6)
  public var `actual_ejt`: [Double] = Array(repeating: 0, count: 6)
  public var `actual_ett`: [Double] = Array(repeating: 0, count: 6)
  public var `actual_bk`: [Int8] = Array(repeating: 0, count: 6)
  public var `actual_mc`: [Double] = Array(repeating: 0, count: 6)
  public var `actual_mt`: [Double] = Array(repeating: 0, count: 6)
  public var `solution_space`: Int8 = 0
  public var `sync_time`: Double = 0
  public var `actual_bt`: [Int8] = Array(repeating: 0, count: 5)
  public var `rotation_matrix`: [Ros1Std_msgsFloat64MultiArray] = []
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
  public var `fActualW2B`: [Double] = Array(repeating: 0, count: 6)
  public var `fCurrentPosW`: [Ros1Std_msgsFloat64MultiArray] = []
  public var `fCurrentVelW`: [Double] = Array(repeating: 0, count: 6)
  public var `fWorldETT`: [Double] = Array(repeating: 0, count: 6)
  public var `fTargetPosW`: [Double] = Array(repeating: 0, count: 6)
  public var `fTargetVelW`: [Double] = Array(repeating: 0, count: 6)
  public var `fRotationMatrixWorld`: [Ros1Std_msgsFloat64MultiArray] = []
  public var `iActualUCN`: Int8 = 0
  public var `iParent`: Int8 = 0
  public var `fCurrentPosU`: [Ros1Std_msgsFloat64MultiArray] = []
  public var `fCurrentVelU`: [Double] = Array(repeating: 0, count: 6)
  public var `fUserETT`: [Double] = Array(repeating: 0, count: 6)
  public var `fTargetPosU`: [Double] = Array(repeating: 0, count: 6)
  public var `fTargetVelU`: [Double] = Array(repeating: 0, count: 6)
  public var `fRotationMatrixUser`: [Ros1Std_msgsFloat64MultiArray] = []
  public var `fActualAI`: [Double] = Array(repeating: 0, count: 6)
  public var `bActualSW`: [Bool] = Array(repeating: false, count: 3)
  public var `bActualSI`: [Bool] = Array(repeating: false, count: 2)
  public var `iActualAT`: [Int8] = Array(repeating: 0, count: 2)
  public var `fTargetAO`: [Double] = Array(repeating: 0, count: 2)
  public var `iTargetAT`: [Int8] = Array(repeating: 0, count: 2)
  public var `bActualES`: [Bool] = Array(repeating: false, count: 2)
  public var `iActualED`: [Int8] = Array(repeating: 0, count: 2)
  public var `bActualER`: [Bool] = Array(repeating: false, count: 2)
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
    guard self.`current_tool_posx`.count == 6 else { throw RosError(22) }
    for e in self.`current_tool_posx` {
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
    guard self.`actual_bk`.count == 6 else { throw RosError(22) }
    for e in self.`actual_bk` {
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
    try w.integer(self.`solution_space`)
    try w.float64(self.`sync_time`)
    guard self.`actual_bt`.count == 5 else { throw RosError(22) }
    for e in self.`actual_bt` {
      try w.integer(e)
    }
    guard self.`rotation_matrix`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`rotation_matrix`.count))
    for e in self.`rotation_matrix` {
      try e.write(to: &w)
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
    guard self.`fActualW2B`.count == 6 else { throw RosError(22) }
    for e in self.`fActualW2B` {
      try w.float64(e)
    }
    guard self.`fCurrentPosW`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`fCurrentPosW`.count))
    for e in self.`fCurrentPosW` {
      try e.write(to: &w)
    }
    guard self.`fCurrentVelW`.count == 6 else { throw RosError(22) }
    for e in self.`fCurrentVelW` {
      try w.float64(e)
    }
    guard self.`fWorldETT`.count == 6 else { throw RosError(22) }
    for e in self.`fWorldETT` {
      try w.float64(e)
    }
    guard self.`fTargetPosW`.count == 6 else { throw RosError(22) }
    for e in self.`fTargetPosW` {
      try w.float64(e)
    }
    guard self.`fTargetVelW`.count == 6 else { throw RosError(22) }
    for e in self.`fTargetVelW` {
      try w.float64(e)
    }
    guard self.`fRotationMatrixWorld`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`fRotationMatrixWorld`.count))
    for e in self.`fRotationMatrixWorld` {
      try e.write(to: &w)
    }
    try w.integer(self.`iActualUCN`)
    try w.integer(self.`iParent`)
    guard self.`fCurrentPosU`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`fCurrentPosU`.count))
    for e in self.`fCurrentPosU` {
      try e.write(to: &w)
    }
    guard self.`fCurrentVelU`.count == 6 else { throw RosError(22) }
    for e in self.`fCurrentVelU` {
      try w.float64(e)
    }
    guard self.`fUserETT`.count == 6 else { throw RosError(22) }
    for e in self.`fUserETT` {
      try w.float64(e)
    }
    guard self.`fTargetPosU`.count == 6 else { throw RosError(22) }
    for e in self.`fTargetPosU` {
      try w.float64(e)
    }
    guard self.`fTargetVelU`.count == 6 else { throw RosError(22) }
    for e in self.`fTargetVelU` {
      try w.float64(e)
    }
    guard self.`fRotationMatrixUser`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`fRotationMatrixUser`.count))
    for e in self.`fRotationMatrixUser` {
      try e.write(to: &w)
    }
    guard self.`fActualAI`.count == 6 else { throw RosError(22) }
    for e in self.`fActualAI` {
      try w.float64(e)
    }
    guard self.`bActualSW`.count == 3 else { throw RosError(22) }
    for e in self.`bActualSW` {
      try w.boolean(e)
    }
    guard self.`bActualSI`.count == 2 else { throw RosError(22) }
    for e in self.`bActualSI` {
      try w.boolean(e)
    }
    guard self.`iActualAT`.count == 2 else { throw RosError(22) }
    for e in self.`iActualAT` {
      try w.integer(e)
    }
    guard self.`fTargetAO`.count == 2 else { throw RosError(22) }
    for e in self.`fTargetAO` {
      try w.float64(e)
    }
    guard self.`iTargetAT`.count == 2 else { throw RosError(22) }
    for e in self.`iTargetAT` {
      try w.integer(e)
    }
    guard self.`bActualES`.count == 2 else { throw RosError(22) }
    for e in self.`bActualES` {
      try w.boolean(e)
    }
    guard self.`iActualED`.count == 2 else { throw RosError(22) }
    for e in self.`iActualED` {
      try w.integer(e)
    }
    guard self.`bActualER`.count == 2 else { throw RosError(22) }
    for e in self.`bActualER` {
      try w.boolean(e)
    }
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
    v.`current_tool_posx` = []
    v.`current_tool_posx`.reserveCapacity(count11)
    for _ in 0..<count11 {
      v.`current_tool_posx`.append(try r.float64())
    }
    let count12 = 6
    v.`current_velx` = []
    v.`current_velx`.reserveCapacity(count12)
    for _ in 0..<count12 {
      v.`current_velx`.append(try r.float64())
    }
    let count13 = 6
    v.`task_err` = []
    v.`task_err`.reserveCapacity(count13)
    for _ in 0..<count13 {
      v.`task_err`.append(try r.float64())
    }
    let count14 = 6
    v.`target_velx` = []
    v.`target_velx`.reserveCapacity(count14)
    for _ in 0..<count14 {
      v.`target_velx`.append(try r.float64())
    }
    let count15 = 6
    v.`target_posx` = []
    v.`target_posx`.reserveCapacity(count15)
    for _ in 0..<count15 {
      v.`target_posx`.append(try r.float64())
    }
    let count16 = 6
    v.`dynamic_tor` = []
    v.`dynamic_tor`.reserveCapacity(count16)
    for _ in 0..<count16 {
      v.`dynamic_tor`.append(try r.float64())
    }
    let count17 = 6
    v.`actual_jts` = []
    v.`actual_jts`.reserveCapacity(count17)
    for _ in 0..<count17 {
      v.`actual_jts`.append(try r.float64())
    }
    let count18 = 6
    v.`actual_ejt` = []
    v.`actual_ejt`.reserveCapacity(count18)
    for _ in 0..<count18 {
      v.`actual_ejt`.append(try r.float64())
    }
    let count19 = 6
    v.`actual_ett` = []
    v.`actual_ett`.reserveCapacity(count19)
    for _ in 0..<count19 {
      v.`actual_ett`.append(try r.float64())
    }
    let count20 = 6
    v.`actual_bk` = []
    v.`actual_bk`.reserveCapacity(count20)
    for _ in 0..<count20 {
      v.`actual_bk`.append(try r.integer(Int8.self))
    }
    let count21 = 6
    v.`actual_mc` = []
    v.`actual_mc`.reserveCapacity(count21)
    for _ in 0..<count21 {
      v.`actual_mc`.append(try r.float64())
    }
    let count22 = 6
    v.`actual_mt` = []
    v.`actual_mt`.reserveCapacity(count22)
    for _ in 0..<count22 {
      v.`actual_mt`.append(try r.float64())
    }
    v.`solution_space` = try r.integer(Int8.self)
    v.`sync_time` = try r.float64()
    let count25 = 5
    v.`actual_bt` = []
    v.`actual_bt`.reserveCapacity(count25)
    for _ in 0..<count25 {
      v.`actual_bt`.append(try r.integer(Int8.self))
    }
    let rawcount26 = try r.integer(UInt32.self)
    guard rawcount26 <= 6 else { throw RosError(22) }
    let count26 = Int(rawcount26)
    v.`rotation_matrix` = []
    v.`rotation_matrix`.reserveCapacity(count26)
    for _ in 0..<count26 {
      v.`rotation_matrix`.append(try Ros1Std_msgsFloat64MultiArray.read(from: &r))
    }
    let count27 = 16
    v.`ctrlbox_digital_input` = []
    v.`ctrlbox_digital_input`.reserveCapacity(count27)
    for _ in 0..<count27 {
      v.`ctrlbox_digital_input`.append(try r.integer(Int8.self))
    }
    let count28 = 16
    v.`ctrlbox_digital_output` = []
    v.`ctrlbox_digital_output`.reserveCapacity(count28)
    for _ in 0..<count28 {
      v.`ctrlbox_digital_output`.append(try r.integer(Int8.self))
    }
    let count29 = 6
    v.`flange_digital_input` = []
    v.`flange_digital_input`.reserveCapacity(count29)
    for _ in 0..<count29 {
      v.`flange_digital_input`.append(try r.integer(Int8.self))
    }
    let count30 = 6
    v.`flange_digital_output` = []
    v.`flange_digital_output`.reserveCapacity(count30)
    for _ in 0..<count30 {
      v.`flange_digital_output`.append(try r.integer(Int8.self))
    }
    let rawcount31 = try r.integer(UInt32.self)
    guard rawcount31 <= 16 else { throw RosError(22) }
    let count31 = Int(rawcount31)
    v.`modbus_state` = []
    v.`modbus_state`.reserveCapacity(count31)
    for _ in 0..<count31 {
      v.`modbus_state`.append(try Ros1Dsr_msgsModbusState.read(from: &r))
    }
    v.`access_control` = try r.integer(Int32.self)
    v.`homming_completed` = try r.boolean()
    v.`tp_initialized` = try r.boolean()
    v.`mastering_need` = try r.integer(Int8.self)
    v.`drl_stopped` = try r.boolean()
    v.`disconnected` = try r.boolean()
    let count38 = 6
    v.`fActualW2B` = []
    v.`fActualW2B`.reserveCapacity(count38)
    for _ in 0..<count38 {
      v.`fActualW2B`.append(try r.float64())
    }
    let rawcount39 = try r.integer(UInt32.self)
    guard rawcount39 <= 6 else { throw RosError(22) }
    let count39 = Int(rawcount39)
    v.`fCurrentPosW` = []
    v.`fCurrentPosW`.reserveCapacity(count39)
    for _ in 0..<count39 {
      v.`fCurrentPosW`.append(try Ros1Std_msgsFloat64MultiArray.read(from: &r))
    }
    let count40 = 6
    v.`fCurrentVelW` = []
    v.`fCurrentVelW`.reserveCapacity(count40)
    for _ in 0..<count40 {
      v.`fCurrentVelW`.append(try r.float64())
    }
    let count41 = 6
    v.`fWorldETT` = []
    v.`fWorldETT`.reserveCapacity(count41)
    for _ in 0..<count41 {
      v.`fWorldETT`.append(try r.float64())
    }
    let count42 = 6
    v.`fTargetPosW` = []
    v.`fTargetPosW`.reserveCapacity(count42)
    for _ in 0..<count42 {
      v.`fTargetPosW`.append(try r.float64())
    }
    let count43 = 6
    v.`fTargetVelW` = []
    v.`fTargetVelW`.reserveCapacity(count43)
    for _ in 0..<count43 {
      v.`fTargetVelW`.append(try r.float64())
    }
    let rawcount44 = try r.integer(UInt32.self)
    guard rawcount44 <= 6 else { throw RosError(22) }
    let count44 = Int(rawcount44)
    v.`fRotationMatrixWorld` = []
    v.`fRotationMatrixWorld`.reserveCapacity(count44)
    for _ in 0..<count44 {
      v.`fRotationMatrixWorld`.append(try Ros1Std_msgsFloat64MultiArray.read(from: &r))
    }
    v.`iActualUCN` = try r.integer(Int8.self)
    v.`iParent` = try r.integer(Int8.self)
    let rawcount47 = try r.integer(UInt32.self)
    guard rawcount47 <= 6 else { throw RosError(22) }
    let count47 = Int(rawcount47)
    v.`fCurrentPosU` = []
    v.`fCurrentPosU`.reserveCapacity(count47)
    for _ in 0..<count47 {
      v.`fCurrentPosU`.append(try Ros1Std_msgsFloat64MultiArray.read(from: &r))
    }
    let count48 = 6
    v.`fCurrentVelU` = []
    v.`fCurrentVelU`.reserveCapacity(count48)
    for _ in 0..<count48 {
      v.`fCurrentVelU`.append(try r.float64())
    }
    let count49 = 6
    v.`fUserETT` = []
    v.`fUserETT`.reserveCapacity(count49)
    for _ in 0..<count49 {
      v.`fUserETT`.append(try r.float64())
    }
    let count50 = 6
    v.`fTargetPosU` = []
    v.`fTargetPosU`.reserveCapacity(count50)
    for _ in 0..<count50 {
      v.`fTargetPosU`.append(try r.float64())
    }
    let count51 = 6
    v.`fTargetVelU` = []
    v.`fTargetVelU`.reserveCapacity(count51)
    for _ in 0..<count51 {
      v.`fTargetVelU`.append(try r.float64())
    }
    let rawcount52 = try r.integer(UInt32.self)
    guard rawcount52 <= 6 else { throw RosError(22) }
    let count52 = Int(rawcount52)
    v.`fRotationMatrixUser` = []
    v.`fRotationMatrixUser`.reserveCapacity(count52)
    for _ in 0..<count52 {
      v.`fRotationMatrixUser`.append(try Ros1Std_msgsFloat64MultiArray.read(from: &r))
    }
    let count53 = 6
    v.`fActualAI` = []
    v.`fActualAI`.reserveCapacity(count53)
    for _ in 0..<count53 {
      v.`fActualAI`.append(try r.float64())
    }
    let count54 = 3
    v.`bActualSW` = []
    v.`bActualSW`.reserveCapacity(count54)
    for _ in 0..<count54 {
      v.`bActualSW`.append(try r.boolean())
    }
    let count55 = 2
    v.`bActualSI` = []
    v.`bActualSI`.reserveCapacity(count55)
    for _ in 0..<count55 {
      v.`bActualSI`.append(try r.boolean())
    }
    let count56 = 2
    v.`iActualAT` = []
    v.`iActualAT`.reserveCapacity(count56)
    for _ in 0..<count56 {
      v.`iActualAT`.append(try r.integer(Int8.self))
    }
    let count57 = 2
    v.`fTargetAO` = []
    v.`fTargetAO`.reserveCapacity(count57)
    for _ in 0..<count57 {
      v.`fTargetAO`.append(try r.float64())
    }
    let count58 = 2
    v.`iTargetAT` = []
    v.`iTargetAT`.reserveCapacity(count58)
    for _ in 0..<count58 {
      v.`iTargetAT`.append(try r.integer(Int8.self))
    }
    let count59 = 2
    v.`bActualES` = []
    v.`bActualES`.reserveCapacity(count59)
    for _ in 0..<count59 {
      v.`bActualES`.append(try r.boolean())
    }
    let count60 = 2
    v.`iActualED` = []
    v.`iActualED`.reserveCapacity(count60)
    for _ in 0..<count60 {
      v.`iActualED`.append(try r.integer(Int8.self))
    }
    let count61 = 2
    v.`bActualER` = []
    v.`bActualER`.reserveCapacity(count61)
    for _ in 0..<count61 {
      v.`bActualER`.append(try r.boolean())
    }
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
public struct Ros1Dsr_msgsSetDesiredForceRequest: Canonical {
  public static let maximumWireBytes = 64
  public static let codecIdentity =
    "UWVMROS1_1020073d308553e7eb01e3fdd76a8a29cd169131d95516ae8c07a54b29f01b1a"
  public static let nativeType = "dsr_msgs/SetDesiredForceRequest"
  public static let nativeIdentity: String? = nil
  public var `fd`: [Double] = Array(repeating: 0, count: 6)
  public var `dir`: [Int8] = Array(repeating: 0, count: 6)
  public var `ref`: Int8 = 0
  public var `time`: Double = 0
  public var `mod`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`fd`.count == 6 else { throw RosError(22) }
    for e in self.`fd` {
      try w.float64(e)
    }
    guard self.`dir`.count == 6 else { throw RosError(22) }
    for e in self.`dir` {
      try w.integer(e)
    }
    try w.integer(self.`ref`)
    try w.float64(self.`time`)
    try w.integer(self.`mod`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetDesiredForceRequest {
    var v = Ros1Dsr_msgsSetDesiredForceRequest()
    let count0 = 6
    v.`fd` = []
    v.`fd`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`fd`.append(try r.float64())
    }
    let count1 = 6
    v.`dir` = []
    v.`dir`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`dir`.append(try r.integer(Int8.self))
    }
    v.`ref` = try r.integer(Int8.self)
    v.`time` = try r.float64()
    v.`mod` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsSetDesiredForceResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_fb07701ce7c215300e155c1d46e345f6467fe43bba3fc71bed94943459ce1928"
  public static let nativeType = "dsr_msgs/SetDesiredForceResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetDesiredForceResponse {
    var v = Ros1Dsr_msgsSetDesiredForceResponse()
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
public struct Ros1Dsr_msgsSetRefCoordRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_269accc3ced8dd5c86b93c8a412301e47f0084be7f5294d19866868eb5858144"
  public static let nativeType = "dsr_msgs/SetRefCoordRequest"
  public static let nativeIdentity: String? = nil
  public var `coord`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`coord`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetRefCoordRequest {
    var v = Ros1Dsr_msgsSetRefCoordRequest()
    v.`coord` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsSetRefCoordResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d33d88ff3985821ce2b9773f2d80ebf3394d89647e760dea55b9303c9e3b3562"
  public static let nativeType = "dsr_msgs/SetRefCoordResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetRefCoordResponse {
    var v = Ros1Dsr_msgsSetRefCoordResponse()
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
public struct Ros1Dsr_msgsSetSingularityHandlingRequest: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_44dd4695620a3cf3f95504b73ad6978c9073ab3703f73f4a6449c7763f31cb7b"
  public static let nativeType = "dsr_msgs/SetSingularityHandlingRequest"
  public static let nativeIdentity: String? = nil
  public var `mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsSetSingularityHandlingRequest
  {
    var v = Ros1Dsr_msgsSetSingularityHandlingRequest()
    v.`mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsSetSingularityHandlingResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_a022bf9d809ac39a4dfe0487fdbc83f3b4ef81f179a6b3dd7d8fb1854aba1aa2"
  public static let nativeType = "dsr_msgs/SetSingularityHandlingResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros1Dsr_msgsSetSingularityHandlingResponse
  {
    var v = Ros1Dsr_msgsSetSingularityHandlingResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsSetStiffnessxRequest: Canonical {
  public static let maximumWireBytes = 57
  public static let codecIdentity =
    "UWVMROS1_7cf0721d0f9cd45422a4277a63834f75572ead2833ca4100752d51abc2b4e3d3"
  public static let nativeType = "dsr_msgs/SetStiffnessxRequest"
  public static let nativeIdentity: String? = nil
  public var `stx`: [Double] = Array(repeating: 0, count: 6)
  public var `ref`: Int8 = 0
  public var `time`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`stx`.count == 6 else { throw RosError(22) }
    for e in self.`stx` {
      try w.float64(e)
    }
    try w.integer(self.`ref`)
    try w.float64(self.`time`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetStiffnessxRequest {
    var v = Ros1Dsr_msgsSetStiffnessxRequest()
    let count0 = 6
    v.`stx` = []
    v.`stx`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`stx`.append(try r.float64())
    }
    v.`ref` = try r.integer(Int8.self)
    v.`time` = try r.float64()
    return v
  }
}
public struct Ros1Dsr_msgsSetStiffnessxResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_41ae59cb41184a6c167db14ac58ef80966c500fb31417b21900e42d1cb9a4549"
  public static let nativeType = "dsr_msgs/SetStiffnessxResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetStiffnessxResponse {
    var v = Ros1Dsr_msgsSetStiffnessxResponse()
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
public struct Ros1Dsr_msgsSetToolShapeRequest: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_1eb4f1d4e9fea4e9f5324fc50acd744365940912055fbc359ecc4748b1ddeeea"
  public static let nativeType = "dsr_msgs/SetToolShapeRequest"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetToolShapeRequest {
    var v = Ros1Dsr_msgsSetToolShapeRequest()
    v.`name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros1Dsr_msgsSetToolShapeResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_7d18f475fd4230c7f15ddc10401373d296cfaef1d525a26e983cda4c8b2b5e70"
  public static let nativeType = "dsr_msgs/SetToolShapeResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetToolShapeResponse {
    var v = Ros1Dsr_msgsSetToolShapeResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsSetUserCartCoord1Request: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_f54a10c9fd4687670111ba2b3d0a6bceea638fc71da62d59b81a01c59dd457b3"
  public static let nativeType = "dsr_msgs/SetUserCartCoord1Request"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetUserCartCoord1Request {
    var v = Ros1Dsr_msgsSetUserCartCoord1Request()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsSetUserCartCoord1Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_c8749fa152e4396e977e110a901dfc791a26b54d1f282752039a20c0c4531f53"
  public static let nativeType = "dsr_msgs/SetUserCartCoord1Response"
  public static let nativeIdentity: String? = nil
  public var `id`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetUserCartCoord1Response
  {
    var v = Ros1Dsr_msgsSetUserCartCoord1Response()
    v.`id` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsSetUserCartCoord2Request: Canonical {
  public static let maximumWireBytes = 193
  public static let codecIdentity =
    "UWVMROS1_581a8164d6593be7422364300fabd854bc3b438726a3182cd388be5c629dc235"
  public static let nativeType = "dsr_msgs/SetUserCartCoord2Request"
  public static let nativeIdentity: String? = nil
  public var `x1`: [Double] = Array(repeating: 0, count: 6)
  public var `x2`: [Double] = Array(repeating: 0, count: 6)
  public var `x3`: [Double] = Array(repeating: 0, count: 6)
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`x1`.count == 6 else { throw RosError(22) }
    for e in self.`x1` {
      try w.float64(e)
    }
    guard self.`x2`.count == 6 else { throw RosError(22) }
    for e in self.`x2` {
      try w.float64(e)
    }
    guard self.`x3`.count == 6 else { throw RosError(22) }
    for e in self.`x3` {
      try w.float64(e)
    }
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetUserCartCoord2Request {
    var v = Ros1Dsr_msgsSetUserCartCoord2Request()
    let count0 = 6
    v.`x1` = []
    v.`x1`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`x1`.append(try r.float64())
    }
    let count1 = 6
    v.`x2` = []
    v.`x2`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`x2`.append(try r.float64())
    }
    let count2 = 6
    v.`x3` = []
    v.`x3`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`x3`.append(try r.float64())
    }
    let count3 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`pos`.append(try r.float64())
    }
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsSetUserCartCoord2Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_01ce185d3b4585bfdb9187c7b3cf628874da91fdd8c289a5b72d7bcb0e84880d"
  public static let nativeType = "dsr_msgs/SetUserCartCoord2Response"
  public static let nativeIdentity: String? = nil
  public var `id`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetUserCartCoord2Response
  {
    var v = Ros1Dsr_msgsSetUserCartCoord2Response()
    v.`id` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsSetUserCartCoord3Request: Canonical {
  public static let maximumWireBytes = 97
  public static let codecIdentity =
    "UWVMROS1_a8a9aa12ff690f1a26223248b0c84537b7fe23ffa0af33be0ef0c99092f78c3c"
  public static let nativeType = "dsr_msgs/SetUserCartCoord3Request"
  public static let nativeIdentity: String? = nil
  public var `u1`: [Double] = Array(repeating: 0, count: 3)
  public var `v1`: [Double] = Array(repeating: 0, count: 3)
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`u1`.count == 3 else { throw RosError(22) }
    for e in self.`u1` {
      try w.float64(e)
    }
    guard self.`v1`.count == 3 else { throw RosError(22) }
    for e in self.`v1` {
      try w.float64(e)
    }
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetUserCartCoord3Request {
    var v = Ros1Dsr_msgsSetUserCartCoord3Request()
    let count0 = 3
    v.`u1` = []
    v.`u1`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`u1`.append(try r.float64())
    }
    let count1 = 3
    v.`v1` = []
    v.`v1`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`v1`.append(try r.float64())
    }
    let count2 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`pos`.append(try r.float64())
    }
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsSetUserCartCoord3Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_9409ea43f5b28fc6aa7c1089c69e828edda3440a50e1c35b5f8b8ca600d11fd1"
  public static let nativeType = "dsr_msgs/SetUserCartCoord3Response"
  public static let nativeIdentity: String? = nil
  public var `id`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsSetUserCartCoord3Response
  {
    var v = Ros1Dsr_msgsSetUserCartCoord3Response()
    v.`id` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsTaskComplianceCtrlRequest: Canonical {
  public static let maximumWireBytes = 57
  public static let codecIdentity =
    "UWVMROS1_05fa479a787001504e982b77fd61e6a3e6bb2a7cbc34ff900fa12634d8842671"
  public static let nativeType = "dsr_msgs/TaskComplianceCtrlRequest"
  public static let nativeIdentity: String? = nil
  public var `stx`: [Double] = Array(repeating: 0, count: 6)
  public var `ref`: Int8 = 0
  public var `time`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`stx`.count == 6 else { throw RosError(22) }
    for e in self.`stx` {
      try w.float64(e)
    }
    try w.integer(self.`ref`)
    try w.float64(self.`time`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsTaskComplianceCtrlRequest
  {
    var v = Ros1Dsr_msgsTaskComplianceCtrlRequest()
    let count0 = 6
    v.`stx` = []
    v.`stx`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`stx`.append(try r.float64())
    }
    v.`ref` = try r.integer(Int8.self)
    v.`time` = try r.float64()
    return v
  }
}
public struct Ros1Dsr_msgsTaskComplianceCtrlResponse: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_29c513521ec8c6ac5c39bf1cb12d8db19a025a2036fb0398633b544d53c39625"
  public static let nativeType = "dsr_msgs/TaskComplianceCtrlResponse"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsTaskComplianceCtrlResponse
  {
    var v = Ros1Dsr_msgsTaskComplianceCtrlResponse()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros1Dsr_msgsTransRequest: Canonical {
  public static let maximumWireBytes = 98
  public static let codecIdentity =
    "UWVMROS1_6724ac7a62b77d6d6e52145306c4ac5a0e05221a636fb5cd0048e185ddcee273"
  public static let nativeType = "dsr_msgs/TransRequest"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `delta`: [Double] = Array(repeating: 0, count: 6)
  public var `ref`: Int8 = 0
  public var `ref_out`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
    guard self.`delta`.count == 6 else { throw RosError(22) }
    for e in self.`delta` {
      try w.float64(e)
    }
    try w.integer(self.`ref`)
    try w.integer(self.`ref_out`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsTransRequest {
    var v = Ros1Dsr_msgsTransRequest()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    let count1 = 6
    v.`delta` = []
    v.`delta`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`delta`.append(try r.float64())
    }
    v.`ref` = try r.integer(Int8.self)
    v.`ref_out` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros1Dsr_msgsTransResponse: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_a36593de3d68fc991b3cf230f98c28f1f1d9fa0fc72e3160a5f005d9cb6105e5"
  public static let nativeType = "dsr_msgs/TransResponse"
  public static let nativeIdentity: String? = nil
  public var `trans_pos`: [Double] = Array(repeating: 0, count: 6)
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`trans_pos`.count == 6 else { throw RosError(22) }
    for e in self.`trans_pos` {
      try w.float64(e)
    }
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros1Dsr_msgsTransResponse {
    var v = Ros1Dsr_msgsTransResponse()
    let count0 = 6
    v.`trans_pos` = []
    v.`trans_pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`trans_pos`.append(try r.float64())
    }
    v.`success` = try r.boolean()
    return v
  }
}
