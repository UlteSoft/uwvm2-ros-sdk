// @file Records.swift
// @brief Represent complete typed values and their bounded wire layout for nvidia-groot.
// @details Field widths, defaults and sequence limits follow the selected catalog. Keep backing storage alive
// while borrowed values are in use; preserve all decode failures before invoking a ROS operation.

// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros2Uwvm_groot_bridgeMsgRGBFrame: Canonical {
  public static let maximumWireBytes = 860
  public static let codecIdentity =
    "UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364"
  public static let nativeType = "uwvm_groot_bridge/msg/RGBFrame"
  public static let nativeIdentity: String? = nil
  public var `key`: String = ""
  public var `shape`: [UInt32] = Array(repeating: 0, count: 5)
  public var `pixels`: [UInt8] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`key`, bound: 64)
    guard self.`shape`.count == 5 else { throw RosError(22) }
    for e in self.`shape` {
      try w.integer(e)
    }
    guard self.`pixels`.count <= 768 else { throw RosError(22) }
    try w.integer(UInt32(self.`pixels`.count))
    for e in self.`pixels` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Uwvm_groot_bridgeMsgRGBFrame {
    var v = Ros2Uwvm_groot_bridgeMsgRGBFrame()
    v.`key` = try r.string(bound: 64)
    let count1 = 5
    v.`shape` = []
    v.`shape`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`shape`.append(try r.integer(UInt32.self))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 768 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`pixels` = []
    v.`pixels`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`pixels`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros2Uwvm_groot_bridgeMsgFloatTensor: Canonical {
  public static let maximumWireBytes = 1364
  public static let codecIdentity =
    "UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae"
  public static let nativeType = "uwvm_groot_bridge/msg/FloatTensor"
  public static let nativeIdentity: String? = nil
  public var `key`: String = ""
  public var `shape`: [UInt32] = Array(repeating: 0, count: 3)
  public var `values`: [Float] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`key`, bound: 64)
    guard self.`shape`.count == 3 else { throw RosError(22) }
    for e in self.`shape` {
      try w.integer(e)
    }
    guard self.`values`.count <= 320 else { throw RosError(22) }
    try w.integer(UInt32(self.`values`.count))
    for e in self.`values` {
      try w.float32(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Uwvm_groot_bridgeMsgFloatTensor {
    var v = Ros2Uwvm_groot_bridgeMsgFloatTensor()
    v.`key` = try r.string(bound: 64)
    let count1 = 3
    v.`shape` = []
    v.`shape`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`shape`.append(try r.integer(UInt32.self))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 320 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`values` = []
    v.`values`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`values`.append(try r.float32())
    }
    return v
  }
}
public struct Ros2Uwvm_groot_bridgeMsgTextSequence: Canonical {
  public static let maximumWireBytes = 1120
  public static let codecIdentity =
    "UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d"
  public static let nativeType = "uwvm_groot_bridge/msg/TextSequence"
  public static let nativeIdentity: String? = nil
  public var `key`: String = ""
  public var `shape`: [UInt32] = Array(repeating: 0, count: 2)
  public var `texts`: [String] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`key`, bound: 64)
    guard self.`shape`.count == 2 else { throw RosError(22) }
    for e in self.`shape` {
      try w.integer(e)
    }
    guard self.`texts`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`texts`.count))
    for e in self.`texts` {
      try w.string(e, bound: 256)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Uwvm_groot_bridgeMsgTextSequence {
    var v = Ros2Uwvm_groot_bridgeMsgTextSequence()
    v.`key` = try r.string(bound: 64)
    let count1 = 2
    v.`shape` = []
    v.`shape`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`shape`.append(try r.integer(UInt32.self))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`texts` = []
    v.`texts`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`texts`.append(try r.string(bound: 256))
    }
    return v
  }
}
public struct Ros2Uwvm_groot_bridgeSrvInferAction_Request: Canonical {
  public static let maximumWireBytes = 10296
  public static let codecIdentity =
    "UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6"
  public static let nativeType = "uwvm_groot_bridge/srv/InferAction_Request"
  public static let nativeIdentity: String? = nil
  public var `application_nonce`: UInt64 = 0
  public var `video`: [Ros2Uwvm_groot_bridgeMsgRGBFrame] = []
  public var `state`: [Ros2Uwvm_groot_bridgeMsgFloatTensor] = []
  public var `language`: [Ros2Uwvm_groot_bridgeMsgTextSequence] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`application_nonce`)
    guard self.`video`.count <= 3 else { throw RosError(22) }
    try w.integer(UInt32(self.`video`.count))
    for e in self.`video` {
      try e.write(to: &w)
    }
    guard self.`state`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`state`.count))
    for e in self.`state` {
      try e.write(to: &w)
    }
    guard self.`language`.count <= 2 else { throw RosError(22) }
    try w.integer(UInt32(self.`language`.count))
    for e in self.`language` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_groot_bridgeSrvInferAction_Request
  {
    var v = Ros2Uwvm_groot_bridgeSrvInferAction_Request()
    v.`application_nonce` = try r.integer(UInt64.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 3 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`video` = []
    v.`video`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`video`.append(try Ros2Uwvm_groot_bridgeMsgRGBFrame.read(from: &r))
    }
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`state` = []
    v.`state`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`state`.append(try Ros2Uwvm_groot_bridgeMsgFloatTensor.read(from: &r))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 2 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`language` = []
    v.`language`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`language`.append(try Ros2Uwvm_groot_bridgeMsgTextSequence.read(from: &r))
    }
    return v
  }
}
public struct Ros2Uwvm_groot_bridgeSrvInferAction_Response: Canonical {
  public static let maximumWireBytes = 10929
  public static let codecIdentity =
    "UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce"
  public static let nativeType = "uwvm_groot_bridge/srv/InferAction_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `application_nonce`: UInt64 = 0
  public var `action`: [Ros2Uwvm_groot_bridgeMsgFloatTensor] = []
  public var `info_is_empty`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.integer(self.`application_nonce`)
    guard self.`action`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`action`.count))
    for e in self.`action` {
      try e.write(to: &w)
    }
    try w.boolean(self.`info_is_empty`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_groot_bridgeSrvInferAction_Response
  {
    var v = Ros2Uwvm_groot_bridgeSrvInferAction_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`application_nonce` = try r.integer(UInt64.self)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`action` = []
    v.`action`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`action`.append(try Ros2Uwvm_groot_bridgeMsgFloatTensor.read(from: &r))
    }
    v.`info_is_empty` = try r.boolean()
    return v
  }
}
public struct Ros2Uwvm_groot_bridgeMsgRGBDescriptor: Canonical {
  public static let maximumWireBytes = 88
  public static let codecIdentity =
    "UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40"
  public static let nativeType = "uwvm_groot_bridge/msg/RGBDescriptor"
  public static let nativeIdentity: String? = nil
  public var `key`: String = ""
  public var `shape`: [UInt32] = Array(repeating: 0, count: 5)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`key`, bound: 64)
    guard self.`shape`.count == 5 else { throw RosError(22) }
    for e in self.`shape` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Uwvm_groot_bridgeMsgRGBDescriptor
  {
    var v = Ros2Uwvm_groot_bridgeMsgRGBDescriptor()
    v.`key` = try r.string(bound: 64)
    let count1 = 5
    v.`shape` = []
    v.`shape`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`shape`.append(try r.integer(UInt32.self))
    }
    return v
  }
}
public struct Ros2Uwvm_groot_bridgeSrvBeginObservation_Request: Canonical {
  public static let maximumWireBytes = 276
  public static let codecIdentity =
    "UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2"
  public static let nativeType = "uwvm_groot_bridge/srv/BeginObservation_Request"
  public static let nativeIdentity: String? = nil
  public var `observation_nonce`: UInt64 = 0
  public var `video`: [Ros2Uwvm_groot_bridgeMsgRGBDescriptor] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`observation_nonce`)
    guard self.`video`.count <= 3 else { throw RosError(22) }
    try w.integer(UInt32(self.`video`.count))
    for e in self.`video` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_groot_bridgeSrvBeginObservation_Request
  {
    var v = Ros2Uwvm_groot_bridgeSrvBeginObservation_Request()
    v.`observation_nonce` = try r.integer(UInt64.self)
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 3 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`video` = []
    v.`video`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`video`.append(try Ros2Uwvm_groot_bridgeMsgRGBDescriptor.read(from: &r))
    }
    return v
  }
}
public struct Ros2Uwvm_groot_bridgeSrvBeginObservation_Response: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049"
  public static let nativeType = "uwvm_groot_bridge/srv/BeginObservation_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `observation_nonce`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.integer(self.`observation_nonce`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_groot_bridgeSrvBeginObservation_Response
  {
    var v = Ros2Uwvm_groot_bridgeSrvBeginObservation_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`observation_nonce` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request: Canonical {
  public static let maximumWireBytes = 852
  public static let codecIdentity =
    "UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c"
  public static let nativeType = "uwvm_groot_bridge/srv/WriteRGBChunk_Request"
  public static let nativeIdentity: String? = nil
  public var `observation_nonce`: UInt64 = 0
  public var `key`: String = ""
  public var `offset`: UInt32 = 0
  public var `pixels`: [UInt8] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`observation_nonce`)
    try w.string(self.`key`, bound: 64)
    try w.integer(self.`offset`)
    guard self.`pixels`.count <= 768 else { throw RosError(22) }
    try w.integer(UInt32(self.`pixels`.count))
    for e in self.`pixels` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request
  {
    var v = Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request()
    v.`observation_nonce` = try r.integer(UInt64.self)
    v.`key` = try r.string(bound: 64)
    v.`offset` = try r.integer(UInt32.self)
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 768 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`pixels` = []
    v.`pixels`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`pixels`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba"
  public static let nativeType = "uwvm_groot_bridge/srv/WriteRGBChunk_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `observation_nonce`: UInt64 = 0
  public var `accepted_bytes`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.integer(self.`observation_nonce`)
    try w.integer(self.`accepted_bytes`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response
  {
    var v = Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`observation_nonce` = try r.integer(UInt64.self)
    v.`accepted_bytes` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5"
  public static let nativeType = "uwvm_groot_bridge/srv/ReleaseObservation_Request"
  public static let nativeIdentity: String? = nil
  public var `observation_nonce`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`observation_nonce`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request
  {
    var v = Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request()
    v.`observation_nonce` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response: Canonical {
  public static let maximumWireBytes = 12
  public static let codecIdentity =
    "UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69"
  public static let nativeType = "uwvm_groot_bridge/srv/ReleaseObservation_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `observation_nonce`: UInt64 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.integer(self.`observation_nonce`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response
  {
    var v = Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`observation_nonce` = try r.integer(UInt64.self)
    return v
  }
}
public struct Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request: Canonical {
  public static let maximumWireBytes = 7720
  public static let codecIdentity =
    "UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d"
  public static let nativeType = "uwvm_groot_bridge/srv/InferUploadedAction_Request"
  public static let nativeIdentity: String? = nil
  public var `application_nonce`: UInt64 = 0
  public var `observation_nonce`: UInt64 = 0
  public var `state`: [Ros2Uwvm_groot_bridgeMsgFloatTensor] = []
  public var `language`: [Ros2Uwvm_groot_bridgeMsgTextSequence] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`application_nonce`)
    try w.integer(self.`observation_nonce`)
    guard self.`state`.count <= 4 else { throw RosError(22) }
    try w.integer(UInt32(self.`state`.count))
    for e in self.`state` {
      try e.write(to: &w)
    }
    guard self.`language`.count <= 2 else { throw RosError(22) }
    try w.integer(UInt32(self.`language`.count))
    for e in self.`language` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request
  {
    var v = Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request()
    v.`application_nonce` = try r.integer(UInt64.self)
    v.`observation_nonce` = try r.integer(UInt64.self)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 4 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`state` = []
    v.`state`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`state`.append(try Ros2Uwvm_groot_bridgeMsgFloatTensor.read(from: &r))
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 2 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`language` = []
    v.`language`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`language`.append(try Ros2Uwvm_groot_bridgeMsgTextSequence.read(from: &r))
    }
    return v
  }
}
public struct Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response: Canonical {
  public static let maximumWireBytes = 10929
  public static let codecIdentity =
    "UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e"
  public static let nativeType = "uwvm_groot_bridge/srv/InferUploadedAction_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: UInt32 = 0
  public var `application_nonce`: UInt64 = 0
  public var `action`: [Ros2Uwvm_groot_bridgeMsgFloatTensor] = []
  public var `info_is_empty`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.integer(self.`application_nonce`)
    guard self.`action`.count <= 8 else { throw RosError(22) }
    try w.integer(UInt32(self.`action`.count))
    for e in self.`action` {
      try e.write(to: &w)
    }
    try w.boolean(self.`info_is_empty`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response
  {
    var v = Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response()
    v.`status` = try r.integer(UInt32.self)
    v.`application_nonce` = try r.integer(UInt64.self)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 8 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`action` = []
    v.`action`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`action`.append(try Ros2Uwvm_groot_bridgeMsgFloatTensor.read(from: &r))
    }
    v.`info_is_empty` = try r.boolean()
    return v
  }
}
