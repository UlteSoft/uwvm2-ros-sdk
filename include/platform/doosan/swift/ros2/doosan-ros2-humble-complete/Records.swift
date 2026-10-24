/// @file Records.swift
/// @brief Complete doosan values and adapters for the selected original interface catalog.
/// @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
/// defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
/// roles require the separately admitted SDK owner.
/// @see share/platform/doosan/domains/doosan-ros2-humble-complete.ir.json
/// @see document/platform/doosan/en_US/README.md

// Generated complete canonical values. No I/O or authority.
import RosWasm

public struct Ros2Dsr_msgs2ActionJogH2r_Goal: Canonical {
  public static let maximumWireBytes = 10
  public static let codecIdentity =
    "UWVMROS1_06245e203e3de9eab0c11ee37506291cbdfc285518b044d9874412a55a948031"
  public static let nativeType = "dsr_msgs2/action/JogH2r_Goal"
  public static let nativeIdentity: String? = nil
  public var `jog_axis`: Int8 = 0
  public var `move_reference`: Int8 = 0
  public var `velocity`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`jog_axis`)
    try w.integer(self.`move_reference`)
    try w.float64(self.`velocity`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2ActionJogH2r_Goal {
    var v = Ros2Dsr_msgs2ActionJogH2r_Goal()
    v.`jog_axis` = try r.integer(Int8.self)
    v.`move_reference` = try r.integer(Int8.self)
    v.`velocity` = try r.float64()
    return v
  }
}
public struct Ros2Dsr_msgs2ActionJogH2r_Result: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_79b337d3246b2761333d4d9538c137e41a9b795b9ae0fcf8a3a95f9919cd9f32"
  public static let nativeType = "dsr_msgs2/action/JogH2r_Result"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2ActionJogH2r_Result {
    var v = Ros2Dsr_msgs2ActionJogH2r_Result()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2ActionJogH2r_Feedback: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_ec4a775b8e986378d1064390512a267cc4ee1a43489b64ab3faed57a88184c8b"
  public static let nativeType = "dsr_msgs2/action/JogH2r_Feedback"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2ActionJogH2r_Feedback {
    var v = Ros2Dsr_msgs2ActionJogH2r_Feedback()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Dsr_msgs2ActionMovejH2r_Goal: Canonical {
  public static let maximumWireBytes = 144
  public static let codecIdentity =
    "UWVMROS1_1f500b1d55e67e54b564236307f6761a74d79887ab35c4733cd741f480d7d0dc"
  public static let nativeType = "dsr_msgs2/action/MovejH2r_Goal"
  public static let nativeIdentity: String? = nil
  public var `target_pos`: [Double] = Array(repeating: 0, count: 6)
  public var `target_vel`: [Double] = Array(repeating: 0, count: 6)
  public var `target_acc`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`target_pos`.count == 6 else { throw RosError(22) }
    for e in self.`target_pos` {
      try w.float64(e)
    }
    guard self.`target_vel`.count == 6 else { throw RosError(22) }
    for e in self.`target_vel` {
      try w.float64(e)
    }
    guard self.`target_acc`.count == 6 else { throw RosError(22) }
    for e in self.`target_acc` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2ActionMovejH2r_Goal {
    var v = Ros2Dsr_msgs2ActionMovejH2r_Goal()
    let count0 = 6
    v.`target_pos` = []
    v.`target_pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`target_pos`.append(try r.float64())
    }
    let count1 = 6
    v.`target_vel` = []
    v.`target_vel`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`target_vel`.append(try r.float64())
    }
    let count2 = 6
    v.`target_acc` = []
    v.`target_acc`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`target_acc`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Dsr_msgs2ActionMovejH2r_Result: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_9055b94a2148571ab9cf3edd50625e2c49697bcab7827d3d6520281e3af3fc51"
  public static let nativeType = "dsr_msgs2/action/MovejH2r_Result"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2ActionMovejH2r_Result {
    var v = Ros2Dsr_msgs2ActionMovejH2r_Result()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2ActionMovejH2r_Feedback: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_a300a02e724a0d402966787cd8ce0fc3bef26d8d2e53157d2a29cad55406fd9e"
  public static let nativeType = "dsr_msgs2/action/MovejH2r_Feedback"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2ActionMovejH2r_Feedback {
    var v = Ros2Dsr_msgs2ActionMovejH2r_Feedback()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Dsr_msgs2ActionMovelH2r_Goal: Canonical {
  public static let maximumWireBytes = 80
  public static let codecIdentity =
    "UWVMROS1_e1e2a6cd46247b347002d41f062949ab869c6bd84c305cd951cb5fb32ffe7d9c"
  public static let nativeType = "dsr_msgs2/action/MovelH2r_Goal"
  public static let nativeIdentity: String? = nil
  public var `target_pos`: [Double] = Array(repeating: 0, count: 6)
  public var `target_vel`: [Double] = Array(repeating: 0, count: 2)
  public var `target_acc`: [Double] = Array(repeating: 0, count: 2)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`target_pos`.count == 6 else { throw RosError(22) }
    for e in self.`target_pos` {
      try w.float64(e)
    }
    guard self.`target_vel`.count == 2 else { throw RosError(22) }
    for e in self.`target_vel` {
      try w.float64(e)
    }
    guard self.`target_acc`.count == 2 else { throw RosError(22) }
    for e in self.`target_acc` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2ActionMovelH2r_Goal {
    var v = Ros2Dsr_msgs2ActionMovelH2r_Goal()
    let count0 = 6
    v.`target_pos` = []
    v.`target_pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`target_pos`.append(try r.float64())
    }
    let count1 = 2
    v.`target_vel` = []
    v.`target_vel`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`target_vel`.append(try r.float64())
    }
    let count2 = 2
    v.`target_acc` = []
    v.`target_acc`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`target_acc`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Dsr_msgs2ActionMovelH2r_Result: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_0daf4123fb4d7b06d11b3d47f1b5881357aa840e37e2adc84e46dd97d2c062dd"
  public static let nativeType = "dsr_msgs2/action/MovelH2r_Result"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2ActionMovelH2r_Result {
    var v = Ros2Dsr_msgs2ActionMovelH2r_Result()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2ActionMovelH2r_Feedback: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_e67cb580a7c20e9f69813a44eeb8cce45cffc8292dbd895c210b3a46937e745a"
  public static let nativeType = "dsr_msgs2/action/MovelH2r_Feedback"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2ActionMovelH2r_Feedback {
    var v = Ros2Dsr_msgs2ActionMovelH2r_Feedback()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Dsr_msgs2MsgAlterMotionStream: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_42cda028849d2f3c24dddf69907122eeaccc19ab595150b0c4bfa9a6c4b37200"
  public static let nativeType = "dsr_msgs2/msg/AlterMotionStream"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2MsgAlterMotionStream {
    var v = Ros2Dsr_msgs2MsgAlterMotionStream()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Dsr_msgs2MsgJogMultiAxis: Canonical {
  public static let maximumWireBytes = 57
  public static let codecIdentity =
    "UWVMROS1_1abbca14f7ca912b0d1a3ff2eac2414268b78e10380d8eac9e231f79f26ce07e"
  public static let nativeType = "dsr_msgs2/msg/JogMultiAxis"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2MsgJogMultiAxis {
    var v = Ros2Dsr_msgs2MsgJogMultiAxis()
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
public struct Ros2Dsr_msgs2MsgLogAlarm: Canonical {
  public static let maximumWireBytes = 792
  public static let codecIdentity =
    "UWVMROS1_d35d6f6098edff03d2568f14471db88ea998873ba4a04794750f7134825e2bfe"
  public static let nativeType = "dsr_msgs2/msg/LogAlarm"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2MsgLogAlarm {
    var v = Ros2Dsr_msgs2MsgLogAlarm()
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
public struct Ros2Dsr_msgs2MsgModbusState: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_b5648e70b313800a6b18e809d0950f53c538d2647ff67fd3884cce728f3be765"
  public static let nativeType = "dsr_msgs2/msg/ModbusState"
  public static let nativeIdentity: String? = nil
  public var `modbus_symbol`: String = ""
  public var `modbus_value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`modbus_symbol`, bound: 256)
    try w.integer(self.`modbus_value`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2MsgModbusState {
    var v = Ros2Dsr_msgs2MsgModbusState()
    v.`modbus_symbol` = try r.string(bound: 256)
    v.`modbus_value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dsr_msgs2MsgRobotDisconnection: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_d686889739e672509dee7fc8538cddd634e536f392709b7bdcc0572c755c65c4"
  public static let nativeType = "dsr_msgs2/msg/RobotDisconnection"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2MsgRobotDisconnection {
    var v = Ros2Dsr_msgs2MsgRobotDisconnection()
    return v
  }
}
public struct Ros2Dsr_msgs2MsgRobotError: Canonical {
  public static let maximumWireBytes = 792
  public static let codecIdentity =
    "UWVMROS1_5c628814ad82c181ce0eae34fe89fb384169bfecbdeed07bddb2318a4e3c5a67"
  public static let nativeType = "dsr_msgs2/msg/RobotError"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2MsgRobotError {
    var v = Ros2Dsr_msgs2MsgRobotError()
    v.`level` = try r.integer(Int32.self)
    v.`group` = try r.integer(Int32.self)
    v.`code` = try r.integer(Int32.self)
    v.`msg1` = try r.string(bound: 256)
    v.`msg2` = try r.string(bound: 256)
    v.`msg3` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Std_msgsMsgMultiArrayDimension: Canonical {
  public static let maximumWireBytes = 76
  public static let codecIdentity =
    "UWVMROS1_be0694d8fef4d71a5afd7072b14b9f246464e4c3a8dbbfb21ef22c32296c2f73"
  public static let nativeType = "std_msgs/msg/MultiArrayDimension"
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
  public static func read(from r: inout WireReader) throws -> Ros2Std_msgsMsgMultiArrayDimension {
    var v = Ros2Std_msgsMsgMultiArrayDimension()
    v.`label` = try r.string(bound: 64)
    v.`size` = try r.integer(UInt32.self)
    v.`stride` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros2Std_msgsMsgMultiArrayLayout: Canonical {
  public static let maximumWireBytes = 236
  public static let codecIdentity =
    "UWVMROS1_d1b6f03846800e7c6672b48f3585ad43cbccb4f2d892a4bc986e2df00667b392"
  public static let nativeType = "std_msgs/msg/MultiArrayLayout"
  public static let nativeIdentity: String? = nil
  public var `dim`: [Ros2Std_msgsMsgMultiArrayDimension] = []
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
  public static func read(from r: inout WireReader) throws -> Ros2Std_msgsMsgMultiArrayLayout {
    var v = Ros2Std_msgsMsgMultiArrayLayout()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 3 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`dim` = []
    v.`dim`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`dim`.append(try Ros2Std_msgsMsgMultiArrayDimension.read(from: &r))
    }
    v.`data_offset` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros2Std_msgsMsgFloat64MultiArray: Canonical {
  public static let maximumWireBytes = 368
  public static let codecIdentity =
    "UWVMROS1_9a214c31604613d6d1ebba644301f686ad3dff1a7a6c1005540ae0062d924f95"
  public static let nativeType = "std_msgs/msg/Float64MultiArray"
  public static let nativeIdentity: String? = nil
  public var `layout`: Ros2Std_msgsMsgMultiArrayLayout = Ros2Std_msgsMsgMultiArrayLayout()
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
  public static func read(from r: inout WireReader) throws -> Ros2Std_msgsMsgFloat64MultiArray {
    var v = Ros2Std_msgsMsgFloat64MultiArray()
    v.`layout` = try Ros2Std_msgsMsgMultiArrayLayout.read(from: &r)
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
public struct Ros2Dsr_msgs2MsgRobotState: Canonical {
  public static let maximumWireBytes = 17004
  public static let codecIdentity =
    "UWVMROS1_e705618c8be95896187c604e77324a4e8373df20b89819a7f94abf995eb93942"
  public static let nativeType = "dsr_msgs2/msg/RobotState"
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
  public var `rotation_matrix`: [Ros2Std_msgsMsgFloat64MultiArray] = []
  public var `ctrlbox_digital_input`: [Int8] = Array(repeating: 0, count: 16)
  public var `ctrlbox_digital_output`: [Int8] = Array(repeating: 0, count: 16)
  public var `flange_digital_input`: [Int8] = Array(repeating: 0, count: 6)
  public var `flange_digital_output`: [Int8] = Array(repeating: 0, count: 6)
  public var `modbus_state`: [Ros2Dsr_msgs2MsgModbusState] = []
  public var `access_control`: Int32 = 0
  public var `homming_completed`: Bool = false
  public var `tp_initialized`: Bool = false
  public var `mastering_need`: Int8 = 0
  public var `drl_stopped`: Bool = false
  public var `disconnected`: Bool = false
  public var `f_actual_w2b`: [Double] = Array(repeating: 0, count: 6)
  public var `f_current_pos_world`: [Ros2Std_msgsMsgFloat64MultiArray] = []
  public var `f_current_vel_world`: [Double] = Array(repeating: 0, count: 6)
  public var `f_world_ext_target_torque`: [Double] = Array(repeating: 0, count: 6)
  public var `f_target_pos_world`: [Double] = Array(repeating: 0, count: 6)
  public var `f_target_vel_world`: [Double] = Array(repeating: 0, count: 6)
  public var `f_rotation_matrix_world`: [Ros2Std_msgsMsgFloat64MultiArray] = []
  public var `i_actual_user_coord_num`: Int8 = 0
  public var `i_coord_ref`: Int8 = 0
  public var `f_current_pos_user`: [Ros2Std_msgsMsgFloat64MultiArray] = []
  public var `f_current_vel_user`: [Double] = Array(repeating: 0, count: 6)
  public var `f_user_ext_task_torque`: [Double] = Array(repeating: 0, count: 6)
  public var `f_target_pos_user`: [Double] = Array(repeating: 0, count: 6)
  public var `f_target_vel_user`: [Double] = Array(repeating: 0, count: 6)
  public var `f_rotation_matrix_user`: [Ros2Std_msgsMsgFloat64MultiArray] = []
  public var `f_actual_analog_input`: [Double] = Array(repeating: 0, count: 6)
  public var `b_actual_switch_input`: [Bool] = Array(repeating: false, count: 3)
  public var `b_actual_safety_input`: [Bool] = Array(repeating: false, count: 2)
  public var `i_actual_analog_input_type`: [Int8] = Array(repeating: 0, count: 2)
  public var `f_target_analog_output`: [Double] = Array(repeating: 0, count: 2)
  public var `i_target_analog_output_type`: [Int8] = Array(repeating: 0, count: 2)
  public var `b_actual_encorder_strove_signal`: [Bool] = Array(repeating: false, count: 2)
  public var `i_actual_encorder_raw_data`: [Int8] = Array(repeating: 0, count: 2)
  public var `b_actual_encorder_reset_signal`: [Bool] = Array(repeating: false, count: 2)
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
    guard self.`f_actual_w2b`.count == 6 else { throw RosError(22) }
    for e in self.`f_actual_w2b` {
      try w.float64(e)
    }
    guard self.`f_current_pos_world`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`f_current_pos_world`.count))
    for e in self.`f_current_pos_world` {
      try e.write(to: &w)
    }
    guard self.`f_current_vel_world`.count == 6 else { throw RosError(22) }
    for e in self.`f_current_vel_world` {
      try w.float64(e)
    }
    guard self.`f_world_ext_target_torque`.count == 6 else { throw RosError(22) }
    for e in self.`f_world_ext_target_torque` {
      try w.float64(e)
    }
    guard self.`f_target_pos_world`.count == 6 else { throw RosError(22) }
    for e in self.`f_target_pos_world` {
      try w.float64(e)
    }
    guard self.`f_target_vel_world`.count == 6 else { throw RosError(22) }
    for e in self.`f_target_vel_world` {
      try w.float64(e)
    }
    guard self.`f_rotation_matrix_world`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`f_rotation_matrix_world`.count))
    for e in self.`f_rotation_matrix_world` {
      try e.write(to: &w)
    }
    try w.integer(self.`i_actual_user_coord_num`)
    try w.integer(self.`i_coord_ref`)
    guard self.`f_current_pos_user`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`f_current_pos_user`.count))
    for e in self.`f_current_pos_user` {
      try e.write(to: &w)
    }
    guard self.`f_current_vel_user`.count == 6 else { throw RosError(22) }
    for e in self.`f_current_vel_user` {
      try w.float64(e)
    }
    guard self.`f_user_ext_task_torque`.count == 6 else { throw RosError(22) }
    for e in self.`f_user_ext_task_torque` {
      try w.float64(e)
    }
    guard self.`f_target_pos_user`.count == 6 else { throw RosError(22) }
    for e in self.`f_target_pos_user` {
      try w.float64(e)
    }
    guard self.`f_target_vel_user`.count == 6 else { throw RosError(22) }
    for e in self.`f_target_vel_user` {
      try w.float64(e)
    }
    guard self.`f_rotation_matrix_user`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`f_rotation_matrix_user`.count))
    for e in self.`f_rotation_matrix_user` {
      try e.write(to: &w)
    }
    guard self.`f_actual_analog_input`.count == 6 else { throw RosError(22) }
    for e in self.`f_actual_analog_input` {
      try w.float64(e)
    }
    guard self.`b_actual_switch_input`.count == 3 else { throw RosError(22) }
    for e in self.`b_actual_switch_input` {
      try w.boolean(e)
    }
    guard self.`b_actual_safety_input`.count == 2 else { throw RosError(22) }
    for e in self.`b_actual_safety_input` {
      try w.boolean(e)
    }
    guard self.`i_actual_analog_input_type`.count == 2 else { throw RosError(22) }
    for e in self.`i_actual_analog_input_type` {
      try w.integer(e)
    }
    guard self.`f_target_analog_output`.count == 2 else { throw RosError(22) }
    for e in self.`f_target_analog_output` {
      try w.float64(e)
    }
    guard self.`i_target_analog_output_type`.count == 2 else { throw RosError(22) }
    for e in self.`i_target_analog_output_type` {
      try w.integer(e)
    }
    guard self.`b_actual_encorder_strove_signal`.count == 2 else { throw RosError(22) }
    for e in self.`b_actual_encorder_strove_signal` {
      try w.boolean(e)
    }
    guard self.`i_actual_encorder_raw_data`.count == 2 else { throw RosError(22) }
    for e in self.`i_actual_encorder_raw_data` {
      try w.integer(e)
    }
    guard self.`b_actual_encorder_reset_signal`.count == 2 else { throw RosError(22) }
    for e in self.`b_actual_encorder_reset_signal` {
      try w.boolean(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2MsgRobotState {
    var v = Ros2Dsr_msgs2MsgRobotState()
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
      v.`rotation_matrix`.append(try Ros2Std_msgsMsgFloat64MultiArray.read(from: &r))
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
      v.`modbus_state`.append(try Ros2Dsr_msgs2MsgModbusState.read(from: &r))
    }
    v.`access_control` = try r.integer(Int32.self)
    v.`homming_completed` = try r.boolean()
    v.`tp_initialized` = try r.boolean()
    v.`mastering_need` = try r.integer(Int8.self)
    v.`drl_stopped` = try r.boolean()
    v.`disconnected` = try r.boolean()
    let count38 = 6
    v.`f_actual_w2b` = []
    v.`f_actual_w2b`.reserveCapacity(count38)
    for _ in 0..<count38 {
      v.`f_actual_w2b`.append(try r.float64())
    }
    let rawcount39 = try r.integer(UInt32.self)
    guard rawcount39 <= 6 else { throw RosError(22) }
    let count39 = Int(rawcount39)
    v.`f_current_pos_world` = []
    v.`f_current_pos_world`.reserveCapacity(count39)
    for _ in 0..<count39 {
      v.`f_current_pos_world`.append(try Ros2Std_msgsMsgFloat64MultiArray.read(from: &r))
    }
    let count40 = 6
    v.`f_current_vel_world` = []
    v.`f_current_vel_world`.reserveCapacity(count40)
    for _ in 0..<count40 {
      v.`f_current_vel_world`.append(try r.float64())
    }
    let count41 = 6
    v.`f_world_ext_target_torque` = []
    v.`f_world_ext_target_torque`.reserveCapacity(count41)
    for _ in 0..<count41 {
      v.`f_world_ext_target_torque`.append(try r.float64())
    }
    let count42 = 6
    v.`f_target_pos_world` = []
    v.`f_target_pos_world`.reserveCapacity(count42)
    for _ in 0..<count42 {
      v.`f_target_pos_world`.append(try r.float64())
    }
    let count43 = 6
    v.`f_target_vel_world` = []
    v.`f_target_vel_world`.reserveCapacity(count43)
    for _ in 0..<count43 {
      v.`f_target_vel_world`.append(try r.float64())
    }
    let rawcount44 = try r.integer(UInt32.self)
    guard rawcount44 <= 6 else { throw RosError(22) }
    let count44 = Int(rawcount44)
    v.`f_rotation_matrix_world` = []
    v.`f_rotation_matrix_world`.reserveCapacity(count44)
    for _ in 0..<count44 {
      v.`f_rotation_matrix_world`.append(try Ros2Std_msgsMsgFloat64MultiArray.read(from: &r))
    }
    v.`i_actual_user_coord_num` = try r.integer(Int8.self)
    v.`i_coord_ref` = try r.integer(Int8.self)
    let rawcount47 = try r.integer(UInt32.self)
    guard rawcount47 <= 6 else { throw RosError(22) }
    let count47 = Int(rawcount47)
    v.`f_current_pos_user` = []
    v.`f_current_pos_user`.reserveCapacity(count47)
    for _ in 0..<count47 {
      v.`f_current_pos_user`.append(try Ros2Std_msgsMsgFloat64MultiArray.read(from: &r))
    }
    let count48 = 6
    v.`f_current_vel_user` = []
    v.`f_current_vel_user`.reserveCapacity(count48)
    for _ in 0..<count48 {
      v.`f_current_vel_user`.append(try r.float64())
    }
    let count49 = 6
    v.`f_user_ext_task_torque` = []
    v.`f_user_ext_task_torque`.reserveCapacity(count49)
    for _ in 0..<count49 {
      v.`f_user_ext_task_torque`.append(try r.float64())
    }
    let count50 = 6
    v.`f_target_pos_user` = []
    v.`f_target_pos_user`.reserveCapacity(count50)
    for _ in 0..<count50 {
      v.`f_target_pos_user`.append(try r.float64())
    }
    let count51 = 6
    v.`f_target_vel_user` = []
    v.`f_target_vel_user`.reserveCapacity(count51)
    for _ in 0..<count51 {
      v.`f_target_vel_user`.append(try r.float64())
    }
    let rawcount52 = try r.integer(UInt32.self)
    guard rawcount52 <= 6 else { throw RosError(22) }
    let count52 = Int(rawcount52)
    v.`f_rotation_matrix_user` = []
    v.`f_rotation_matrix_user`.reserveCapacity(count52)
    for _ in 0..<count52 {
      v.`f_rotation_matrix_user`.append(try Ros2Std_msgsMsgFloat64MultiArray.read(from: &r))
    }
    let count53 = 6
    v.`f_actual_analog_input` = []
    v.`f_actual_analog_input`.reserveCapacity(count53)
    for _ in 0..<count53 {
      v.`f_actual_analog_input`.append(try r.float64())
    }
    let count54 = 3
    v.`b_actual_switch_input` = []
    v.`b_actual_switch_input`.reserveCapacity(count54)
    for _ in 0..<count54 {
      v.`b_actual_switch_input`.append(try r.boolean())
    }
    let count55 = 2
    v.`b_actual_safety_input` = []
    v.`b_actual_safety_input`.reserveCapacity(count55)
    for _ in 0..<count55 {
      v.`b_actual_safety_input`.append(try r.boolean())
    }
    let count56 = 2
    v.`i_actual_analog_input_type` = []
    v.`i_actual_analog_input_type`.reserveCapacity(count56)
    for _ in 0..<count56 {
      v.`i_actual_analog_input_type`.append(try r.integer(Int8.self))
    }
    let count57 = 2
    v.`f_target_analog_output` = []
    v.`f_target_analog_output`.reserveCapacity(count57)
    for _ in 0..<count57 {
      v.`f_target_analog_output`.append(try r.float64())
    }
    let count58 = 2
    v.`i_target_analog_output_type` = []
    v.`i_target_analog_output_type`.reserveCapacity(count58)
    for _ in 0..<count58 {
      v.`i_target_analog_output_type`.append(try r.integer(Int8.self))
    }
    let count59 = 2
    v.`b_actual_encorder_strove_signal` = []
    v.`b_actual_encorder_strove_signal`.reserveCapacity(count59)
    for _ in 0..<count59 {
      v.`b_actual_encorder_strove_signal`.append(try r.boolean())
    }
    let count60 = 2
    v.`i_actual_encorder_raw_data` = []
    v.`i_actual_encorder_raw_data`.reserveCapacity(count60)
    for _ in 0..<count60 {
      v.`i_actual_encorder_raw_data`.append(try r.integer(Int8.self))
    }
    let count61 = 2
    v.`b_actual_encorder_reset_signal` = []
    v.`b_actual_encorder_reset_signal`.reserveCapacity(count61)
    for _ in 0..<count61 {
      v.`b_actual_encorder_reset_signal`.append(try r.boolean())
    }
    return v
  }
}
public struct Ros2Dsr_msgs2MsgRobotStateRt: Canonical {
  public static let maximumWireBytes = 8154
  public static let codecIdentity =
    "UWVMROS1_13d507971439fe6ba5458b55545edfcf1ead10ce7e603365cffa5f894657be93"
  public static let nativeType = "dsr_msgs2/msg/RobotStateRt"
  public static let nativeIdentity: String? = nil
  public var `time_stamp`: Double = 0
  public var `actual_joint_position`: [Double] = Array(repeating: 0, count: 6)
  public var `actual_joint_position_abs`: [Double] = Array(repeating: 0, count: 6)
  public var `actual_joint_velocity`: [Double] = Array(repeating: 0, count: 6)
  public var `actual_joint_velocity_abs`: [Double] = Array(repeating: 0, count: 6)
  public var `actual_tcp_position`: [Double] = Array(repeating: 0, count: 6)
  public var `actual_tcp_velocity`: [Double] = Array(repeating: 0, count: 6)
  public var `actual_flange_position`: [Double] = Array(repeating: 0, count: 6)
  public var `actual_flange_velocity`: [Double] = Array(repeating: 0, count: 6)
  public var `actual_motor_torque`: [Double] = Array(repeating: 0, count: 6)
  public var `actual_joint_torque`: [Double] = Array(repeating: 0, count: 6)
  public var `raw_joint_torque`: [Double] = Array(repeating: 0, count: 6)
  public var `raw_force_torque`: [Double] = Array(repeating: 0, count: 6)
  public var `external_joint_torque`: [Double] = Array(repeating: 0, count: 6)
  public var `external_tcp_force`: [Double] = Array(repeating: 0, count: 6)
  public var `target_joint_position`: [Double] = Array(repeating: 0, count: 6)
  public var `target_joint_velocity`: [Double] = Array(repeating: 0, count: 6)
  public var `target_joint_acceleration`: [Double] = Array(repeating: 0, count: 6)
  public var `target_motor_torque`: [Double] = Array(repeating: 0, count: 6)
  public var `target_tcp_position`: [Double] = Array(repeating: 0, count: 6)
  public var `target_tcp_velocity`: [Double] = Array(repeating: 0, count: 6)
  public var `jacobian_matrix`: [Ros2Std_msgsMsgFloat64MultiArray] = []
  public var `gravity_torque`: [Double] = Array(repeating: 0, count: 6)
  public var `coriolis_matrix`: [Ros2Std_msgsMsgFloat64MultiArray] = []
  public var `mass_matrix`: [Ros2Std_msgsMsgFloat64MultiArray] = []
  public var `solution_space`: UInt16 = 0
  public var `singularity`: Double = 0
  public var `operation_speed_rate`: Double = 0
  public var `joint_temperature`: [Double] = Array(repeating: 0, count: 6)
  public var `controller_digital_input`: UInt16 = 0
  public var `controller_digital_output`: UInt16 = 0
  public var `controller_analog_input_type`: [UInt8] = Array(repeating: 0, count: 2)
  public var `controller_analog_input`: [Double] = Array(repeating: 0, count: 2)
  public var `controller_analog_output_type`: [UInt8] = Array(repeating: 0, count: 2)
  public var `controller_analog_output`: [Double] = Array(repeating: 0, count: 2)
  public var `flange_digital_input`: UInt8 = 0
  public var `flange_digital_output`: UInt8 = 0
  public var `flange_analog_input`: [Double] = Array(repeating: 0, count: 4)
  public var `external_encoder_strobe_count`: [UInt8] = Array(repeating: 0, count: 2)
  public var `external_encoder_count`: [UInt16] = Array(repeating: 0, count: 2)
  public var `goal_joint_position`: [Double] = Array(repeating: 0, count: 6)
  public var `goal_tcp_position`: [Double] = Array(repeating: 0, count: 6)
  public var `robot_mode`: UInt8 = 0
  public var `robot_state`: UInt8 = 0
  public var `control_mode`: UInt16 = 0
  public var `reserved`: [UInt8] = Array(repeating: 0, count: 256)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`time_stamp`)
    guard self.`actual_joint_position`.count == 6 else { throw RosError(22) }
    for e in self.`actual_joint_position` {
      try w.float64(e)
    }
    guard self.`actual_joint_position_abs`.count == 6 else { throw RosError(22) }
    for e in self.`actual_joint_position_abs` {
      try w.float64(e)
    }
    guard self.`actual_joint_velocity`.count == 6 else { throw RosError(22) }
    for e in self.`actual_joint_velocity` {
      try w.float64(e)
    }
    guard self.`actual_joint_velocity_abs`.count == 6 else { throw RosError(22) }
    for e in self.`actual_joint_velocity_abs` {
      try w.float64(e)
    }
    guard self.`actual_tcp_position`.count == 6 else { throw RosError(22) }
    for e in self.`actual_tcp_position` {
      try w.float64(e)
    }
    guard self.`actual_tcp_velocity`.count == 6 else { throw RosError(22) }
    for e in self.`actual_tcp_velocity` {
      try w.float64(e)
    }
    guard self.`actual_flange_position`.count == 6 else { throw RosError(22) }
    for e in self.`actual_flange_position` {
      try w.float64(e)
    }
    guard self.`actual_flange_velocity`.count == 6 else { throw RosError(22) }
    for e in self.`actual_flange_velocity` {
      try w.float64(e)
    }
    guard self.`actual_motor_torque`.count == 6 else { throw RosError(22) }
    for e in self.`actual_motor_torque` {
      try w.float64(e)
    }
    guard self.`actual_joint_torque`.count == 6 else { throw RosError(22) }
    for e in self.`actual_joint_torque` {
      try w.float64(e)
    }
    guard self.`raw_joint_torque`.count == 6 else { throw RosError(22) }
    for e in self.`raw_joint_torque` {
      try w.float64(e)
    }
    guard self.`raw_force_torque`.count == 6 else { throw RosError(22) }
    for e in self.`raw_force_torque` {
      try w.float64(e)
    }
    guard self.`external_joint_torque`.count == 6 else { throw RosError(22) }
    for e in self.`external_joint_torque` {
      try w.float64(e)
    }
    guard self.`external_tcp_force`.count == 6 else { throw RosError(22) }
    for e in self.`external_tcp_force` {
      try w.float64(e)
    }
    guard self.`target_joint_position`.count == 6 else { throw RosError(22) }
    for e in self.`target_joint_position` {
      try w.float64(e)
    }
    guard self.`target_joint_velocity`.count == 6 else { throw RosError(22) }
    for e in self.`target_joint_velocity` {
      try w.float64(e)
    }
    guard self.`target_joint_acceleration`.count == 6 else { throw RosError(22) }
    for e in self.`target_joint_acceleration` {
      try w.float64(e)
    }
    guard self.`target_motor_torque`.count == 6 else { throw RosError(22) }
    for e in self.`target_motor_torque` {
      try w.float64(e)
    }
    guard self.`target_tcp_position`.count == 6 else { throw RosError(22) }
    for e in self.`target_tcp_position` {
      try w.float64(e)
    }
    guard self.`target_tcp_velocity`.count == 6 else { throw RosError(22) }
    for e in self.`target_tcp_velocity` {
      try w.float64(e)
    }
    guard self.`jacobian_matrix`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`jacobian_matrix`.count))
    for e in self.`jacobian_matrix` {
      try e.write(to: &w)
    }
    guard self.`gravity_torque`.count == 6 else { throw RosError(22) }
    for e in self.`gravity_torque` {
      try w.float64(e)
    }
    guard self.`coriolis_matrix`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`coriolis_matrix`.count))
    for e in self.`coriolis_matrix` {
      try e.write(to: &w)
    }
    guard self.`mass_matrix`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`mass_matrix`.count))
    for e in self.`mass_matrix` {
      try e.write(to: &w)
    }
    try w.integer(self.`solution_space`)
    try w.float64(self.`singularity`)
    try w.float64(self.`operation_speed_rate`)
    guard self.`joint_temperature`.count == 6 else { throw RosError(22) }
    for e in self.`joint_temperature` {
      try w.float64(e)
    }
    try w.integer(self.`controller_digital_input`)
    try w.integer(self.`controller_digital_output`)
    guard self.`controller_analog_input_type`.count == 2 else { throw RosError(22) }
    for e in self.`controller_analog_input_type` {
      try w.integer(e)
    }
    guard self.`controller_analog_input`.count == 2 else { throw RosError(22) }
    for e in self.`controller_analog_input` {
      try w.float64(e)
    }
    guard self.`controller_analog_output_type`.count == 2 else { throw RosError(22) }
    for e in self.`controller_analog_output_type` {
      try w.integer(e)
    }
    guard self.`controller_analog_output`.count == 2 else { throw RosError(22) }
    for e in self.`controller_analog_output` {
      try w.float64(e)
    }
    try w.integer(self.`flange_digital_input`)
    try w.integer(self.`flange_digital_output`)
    guard self.`flange_analog_input`.count == 4 else { throw RosError(22) }
    for e in self.`flange_analog_input` {
      try w.float64(e)
    }
    guard self.`external_encoder_strobe_count`.count == 2 else { throw RosError(22) }
    for e in self.`external_encoder_strobe_count` {
      try w.integer(e)
    }
    guard self.`external_encoder_count`.count == 2 else { throw RosError(22) }
    for e in self.`external_encoder_count` {
      try w.integer(e)
    }
    guard self.`goal_joint_position`.count == 6 else { throw RosError(22) }
    for e in self.`goal_joint_position` {
      try w.float64(e)
    }
    guard self.`goal_tcp_position`.count == 6 else { throw RosError(22) }
    for e in self.`goal_tcp_position` {
      try w.float64(e)
    }
    try w.integer(self.`robot_mode`)
    try w.integer(self.`robot_state`)
    try w.integer(self.`control_mode`)
    guard self.`reserved`.count == 256 else { throw RosError(22) }
    for e in self.`reserved` {
      try w.integer(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2MsgRobotStateRt {
    var v = Ros2Dsr_msgs2MsgRobotStateRt()
    v.`time_stamp` = try r.float64()
    let count1 = 6
    v.`actual_joint_position` = []
    v.`actual_joint_position`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`actual_joint_position`.append(try r.float64())
    }
    let count2 = 6
    v.`actual_joint_position_abs` = []
    v.`actual_joint_position_abs`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`actual_joint_position_abs`.append(try r.float64())
    }
    let count3 = 6
    v.`actual_joint_velocity` = []
    v.`actual_joint_velocity`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`actual_joint_velocity`.append(try r.float64())
    }
    let count4 = 6
    v.`actual_joint_velocity_abs` = []
    v.`actual_joint_velocity_abs`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`actual_joint_velocity_abs`.append(try r.float64())
    }
    let count5 = 6
    v.`actual_tcp_position` = []
    v.`actual_tcp_position`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`actual_tcp_position`.append(try r.float64())
    }
    let count6 = 6
    v.`actual_tcp_velocity` = []
    v.`actual_tcp_velocity`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`actual_tcp_velocity`.append(try r.float64())
    }
    let count7 = 6
    v.`actual_flange_position` = []
    v.`actual_flange_position`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`actual_flange_position`.append(try r.float64())
    }
    let count8 = 6
    v.`actual_flange_velocity` = []
    v.`actual_flange_velocity`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`actual_flange_velocity`.append(try r.float64())
    }
    let count9 = 6
    v.`actual_motor_torque` = []
    v.`actual_motor_torque`.reserveCapacity(count9)
    for _ in 0..<count9 {
      v.`actual_motor_torque`.append(try r.float64())
    }
    let count10 = 6
    v.`actual_joint_torque` = []
    v.`actual_joint_torque`.reserveCapacity(count10)
    for _ in 0..<count10 {
      v.`actual_joint_torque`.append(try r.float64())
    }
    let count11 = 6
    v.`raw_joint_torque` = []
    v.`raw_joint_torque`.reserveCapacity(count11)
    for _ in 0..<count11 {
      v.`raw_joint_torque`.append(try r.float64())
    }
    let count12 = 6
    v.`raw_force_torque` = []
    v.`raw_force_torque`.reserveCapacity(count12)
    for _ in 0..<count12 {
      v.`raw_force_torque`.append(try r.float64())
    }
    let count13 = 6
    v.`external_joint_torque` = []
    v.`external_joint_torque`.reserveCapacity(count13)
    for _ in 0..<count13 {
      v.`external_joint_torque`.append(try r.float64())
    }
    let count14 = 6
    v.`external_tcp_force` = []
    v.`external_tcp_force`.reserveCapacity(count14)
    for _ in 0..<count14 {
      v.`external_tcp_force`.append(try r.float64())
    }
    let count15 = 6
    v.`target_joint_position` = []
    v.`target_joint_position`.reserveCapacity(count15)
    for _ in 0..<count15 {
      v.`target_joint_position`.append(try r.float64())
    }
    let count16 = 6
    v.`target_joint_velocity` = []
    v.`target_joint_velocity`.reserveCapacity(count16)
    for _ in 0..<count16 {
      v.`target_joint_velocity`.append(try r.float64())
    }
    let count17 = 6
    v.`target_joint_acceleration` = []
    v.`target_joint_acceleration`.reserveCapacity(count17)
    for _ in 0..<count17 {
      v.`target_joint_acceleration`.append(try r.float64())
    }
    let count18 = 6
    v.`target_motor_torque` = []
    v.`target_motor_torque`.reserveCapacity(count18)
    for _ in 0..<count18 {
      v.`target_motor_torque`.append(try r.float64())
    }
    let count19 = 6
    v.`target_tcp_position` = []
    v.`target_tcp_position`.reserveCapacity(count19)
    for _ in 0..<count19 {
      v.`target_tcp_position`.append(try r.float64())
    }
    let count20 = 6
    v.`target_tcp_velocity` = []
    v.`target_tcp_velocity`.reserveCapacity(count20)
    for _ in 0..<count20 {
      v.`target_tcp_velocity`.append(try r.float64())
    }
    let rawcount21 = try r.integer(UInt32.self)
    guard rawcount21 <= 6 else { throw RosError(22) }
    let count21 = Int(rawcount21)
    v.`jacobian_matrix` = []
    v.`jacobian_matrix`.reserveCapacity(count21)
    for _ in 0..<count21 {
      v.`jacobian_matrix`.append(try Ros2Std_msgsMsgFloat64MultiArray.read(from: &r))
    }
    let count22 = 6
    v.`gravity_torque` = []
    v.`gravity_torque`.reserveCapacity(count22)
    for _ in 0..<count22 {
      v.`gravity_torque`.append(try r.float64())
    }
    let rawcount23 = try r.integer(UInt32.self)
    guard rawcount23 <= 6 else { throw RosError(22) }
    let count23 = Int(rawcount23)
    v.`coriolis_matrix` = []
    v.`coriolis_matrix`.reserveCapacity(count23)
    for _ in 0..<count23 {
      v.`coriolis_matrix`.append(try Ros2Std_msgsMsgFloat64MultiArray.read(from: &r))
    }
    let rawcount24 = try r.integer(UInt32.self)
    guard rawcount24 <= 6 else { throw RosError(22) }
    let count24 = Int(rawcount24)
    v.`mass_matrix` = []
    v.`mass_matrix`.reserveCapacity(count24)
    for _ in 0..<count24 {
      v.`mass_matrix`.append(try Ros2Std_msgsMsgFloat64MultiArray.read(from: &r))
    }
    v.`solution_space` = try r.integer(UInt16.self)
    v.`singularity` = try r.float64()
    v.`operation_speed_rate` = try r.float64()
    let count28 = 6
    v.`joint_temperature` = []
    v.`joint_temperature`.reserveCapacity(count28)
    for _ in 0..<count28 {
      v.`joint_temperature`.append(try r.float64())
    }
    v.`controller_digital_input` = try r.integer(UInt16.self)
    v.`controller_digital_output` = try r.integer(UInt16.self)
    let count31 = 2
    v.`controller_analog_input_type` = []
    v.`controller_analog_input_type`.reserveCapacity(count31)
    for _ in 0..<count31 {
      v.`controller_analog_input_type`.append(try r.integer(UInt8.self))
    }
    let count32 = 2
    v.`controller_analog_input` = []
    v.`controller_analog_input`.reserveCapacity(count32)
    for _ in 0..<count32 {
      v.`controller_analog_input`.append(try r.float64())
    }
    let count33 = 2
    v.`controller_analog_output_type` = []
    v.`controller_analog_output_type`.reserveCapacity(count33)
    for _ in 0..<count33 {
      v.`controller_analog_output_type`.append(try r.integer(UInt8.self))
    }
    let count34 = 2
    v.`controller_analog_output` = []
    v.`controller_analog_output`.reserveCapacity(count34)
    for _ in 0..<count34 {
      v.`controller_analog_output`.append(try r.float64())
    }
    v.`flange_digital_input` = try r.integer(UInt8.self)
    v.`flange_digital_output` = try r.integer(UInt8.self)
    let count37 = 4
    v.`flange_analog_input` = []
    v.`flange_analog_input`.reserveCapacity(count37)
    for _ in 0..<count37 {
      v.`flange_analog_input`.append(try r.float64())
    }
    let count38 = 2
    v.`external_encoder_strobe_count` = []
    v.`external_encoder_strobe_count`.reserveCapacity(count38)
    for _ in 0..<count38 {
      v.`external_encoder_strobe_count`.append(try r.integer(UInt8.self))
    }
    let count39 = 2
    v.`external_encoder_count` = []
    v.`external_encoder_count`.reserveCapacity(count39)
    for _ in 0..<count39 {
      v.`external_encoder_count`.append(try r.integer(UInt16.self))
    }
    let count40 = 6
    v.`goal_joint_position` = []
    v.`goal_joint_position`.reserveCapacity(count40)
    for _ in 0..<count40 {
      v.`goal_joint_position`.append(try r.float64())
    }
    let count41 = 6
    v.`goal_tcp_position` = []
    v.`goal_tcp_position`.reserveCapacity(count41)
    for _ in 0..<count41 {
      v.`goal_tcp_position`.append(try r.float64())
    }
    v.`robot_mode` = try r.integer(UInt8.self)
    v.`robot_state` = try r.integer(UInt8.self)
    v.`control_mode` = try r.integer(UInt16.self)
    let count45 = 256
    v.`reserved` = []
    v.`reserved`.reserveCapacity(count45)
    for _ in 0..<count45 {
      v.`reserved`.append(try r.integer(UInt8.self))
    }
    return v
  }
}
public struct Ros2Dsr_msgs2MsgRobotStop: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_f3307dbbe0c0c842659c2db436d1c3d6f032157979c5b6178103319bb5eeda37"
  public static let nativeType = "dsr_msgs2/msg/RobotStop"
  public static let nativeIdentity: String? = nil
  public var `stop_mode`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`stop_mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2MsgRobotStop {
    var v = Ros2Dsr_msgs2MsgRobotStop()
    v.`stop_mode` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dsr_msgs2MsgServojRtStream: Canonical {
  public static let maximumWireBytes = 152
  public static let codecIdentity =
    "UWVMROS1_4321e707fa63a57b66eb3754deca45fe0c108c52565a0e0f62749deae95726a9"
  public static let nativeType = "dsr_msgs2/msg/ServojRtStream"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `vel`: [Double] = Array(repeating: 0, count: 6)
  public var `acc`: [Double] = Array(repeating: 0, count: 6)
  public var `time`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
    guard self.`vel`.count == 6 else { throw RosError(22) }
    for e in self.`vel` {
      try w.float64(e)
    }
    guard self.`acc`.count == 6 else { throw RosError(22) }
    for e in self.`acc` {
      try w.float64(e)
    }
    try w.float64(self.`time`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2MsgServojRtStream {
    var v = Ros2Dsr_msgs2MsgServojRtStream()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    let count1 = 6
    v.`vel` = []
    v.`vel`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`vel`.append(try r.float64())
    }
    let count2 = 6
    v.`acc` = []
    v.`acc`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`acc`.append(try r.float64())
    }
    v.`time` = try r.float64()
    return v
  }
}
public struct Ros2Dsr_msgs2MsgServojStream: Canonical {
  public static let maximumWireBytes = 153
  public static let codecIdentity =
    "UWVMROS1_bbd465cf407d444db1d536bf464b3e3939b18aa904c4ce99aac2fb2d918259a9"
  public static let nativeType = "dsr_msgs2/msg/ServojStream"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `vel`: [Double] = Array(repeating: 0, count: 6)
  public var `acc`: [Double] = Array(repeating: 0, count: 6)
  public var `time`: Double = 0
  public var `mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
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
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2MsgServojStream {
    var v = Ros2Dsr_msgs2MsgServojStream()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    let count1 = 6
    v.`vel` = []
    v.`vel`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`vel`.append(try r.float64())
    }
    let count2 = 6
    v.`acc` = []
    v.`acc`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`acc`.append(try r.float64())
    }
    v.`time` = try r.float64()
    v.`mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2MsgServolRtStream: Canonical {
  public static let maximumWireBytes = 152
  public static let codecIdentity =
    "UWVMROS1_052d62a9865376150ca907ac85216a91f19dd81ed7bbe943ed53e74b6e511763"
  public static let nativeType = "dsr_msgs2/msg/ServolRtStream"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `vel`: [Double] = Array(repeating: 0, count: 6)
  public var `acc`: [Double] = Array(repeating: 0, count: 6)
  public var `time`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
    guard self.`vel`.count == 6 else { throw RosError(22) }
    for e in self.`vel` {
      try w.float64(e)
    }
    guard self.`acc`.count == 6 else { throw RosError(22) }
    for e in self.`acc` {
      try w.float64(e)
    }
    try w.float64(self.`time`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2MsgServolRtStream {
    var v = Ros2Dsr_msgs2MsgServolRtStream()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    let count1 = 6
    v.`vel` = []
    v.`vel`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`vel`.append(try r.float64())
    }
    let count2 = 6
    v.`acc` = []
    v.`acc`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`acc`.append(try r.float64())
    }
    v.`time` = try r.float64()
    return v
  }
}
public struct Ros2Dsr_msgs2MsgServolStream: Canonical {
  public static let maximumWireBytes = 88
  public static let codecIdentity =
    "UWVMROS1_7d3d948e15e7dcc96f21f17d0c6a1981859ea8002234ea93877919fa961c2a96"
  public static let nativeType = "dsr_msgs2/msg/ServolStream"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `vel`: [Double] = Array(repeating: 0, count: 2)
  public var `acc`: [Double] = Array(repeating: 0, count: 2)
  public var `time`: Double = 0
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
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2MsgServolStream {
    var v = Ros2Dsr_msgs2MsgServolStream()
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
    return v
  }
}
public struct Ros2Dsr_msgs2MsgSpeedjRtStream: Canonical {
  public static let maximumWireBytes = 104
  public static let codecIdentity =
    "UWVMROS1_d6f75878c6dd397b261ede489ca0b3c2e7f26c44908a16d809303a77ca4791aa"
  public static let nativeType = "dsr_msgs2/msg/SpeedjRtStream"
  public static let nativeIdentity: String? = nil
  public var `vel`: [Double] = Array(repeating: 0, count: 6)
  public var `acc`: [Double] = Array(repeating: 0, count: 6)
  public var `time`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`vel`.count == 6 else { throw RosError(22) }
    for e in self.`vel` {
      try w.float64(e)
    }
    guard self.`acc`.count == 6 else { throw RosError(22) }
    for e in self.`acc` {
      try w.float64(e)
    }
    try w.float64(self.`time`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2MsgSpeedjRtStream {
    var v = Ros2Dsr_msgs2MsgSpeedjRtStream()
    let count0 = 6
    v.`vel` = []
    v.`vel`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`vel`.append(try r.float64())
    }
    let count1 = 6
    v.`acc` = []
    v.`acc`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`acc`.append(try r.float64())
    }
    v.`time` = try r.float64()
    return v
  }
}
public struct Ros2Dsr_msgs2MsgSpeedjStream: Canonical {
  public static let maximumWireBytes = 104
  public static let codecIdentity =
    "UWVMROS1_c37473b30f0e49db847342eb9b0e27606010710a43de7b94c8589707bceacbf5"
  public static let nativeType = "dsr_msgs2/msg/SpeedjStream"
  public static let nativeIdentity: String? = nil
  public var `vel`: [Double] = Array(repeating: 0, count: 6)
  public var `acc`: [Double] = Array(repeating: 0, count: 6)
  public var `time`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`vel`.count == 6 else { throw RosError(22) }
    for e in self.`vel` {
      try w.float64(e)
    }
    guard self.`acc`.count == 6 else { throw RosError(22) }
    for e in self.`acc` {
      try w.float64(e)
    }
    try w.float64(self.`time`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2MsgSpeedjStream {
    var v = Ros2Dsr_msgs2MsgSpeedjStream()
    let count0 = 6
    v.`vel` = []
    v.`vel`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`vel`.append(try r.float64())
    }
    let count1 = 6
    v.`acc` = []
    v.`acc`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`acc`.append(try r.float64())
    }
    v.`time` = try r.float64()
    return v
  }
}
public struct Ros2Dsr_msgs2MsgSpeedlRtStream: Canonical {
  public static let maximumWireBytes = 104
  public static let codecIdentity =
    "UWVMROS1_0e85422a682aef2c639f5e8a44b883e7c9b3491c95bf352c34ba23e9fb789b92"
  public static let nativeType = "dsr_msgs2/msg/SpeedlRtStream"
  public static let nativeIdentity: String? = nil
  public var `vel`: [Double] = Array(repeating: 0, count: 6)
  public var `acc`: [Double] = Array(repeating: 0, count: 6)
  public var `time`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`vel`.count == 6 else { throw RosError(22) }
    for e in self.`vel` {
      try w.float64(e)
    }
    guard self.`acc`.count == 6 else { throw RosError(22) }
    for e in self.`acc` {
      try w.float64(e)
    }
    try w.float64(self.`time`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2MsgSpeedlRtStream {
    var v = Ros2Dsr_msgs2MsgSpeedlRtStream()
    let count0 = 6
    v.`vel` = []
    v.`vel`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`vel`.append(try r.float64())
    }
    let count1 = 6
    v.`acc` = []
    v.`acc`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`acc`.append(try r.float64())
    }
    v.`time` = try r.float64()
    return v
  }
}
public struct Ros2Dsr_msgs2MsgSpeedlStream: Canonical {
  public static let maximumWireBytes = 72
  public static let codecIdentity =
    "UWVMROS1_8ae5704395fff21a33153589b6a32a41e8687cee0607a7085156c42a2f087ef2"
  public static let nativeType = "dsr_msgs2/msg/SpeedlStream"
  public static let nativeIdentity: String? = nil
  public var `vel`: [Double] = Array(repeating: 0, count: 6)
  public var `acc`: [Double] = Array(repeating: 0, count: 2)
  public var `time`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`vel`.count == 6 else { throw RosError(22) }
    for e in self.`vel` {
      try w.float64(e)
    }
    guard self.`acc`.count == 2 else { throw RosError(22) }
    for e in self.`acc` {
      try w.float64(e)
    }
    try w.float64(self.`time`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2MsgSpeedlStream {
    var v = Ros2Dsr_msgs2MsgSpeedlStream()
    let count0 = 6
    v.`vel` = []
    v.`vel`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`vel`.append(try r.float64())
    }
    let count1 = 2
    v.`acc` = []
    v.`acc`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`acc`.append(try r.float64())
    }
    v.`time` = try r.float64()
    return v
  }
}
public struct Ros2Dsr_msgs2MsgTorqueRtStream: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_81cb4c6d445c6869b94baca87ce997c96964b7e189598b0adfdcc227a295fd73"
  public static let nativeType = "dsr_msgs2/msg/TorqueRtStream"
  public static let nativeIdentity: String? = nil
  public var `tor`: [Double] = Array(repeating: 0, count: 6)
  public var `time`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`tor`.count == 6 else { throw RosError(22) }
    for e in self.`tor` {
      try w.float64(e)
    }
    try w.float64(self.`time`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2MsgTorqueRtStream {
    var v = Ros2Dsr_msgs2MsgTorqueRtStream()
    let count0 = 6
    v.`tor` = []
    v.`tor`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`tor`.append(try r.float64())
    }
    v.`time` = try r.float64()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvAlignAxis1_Request: Canonical {
  public static let maximumWireBytes = 170
  public static let codecIdentity =
    "UWVMROS1_1ddf70ffd434db95044523b5778f518ec204aed4e315293ecb474e1ec1b1267d"
  public static let nativeType = "dsr_msgs2/srv/AlignAxis1_Request"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvAlignAxis1_Request {
    var v = Ros2Dsr_msgs2SrvAlignAxis1_Request()
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
public struct Ros2Dsr_msgs2SrvAlignAxis1_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_f767cbca9c94fc07d10cff7cdbc4125f6d657f4362335ce968dcbd560a75a537"
  public static let nativeType = "dsr_msgs2/srv/AlignAxis1_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvAlignAxis1_Response {
    var v = Ros2Dsr_msgs2SrvAlignAxis1_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvAlignAxis2_Request: Canonical {
  public static let maximumWireBytes = 50
  public static let codecIdentity =
    "UWVMROS1_102ba03a00114a9c5314e5f947050c88791c1abffcff3d9b3163f06557c9d1ca"
  public static let nativeType = "dsr_msgs2/srv/AlignAxis2_Request"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvAlignAxis2_Request {
    var v = Ros2Dsr_msgs2SrvAlignAxis2_Request()
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
public struct Ros2Dsr_msgs2SrvAlignAxis2_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_59a69f0d266c31bbd9ab278249d358fb0edb0cc2c5f57a684069653548b88400"
  public static let nativeType = "dsr_msgs2/srv/AlignAxis2_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvAlignAxis2_Response {
    var v = Ros2Dsr_msgs2SrvAlignAxis2_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvAlterMotion_Request: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_ede1eb26161bfe42b29411347ef4752a6454baf86ba04afc5f2f11149895b000"
  public static let nativeType = "dsr_msgs2/srv/AlterMotion_Request"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvAlterMotion_Request {
    var v = Ros2Dsr_msgs2SrvAlterMotion_Request()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Dsr_msgs2SrvAlterMotion_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_edd6fac42f9f148dc508948ebf7b7bfe09fda09ab6ba66df3a56505b10829557"
  public static let nativeType = "dsr_msgs2/srv/AlterMotion_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvAlterMotion_Response {
    var v = Ros2Dsr_msgs2SrvAlterMotion_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvCalcCoord_Request: Canonical {
  public static let maximumWireBytes = 195
  public static let codecIdentity =
    "UWVMROS1_7fda8163d3f25429c387f6456df77bbfcf30c1aee93bb08ac27d50950a56ac7f"
  public static let nativeType = "dsr_msgs2/srv/CalcCoord_Request"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvCalcCoord_Request {
    var v = Ros2Dsr_msgs2SrvCalcCoord_Request()
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
public struct Ros2Dsr_msgs2SrvCalcCoord_Response: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_d5d79d4593bf040421c1b8570c86d021db50de736ab114ec13623e4982168371"
  public static let nativeType = "dsr_msgs2/srv/CalcCoord_Response"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvCalcCoord_Response {
    var v = Ros2Dsr_msgs2SrvCalcCoord_Response()
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
public struct Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_69c9183fb3a1a5e619cb2537da31e73aa9c490b2022db5281931d353676efc7f"
  public static let nativeType = "dsr_msgs2/srv/ChangeCollisionSensitivity_Request"
  public static let nativeIdentity: String? = nil
  public var `sensitivity`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sensitivity`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request
  {
    var v = Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request()
    v.`sensitivity` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d0660dd8ed26aba09d9aaa3444daae0abca31e415b24a39ab05c012fb9909aa0"
  public static let nativeType = "dsr_msgs2/srv/ChangeCollisionSensitivity_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response
  {
    var v = Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvChangeOperationSpeed_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_63eed536f4862ee6571ea76f40342def3598466057cc09aa45b0ea159c9a4fa7"
  public static let nativeType = "dsr_msgs2/srv/ChangeOperationSpeed_Request"
  public static let nativeIdentity: String? = nil
  public var `speed`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`speed`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvChangeOperationSpeed_Request
  {
    var v = Ros2Dsr_msgs2SrvChangeOperationSpeed_Request()
    v.`speed` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvChangeOperationSpeed_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_6514284e5a0739b16cd9df8dab9939c8e3aa9b47567741389bcc3fe54e9f0cbf"
  public static let nativeType = "dsr_msgs2/srv/ChangeOperationSpeed_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvChangeOperationSpeed_Response
  {
    var v = Ros2Dsr_msgs2SrvChangeOperationSpeed_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvCheckForceCondition_Request: Canonical {
  public static let maximumWireBytes = 18
  public static let codecIdentity =
    "UWVMROS1_e996cea9f24a1967a4591fdb072ccb87fe1e684dfe19cdcbb5cf65afa22cd0e4"
  public static let nativeType = "dsr_msgs2/srv/CheckForceCondition_Request"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvCheckForceCondition_Request
  {
    var v = Ros2Dsr_msgs2SrvCheckForceCondition_Request()
    v.`axis` = try r.integer(Int8.self)
    v.`min` = try r.float64()
    v.`max` = try r.float64()
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvCheckForceCondition_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_ed5a27b7b1daf8a668998d4da7f7ac5d1f7a71caea35a37c51db07058a373343"
  public static let nativeType = "dsr_msgs2/srv/CheckForceCondition_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvCheckForceCondition_Response
  {
    var v = Ros2Dsr_msgs2SrvCheckForceCondition_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvCheckMotion_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_64c44932b5afc38a3bd1cfb306c018616656793b0c6e5bf0e04f557a0b5f48a5"
  public static let nativeType = "dsr_msgs2/srv/CheckMotion_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvCheckMotion_Request {
    var v = Ros2Dsr_msgs2SrvCheckMotion_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvCheckMotion_Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_9c8ac8ada140000e2bd6588a92871d699a924ce9b1011d3e98dec98e0aa84379"
  public static let nativeType = "dsr_msgs2/srv/CheckMotion_Response"
  public static let nativeIdentity: String? = nil
  public var `status`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`status`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvCheckMotion_Response {
    var v = Ros2Dsr_msgs2SrvCheckMotion_Response()
    v.`status` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request: Canonical {
  public static let maximumWireBytes = 99
  public static let codecIdentity =
    "UWVMROS1_b70860c0e9fe5ae7904923bbf2ad9077a5009ae37a644118d5b8f4dc3383c1ef"
  public static let nativeType = "dsr_msgs2/srv/CheckOrientationCondition1_Request"
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
    -> Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request
  {
    var v = Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request()
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
public struct Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_eff9abfb058f98ef8addce0c226a0c35bfc84f24d96b611cd151be384be24ee4"
  public static let nativeType = "dsr_msgs2/srv/CheckOrientationCondition1_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response
  {
    var v = Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request: Canonical {
  public static let maximumWireBytes = 67
  public static let codecIdentity =
    "UWVMROS1_af9ed5881dde0e06efb1c97e8c9571dd2de85b35188cbdcbed5a902ca30d5ddb"
  public static let nativeType = "dsr_msgs2/srv/CheckOrientationCondition2_Request"
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
    -> Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request
  {
    var v = Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request()
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
public struct Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_23b06042946d1e27459ce70b73d265a7fda95dc1bf688091c14b5330c76d6e90"
  public static let nativeType = "dsr_msgs2/srv/CheckOrientationCondition2_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response
  {
    var v = Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvCheckPositionCondition_Request: Canonical {
  public static let maximumWireBytes = 67
  public static let codecIdentity =
    "UWVMROS1_3844a1011d8c4dfcbe048e683d0b3c747ce2984c937c477c868b1d7d53a7b0cc"
  public static let nativeType = "dsr_msgs2/srv/CheckPositionCondition_Request"
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
    -> Ros2Dsr_msgs2SrvCheckPositionCondition_Request
  {
    var v = Ros2Dsr_msgs2SrvCheckPositionCondition_Request()
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
public struct Ros2Dsr_msgs2SrvCheckPositionCondition_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_aeac1f373359103389fae072461c92f810252c8abf63f31522582b7724d33334"
  public static let nativeType = "dsr_msgs2/srv/CheckPositionCondition_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvCheckPositionCondition_Response
  {
    var v = Ros2Dsr_msgs2SrvCheckPositionCondition_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvConfigCreateModbus_Request: Canonical {
  public static let maximumWireBytes = 531
  public static let codecIdentity =
    "UWVMROS1_fa23c864844a6d81712b1c28261505a4dfce7e679a25e621bf80cef0a75ff1f5"
  public static let nativeType = "dsr_msgs2/srv/ConfigCreateModbus_Request"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvConfigCreateModbus_Request
  {
    var v = Ros2Dsr_msgs2SrvConfigCreateModbus_Request()
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
public struct Ros2Dsr_msgs2SrvConfigCreateModbus_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e3316b3da7d0c79293173a37fe9830de831cf1d4152999f56f7f5f01ff63215c"
  public static let nativeType = "dsr_msgs2/srv/ConfigCreateModbus_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvConfigCreateModbus_Response
  {
    var v = Ros2Dsr_msgs2SrvConfigCreateModbus_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvConfigCreateTcp_Request: Canonical {
  public static let maximumWireBytes = 308
  public static let codecIdentity =
    "UWVMROS1_e45840cd5a1966ba8cf7a7bf660ab0a467132b03cd69f00fb62043afb9b30c49"
  public static let nativeType = "dsr_msgs2/srv/ConfigCreateTcp_Request"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvConfigCreateTcp_Request
  {
    var v = Ros2Dsr_msgs2SrvConfigCreateTcp_Request()
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
public struct Ros2Dsr_msgs2SrvConfigCreateTcp_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_3091184aefaedc2fb8fd9b4f3c87769e8f87ebba4f14623355ef09fce4932f3b"
  public static let nativeType = "dsr_msgs2/srv/ConfigCreateTcp_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvConfigCreateTcp_Response
  {
    var v = Ros2Dsr_msgs2SrvConfigCreateTcp_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvConfigCreateTool_Request: Canonical {
  public static let maximumWireBytes = 340
  public static let codecIdentity =
    "UWVMROS1_ca28549f6644d735882d0400c2635380dde1139d17c17818d49d023ec73566e2"
  public static let nativeType = "dsr_msgs2/srv/ConfigCreateTool_Request"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvConfigCreateTool_Request
  {
    var v = Ros2Dsr_msgs2SrvConfigCreateTool_Request()
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
public struct Ros2Dsr_msgs2SrvConfigCreateTool_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_105629d8e968ac2511b73b3fe21ed9529b1dab9365d992281a02d72e1b4a90d0"
  public static let nativeType = "dsr_msgs2/srv/ConfigCreateTool_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvConfigCreateTool_Response
  {
    var v = Ros2Dsr_msgs2SrvConfigCreateTool_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvConfigDeleteModbus_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_f16519f6118316f20a9ab9e76dc37704e0d464632d31ed383a8bb55af6b25369"
  public static let nativeType = "dsr_msgs2/srv/ConfigDeleteModbus_Request"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvConfigDeleteModbus_Request
  {
    var v = Ros2Dsr_msgs2SrvConfigDeleteModbus_Request()
    v.`name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvConfigDeleteModbus_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_a0a28657707c302b7dbb87039a36951cc97a5335cb473523002884453125829f"
  public static let nativeType = "dsr_msgs2/srv/ConfigDeleteModbus_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvConfigDeleteModbus_Response
  {
    var v = Ros2Dsr_msgs2SrvConfigDeleteModbus_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvConfigDeleteTcp_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_a865fbd071a0e1717d54ab3523a5dd637f22745724ed41483991c2f58aa85abf"
  public static let nativeType = "dsr_msgs2/srv/ConfigDeleteTcp_Request"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvConfigDeleteTcp_Request
  {
    var v = Ros2Dsr_msgs2SrvConfigDeleteTcp_Request()
    v.`name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvConfigDeleteTcp_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_c8285c592d6839812e366d8271a9020f2e6213f7d3194896306f55bf69bb83d2"
  public static let nativeType = "dsr_msgs2/srv/ConfigDeleteTcp_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvConfigDeleteTcp_Response
  {
    var v = Ros2Dsr_msgs2SrvConfigDeleteTcp_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvConfigDeleteTool_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_7d6b749f7151dfc84e52fc39f3a32c88d5570efb2fb721c234c2d91405d9a37b"
  public static let nativeType = "dsr_msgs2/srv/ConfigDeleteTool_Request"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvConfigDeleteTool_Request
  {
    var v = Ros2Dsr_msgs2SrvConfigDeleteTool_Request()
    v.`name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvConfigDeleteTool_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_2618f58ba0b4e9f585b2635de087a5d203b019e3732ab579e94fcb44e2ee9a6e"
  public static let nativeType = "dsr_msgs2/srv/ConfigDeleteTool_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvConfigDeleteTool_Response
  {
    var v = Ros2Dsr_msgs2SrvConfigDeleteTool_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvConnectRtControl_Request: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_a207438503e0a6769dbdc07c87487b0435066ba9773c19f2874241c8c1b4d761"
  public static let nativeType = "dsr_msgs2/srv/ConnectRtControl_Request"
  public static let nativeIdentity: String? = nil
  public var `ip_address`: String = ""
  public var `port`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`ip_address`, bound: 256)
    try w.integer(self.`port`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvConnectRtControl_Request
  {
    var v = Ros2Dsr_msgs2SrvConnectRtControl_Request()
    v.`ip_address` = try r.string(bound: 256)
    v.`port` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvConnectRtControl_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_6a7cce9aae60cdadc75425b22f7a8b429b95bc607e969605ab477c2eb1461815"
  public static let nativeType = "dsr_msgs2/srv/ConnectRtControl_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvConnectRtControl_Response
  {
    var v = Ros2Dsr_msgs2SrvConnectRtControl_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvCoordTransform_Request: Canonical {
  public static let maximumWireBytes = 50
  public static let codecIdentity =
    "UWVMROS1_a3996948d541acf82a920927a76293455965c48d4a2f1c3307854193104b2223"
  public static let nativeType = "dsr_msgs2/srv/CoordTransform_Request"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvCoordTransform_Request
  {
    var v = Ros2Dsr_msgs2SrvCoordTransform_Request()
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
public struct Ros2Dsr_msgs2SrvCoordTransform_Response: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_8ab16c946ef4cce7da6ccb8b0d3b4940195d0b29841007de569d1ea503b6cc72"
  public static let nativeType = "dsr_msgs2/srv/CoordTransform_Response"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvCoordTransform_Response
  {
    var v = Ros2Dsr_msgs2SrvCoordTransform_Response()
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
public struct Ros2Dsr_msgs2SrvDisableAlterMotion_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_dc5d3ed630e183152040506dfe7dd28e5ff236a79ac75ec2d48d824446e97152"
  public static let nativeType = "dsr_msgs2/srv/DisableAlterMotion_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvDisableAlterMotion_Request
  {
    var v = Ros2Dsr_msgs2SrvDisableAlterMotion_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvDisableAlterMotion_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_1bc0f75aa3e09ead2882ae862e0af520dd291c5d9f96414f98fa4a07f48a16e5"
  public static let nativeType = "dsr_msgs2/srv/DisableAlterMotion_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvDisableAlterMotion_Response
  {
    var v = Ros2Dsr_msgs2SrvDisableAlterMotion_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvDisconnectRtControl_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_7745a5c8acbb39607c2eb275e9257608d928fb98a7a5a72c0a64d03980ba5524"
  public static let nativeType = "dsr_msgs2/srv/DisconnectRtControl_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvDisconnectRtControl_Request
  {
    var v = Ros2Dsr_msgs2SrvDisconnectRtControl_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvDisconnectRtControl_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e57ab63199570ab8d114a9f778cb307cedf0775f6ce96ae1edeade39f9a259a5"
  public static let nativeType = "dsr_msgs2/srv/DisconnectRtControl_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvDisconnectRtControl_Response
  {
    var v = Ros2Dsr_msgs2SrvDisconnectRtControl_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvDrlPause_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_d3a522d19d07bf80ce8b3722d43c382b8d55693b9364d995f968b952335d35a6"
  public static let nativeType = "dsr_msgs2/srv/DrlPause_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvDrlPause_Request {
    var v = Ros2Dsr_msgs2SrvDrlPause_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvDrlPause_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_43cc42f101181691ed6046767d35f623fd8c3b7ca2fff5244a2b832cd1906ab7"
  public static let nativeType = "dsr_msgs2/srv/DrlPause_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvDrlPause_Response {
    var v = Ros2Dsr_msgs2SrvDrlPause_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvDrlResume_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_19bfb89dfedd6470fd3e2054556e20cdd15f430c93a563557d6240c81243eb05"
  public static let nativeType = "dsr_msgs2/srv/DrlResume_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvDrlResume_Request {
    var v = Ros2Dsr_msgs2SrvDrlResume_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvDrlResume_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_a0447aaaaab43fe0287ff4aa85cc6d182320a036cf49f75e6552b9cf997de5ca"
  public static let nativeType = "dsr_msgs2/srv/DrlResume_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvDrlResume_Response {
    var v = Ros2Dsr_msgs2SrvDrlResume_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvDrlStart_Request: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_0bcd9b44a5bc387dd9fa6257a42d2cbdc0c0d5cc373e56abd50345520304395d"
  public static let nativeType = "dsr_msgs2/srv/DrlStart_Request"
  public static let nativeIdentity: String? = nil
  public var `robot_system`: Int8 = 0
  public var `code`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`robot_system`)
    try w.string(self.`code`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvDrlStart_Request {
    var v = Ros2Dsr_msgs2SrvDrlStart_Request()
    v.`robot_system` = try r.integer(Int8.self)
    v.`code` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvDrlStart_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_c693ddb4d3cb430442fd669f4506d751a58c2f6aacd84b5f547bb498140f306f"
  public static let nativeType = "dsr_msgs2/srv/DrlStart_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvDrlStart_Response {
    var v = Ros2Dsr_msgs2SrvDrlStart_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvDrlStop_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_a0b7682dc86c427b9b16a40a6d4e358bb3be307190bd02ae41d9e88af40ec6cd"
  public static let nativeType = "dsr_msgs2/srv/DrlStop_Request"
  public static let nativeIdentity: String? = nil
  public var `stop_mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`stop_mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvDrlStop_Request {
    var v = Ros2Dsr_msgs2SrvDrlStop_Request()
    v.`stop_mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvDrlStop_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_156eed5dd85047a2830dcfdeba5327f1836606bda78d45f379f6ec0542ff1c24"
  public static let nativeType = "dsr_msgs2/srv/DrlStop_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvDrlStop_Response {
    var v = Ros2Dsr_msgs2SrvDrlStop_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvEnableAlterMotion_Request: Canonical {
  public static let maximumWireBytes = 38
  public static let codecIdentity =
    "UWVMROS1_7615d1d9c40d8a6aed080f6185b80a7c6124db6aa979d7f670e81019c7633ffc"
  public static let nativeType = "dsr_msgs2/srv/EnableAlterMotion_Request"
  public static let nativeIdentity: String? = nil
  public var `n`: Int32 = 0
  public var `mode`: Int8 = 0
  public var `ref`: Int8 = 0
  public var `limit_dpos`: [Double] = Array(repeating: 0, count: 2)
  public var `limit_dpos_per`: [Double] = Array(repeating: 0, count: 2)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`n`)
    try w.integer(self.`mode`)
    try w.integer(self.`ref`)
    guard self.`limit_dpos`.count == 2 else { throw RosError(22) }
    for e in self.`limit_dpos` {
      try w.float64(e)
    }
    guard self.`limit_dpos_per`.count == 2 else { throw RosError(22) }
    for e in self.`limit_dpos_per` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvEnableAlterMotion_Request
  {
    var v = Ros2Dsr_msgs2SrvEnableAlterMotion_Request()
    v.`n` = try r.integer(Int32.self)
    v.`mode` = try r.integer(Int8.self)
    v.`ref` = try r.integer(Int8.self)
    let count3 = 2
    v.`limit_dpos` = []
    v.`limit_dpos`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`limit_dpos`.append(try r.float64())
    }
    let count4 = 2
    v.`limit_dpos_per` = []
    v.`limit_dpos_per`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`limit_dpos_per`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Dsr_msgs2SrvEnableAlterMotion_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_5378b5727bd63d42483a26d7bf5df1aaad836ed6d0456806c7d6cb1f851e8f7f"
  public static let nativeType = "dsr_msgs2/srv/EnableAlterMotion_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvEnableAlterMotion_Response
  {
    var v = Ros2Dsr_msgs2SrvEnableAlterMotion_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvFkin_Request: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_f068464c2b4970811378456c7d036a2697c43d38736447fbbdbf4b1fafe2625f"
  public static let nativeType = "dsr_msgs2/srv/Fkin_Request"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvFkin_Request {
    var v = Ros2Dsr_msgs2SrvFkin_Request()
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
public struct Ros2Dsr_msgs2SrvFkin_Response: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_b373f093b247590ca30d22f0cc8bd5104267b03ac14301795a5aa8796b5e7d1b"
  public static let nativeType = "dsr_msgs2/srv/Fkin_Response"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvFkin_Response {
    var v = Ros2Dsr_msgs2SrvFkin_Response()
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
public struct Ros2Dsr_msgs2SrvGetControlMode_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_d80c98c4bc5b2426b9842f3dc9e9d282449cffd222efaacdc23a09205c3c69ea"
  public static let nativeType = "dsr_msgs2/srv/GetControlMode_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetControlMode_Request
  {
    var v = Ros2Dsr_msgs2SrvGetControlMode_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetControlMode_Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_56a3a864dffea1761165081f90a8303246177905522e84e0f30a12526117e824"
  public static let nativeType = "dsr_msgs2/srv/GetControlMode_Response"
  public static let nativeIdentity: String? = nil
  public var `control_mode`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`control_mode`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetControlMode_Response
  {
    var v = Ros2Dsr_msgs2SrvGetControlMode_Response()
    v.`control_mode` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetControlSpace_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_ea6654e3794c2b36c3d10311e407b6d4e12bca59b9a9b763880917e762e6dfaa"
  public static let nativeType = "dsr_msgs2/srv/GetControlSpace_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetControlSpace_Request
  {
    var v = Ros2Dsr_msgs2SrvGetControlSpace_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetControlSpace_Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_546ae346425d48252237f4b3f129145e5190dda43e29bf4080bc17a489deef41"
  public static let nativeType = "dsr_msgs2/srv/GetControlSpace_Response"
  public static let nativeIdentity: String? = nil
  public var `space`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`space`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetControlSpace_Response
  {
    var v = Ros2Dsr_msgs2SrvGetControlSpace_Response()
    v.`space` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_08335af395bc5602dfc0ed599a45d1a0e315a404729bc430fcf1e2c8f7b815e7"
  public static let nativeType = "dsr_msgs2/srv/GetCtrlBoxAnalogInput_Request"
  public static let nativeIdentity: String? = nil
  public var `channel`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`channel`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request
  {
    var v = Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request()
    v.`channel` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response: Canonical {
  public static let maximumWireBytes = 9
  public static let codecIdentity =
    "UWVMROS1_e6980a35668e6e96dc588b8e47aa0b5b33235f1e7f36aa9503378749ce707d09"
  public static let nativeType = "dsr_msgs2/srv/GetCtrlBoxAnalogInput_Response"
  public static let nativeIdentity: String? = nil
  public var `value`: Double = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`value`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response
  {
    var v = Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response()
    v.`value` = try r.float64()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d4a390f79cd4ec51ae40899d9f2253f49a9d589029a03625f4078e7c5d511e4e"
  public static let nativeType = "dsr_msgs2/srv/GetCtrlBoxDigitalInput_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request
  {
    var v = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request()
    v.`index` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_1ff53e438120200e50511d0ddbae9498084bb690292d45a46701e9efe915e03d"
  public static let nativeType = "dsr_msgs2/srv/GetCtrlBoxDigitalInput_Response"
  public static let nativeIdentity: String? = nil
  public var `value`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response
  {
    var v = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response()
    v.`value` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_ef4e865a9b5c7402332ec14ed19177cdb88503352a0a53b2746045dadac02e55"
  public static let nativeType = "dsr_msgs2/srv/GetCtrlBoxDigitalOutput_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request
  {
    var v = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request()
    v.`index` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_d5048e8f272eda1d8c034f65d357ff49b5a0407f7ec0c6255b4919c7e41dce02"
  public static let nativeType = "dsr_msgs2/srv/GetCtrlBoxDigitalOutput_Response"
  public static let nativeIdentity: String? = nil
  public var `value`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response
  {
    var v = Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response()
    v.`value` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCurrentPose_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d5b0aeb2f72918c086d24e32685fb17be635849416d2dc9a440dd51b409af06c"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentPose_Request"
  public static let nativeIdentity: String? = nil
  public var `space_type`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`space_type`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetCurrentPose_Request
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentPose_Request()
    v.`space_type` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCurrentPose_Response: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_296fc33e4b04d2c770600842339bd545bbe72b8ba700a2236c3983c80124dcf1"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentPose_Response"
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
    -> Ros2Dsr_msgs2SrvGetCurrentPose_Response
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentPose_Response()
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
public struct Ros2Dsr_msgs2SrvGetCurrentPosj_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_1cf038d6627d1a5ddcf3ffbce7cfd1416e9d3e8c63dc13c38dfa139050544f44"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentPosj_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetCurrentPosj_Request
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentPosj_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCurrentPosj_Response: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_f1b5d0285e81567ee77f3b688de5f6eb3c1340e2e99f6d5030d0ac77b7088e13"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentPosj_Response"
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
    -> Ros2Dsr_msgs2SrvGetCurrentPosj_Response
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentPosj_Response()
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
public struct Ros2Dsr_msgs2SrvGetCurrentPosx_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_57fc5ddeafbed4d32ed4ba322abf43b4ffbe73c3b737f0529b3e60ef01ce9943"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentPosx_Request"
  public static let nativeIdentity: String? = nil
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetCurrentPosx_Request
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentPosx_Request()
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCurrentPosx_Response: Canonical {
  public static let maximumWireBytes = 2213
  public static let codecIdentity =
    "UWVMROS1_cb48d05f4193cfb0a70d674a2f4845edca145c1ec2df8f76e3776a75fa0254a8"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentPosx_Response"
  public static let nativeIdentity: String? = nil
  public var `task_pos_info`: [Ros2Std_msgsMsgFloat64MultiArray] = []
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetCurrentPosx_Response
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentPosx_Response()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 6 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`task_pos_info` = []
    v.`task_pos_info`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`task_pos_info`.append(try Ros2Std_msgsMsgFloat64MultiArray.read(from: &r))
    }
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCurrentRotm_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_c691d82e22924caeb734c965ee15cf46ea206aabd4621b14bde07833b661971c"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentRotm_Request"
  public static let nativeIdentity: String? = nil
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetCurrentRotm_Request
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentRotm_Request()
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCurrentRotm_Response: Canonical {
  public static let maximumWireBytes = 2213
  public static let codecIdentity =
    "UWVMROS1_07665bca70c62297a983ff28a353b8dc3e25a55b938d1e8a7d00f7b99fe659ca"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentRotm_Response"
  public static let nativeIdentity: String? = nil
  public var `rot_matrix`: [Ros2Std_msgsMsgFloat64MultiArray] = []
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetCurrentRotm_Response
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentRotm_Response()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 6 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`rot_matrix` = []
    v.`rot_matrix`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`rot_matrix`.append(try Ros2Std_msgsMsgFloat64MultiArray.read(from: &r))
    }
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_7cd7c65658f1063c1ef9af93d72f1414d547179bd00310cb70301e6f93029a96"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentSolutionSpace_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_f414cb291de9891680fd80e6173f5026cc105fb4d0a84781a65a44f8104fa34a"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentSolutionSpace_Response"
  public static let nativeIdentity: String? = nil
  public var `sol_space`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sol_space`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response()
    v.`sol_space` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCurrentTcp_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_4324587d3246a8127cd50048c55cd3c472eed6d4c3af4aefa3216a8936a06ee4"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentTcp_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetCurrentTcp_Request
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentTcp_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCurrentTcp_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_f1cf522c9008d5c97f5fa8616d2baef9aef355350189c2ca77a22189a235c596"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentTcp_Response"
  public static let nativeIdentity: String? = nil
  public var `info`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`info`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetCurrentTcp_Response
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentTcp_Response()
    v.`info` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCurrentTool_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_59737c01f8da615dc929190326bddd2d2e65b813f2407770c04b8d7afc915351"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentTool_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetCurrentTool_Request
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentTool_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCurrentTool_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_6be3858c1b239a883173227e0b498af9123c7e23f76db6024275dbc7e1b5aa5b"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentTool_Response"
  public static let nativeIdentity: String? = nil
  public var `info`: String = ""
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`info`, bound: 256)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetCurrentTool_Response
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentTool_Response()
    v.`info` = try r.string(bound: 256)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e029ff9167245532d66a76380ba9ab1753d56b402ab1242ac13a91ede1350d02"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentToolFlangePosx_Request"
  public static let nativeIdentity: String? = nil
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request()
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_be24b0c65aa81bdfa3b349ca08b207b8cbb9f8622dd97559c160c92ce93e16c6"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentToolFlangePosx_Response"
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
    -> Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response()
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
public struct Ros2Dsr_msgs2SrvGetCurrentVelj_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_d4bef08af9d4ed3e0b44b015c85c70f8c687871846818a46b97db4351b8ad876"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentVelj_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetCurrentVelj_Request
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentVelj_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCurrentVelj_Response: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_d07a760d106d768184e69426ef5e23d6ffd7569a0ae6c30fdc7e627ecdba494d"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentVelj_Response"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetCurrentVelj_Response
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentVelj_Response()
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
public struct Ros2Dsr_msgs2SrvGetCurrentVelx_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_f14760f7a2387ae587c28c05ec130e4728e85c38961813d9932adf037c353e83"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentVelx_Request"
  public static let nativeIdentity: String? = nil
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetCurrentVelx_Request
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentVelx_Request()
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetCurrentVelx_Response: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_2f9645de7b8fec40b7dbcf9d572404009d9ff7f96ef3692ca7bc8fbfc5188aef"
  public static let nativeType = "dsr_msgs2/srv/GetCurrentVelx_Response"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetCurrentVelx_Response
  {
    var v = Ros2Dsr_msgs2SrvGetCurrentVelx_Response()
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
public struct Ros2Dsr_msgs2SrvGetDesiredPosj_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_9c8b229eb0bd52e826fdc03e6826b532897aae952e841e35b31c866edf0b3cd5"
  public static let nativeType = "dsr_msgs2/srv/GetDesiredPosj_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetDesiredPosj_Request
  {
    var v = Ros2Dsr_msgs2SrvGetDesiredPosj_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetDesiredPosj_Response: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_0a725b8def984030fb01a2847d7e792b77e7d49007bd996b990671ceaa5facc0"
  public static let nativeType = "dsr_msgs2/srv/GetDesiredPosj_Response"
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
    -> Ros2Dsr_msgs2SrvGetDesiredPosj_Response
  {
    var v = Ros2Dsr_msgs2SrvGetDesiredPosj_Response()
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
public struct Ros2Dsr_msgs2SrvGetDesiredPosx_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_6f9016a247e3c8c489ffbf4fc16c4c457e21220294e6859496ec3015441dc069"
  public static let nativeType = "dsr_msgs2/srv/GetDesiredPosx_Request"
  public static let nativeIdentity: String? = nil
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetDesiredPosx_Request
  {
    var v = Ros2Dsr_msgs2SrvGetDesiredPosx_Request()
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetDesiredPosx_Response: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_cc1f5ad8fd61a77b2c0dbdb1f9e0c7b899b1bdfdbf535308bbd160d001ad1c09"
  public static let nativeType = "dsr_msgs2/srv/GetDesiredPosx_Response"
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
    -> Ros2Dsr_msgs2SrvGetDesiredPosx_Response
  {
    var v = Ros2Dsr_msgs2SrvGetDesiredPosx_Response()
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
public struct Ros2Dsr_msgs2SrvGetDesiredVelj_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_56535748a42f6d003d24c5e176ca34bb960e9d112f209080178a55450e52d281"
  public static let nativeType = "dsr_msgs2/srv/GetDesiredVelj_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetDesiredVelj_Request
  {
    var v = Ros2Dsr_msgs2SrvGetDesiredVelj_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetDesiredVelj_Response: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_709f364917c007a6561766e576cdfb7c1e39e72b1852f83c9bec61721dd3b936"
  public static let nativeType = "dsr_msgs2/srv/GetDesiredVelj_Response"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetDesiredVelj_Response
  {
    var v = Ros2Dsr_msgs2SrvGetDesiredVelj_Response()
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
public struct Ros2Dsr_msgs2SrvGetDesiredVelx_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_754325c879930a58938d2acd7433605cc148cf57341fe9b0ef1870653a9fae12"
  public static let nativeType = "dsr_msgs2/srv/GetDesiredVelx_Request"
  public static let nativeIdentity: String? = nil
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetDesiredVelx_Request
  {
    var v = Ros2Dsr_msgs2SrvGetDesiredVelx_Request()
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetDesiredVelx_Response: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_55addb1448eb568ef90aa85cdeeee8044d9b37544a7ca4d208e91ba3aefe16bc"
  public static let nativeType = "dsr_msgs2/srv/GetDesiredVelx_Response"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetDesiredVelx_Response
  {
    var v = Ros2Dsr_msgs2SrvGetDesiredVelx_Response()
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
public struct Ros2Dsr_msgs2SrvGetDrlState_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_19a78a7cf9b010009bc481194271904a47cad587fa2e46fcc01e9e3f94c65e3e"
  public static let nativeType = "dsr_msgs2/srv/GetDrlState_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetDrlState_Request {
    var v = Ros2Dsr_msgs2SrvGetDrlState_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetDrlState_Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_58b6574dd8d3006509e0e7c98a4d64f32fc1a3fa5e8a8efcb567e9c34b102699"
  public static let nativeType = "dsr_msgs2/srv/GetDrlState_Response"
  public static let nativeIdentity: String? = nil
  public var `drl_state`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`drl_state`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetDrlState_Response {
    var v = Ros2Dsr_msgs2SrvGetDrlState_Response()
    v.`drl_state` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetExternalTorque_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_90ea09af03677cd42016abf4e88e4ef73e7aad43c5bf37804c7f50918ad71f3a"
  public static let nativeType = "dsr_msgs2/srv/GetExternalTorque_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetExternalTorque_Request
  {
    var v = Ros2Dsr_msgs2SrvGetExternalTorque_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetExternalTorque_Response: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_617665ff9f0817f3426b8fb61409061d5f7cde6603c61993e1aec013b3021f6d"
  public static let nativeType = "dsr_msgs2/srv/GetExternalTorque_Response"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetExternalTorque_Response
  {
    var v = Ros2Dsr_msgs2SrvGetExternalTorque_Response()
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
public struct Ros2Dsr_msgs2SrvGetInputRegisterBit_Request: Canonical {
  public static let maximumWireBytes = 6
  public static let codecIdentity =
    "UWVMROS1_357c348741cb21e92bd0e4962361dd84ed11db8f6868d84e4cdfd535fc215cae"
  public static let nativeType = "dsr_msgs2/srv/GetInputRegisterBit_Request"
  public static let nativeIdentity: String? = nil
  public var `address`: UInt16 = 0
  public var `timeout_ms`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.integer(self.`timeout_ms`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetInputRegisterBit_Request
  {
    var v = Ros2Dsr_msgs2SrvGetInputRegisterBit_Request()
    v.`address` = try r.integer(UInt16.self)
    v.`timeout_ms` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetInputRegisterBit_Response: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_a47c01d50519e552cfedf4ecaf6d52febaa0a4eb846ebc73256fe88219b647aa"
  public static let nativeType = "dsr_msgs2/srv/GetInputRegisterBit_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetInputRegisterBit_Response
  {
    var v = Ros2Dsr_msgs2SrvGetInputRegisterBit_Response()
    v.`success` = try r.boolean()
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request: Canonical {
  public static let maximumWireBytes = 6
  public static let codecIdentity =
    "UWVMROS1_88a6866efcf1e3620b98a77d2bc65cbf2dc9e3fb6e00b3e06fdc84ee8b5a2f3b"
  public static let nativeType = "dsr_msgs2/srv/GetInputRegisterFloat_Request"
  public static let nativeIdentity: String? = nil
  public var `address`: UInt16 = 0
  public var `timeout_ms`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.integer(self.`timeout_ms`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request
  {
    var v = Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request()
    v.`address` = try r.integer(UInt16.self)
    v.`timeout_ms` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response: Canonical {
  public static let maximumWireBytes = 9
  public static let codecIdentity =
    "UWVMROS1_db86cc9f47469a5d595a6df3b10e546d227dca5dbad7a381ed600acc33e5d769"
  public static let nativeType = "dsr_msgs2/srv/GetInputRegisterFloat_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `value`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.float64(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response
  {
    var v = Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response()
    v.`success` = try r.boolean()
    v.`value` = try r.float64()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetInputRegisterInt_Request: Canonical {
  public static let maximumWireBytes = 6
  public static let codecIdentity =
    "UWVMROS1_6fd37a43a6ff9f007ab73847710554a1a594bc14722c9d3223dbaae55a4c073e"
  public static let nativeType = "dsr_msgs2/srv/GetInputRegisterInt_Request"
  public static let nativeIdentity: String? = nil
  public var `address`: UInt16 = 0
  public var `timeout_ms`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.integer(self.`timeout_ms`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetInputRegisterInt_Request
  {
    var v = Ros2Dsr_msgs2SrvGetInputRegisterInt_Request()
    v.`address` = try r.integer(UInt16.self)
    v.`timeout_ms` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetInputRegisterInt_Response: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_4a10e84cb1cc84e780ea1bf19a94fcf1e09e45da33805f631fa0e455447587f0"
  public static let nativeType = "dsr_msgs2/srv/GetInputRegisterInt_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetInputRegisterInt_Response
  {
    var v = Ros2Dsr_msgs2SrvGetInputRegisterInt_Response()
    v.`success` = try r.boolean()
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetJointTorque_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_a64a36840ca8a9251b84fed17cea36d2f1ce027543af9ed22e05231e2765957a"
  public static let nativeType = "dsr_msgs2/srv/GetJointTorque_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetJointTorque_Request
  {
    var v = Ros2Dsr_msgs2SrvGetJointTorque_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetJointTorque_Response: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_7d229e0af82b76fe9f92601976226517ee3a47fd36bf251f6190527ec2e2dc2a"
  public static let nativeType = "dsr_msgs2/srv/GetJointTorque_Response"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetJointTorque_Response
  {
    var v = Ros2Dsr_msgs2SrvGetJointTorque_Response()
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
public struct Ros2Dsr_msgs2SrvGetLastAlarm_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_6569afb5dceb62e7ee95948c1140bdf5d9dcfe8532b75922722be2b02f016fcf"
  public static let nativeType = "dsr_msgs2/srv/GetLastAlarm_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetLastAlarm_Request {
    var v = Ros2Dsr_msgs2SrvGetLastAlarm_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetLastAlarm_Response: Canonical {
  public static let maximumWireBytes = 793
  public static let codecIdentity =
    "UWVMROS1_fa52a4735e3553d57e209a9307e120bd1731375d7b6864bf9b0415241527ee75"
  public static let nativeType = "dsr_msgs2/srv/GetLastAlarm_Response"
  public static let nativeIdentity: String? = nil
  public var `log_alarm`: Ros2Dsr_msgs2MsgLogAlarm = Ros2Dsr_msgs2MsgLogAlarm()
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`log_alarm`.write(to: &w)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetLastAlarm_Response
  {
    var v = Ros2Dsr_msgs2SrvGetLastAlarm_Response()
    v.`log_alarm` = try Ros2Dsr_msgs2MsgLogAlarm.read(from: &r)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetModbusInput_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_d2d8933898289af4b6c70b9ed412b435e3cbcfe3d2dd7675ff743a8f122fb32d"
  public static let nativeType = "dsr_msgs2/srv/GetModbusInput_Request"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetModbusInput_Request
  {
    var v = Ros2Dsr_msgs2SrvGetModbusInput_Request()
    v.`name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetModbusInput_Response: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_de8c061ac9312f7d708a3419b0f191d2e11f1727c777b0eecf9b2c3d36253c4f"
  public static let nativeType = "dsr_msgs2/srv/GetModbusInput_Response"
  public static let nativeIdentity: String? = nil
  public var `value`: Int32 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetModbusInput_Response
  {
    var v = Ros2Dsr_msgs2SrvGetModbusInput_Response()
    v.`value` = try r.integer(Int32.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetOrientationError_Request: Canonical {
  public static let maximumWireBytes = 97
  public static let codecIdentity =
    "UWVMROS1_ed52ab6a577110781d73a51700a5617cf94898921e5bab39cb64e66b84a6781f"
  public static let nativeType = "dsr_msgs2/srv/GetOrientationError_Request"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetOrientationError_Request
  {
    var v = Ros2Dsr_msgs2SrvGetOrientationError_Request()
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
public struct Ros2Dsr_msgs2SrvGetOrientationError_Response: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_ac13995c7c96b9dd8bc2c3ccc6eabfa4347c9e78872c16a6e6388f18d36c6983"
  public static let nativeType = "dsr_msgs2/srv/GetOrientationError_Response"
  public static let nativeIdentity: String? = nil
  public var `ori_error`: Float = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`ori_error`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetOrientationError_Response
  {
    var v = Ros2Dsr_msgs2SrvGetOrientationError_Response()
    v.`ori_error` = try r.float32()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request: Canonical {
  public static let maximumWireBytes = 6
  public static let codecIdentity =
    "UWVMROS1_6cd40872bca1d3fa7d7b84ead3e343ca62d7a5b60cdbf963e77f6078d8c98083"
  public static let nativeType = "dsr_msgs2/srv/GetOutputRegisterBit_Request"
  public static let nativeIdentity: String? = nil
  public var `address`: UInt16 = 0
  public var `timeout_ms`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.integer(self.`timeout_ms`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request
  {
    var v = Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request()
    v.`address` = try r.integer(UInt16.self)
    v.`timeout_ms` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_b877098bff97ac0e198a657581e4a76da6c2f2eeb46969fcd26ad447f1e19efa"
  public static let nativeType = "dsr_msgs2/srv/GetOutputRegisterBit_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response
  {
    var v = Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response()
    v.`success` = try r.boolean()
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request: Canonical {
  public static let maximumWireBytes = 6
  public static let codecIdentity =
    "UWVMROS1_3f94d068d679b118d2b59fa33f60f189341c0ecd92bf11425d87807b2fde96d6"
  public static let nativeType = "dsr_msgs2/srv/GetOutputRegisterFloat_Request"
  public static let nativeIdentity: String? = nil
  public var `address`: UInt16 = 0
  public var `timeout_ms`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.integer(self.`timeout_ms`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request
  {
    var v = Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request()
    v.`address` = try r.integer(UInt16.self)
    v.`timeout_ms` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response: Canonical {
  public static let maximumWireBytes = 9
  public static let codecIdentity =
    "UWVMROS1_3000a283d591bd17a2303bdf11aea290c034c1fd7117988e66c88f592e721e68"
  public static let nativeType = "dsr_msgs2/srv/GetOutputRegisterFloat_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `value`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.float64(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response
  {
    var v = Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response()
    v.`success` = try r.boolean()
    v.`value` = try r.float64()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request: Canonical {
  public static let maximumWireBytes = 6
  public static let codecIdentity =
    "UWVMROS1_4607112e6d1de21f44ba61b1af7d51446414259a2ef365abdd37d4ff3bdff7f6"
  public static let nativeType = "dsr_msgs2/srv/GetOutputRegisterInt_Request"
  public static let nativeIdentity: String? = nil
  public var `address`: UInt16 = 0
  public var `timeout_ms`: UInt32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.integer(self.`timeout_ms`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request
  {
    var v = Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request()
    v.`address` = try r.integer(UInt16.self)
    v.`timeout_ms` = try r.integer(UInt32.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_4d2643dccba189da62bfaf4103f670af774170b1c18e28a2ae112312df6ad691"
  public static let nativeType = "dsr_msgs2/srv/GetOutputRegisterInt_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response
  {
    var v = Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response()
    v.`success` = try r.boolean()
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_50bc4a4885829a821fa2a5bd1ad8b223f7b595344448fbdbb2fddf5ee75e17e1"
  public static let nativeType = "dsr_msgs2/srv/GetRobotLinkInfo_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request
  {
    var v = Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response: Canonical {
  public static let maximumWireBytes = 129
  public static let codecIdentity =
    "UWVMROS1_aaf1a964ea2e5d6a049a074bd4b01538ef0b43b234da9de6b034a67524087641"
  public static let nativeType = "dsr_msgs2/srv/GetRobotLinkInfo_Response"
  public static let nativeIdentity: String? = nil
  public var `d`: [Float] = Array(repeating: 0, count: 6)
  public var `a`: [Float] = Array(repeating: 0, count: 6)
  public var `alpha`: [Float] = Array(repeating: 0, count: 6)
  public var `theta`: [Float] = Array(repeating: 0, count: 6)
  public var `offset`: [Float] = Array(repeating: 0, count: 6)
  public var `gradient`: Float = 0
  public var `rotation`: Float = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`d`.count == 6 else { throw RosError(22) }
    for e in self.`d` {
      try w.float32(e)
    }
    guard self.`a`.count == 6 else { throw RosError(22) }
    for e in self.`a` {
      try w.float32(e)
    }
    guard self.`alpha`.count == 6 else { throw RosError(22) }
    for e in self.`alpha` {
      try w.float32(e)
    }
    guard self.`theta`.count == 6 else { throw RosError(22) }
    for e in self.`theta` {
      try w.float32(e)
    }
    guard self.`offset`.count == 6 else { throw RosError(22) }
    for e in self.`offset` {
      try w.float32(e)
    }
    try w.float32(self.`gradient`)
    try w.float32(self.`rotation`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response
  {
    var v = Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response()
    let count0 = 6
    v.`d` = []
    v.`d`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`d`.append(try r.float32())
    }
    let count1 = 6
    v.`a` = []
    v.`a`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`a`.append(try r.float32())
    }
    let count2 = 6
    v.`alpha` = []
    v.`alpha`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`alpha`.append(try r.float32())
    }
    let count3 = 6
    v.`theta` = []
    v.`theta`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`theta`.append(try r.float32())
    }
    let count4 = 6
    v.`offset` = []
    v.`offset`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`offset`.append(try r.float32())
    }
    v.`gradient` = try r.float32()
    v.`rotation` = try r.float32()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetRobotMode_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_945dc18b9de1cec15d388179c6a4abf95a653770164dcac30828f15912ea0136"
  public static let nativeType = "dsr_msgs2/srv/GetRobotMode_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetRobotMode_Request {
    var v = Ros2Dsr_msgs2SrvGetRobotMode_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetRobotMode_Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_91dc6499a4e962f46b46fea554ae304a47ecb4095b47c6d480c866059850aa26"
  public static let nativeType = "dsr_msgs2/srv/GetRobotMode_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_mode`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`robot_mode`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetRobotMode_Response
  {
    var v = Ros2Dsr_msgs2SrvGetRobotMode_Response()
    v.`robot_mode` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_1b6760ed64ce308e6189122e754bab03208f5e19a6e4704acf21952abdf37e7e"
  public static let nativeType = "dsr_msgs2/srv/GetRobotSpeedMode_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request
  {
    var v = Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_6eff9e2138055e3845f351abdba3189c47452903dadeaf6760f781a071543947"
  public static let nativeType = "dsr_msgs2/srv/GetRobotSpeedMode_Response"
  public static let nativeIdentity: String? = nil
  public var `speed_mode`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`speed_mode`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response
  {
    var v = Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response()
    v.`speed_mode` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetRobotState_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_b4e5f89f15b92b48be3a1282f4002b7abafeb141658eac1c0b804c9232062b50"
  public static let nativeType = "dsr_msgs2/srv/GetRobotState_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetRobotState_Request
  {
    var v = Ros2Dsr_msgs2SrvGetRobotState_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetRobotState_Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_d5bf5bb656a0ac4a621e7e50f40b6fb41ae89cbb4d5b04bc1275815bbb0ab257"
  public static let nativeType = "dsr_msgs2/srv/GetRobotState_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_state`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`robot_state`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetRobotState_Response
  {
    var v = Ros2Dsr_msgs2SrvGetRobotState_Response()
    v.`robot_state` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetRobotSystem_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_6d6d5428b67062be616f12385ede2568624ac78d83a1b6e430763dc2f0710829"
  public static let nativeType = "dsr_msgs2/srv/GetRobotSystem_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetRobotSystem_Request
  {
    var v = Ros2Dsr_msgs2SrvGetRobotSystem_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetRobotSystem_Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_faf6022901539dd3edd6b53d4a0c6d3eea0a210f2c795bf46a67e0243a0d8dd0"
  public static let nativeType = "dsr_msgs2/srv/GetRobotSystem_Response"
  public static let nativeIdentity: String? = nil
  public var `robot_system`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`robot_system`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetRobotSystem_Response
  {
    var v = Ros2Dsr_msgs2SrvGetRobotSystem_Response()
    v.`robot_system` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_016df21af56e6e0e76c5f9f24c851caee712b5af235bda04adde82eef33f6a60"
  public static let nativeType = "dsr_msgs2/srv/GetRtControlInputDataList_Request"
  public static let nativeIdentity: String? = nil
  public var `version`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`version`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request
  {
    var v = Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request()
    v.`version` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_dad3b9ec5d048ea97669bd52fa94e60abd794f44150599c3b38179e7f3425831"
  public static let nativeType = "dsr_msgs2/srv/GetRtControlInputDataList_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `data`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`data`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response
  {
    var v = Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response()
    v.`success` = try r.boolean()
    v.`data` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_e25f15b810ebadb6eceb8e90bd8aedc9f47b177f5ccd16a6d824cac69e612a96"
  public static let nativeType = "dsr_msgs2/srv/GetRtControlInputVersionList_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request
  {
    var v = Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_39f873a075b2571286ea652cbbc47696b8636138362ba898ce1f06c8fa0a368b"
  public static let nativeType = "dsr_msgs2/srv/GetRtControlInputVersionList_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `version`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`version`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response
  {
    var v = Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response()
    v.`success` = try r.boolean()
    v.`version` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_b7d3952dd7afa1da9b2a17959d25d20c570eb6195eab0fa4f181fd087555869c"
  public static let nativeType = "dsr_msgs2/srv/GetRtControlOutputDataList_Request"
  public static let nativeIdentity: String? = nil
  public var `version`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`version`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request
  {
    var v = Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request()
    v.`version` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_a8663675cd68ff265c06580f16d46a9adaf36be969639c9df85110183eb7a14d"
  public static let nativeType = "dsr_msgs2/srv/GetRtControlOutputDataList_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `data`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`data`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response
  {
    var v = Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response()
    v.`success` = try r.boolean()
    v.`data` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_401ad45a4fa41515c9aef3432ec08cb280885d54582e8c1c81f9f079352cb5e6"
  public static let nativeType = "dsr_msgs2/srv/GetRtControlOutputVersionList_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request
  {
    var v = Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_a87c62fbcee2779427d535be08b8b30ebeaecc4450ee18208def8c19fbdd42b8"
  public static let nativeType = "dsr_msgs2/srv/GetRtControlOutputVersionList_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public var `version`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`version`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response
  {
    var v = Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response()
    v.`success` = try r.boolean()
    v.`version` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetSolutionSpace_Request: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_7893e38212d85c4a6f9937711ca0209c069691b09616e08462b60253a0c75ef3"
  public static let nativeType = "dsr_msgs2/srv/GetSolutionSpace_Request"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count == 6 else { throw RosError(22) }
    for e in self.`pos` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetSolutionSpace_Request
  {
    var v = Ros2Dsr_msgs2SrvGetSolutionSpace_Request()
    let count0 = 6
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetSolutionSpace_Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_b112e71516effa144d0c8857a21a18fa0355208ea4980f8b941190c070c0243a"
  public static let nativeType = "dsr_msgs2/srv/GetSolutionSpace_Response"
  public static let nativeIdentity: String? = nil
  public var `sol_space`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`sol_space`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetSolutionSpace_Response
  {
    var v = Ros2Dsr_msgs2SrvGetSolutionSpace_Response()
    v.`sol_space` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetToolDigitalInput_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_13280849feec7050bd6edcf5a966a42315524727ff31694af91fa240a9224603"
  public static let nativeType = "dsr_msgs2/srv/GetToolDigitalInput_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetToolDigitalInput_Request
  {
    var v = Ros2Dsr_msgs2SrvGetToolDigitalInput_Request()
    v.`index` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetToolDigitalInput_Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_109edb5c9f363f7ca1558958cde4c402e30ba4875d2845db5ae1f5c2b2c5356e"
  public static let nativeType = "dsr_msgs2/srv/GetToolDigitalInput_Response"
  public static let nativeIdentity: String? = nil
  public var `value`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetToolDigitalInput_Response
  {
    var v = Ros2Dsr_msgs2SrvGetToolDigitalInput_Response()
    v.`value` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_62cc891eb1bc8b7657996a2a9c5ff11a20a53bb1d38c83080936d0ec0a41c641"
  public static let nativeType = "dsr_msgs2/srv/GetToolDigitalOutput_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request
  {
    var v = Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request()
    v.`index` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_7178715d835fca1f2f77ffed810b4f85ecd661168704df869a9ce4dffeb9c1a8"
  public static let nativeType = "dsr_msgs2/srv/GetToolDigitalOutput_Response"
  public static let nativeIdentity: String? = nil
  public var `value`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`value`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response
  {
    var v = Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response()
    v.`value` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetToolForce_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_278119e0f7e346752ee4ccc233b133a9700cf8d2e2454c72c876cf4415dccd30"
  public static let nativeType = "dsr_msgs2/srv/GetToolForce_Request"
  public static let nativeIdentity: String? = nil
  public var `ref`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`ref`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetToolForce_Request {
    var v = Ros2Dsr_msgs2SrvGetToolForce_Request()
    v.`ref` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetToolForce_Response: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_d8bb3201f41aa221981e773657e8fa4d02b37a0d9d7f6da557aa6027ffeec41e"
  public static let nativeType = "dsr_msgs2/srv/GetToolForce_Response"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvGetToolForce_Response
  {
    var v = Ros2Dsr_msgs2SrvGetToolForce_Response()
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
public struct Ros2Dsr_msgs2SrvGetUserCartCoord_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_ab137f363d6067680f0f9e60e436eb9c104c2aa1d3b0f2b4db423303944fea9b"
  public static let nativeType = "dsr_msgs2/srv/GetUserCartCoord_Request"
  public static let nativeIdentity: String? = nil
  public var `id`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetUserCartCoord_Request
  {
    var v = Ros2Dsr_msgs2SrvGetUserCartCoord_Request()
    v.`id` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetUserCartCoord_Response: Canonical {
  public static let maximumWireBytes = 50
  public static let codecIdentity =
    "UWVMROS1_41c0a3cb26e9456c439813e957d3ea539dddf492f00c601c101cf86f0589d6e0"
  public static let nativeType = "dsr_msgs2/srv/GetUserCartCoord_Response"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetUserCartCoord_Response
  {
    var v = Ros2Dsr_msgs2SrvGetUserCartCoord_Response()
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
public struct Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_e333d0d31ad7dd33a4eaf20b891e1c6a949e8518ca689b6aef5b14fbc050fde7"
  public static let nativeType = "dsr_msgs2/srv/GetWorkpieceWeight_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request
  {
    var v = Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response: Canonical {
  public static let maximumWireBytes = 5
  public static let codecIdentity =
    "UWVMROS1_c7c33e15041c362b692a24f6462fd1838c92cb8a74410ab62eb0593290f2da15"
  public static let nativeType = "dsr_msgs2/srv/GetWorkpieceWeight_Response"
  public static let nativeIdentity: String? = nil
  public var `weight`: Float = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float32(self.`weight`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response
  {
    var v = Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response()
    v.`weight` = try r.float32()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvIkin_Request: Canonical {
  public static let maximumWireBytes = 50
  public static let codecIdentity =
    "UWVMROS1_a088cb4739b4e871d281ffd7ca30d2a6afcb7a2cd2ed536fe959ba3efc01a558"
  public static let nativeType = "dsr_msgs2/srv/Ikin_Request"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvIkin_Request {
    var v = Ros2Dsr_msgs2SrvIkin_Request()
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
public struct Ros2Dsr_msgs2SrvIkin_Response: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_fec5d910aaa9200c82c11887901062077572ce9d23f9e69114cbf395e469be6f"
  public static let nativeType = "dsr_msgs2/srv/Ikin_Response"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvIkin_Response {
    var v = Ros2Dsr_msgs2SrvIkin_Response()
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
public struct Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request: Canonical {
  public static let maximumWireBytes = 17
  public static let codecIdentity =
    "UWVMROS1_021ebebd272f07623b139347486e9577a92febeec9ba2822ea42be99379365dc"
  public static let nativeType = "dsr_msgs2/srv/IsDoneBoltTightening_Request"
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
    -> Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request
  {
    var v = Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request()
    v.`m` = try r.float64()
    v.`timeout` = try r.float64()
    v.`axis` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_facd1f150c53d2fa30991435796a03f28027ca54b1da367b259a3e9226c56d2d"
  public static let nativeType = "dsr_msgs2/srv/IsDoneBoltTightening_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response
  {
    var v = Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvJog_Request: Canonical {
  public static let maximumWireBytes = 10
  public static let codecIdentity =
    "UWVMROS1_c8c738720a1def086dcb2bf4364e43b0bbeadf0bd104760ca4ddd629ec9faa72"
  public static let nativeType = "dsr_msgs2/srv/Jog_Request"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvJog_Request {
    var v = Ros2Dsr_msgs2SrvJog_Request()
    v.`jog_axis` = try r.integer(Int8.self)
    v.`move_reference` = try r.integer(Int8.self)
    v.`speed` = try r.float64()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvJog_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_feb4da140ea11a715abe3f3ee635bdc384cd12105c397c1fb0ce2cfdf631542c"
  public static let nativeType = "dsr_msgs2/srv/Jog_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvJog_Response {
    var v = Ros2Dsr_msgs2SrvJog_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvJogMulti_Request: Canonical {
  public static let maximumWireBytes = 57
  public static let codecIdentity =
    "UWVMROS1_df4ba03cc80e22e4f9e384c38cd1994750a8c875798dc4887019745a26ee2f29"
  public static let nativeType = "dsr_msgs2/srv/JogMulti_Request"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvJogMulti_Request {
    var v = Ros2Dsr_msgs2SrvJogMulti_Request()
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
public struct Ros2Dsr_msgs2SrvJogMulti_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_9cf76f60dbb1d7330297d5bacad15e29810ef7088ae83c3ad82c561c4e277d1a"
  public static let nativeType = "dsr_msgs2/srv/JogMulti_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvJogMulti_Response {
    var v = Ros2Dsr_msgs2SrvJogMulti_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveBlending_Request: Canonical {
  public static let maximumWireBytes = 2256
  public static let codecIdentity =
    "UWVMROS1_74b4ab52745fa3028c9154c373850897fac7ecdaf986822e5dc2698580de1f20"
  public static let nativeType = "dsr_msgs2/srv/MoveBlending_Request"
  public static let nativeIdentity: String? = nil
  public var `segment`: [Ros2Std_msgsMsgFloat64MultiArray] = []
  public var `pos_cnt`: Int8 = 0
  public var `vel`: [Double] = Array(repeating: 0, count: 2)
  public var `acc`: [Double] = Array(repeating: 0, count: 2)
  public var `time`: Double = 0
  public var `ref`: Int8 = 0
  public var `mode`: Int8 = 0
  public var `sync_type`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`segment`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`segment`.count))
    for e in self.`segment` {
      try e.write(to: &w)
    }
    try w.integer(self.`pos_cnt`)
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
    try w.integer(self.`sync_type`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveBlending_Request {
    var v = Ros2Dsr_msgs2SrvMoveBlending_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 6 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`segment` = []
    v.`segment`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`segment`.append(try Ros2Std_msgsMsgFloat64MultiArray.read(from: &r))
    }
    v.`pos_cnt` = try r.integer(Int8.self)
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
    v.`sync_type` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveBlending_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_2c09a8f39ab887063b890f935bc4319f4c0566fc2ccb5f612e696728a2ea3805"
  public static let nativeType = "dsr_msgs2/srv/MoveBlending_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveBlending_Response
  {
    var v = Ros2Dsr_msgs2SrvMoveBlending_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveCircle_Request: Canonical {
  public static let maximumWireBytes = 2280
  public static let codecIdentity =
    "UWVMROS1_27ebd12c2a2c30f8e20b505923344b00f2d2ad097e04ee533093144dbc58a09e"
  public static let nativeType = "dsr_msgs2/srv/MoveCircle_Request"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Ros2Std_msgsMsgFloat64MultiArray] = []
  public var `vel`: [Double] = Array(repeating: 0, count: 2)
  public var `acc`: [Double] = Array(repeating: 0, count: 2)
  public var `time`: Double = 0
  public var `radius`: Double = 0
  public var `ref`: Int8 = 0
  public var `mode`: Int8 = 0
  public var `angle1`: Double = 0
  public var `angle2`: Double = 0
  public var `blend_type`: Int8 = 0
  public var `sync_type`: Int8 = 0
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
    try w.integer(self.`blend_type`)
    try w.integer(self.`sync_type`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveCircle_Request {
    var v = Ros2Dsr_msgs2SrvMoveCircle_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 6 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try Ros2Std_msgsMsgFloat64MultiArray.read(from: &r))
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
    v.`blend_type` = try r.integer(Int8.self)
    v.`sync_type` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveCircle_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_4df4f4552161320d2b939e096b5ff54c102c668cab1efa1e59a8f12757ebe307"
  public static let nativeType = "dsr_msgs2/srv/MoveCircle_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveCircle_Response {
    var v = Ros2Dsr_msgs2SrvMoveCircle_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveHome_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_9f36ef8e03e895db2b8c588ad52dcc370ce37532974879c3280da68202643a67"
  public static let nativeType = "dsr_msgs2/srv/MoveHome_Request"
  public static let nativeIdentity: String? = nil
  public var `target`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`target`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveHome_Request {
    var v = Ros2Dsr_msgs2SrvMoveHome_Request()
    v.`target` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveHome_Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_d28c2d8d4dc2c97fbab5e531b235830d68fc46754fd7921993e05c8d33df0edf"
  public static let nativeType = "dsr_msgs2/srv/MoveHome_Response"
  public static let nativeIdentity: String? = nil
  public var `res`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`res`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveHome_Response {
    var v = Ros2Dsr_msgs2SrvMoveHome_Response()
    v.`res` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveJoint_Request: Canonical {
  public static let maximumWireBytes = 83
  public static let codecIdentity =
    "UWVMROS1_80e0a74b2781d091fc847f5f2d4a0a56bdd974e62f9a80cc7382118f5d6e4952"
  public static let nativeType = "dsr_msgs2/srv/MoveJoint_Request"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `vel`: Double = 0
  public var `acc`: Double = 0
  public var `time`: Double = 0
  public var `radius`: Double = 0
  public var `mode`: Int8 = 0
  public var `blend_type`: Int8 = 0
  public var `sync_type`: Int8 = 0
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
    try w.integer(self.`blend_type`)
    try w.integer(self.`sync_type`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveJoint_Request {
    var v = Ros2Dsr_msgs2SrvMoveJoint_Request()
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
    v.`blend_type` = try r.integer(Int8.self)
    v.`sync_type` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveJoint_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_57c54f467487b7b7f0966a484e6777b4cb48fedd5790ec8f0e3c88979ce4c238"
  public static let nativeType = "dsr_msgs2/srv/MoveJoint_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveJoint_Response {
    var v = Ros2Dsr_msgs2SrvMoveJoint_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveJointx_Request: Canonical {
  public static let maximumWireBytes = 85
  public static let codecIdentity =
    "UWVMROS1_c63a6822f6b03a2380d740995b12b4889e38d46a48fa8f74a85c2eccde1712be"
  public static let nativeType = "dsr_msgs2/srv/MoveJointx_Request"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `vel`: Double = 0
  public var `acc`: Double = 0
  public var `time`: Double = 0
  public var `radius`: Double = 0
  public var `ref`: Int8 = 0
  public var `mode`: Int8 = 0
  public var `blend_type`: Int8 = 0
  public var `sol`: Int8 = 0
  public var `sync_type`: Int8 = 0
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
    try w.integer(self.`blend_type`)
    try w.integer(self.`sol`)
    try w.integer(self.`sync_type`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveJointx_Request {
    var v = Ros2Dsr_msgs2SrvMoveJointx_Request()
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
    v.`blend_type` = try r.integer(Int8.self)
    v.`sol` = try r.integer(Int8.self)
    v.`sync_type` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveJointx_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_4b04129715b754766e2971a38b170681e1055cc121bf56d7b542594ac9986d0a"
  public static let nativeType = "dsr_msgs2/srv/MoveJointx_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveJointx_Response {
    var v = Ros2Dsr_msgs2SrvMoveJointx_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveLine_Request: Canonical {
  public static let maximumWireBytes = 100
  public static let codecIdentity =
    "UWVMROS1_104cb9b617f4f5f9596aa648cd5d1cd55bad832e0709e46c2e19be17d94f384a"
  public static let nativeType = "dsr_msgs2/srv/MoveLine_Request"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Double] = Array(repeating: 0, count: 6)
  public var `vel`: [Double] = Array(repeating: 0, count: 2)
  public var `acc`: [Double] = Array(repeating: 0, count: 2)
  public var `time`: Double = 0
  public var `radius`: Double = 0
  public var `ref`: Int8 = 0
  public var `mode`: Int8 = 0
  public var `blend_type`: Int8 = 0
  public var `sync_type`: Int8 = 0
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
    try w.integer(self.`blend_type`)
    try w.integer(self.`sync_type`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveLine_Request {
    var v = Ros2Dsr_msgs2SrvMoveLine_Request()
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
    v.`blend_type` = try r.integer(Int8.self)
    v.`sync_type` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveLine_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_6c0632d3a0aa1476b0cfc9adeb8eb5ef5e3b718eccdbb3f24d942315bd287ef6"
  public static let nativeType = "dsr_msgs2/srv/MoveLine_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveLine_Response {
    var v = Ros2Dsr_msgs2SrvMoveLine_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMovePause_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_89602d9445236b0796a0628a3eecd1d57cd298135759330f7c1927d451beac80"
  public static let nativeType = "dsr_msgs2/srv/MovePause_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMovePause_Request {
    var v = Ros2Dsr_msgs2SrvMovePause_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMovePause_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_9d8e0eabfff65e2d80132a9586cffd61f9989e2b39842cc3af2f7b77b01a0dd2"
  public static let nativeType = "dsr_msgs2/srv/MovePause_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMovePause_Response {
    var v = Ros2Dsr_msgs2SrvMovePause_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMovePeriodic_Request: Canonical {
  public static let maximumWireBytes = 107
  public static let codecIdentity =
    "UWVMROS1_f05e9629ebcf086ef97e02f28c9b97f4604d53e15b348e76556dc9eef7791f41"
  public static let nativeType = "dsr_msgs2/srv/MovePeriodic_Request"
  public static let nativeIdentity: String? = nil
  public var `amp`: [Double] = Array(repeating: 0, count: 6)
  public var `periodic`: [Double] = Array(repeating: 0, count: 6)
  public var `acc`: Double = 0
  public var `repeat`: Int8 = 0
  public var `ref`: Int8 = 0
  public var `sync_type`: Int8 = 0
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
    try w.integer(self.`sync_type`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMovePeriodic_Request {
    var v = Ros2Dsr_msgs2SrvMovePeriodic_Request()
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
    v.`sync_type` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMovePeriodic_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_99a58c09b66846d82e1e50451c7663fc2f8bfb6564181a737c37a0296a8bf022"
  public static let nativeType = "dsr_msgs2/srv/MovePeriodic_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMovePeriodic_Response
  {
    var v = Ros2Dsr_msgs2SrvMovePeriodic_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveResume_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_7cb93befc32b7fb62279f8be0e6aa9f0075274375304afa5a438dea13588879e"
  public static let nativeType = "dsr_msgs2/srv/MoveResume_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveResume_Request {
    var v = Ros2Dsr_msgs2SrvMoveResume_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveResume_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_1b8d38ecbb26dc9311cd7dbc35e397eabae2f8fc308f7f3ada8afaeee15ec956"
  public static let nativeType = "dsr_msgs2/srv/MoveResume_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveResume_Response {
    var v = Ros2Dsr_msgs2SrvMoveResume_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveSpiral_Request: Canonical {
  public static let maximumWireBytes = 94
  public static let codecIdentity =
    "UWVMROS1_4720da9e9607f7a2df71d51cbc568ca08e85f9cf8b335f5ed3128844b3ab66a1"
  public static let nativeType = "dsr_msgs2/srv/MoveSpiral_Request"
  public static let nativeIdentity: String? = nil
  public var `revolution`: Double = 0
  public var `max_radius`: Double = 0
  public var `max_length`: Double = 0
  public var `target_pos`: [Double] = Array(repeating: 0, count: 3)
  public var `vel`: [Double] = Array(repeating: 0, count: 2)
  public var `acc`: [Double] = Array(repeating: 0, count: 2)
  public var `time`: Double = 0
  public var `task_axis`: Int8 = 0
  public var `ref`: Int8 = 0
  public var `mode`: Int8 = 0
  public var `spiral_dir`: Int8 = 0
  public var `rot_dir`: Int8 = 0
  public var `sync_type`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`revolution`)
    try w.float64(self.`max_radius`)
    try w.float64(self.`max_length`)
    guard self.`target_pos`.count == 3 else { throw RosError(22) }
    for e in self.`target_pos` {
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
    try w.integer(self.`task_axis`)
    try w.integer(self.`ref`)
    try w.integer(self.`mode`)
    try w.integer(self.`spiral_dir`)
    try w.integer(self.`rot_dir`)
    try w.integer(self.`sync_type`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveSpiral_Request {
    var v = Ros2Dsr_msgs2SrvMoveSpiral_Request()
    v.`revolution` = try r.float64()
    v.`max_radius` = try r.float64()
    v.`max_length` = try r.float64()
    let count3 = 3
    v.`target_pos` = []
    v.`target_pos`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`target_pos`.append(try r.float64())
    }
    let count4 = 2
    v.`vel` = []
    v.`vel`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`vel`.append(try r.float64())
    }
    let count5 = 2
    v.`acc` = []
    v.`acc`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`acc`.append(try r.float64())
    }
    v.`time` = try r.float64()
    v.`task_axis` = try r.integer(Int8.self)
    v.`ref` = try r.integer(Int8.self)
    v.`mode` = try r.integer(Int8.self)
    v.`spiral_dir` = try r.integer(Int8.self)
    v.`rot_dir` = try r.integer(Int8.self)
    v.`sync_type` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveSpiral_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_8f8f8c5ebb9288d4414bd64ac2bbcaac7c459dd187c149a2424d2ca426dd51fc"
  public static let nativeType = "dsr_msgs2/srv/MoveSpiral_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveSpiral_Response {
    var v = Ros2Dsr_msgs2SrvMoveSpiral_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveSplineJoint_Request: Canonical {
  public static let maximumWireBytes = 2319
  public static let codecIdentity =
    "UWVMROS1_3e37f3aa8318b9dffd0d72754d6f8f6db4c6af7fed79a20cba019e6dd3535fe2"
  public static let nativeType = "dsr_msgs2/srv/MoveSplineJoint_Request"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Ros2Std_msgsMsgFloat64MultiArray] = []
  public var `pos_cnt`: Int8 = 0
  public var `vel`: [Double] = Array(repeating: 0, count: 6)
  public var `acc`: [Double] = Array(repeating: 0, count: 6)
  public var `time`: Double = 0
  public var `mode`: Int8 = 0
  public var `sync_type`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`pos`.count))
    for e in self.`pos` {
      try e.write(to: &w)
    }
    try w.integer(self.`pos_cnt`)
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
    try w.integer(self.`sync_type`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvMoveSplineJoint_Request
  {
    var v = Ros2Dsr_msgs2SrvMoveSplineJoint_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 6 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try Ros2Std_msgsMsgFloat64MultiArray.read(from: &r))
    }
    v.`pos_cnt` = try r.integer(Int8.self)
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
    v.`sync_type` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveSplineJoint_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_90acb8d4656b1cd6c5be0eb0693e2718e1ad96d10cf8cbb53738a7efd2898444"
  public static let nativeType = "dsr_msgs2/srv/MoveSplineJoint_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvMoveSplineJoint_Response
  {
    var v = Ros2Dsr_msgs2SrvMoveSplineJoint_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveSplineTask_Request: Canonical {
  public static let maximumWireBytes = 2257
  public static let codecIdentity =
    "UWVMROS1_9ec113186666b39b1c4a27b1a0f9e8c9a8d5e18e0d0d773103b37811d5c613ff"
  public static let nativeType = "dsr_msgs2/srv/MoveSplineTask_Request"
  public static let nativeIdentity: String? = nil
  public var `pos`: [Ros2Std_msgsMsgFloat64MultiArray] = []
  public var `pos_cnt`: Int8 = 0
  public var `vel`: [Double] = Array(repeating: 0, count: 2)
  public var `acc`: [Double] = Array(repeating: 0, count: 2)
  public var `time`: Double = 0
  public var `ref`: Int8 = 0
  public var `mode`: Int8 = 0
  public var `opt`: Int8 = 0
  public var `sync_type`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`pos`.count <= 6 else { throw RosError(22) }
    try w.integer(UInt32(self.`pos`.count))
    for e in self.`pos` {
      try e.write(to: &w)
    }
    try w.integer(self.`pos_cnt`)
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
    try w.integer(self.`sync_type`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveSplineTask_Request
  {
    var v = Ros2Dsr_msgs2SrvMoveSplineTask_Request()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 6 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`pos` = []
    v.`pos`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`pos`.append(try Ros2Std_msgsMsgFloat64MultiArray.read(from: &r))
    }
    v.`pos_cnt` = try r.integer(Int8.self)
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
    v.`sync_type` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveSplineTask_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e1991eb0d0b76ea783f3a410df208c432b09dd0bb5dc595c9aad74e5da147fb5"
  public static let nativeType = "dsr_msgs2/srv/MoveSplineTask_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvMoveSplineTask_Response
  {
    var v = Ros2Dsr_msgs2SrvMoveSplineTask_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveStop_Request: Canonical {
  public static let maximumWireBytes = 4
  public static let codecIdentity =
    "UWVMROS1_51bb66de3739f7fc873f36d78fc6b3fe70f28e788f4b5b4359768491074d1efd"
  public static let nativeType = "dsr_msgs2/srv/MoveStop_Request"
  public static let nativeIdentity: String? = nil
  public var `stop_mode`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`stop_mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveStop_Request {
    var v = Ros2Dsr_msgs2SrvMoveStop_Request()
    v.`stop_mode` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveStop_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_ce670f48f010badbcafa3e96d05af25a02a018b41e75544a6d183fe89ceafbeb"
  public static let nativeType = "dsr_msgs2/srv/MoveStop_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveStop_Response {
    var v = Ros2Dsr_msgs2SrvMoveStop_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveWait_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_7c0de129d63ef3142044c481392ba437362245e6643ba1bd0f87f90b9b377d61"
  public static let nativeType = "dsr_msgs2/srv/MoveWait_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveWait_Request {
    var v = Ros2Dsr_msgs2SrvMoveWait_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvMoveWait_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_1e235c22c0e493e309e8f53be1043ce1b425c52910358c7b34496c1291d61486"
  public static let nativeType = "dsr_msgs2/srv/MoveWait_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvMoveWait_Response {
    var v = Ros2Dsr_msgs2SrvMoveWait_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request: Canonical {
  public static let maximumWireBytes = 50
  public static let codecIdentity =
    "UWVMROS1_772207f58ed8dc8dbef23f5ab3161a4289f378eed9ae9b960e15e380c5efcb8d"
  public static let nativeType = "dsr_msgs2/srv/OverwriteUserCartCoord_Request"
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
    -> Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request
  {
    var v = Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request()
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
public struct Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_93cc941737dc373f7b97a044a9b675cf220a511bbbde19b6d98fb9ac8f33dc05"
  public static let nativeType = "dsr_msgs2/srv/OverwriteUserCartCoord_Response"
  public static let nativeIdentity: String? = nil
  public var `id`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response
  {
    var v = Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response()
    v.`id` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvParallelAxis1_Request: Canonical {
  public static let maximumWireBytes = 146
  public static let codecIdentity =
    "UWVMROS1_97ed9f4649879d56a9bdabbb2040b1779be4ac7156292b27f6ca04a82290e1fd"
  public static let nativeType = "dsr_msgs2/srv/ParallelAxis1_Request"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvParallelAxis1_Request
  {
    var v = Ros2Dsr_msgs2SrvParallelAxis1_Request()
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
public struct Ros2Dsr_msgs2SrvParallelAxis1_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_f748471d4492dbd0db21a6417a12eedbbc1d23920abe712af5ac3099a1b4a37c"
  public static let nativeType = "dsr_msgs2/srv/ParallelAxis1_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvParallelAxis1_Response
  {
    var v = Ros2Dsr_msgs2SrvParallelAxis1_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvParallelAxis2_Request: Canonical {
  public static let maximumWireBytes = 26
  public static let codecIdentity =
    "UWVMROS1_742f664642630b1c2fa965d9ff442791edc7c1aa90c9238fc370d1fb8baf1450"
  public static let nativeType = "dsr_msgs2/srv/ParallelAxis2_Request"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvParallelAxis2_Request
  {
    var v = Ros2Dsr_msgs2SrvParallelAxis2_Request()
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
public struct Ros2Dsr_msgs2SrvParallelAxis2_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_7a2659d61e6a13d1f17986c311441ecc4bb72146978f209c976f218817fd146b"
  public static let nativeType = "dsr_msgs2/srv/ParallelAxis2_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvParallelAxis2_Response
  {
    var v = Ros2Dsr_msgs2SrvParallelAxis2_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvReadDataRt_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_9c21179a2561779bfcd2e6bc011ab9eb183517cc93de8dc6349f016bc7f3a418"
  public static let nativeType = "dsr_msgs2/srv/ReadDataRt_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvReadDataRt_Request {
    var v = Ros2Dsr_msgs2SrvReadDataRt_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvReadDataRt_Response: Canonical {
  public static let maximumWireBytes = 8154
  public static let codecIdentity =
    "UWVMROS1_4055ed8c5ea1414a21bb32aad8cd37a9d2317619840a7a5de1f563b512395093"
  public static let nativeType = "dsr_msgs2/srv/ReadDataRt_Response"
  public static let nativeIdentity: String? = nil
  public var `data`: Ros2Dsr_msgs2MsgRobotStateRt = Ros2Dsr_msgs2MsgRobotStateRt()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`data`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvReadDataRt_Response {
    var v = Ros2Dsr_msgs2SrvReadDataRt_Response()
    v.`data` = try Ros2Dsr_msgs2MsgRobotStateRt.read(from: &r)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_1b3e5187b8a5753f0703abb97a653bcbcd62f19dc912f0a70dd1cf3d0fab59df"
  public static let nativeType = "dsr_msgs2/srv/ReleaseComplianceCtrl_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request
  {
    var v = Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d63a68f67aa608599d4a33a7081d157eafcf52928388b0bfb1dd5faf51a4fa40"
  public static let nativeType = "dsr_msgs2/srv/ReleaseComplianceCtrl_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response
  {
    var v = Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvReleaseForce_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_5346f6a634c61acc8d296e83cf96e007fe369765d291698063d80c5fa2e18a91"
  public static let nativeType = "dsr_msgs2/srv/ReleaseForce_Request"
  public static let nativeIdentity: String? = nil
  public var `time`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`time`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvReleaseForce_Request {
    var v = Ros2Dsr_msgs2SrvReleaseForce_Request()
    v.`time` = try r.float64()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvReleaseForce_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_4d74f7c2ca2f7b97f8222bc31ccef0450c045b2424efa6f9d6d550c6a824149c"
  public static let nativeType = "dsr_msgs2/srv/ReleaseForce_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvReleaseForce_Response
  {
    var v = Ros2Dsr_msgs2SrvReleaseForce_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_53ac7a846a49f8200358455dbbe63580e90309b3c3166ad48ed87ea33c364179"
  public static let nativeType = "dsr_msgs2/srv/ResetWorkpieceWeight_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request
  {
    var v = Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_29d28e032dffe750b93e8207660af315687f3c2241a8a53f29fa7da7570b4abd"
  public static let nativeType = "dsr_msgs2/srv/ResetWorkpieceWeight_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response
  {
    var v = Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvRobotiq2FClose_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_1bb8c6794458b545e6a117418c52ede9ba301787dcc80c346cdbeadb7072d974"
  public static let nativeType = "dsr_msgs2/srv/Robotiq2FClose_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvRobotiq2FClose_Request
  {
    var v = Ros2Dsr_msgs2SrvRobotiq2FClose_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvRobotiq2FClose_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_93b3a91aedebf08ae74a53857c898ddda0493662d02df100bde32652042f593e"
  public static let nativeType = "dsr_msgs2/srv/Robotiq2FClose_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvRobotiq2FClose_Response
  {
    var v = Ros2Dsr_msgs2SrvRobotiq2FClose_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvRobotiq2FMove_Request: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_d9125f3ed3a008a9796249b2759ff3e1fb9b8cc206ae89165fd20f382e0407f2"
  public static let nativeType = "dsr_msgs2/srv/Robotiq2FMove_Request"
  public static let nativeIdentity: String? = nil
  public var `width`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`width`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvRobotiq2FMove_Request
  {
    var v = Ros2Dsr_msgs2SrvRobotiq2FMove_Request()
    v.`width` = try r.float64()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvRobotiq2FMove_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_c7365e9517f2da81712616281451882cfedbe5cd0c771fbc93d3d155598fa41d"
  public static let nativeType = "dsr_msgs2/srv/Robotiq2FMove_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvRobotiq2FMove_Response
  {
    var v = Ros2Dsr_msgs2SrvRobotiq2FMove_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvRobotiq2FOpen_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_0d94a65ab5ad917af12e961dfddc1c3d722d0f9bf703a20f7c4e1b86d646889a"
  public static let nativeType = "dsr_msgs2/srv/Robotiq2FOpen_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvRobotiq2FOpen_Request
  {
    var v = Ros2Dsr_msgs2SrvRobotiq2FOpen_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvRobotiq2FOpen_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_0d7392466b804afe346333e6eab855aa2ac2d66c96ab417e7d96ec6917ec4f2c"
  public static let nativeType = "dsr_msgs2/srv/Robotiq2FOpen_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvRobotiq2FOpen_Response
  {
    var v = Ros2Dsr_msgs2SrvRobotiq2FOpen_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSerialSendData_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_6a1da84ea13b36d9722b9c7779baa295bf13ee1e85266226659f5f077fb67ce8"
  public static let nativeType = "dsr_msgs2/srv/SerialSendData_Request"
  public static let nativeIdentity: String? = nil
  public var `data`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`data`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSerialSendData_Request
  {
    var v = Ros2Dsr_msgs2SrvSerialSendData_Request()
    v.`data` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSerialSendData_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_a28dd2160987b004eb5ee91cc2e0e6a3fbdb54777e33df0044131811da1ac278"
  public static let nativeType = "dsr_msgs2/srv/SerialSendData_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSerialSendData_Response
  {
    var v = Ros2Dsr_msgs2SrvSerialSendData_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvServoOff_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_f7445b77379d9197bd64162af81c79f19b8eccfd65bb35a1c7ec1c6c90b0956c"
  public static let nativeType = "dsr_msgs2/srv/ServoOff_Request"
  public static let nativeIdentity: String? = nil
  public static let `STOP_TYPE_QUICK_STO`: Int8 = 0
  public static let `STOP_TYPE_QUICK`: Int8 = 1
  public static let `STOP_TYPE_SLOW`: Int8 = 2
  public static let `STOP_TYPE_HOLD`: Int8 = 3
  public static let `STOP_TYPE_EMERGENCY`: Int8 = 3
  public var `stop_type`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`stop_type`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvServoOff_Request {
    var v = Ros2Dsr_msgs2SrvServoOff_Request()
    v.`stop_type` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvServoOff_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_da341e498342ad932e3f5f9a037252ccd53402609abfaf5a20e0b2f452ac74db"
  public static let nativeType = "dsr_msgs2/srv/ServoOff_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvServoOff_Response {
    var v = Ros2Dsr_msgs2SrvServoOff_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetAccjRt_Request: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_73ff05ee72605c8e3bec72ea56f962475a50db8afed07ca299a1b47e5a16f66f"
  public static let nativeType = "dsr_msgs2/srv/SetAccjRt_Request"
  public static let nativeIdentity: String? = nil
  public var `acc`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`acc`.count == 6 else { throw RosError(22) }
    for e in self.`acc` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetAccjRt_Request {
    var v = Ros2Dsr_msgs2SrvSetAccjRt_Request()
    let count0 = 6
    v.`acc` = []
    v.`acc`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`acc`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetAccjRt_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_a25cd5180e9812a012ce3337665b7a20a97e13ad99c9ca8accdcbbd644eb539c"
  public static let nativeType = "dsr_msgs2/srv/SetAccjRt_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetAccjRt_Response {
    var v = Ros2Dsr_msgs2SrvSetAccjRt_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetAccxRt_Request: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_55addee739e16839a0bedd135930ea3b9e1a09f80776346f7c71c1d4e64e5111"
  public static let nativeType = "dsr_msgs2/srv/SetAccxRt_Request"
  public static let nativeIdentity: String? = nil
  public var `trans`: Double = 0
  public var `rotation`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`trans`)
    try w.float64(self.`rotation`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetAccxRt_Request {
    var v = Ros2Dsr_msgs2SrvSetAccxRt_Request()
    v.`trans` = try r.float64()
    v.`rotation` = try r.float64()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetAccxRt_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_1277c73c96a872595079bdb1fbff9b99b4f2f7f62ad50339d7402a864610434c"
  public static let nativeType = "dsr_msgs2/srv/SetAccxRt_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetAccxRt_Response {
    var v = Ros2Dsr_msgs2SrvSetAccxRt_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_56cd6d0829be3eac45dfd15bd9693f53b72705481bb905c16dc0ab19843fc7d0"
  public static let nativeType = "dsr_msgs2/srv/SetCtrlBoxAnalogInputType_Request"
  public static let nativeIdentity: String? = nil
  public var `channel`: Int8 = 0
  public var `mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`channel`)
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request
  {
    var v = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request()
    v.`channel` = try r.integer(Int8.self)
    v.`mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_dcbd1b140dca6119d2be2b2eea11efc394969f0bf16926c5758bd384e764eaf0"
  public static let nativeType = "dsr_msgs2/srv/SetCtrlBoxAnalogInputType_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response
  {
    var v = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request: Canonical {
  public static let maximumWireBytes = 9
  public static let codecIdentity =
    "UWVMROS1_6da2558f6e5259eaf4573144414fd8e6a917a9a43d11b7a0036187158e97f34a"
  public static let nativeType = "dsr_msgs2/srv/SetCtrlBoxAnalogOutput_Request"
  public static let nativeIdentity: String? = nil
  public var `channel`: Int8 = 0
  public var `value`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`channel`)
    try w.float64(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request
  {
    var v = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request()
    v.`channel` = try r.integer(Int8.self)
    v.`value` = try r.float64()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_258f0495c9eeacec7cf7221018fab5a99939f153c6a5cddb6f653ca71859e1e1"
  public static let nativeType = "dsr_msgs2/srv/SetCtrlBoxAnalogOutput_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response
  {
    var v = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_ee2b262d71056945ef50cd2cfd645f63220c63071ed28531e79740539b0b15f9"
  public static let nativeType = "dsr_msgs2/srv/SetCtrlBoxAnalogOutputType_Request"
  public static let nativeIdentity: String? = nil
  public var `channel`: Int8 = 0
  public var `mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`channel`)
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request
  {
    var v = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request()
    v.`channel` = try r.integer(Int8.self)
    v.`mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_47900b504bce4fd7546759c836a78d02e873630ecc79cfa989e3473a9f490359"
  public static let nativeType = "dsr_msgs2/srv/SetCtrlBoxAnalogOutputType_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response
  {
    var v = Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_ce45009eaf9382aa3bccc48526aa9e5a040847ad08deb9a37d574dd69a34258d"
  public static let nativeType = "dsr_msgs2/srv/SetCtrlBoxDigitalOutput_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int8 = 0
  public var `value`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request
  {
    var v = Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request()
    v.`index` = try r.integer(Int8.self)
    v.`value` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_fd9da818a998c786665a6849417511722de21391c4aaa92422eb7db061bb9330"
  public static let nativeType = "dsr_msgs2/srv/SetCtrlBoxDigitalOutput_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response
  {
    var v = Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetCurrentTcp_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_1b9f1bd57a2dd82cc52ec59acc9967aea8948613ec68dd26e0a9a9897088d002"
  public static let nativeType = "dsr_msgs2/srv/SetCurrentTcp_Request"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetCurrentTcp_Request
  {
    var v = Ros2Dsr_msgs2SrvSetCurrentTcp_Request()
    v.`name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetCurrentTcp_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_9c66924cfd4931bae242c3d11dd0a9293b337defc82501719b179b622d9f342a"
  public static let nativeType = "dsr_msgs2/srv/SetCurrentTcp_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetCurrentTcp_Response
  {
    var v = Ros2Dsr_msgs2SrvSetCurrentTcp_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetCurrentTool_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_8d1254ad637afaeca980e00cb89c1a3219cea13e93a0c83641fcf3f7c8afd440"
  public static let nativeType = "dsr_msgs2/srv/SetCurrentTool_Request"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetCurrentTool_Request
  {
    var v = Ros2Dsr_msgs2SrvSetCurrentTool_Request()
    v.`name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetCurrentTool_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_964448078ed08bb742a8077370c02f6b88d702244df67e4eb7d67828abfae932"
  public static let nativeType = "dsr_msgs2/srv/SetCurrentTool_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetCurrentTool_Response
  {
    var v = Ros2Dsr_msgs2SrvSetCurrentTool_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetDesiredForce_Request: Canonical {
  public static let maximumWireBytes = 64
  public static let codecIdentity =
    "UWVMROS1_a49831bf62f8a697addd5be7521f861a307940be45d4a59d9777580801ba4b1a"
  public static let nativeType = "dsr_msgs2/srv/SetDesiredForce_Request"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetDesiredForce_Request
  {
    var v = Ros2Dsr_msgs2SrvSetDesiredForce_Request()
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
public struct Ros2Dsr_msgs2SrvSetDesiredForce_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_53ba3b5b57cca8d039ad6c148c20f0cff1e6c93ba4fe170bc7ccc5d0d3c056f9"
  public static let nativeType = "dsr_msgs2/srv/SetDesiredForce_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetDesiredForce_Response
  {
    var v = Ros2Dsr_msgs2SrvSetDesiredForce_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetModbusOutput_Request: Canonical {
  public static let maximumWireBytes = 264
  public static let codecIdentity =
    "UWVMROS1_0653027d5adf9f01bda734d110232c55849f4b19ddaee78dd20b4aecf79096aa"
  public static let nativeType = "dsr_msgs2/srv/SetModbusOutput_Request"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetModbusOutput_Request
  {
    var v = Ros2Dsr_msgs2SrvSetModbusOutput_Request()
    v.`name` = try r.string(bound: 256)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetModbusOutput_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_8a8f0f0da4dc7a3235882cc2aef013d1722f17020535a4ddad5dceec5c533262"
  public static let nativeType = "dsr_msgs2/srv/SetModbusOutput_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetModbusOutput_Response
  {
    var v = Ros2Dsr_msgs2SrvSetModbusOutput_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request: Canonical {
  public static let maximumWireBytes = 6
  public static let codecIdentity =
    "UWVMROS1_309eebb54f359760a9c52635c1989d966c7b3998e34444dfccc4023ed43c1f88"
  public static let nativeType = "dsr_msgs2/srv/SetOutputRegisterBit_Request"
  public static let nativeIdentity: String? = nil
  public var `address`: UInt16 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request
  {
    var v = Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request()
    v.`address` = try r.integer(UInt16.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_3358f20e8d47bdafe4406208878d8c28c320f9e53844eaacfaadfb1255f8a6e8"
  public static let nativeType = "dsr_msgs2/srv/SetOutputRegisterBit_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response
  {
    var v = Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request: Canonical {
  public static let maximumWireBytes = 10
  public static let codecIdentity =
    "UWVMROS1_7f0c5c355381aa45700641c3ba99b227fe6bbb5394f1e2cb01c4f2b899918c61"
  public static let nativeType = "dsr_msgs2/srv/SetOutputRegisterFloat_Request"
  public static let nativeIdentity: String? = nil
  public var `address`: UInt16 = 0
  public var `value`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.float64(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request
  {
    var v = Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request()
    v.`address` = try r.integer(UInt16.self)
    v.`value` = try r.float64()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_9c3d3799cc5622c88b54926353e730bf362a75c4a23e95c9543820d489f1b27f"
  public static let nativeType = "dsr_msgs2/srv/SetOutputRegisterFloat_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response
  {
    var v = Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request: Canonical {
  public static let maximumWireBytes = 6
  public static let codecIdentity =
    "UWVMROS1_1d250e3cfd00550fc55b69ac120c384e90573636d7a2adc8a5e8b122ec678364"
  public static let nativeType = "dsr_msgs2/srv/SetOutputRegisterInt_Request"
  public static let nativeIdentity: String? = nil
  public var `address`: UInt16 = 0
  public var `value`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`address`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request
  {
    var v = Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request()
    v.`address` = try r.integer(UInt16.self)
    v.`value` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_ec70602507eebbdca44703e487375d482510aaa684aa2dd93a5bdcd0ba8275f7"
  public static let nativeType = "dsr_msgs2/srv/SetOutputRegisterInt_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response
  {
    var v = Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetRefCoord_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_801f3fdd878bd7661db70ef37a8146e9c02f539c65d91a60a7589a1009bc9be5"
  public static let nativeType = "dsr_msgs2/srv/SetRefCoord_Request"
  public static let nativeIdentity: String? = nil
  public var `coord`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`coord`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetRefCoord_Request {
    var v = Ros2Dsr_msgs2SrvSetRefCoord_Request()
    v.`coord` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetRefCoord_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_733bfb338aa280d2475a6398264e26cf76e873c92e20e9e8496898c38f990bae"
  public static let nativeType = "dsr_msgs2/srv/SetRefCoord_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetRefCoord_Response {
    var v = Ros2Dsr_msgs2SrvSetRefCoord_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetRobotControl_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d39305d9d913933542cc89eba2c9b5abd68e25574c9f8096ad4bb16cebb2c97f"
  public static let nativeType = "dsr_msgs2/srv/SetRobotControl_Request"
  public static let nativeIdentity: String? = nil
  public var `robot_control`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`robot_control`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetRobotControl_Request
  {
    var v = Ros2Dsr_msgs2SrvSetRobotControl_Request()
    v.`robot_control` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetRobotControl_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_e4aad49231edc73256306d46bd537ffb24d61956146265a7f04d1eb1aafc684c"
  public static let nativeType = "dsr_msgs2/srv/SetRobotControl_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetRobotControl_Response
  {
    var v = Ros2Dsr_msgs2SrvSetRobotControl_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetRobotMode_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_59506bb1284a069b41db932d11fcef986befe63b2d365b16ff6a09d1d4227a9b"
  public static let nativeType = "dsr_msgs2/srv/SetRobotMode_Request"
  public static let nativeIdentity: String? = nil
  public var `robot_mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`robot_mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetRobotMode_Request {
    var v = Ros2Dsr_msgs2SrvSetRobotMode_Request()
    v.`robot_mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetRobotMode_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_f1d0dad948e4a24471c406e08b79640f3846f0d96aaf63d84763066b54963dee"
  public static let nativeType = "dsr_msgs2/srv/SetRobotMode_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetRobotMode_Response
  {
    var v = Ros2Dsr_msgs2SrvSetRobotMode_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_74f6d0c7e148619aa43ad375b529155bce79ff06295ca5612dee8b17c8f7399b"
  public static let nativeType = "dsr_msgs2/srv/SetRobotSpeedMode_Request"
  public static let nativeIdentity: String? = nil
  public var `speed_mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`speed_mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request
  {
    var v = Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request()
    v.`speed_mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_f2b86ce2bbd498677537e77b069fda28c0c48c73d1d3b4a8b4f6d41460a2dde2"
  public static let nativeType = "dsr_msgs2/srv/SetRobotSpeedMode_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response
  {
    var v = Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetRobotSystem_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_2cbe8cfcd2fbe89acc3310ec43e904bdad6e246bbda7c7225357d9478e591030"
  public static let nativeType = "dsr_msgs2/srv/SetRobotSystem_Request"
  public static let nativeIdentity: String? = nil
  public var `robot_system`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`robot_system`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetRobotSystem_Request
  {
    var v = Ros2Dsr_msgs2SrvSetRobotSystem_Request()
    v.`robot_system` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetRobotSystem_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_93e95c1c768694abbfaa89bca4357085b9e6b67b031cedaf3ae064a0e5545872"
  public static let nativeType = "dsr_msgs2/srv/SetRobotSystem_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetRobotSystem_Response
  {
    var v = Ros2Dsr_msgs2SrvSetRobotSystem_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetRtControlInput_Request: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_5d0d581d5874bb92ea5c67281c4414d4dcf2799ebeb13b12b60b58408b3854c7"
  public static let nativeType = "dsr_msgs2/srv/SetRtControlInput_Request"
  public static let nativeIdentity: String? = nil
  public var `version`: String = ""
  public var `period`: Double = 0
  public var `loss`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`version`, bound: 256)
    try w.float64(self.`period`)
    try w.integer(self.`loss`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetRtControlInput_Request
  {
    var v = Ros2Dsr_msgs2SrvSetRtControlInput_Request()
    v.`version` = try r.string(bound: 256)
    v.`period` = try r.float64()
    v.`loss` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetRtControlInput_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d4a506d56199fac9bd3decbdadce3a728df404854dfceea3f1365e25a031c2a8"
  public static let nativeType = "dsr_msgs2/srv/SetRtControlInput_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetRtControlInput_Response
  {
    var v = Ros2Dsr_msgs2SrvSetRtControlInput_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetRtControlOutput_Request: Canonical {
  public static let maximumWireBytes = 272
  public static let codecIdentity =
    "UWVMROS1_12dac5a038aa91a74240656b3d088e1fbee381de935a8b8aae7fb2a152bcaa47"
  public static let nativeType = "dsr_msgs2/srv/SetRtControlOutput_Request"
  public static let nativeIdentity: String? = nil
  public var `version`: String = ""
  public var `period`: Double = 0
  public var `loss`: Int32 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`version`, bound: 256)
    try w.float64(self.`period`)
    try w.integer(self.`loss`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetRtControlOutput_Request
  {
    var v = Ros2Dsr_msgs2SrvSetRtControlOutput_Request()
    v.`version` = try r.string(bound: 256)
    v.`period` = try r.float64()
    v.`loss` = try r.integer(Int32.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetRtControlOutput_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_25049366402ac5e192f2190b80e4576126929d8375fd1efefdc50154f473305b"
  public static let nativeType = "dsr_msgs2/srv/SetRtControlOutput_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetRtControlOutput_Response
  {
    var v = Ros2Dsr_msgs2SrvSetRtControlOutput_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetSafeStopResetType_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_4ab1dff4c9864a2e66d6c4ebd64032504098ca191284d027bc8021668412e7f3"
  public static let nativeType = "dsr_msgs2/srv/SetSafeStopResetType_Request"
  public static let nativeIdentity: String? = nil
  public var `reset_type`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`reset_type`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetSafeStopResetType_Request
  {
    var v = Ros2Dsr_msgs2SrvSetSafeStopResetType_Request()
    v.`reset_type` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetSafeStopResetType_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d1b868c2e694688a6bad4d4a93ae4032a650a0f99ae3cffeac1bfed3336762ae"
  public static let nativeType = "dsr_msgs2/srv/SetSafeStopResetType_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetSafeStopResetType_Response
  {
    var v = Ros2Dsr_msgs2SrvSetSafeStopResetType_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetSafetyMode_Request: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_ea5c506bc7bcd868d8547643b82f902a595954f7487216e57b47491998e80713"
  public static let nativeType = "dsr_msgs2/srv/SetSafetyMode_Request"
  public static let nativeIdentity: String? = nil
  public var `safety_mode`: Int8 = 0
  public var `safety_event`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`safety_mode`)
    try w.integer(self.`safety_event`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetSafetyMode_Request
  {
    var v = Ros2Dsr_msgs2SrvSetSafetyMode_Request()
    v.`safety_mode` = try r.integer(Int8.self)
    v.`safety_event` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetSafetyMode_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_d7ce2c604f4a7abeccbf4514a05fe8abbcbdddcc047f4838d0fcc792bb5414b6"
  public static let nativeType = "dsr_msgs2/srv/SetSafetyMode_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetSafetyMode_Response
  {
    var v = Ros2Dsr_msgs2SrvSetSafetyMode_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_785b7a837bf13aa7f6f7178818d470b970253761b389d2e5526a77090c765d17"
  public static let nativeType = "dsr_msgs2/srv/SetSingularHandlingForce_Request"
  public static let nativeIdentity: String? = nil
  public var `mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request
  {
    var v = Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request()
    v.`mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_5d0197a02dc22035522bdde1791a6e06ce31be284cb75d8d1edcbd97d382aa04"
  public static let nativeType = "dsr_msgs2/srv/SetSingularHandlingForce_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response
  {
    var v = Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetSingularityHandling_Request: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_714198c67734535e609af75c076ccc5eaef14996ab2f6dc41fac5da7af168f10"
  public static let nativeType = "dsr_msgs2/srv/SetSingularityHandling_Request"
  public static let nativeIdentity: String? = nil
  public var `mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetSingularityHandling_Request
  {
    var v = Ros2Dsr_msgs2SrvSetSingularityHandling_Request()
    v.`mode` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetSingularityHandling_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_2c1eb60c47dedf7a166dc51366a9748e21d2a64603591c9698a5c75bcfa0fd6b"
  public static let nativeType = "dsr_msgs2/srv/SetSingularityHandling_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetSingularityHandling_Response
  {
    var v = Ros2Dsr_msgs2SrvSetSingularityHandling_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetStiffnessx_Request: Canonical {
  public static let maximumWireBytes = 57
  public static let codecIdentity =
    "UWVMROS1_e173ca626019669404706278ab035396e77f684b17181b7e181a8a73e7ec5101"
  public static let nativeType = "dsr_msgs2/srv/SetStiffnessx_Request"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetStiffnessx_Request
  {
    var v = Ros2Dsr_msgs2SrvSetStiffnessx_Request()
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
public struct Ros2Dsr_msgs2SrvSetStiffnessx_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_9f7b37d22a5d4cfd34e92df02aa3ef3bdd78e965877b30889cdbd85ad81b1f63"
  public static let nativeType = "dsr_msgs2/srv/SetStiffnessx_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetStiffnessx_Response
  {
    var v = Ros2Dsr_msgs2SrvSetStiffnessx_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_fdc298f88b15ff1e7f9b99425f8909e584ffec665f5fdf49d0559aa4f1923675"
  public static let nativeType = "dsr_msgs2/srv/SetToolDigitalOutput_Request"
  public static let nativeIdentity: String? = nil
  public var `index`: Int8 = 0
  public var `value`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`index`)
    try w.integer(self.`value`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request
  {
    var v = Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request()
    v.`index` = try r.integer(Int8.self)
    v.`value` = try r.integer(Int8.self)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_6dd380084f46879e224a01e8cb135cfa7909d7dd29c0f953fce3533115e0fb5c"
  public static let nativeType = "dsr_msgs2/srv/SetToolDigitalOutput_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response
  {
    var v = Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetToolShape_Request: Canonical {
  public static let maximumWireBytes = 260
  public static let codecIdentity =
    "UWVMROS1_18dece524fe8fe008a1ce848629aabcc4a91bb33f0c0b75a50c77464da886679"
  public static let nativeType = "dsr_msgs2/srv/SetToolShape_Request"
  public static let nativeIdentity: String? = nil
  public var `name`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.string(self.`name`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetToolShape_Request {
    var v = Ros2Dsr_msgs2SrvSetToolShape_Request()
    v.`name` = try r.string(bound: 256)
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetToolShape_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_0cc4521218ab5151885efd7d818d63c3a80e792552282a776d9595ea3e220739"
  public static let nativeType = "dsr_msgs2/srv/SetToolShape_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetToolShape_Response
  {
    var v = Ros2Dsr_msgs2SrvSetToolShape_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetUserCartCoord1_Request: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_497558c7b91c9f6a79afc784b1026e28a632e8234b178b96754eaebcfa4d01f2"
  public static let nativeType = "dsr_msgs2/srv/SetUserCartCoord1_Request"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetUserCartCoord1_Request
  {
    var v = Ros2Dsr_msgs2SrvSetUserCartCoord1_Request()
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
public struct Ros2Dsr_msgs2SrvSetUserCartCoord1_Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_6ccfd1c14bc6f8be1efa6fae4c6b33373fab3dc76976891e07e2340bc984c4cf"
  public static let nativeType = "dsr_msgs2/srv/SetUserCartCoord1_Response"
  public static let nativeIdentity: String? = nil
  public var `id`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetUserCartCoord1_Response
  {
    var v = Ros2Dsr_msgs2SrvSetUserCartCoord1_Response()
    v.`id` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetUserCartCoord2_Request: Canonical {
  public static let maximumWireBytes = 193
  public static let codecIdentity =
    "UWVMROS1_8ebe04baec0078b4f501712b9777f2f25f71cdb668e45aaadac9fd1f08c4d817"
  public static let nativeType = "dsr_msgs2/srv/SetUserCartCoord2_Request"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetUserCartCoord2_Request
  {
    var v = Ros2Dsr_msgs2SrvSetUserCartCoord2_Request()
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
public struct Ros2Dsr_msgs2SrvSetUserCartCoord2_Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_a607f151e7acf622b233805382b69ea22ab0b4c86067c06bcc2673e1f2a58b8f"
  public static let nativeType = "dsr_msgs2/srv/SetUserCartCoord2_Response"
  public static let nativeIdentity: String? = nil
  public var `id`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetUserCartCoord2_Response
  {
    var v = Ros2Dsr_msgs2SrvSetUserCartCoord2_Response()
    v.`id` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetUserCartCoord3_Request: Canonical {
  public static let maximumWireBytes = 97
  public static let codecIdentity =
    "UWVMROS1_251d326c5d179d4324c7e178e44a5857335efcbef19c0ede3a38e6b35bd03504"
  public static let nativeType = "dsr_msgs2/srv/SetUserCartCoord3_Request"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetUserCartCoord3_Request
  {
    var v = Ros2Dsr_msgs2SrvSetUserCartCoord3_Request()
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
public struct Ros2Dsr_msgs2SrvSetUserCartCoord3_Response: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_a4c23d5c3c9e3b8101991250879779acbbe592d2b9bb62b8b8629230eebfdd39"
  public static let nativeType = "dsr_msgs2/srv/SetUserCartCoord3_Response"
  public static let nativeIdentity: String? = nil
  public var `id`: Int8 = 0
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`id`)
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvSetUserCartCoord3_Response
  {
    var v = Ros2Dsr_msgs2SrvSetUserCartCoord3_Response()
    v.`id` = try r.integer(Int8.self)
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetVeljRt_Request: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_8e666417ee1ca845dc12a0c18e5a538070717ca943fe982b42af7eb66f801cf3"
  public static let nativeType = "dsr_msgs2/srv/SetVeljRt_Request"
  public static let nativeIdentity: String? = nil
  public var `vel`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`vel`.count == 6 else { throw RosError(22) }
    for e in self.`vel` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetVeljRt_Request {
    var v = Ros2Dsr_msgs2SrvSetVeljRt_Request()
    let count0 = 6
    v.`vel` = []
    v.`vel`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`vel`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetVeljRt_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_6b678e677badd0a4723fd1608058a72548fc7c446f48809552bccc9e890ec6bd"
  public static let nativeType = "dsr_msgs2/srv/SetVeljRt_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetVeljRt_Response {
    var v = Ros2Dsr_msgs2SrvSetVeljRt_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetVelxRt_Request: Canonical {
  public static let maximumWireBytes = 16
  public static let codecIdentity =
    "UWVMROS1_f9b3017cd73796a71ea9bacd871af523b391d9e5b06f1b050cfbeab163c83b9e"
  public static let nativeType = "dsr_msgs2/srv/SetVelxRt_Request"
  public static let nativeIdentity: String? = nil
  public var `trans`: Double = 0
  public var `rotation`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`trans`)
    try w.float64(self.`rotation`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetVelxRt_Request {
    var v = Ros2Dsr_msgs2SrvSetVelxRt_Request()
    v.`trans` = try r.float64()
    v.`rotation` = try r.float64()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvSetVelxRt_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_973acd53cbb327287c306ec5a54b7b756e031a6fb8acfc836852fdf19dc31f9d"
  public static let nativeType = "dsr_msgs2/srv/SetVelxRt_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvSetVelxRt_Response {
    var v = Ros2Dsr_msgs2SrvSetVelxRt_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvStartRtControl_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_a828a2ecc839bec2c3521779ed7927db6c7c47b48aa99d9ad6328e741a85e5b1"
  public static let nativeType = "dsr_msgs2/srv/StartRtControl_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvStartRtControl_Request
  {
    var v = Ros2Dsr_msgs2SrvStartRtControl_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvStartRtControl_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_ac6ba957fb8ea8ec816adbf89dfd041181d8fc4d7d6e399aae04ee6efd2c9533"
  public static let nativeType = "dsr_msgs2/srv/StartRtControl_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvStartRtControl_Response
  {
    var v = Ros2Dsr_msgs2SrvStartRtControl_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvStopRtControl_Request: Canonical {
  public static let maximumWireBytes = 0
  public static let codecIdentity =
    "UWVMROS1_0f2a7b5fc3a8dcb9413a53410d3291d5148add2e64bf7654ed41ff2f626b7ef1"
  public static let nativeType = "dsr_msgs2/srv/StopRtControl_Request"
  public static let nativeIdentity: String? = nil
  public init() {}
  public func write(to w: inout WireWriter) throws {
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvStopRtControl_Request
  {
    var v = Ros2Dsr_msgs2SrvStopRtControl_Request()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvStopRtControl_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_a8754817156c23964f102f68eab7e19c603c8092334a239c669d4fce23cfcd89"
  public static let nativeType = "dsr_msgs2/srv/StopRtControl_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvStopRtControl_Response
  {
    var v = Ros2Dsr_msgs2SrvStopRtControl_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request: Canonical {
  public static let maximumWireBytes = 57
  public static let codecIdentity =
    "UWVMROS1_e1c8abe0594c9a4de2a8fa207cac4b898dad5c3148e4f5bd965a4acb1b0663e0"
  public static let nativeType = "dsr_msgs2/srv/TaskComplianceCtrl_Request"
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
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request
  {
    var v = Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request()
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
public struct Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_031919d7369a7e23da6eed0754cf7228ad0c6694b84651454d40dec76aff35bb"
  public static let nativeType = "dsr_msgs2/srv/TaskComplianceCtrl_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws
    -> Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response
  {
    var v = Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response()
    v.`success` = try r.boolean()
    return v
  }
}
public struct Ros2Dsr_msgs2SrvTrans_Request: Canonical {
  public static let maximumWireBytes = 98
  public static let codecIdentity =
    "UWVMROS1_473706407758f61ca27a10aa6090859f97ffae55ad65abfd3dbf7a2bf31230f7"
  public static let nativeType = "dsr_msgs2/srv/Trans_Request"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvTrans_Request {
    var v = Ros2Dsr_msgs2SrvTrans_Request()
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
public struct Ros2Dsr_msgs2SrvTrans_Response: Canonical {
  public static let maximumWireBytes = 49
  public static let codecIdentity =
    "UWVMROS1_0900d0c0cda3b1b164384313039be345f26d7cebfe3918ed6d3d10eb6c5a2913"
  public static let nativeType = "dsr_msgs2/srv/Trans_Response"
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
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvTrans_Response {
    var v = Ros2Dsr_msgs2SrvTrans_Response()
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
public struct Ros2Dsr_msgs2SrvWriteDataRt_Request: Canonical {
  public static let maximumWireBytes = 152
  public static let codecIdentity =
    "UWVMROS1_6936ab81238d05ed11cd9a372c08723a506f424bef7682cbd627295bd5b31f41"
  public static let nativeType = "dsr_msgs2/srv/WriteDataRt_Request"
  public static let nativeIdentity: String? = nil
  public var `external_force_torque`: [Double] = Array(repeating: 0, count: 6)
  public var `external_digital_input`: Int32 = 0
  public var `external_digital_output`: Int32 = 0
  public var `external_analog_input`: [Double] = Array(repeating: 0, count: 6)
  public var `external_analog_output`: [Double] = Array(repeating: 0, count: 6)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`external_force_torque`.count == 6 else { throw RosError(22) }
    for e in self.`external_force_torque` {
      try w.float64(e)
    }
    try w.integer(self.`external_digital_input`)
    try w.integer(self.`external_digital_output`)
    guard self.`external_analog_input`.count == 6 else { throw RosError(22) }
    for e in self.`external_analog_input` {
      try w.float64(e)
    }
    guard self.`external_analog_output`.count == 6 else { throw RosError(22) }
    for e in self.`external_analog_output` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvWriteDataRt_Request {
    var v = Ros2Dsr_msgs2SrvWriteDataRt_Request()
    let count0 = 6
    v.`external_force_torque` = []
    v.`external_force_torque`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`external_force_torque`.append(try r.float64())
    }
    v.`external_digital_input` = try r.integer(Int32.self)
    v.`external_digital_output` = try r.integer(Int32.self)
    let count3 = 6
    v.`external_analog_input` = []
    v.`external_analog_input`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`external_analog_input`.append(try r.float64())
    }
    let count4 = 6
    v.`external_analog_output` = []
    v.`external_analog_output`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`external_analog_output`.append(try r.float64())
    }
    return v
  }
}
public struct Ros2Dsr_msgs2SrvWriteDataRt_Response: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_a0c357cdc8525ce2c13210c5662fde3ff2bf89ac253a3ade7c0524af4879748e"
  public static let nativeType = "dsr_msgs2/srv/WriteDataRt_Response"
  public static let nativeIdentity: String? = nil
  public var `success`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Dsr_msgs2SrvWriteDataRt_Response {
    var v = Ros2Dsr_msgs2SrvWriteDataRt_Response()
    v.`success` = try r.boolean()
    return v
  }
}
