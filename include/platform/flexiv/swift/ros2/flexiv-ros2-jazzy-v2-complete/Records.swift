// @brief Complete original flexiv ros2_jazzy_v2 canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
// Generated complete canonical values. No I/O or authority.
import RosWasm

/// @brief Own every original field of builtin_interfaces/msg/Time.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Builtin_interfacesMsgTime: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
  public static let nativeType = "builtin_interfaces/msg/Time"
  public static let nativeIdentity: String? = nil
  /// @brief This message communicates ROS Time defined here:
  /// https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32
  /// values.
  /// @details Original builtin_interfaces/msg/Time.sec; native type int32. Scalar value. Storage belongs
  /// to the complete value and acquires no ROS resource.
  public var `sec`: Int32 = 0
  /// @brief The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component.
  /// e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is
  /// represented as {sec: 1, nanosec: 7e8}
  /// @details Original builtin_interfaces/msg/Time.nanosec; native type uint32. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
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
/// @brief Own every original field of flexiv_msgs/action/Grasp_Goal.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsActionGrasp_Goal: Canonical {
  public static let maximumWireBytes = 8
  public static let codecIdentity =
    "UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce"
  public static let nativeType = "flexiv_msgs/action/Grasp_Goal"
  public static let nativeIdentity: String? = nil
  /// @brief N
  /// @details Original flexiv_msgs/action/Grasp_Goal.force; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `force`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`force`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsActionGrasp_Goal {
    var v = Ros2Flexiv_msgsActionGrasp_Goal()
    v.`force` = try r.float64()
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/action/Grasp_Result.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsActionGrasp_Result: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a"
  public static let nativeType = "flexiv_msgs/action/Grasp_Result"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/action/Grasp_Result.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original flexiv_msgs/action/Grasp_Result.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsActionGrasp_Result {
    var v = Ros2Flexiv_msgsActionGrasp_Result()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/action/Grasp_Feedback.
/// @details Canonical extent 17..17 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsActionGrasp_Feedback: Canonical {
  public static let maximumWireBytes = 17
  public static let codecIdentity =
    "UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05"
  public static let nativeType = "flexiv_msgs/action/Grasp_Feedback"
  public static let nativeIdentity: String? = nil
  /// @brief m
  /// @details Original flexiv_msgs/action/Grasp_Feedback.current_width; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `current_width`: Double = 0
  /// @brief N
  /// @details Original flexiv_msgs/action/Grasp_Feedback.current_force; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `current_force`: Double = 0
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/action/Grasp_Feedback.moving; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `moving`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`current_width`)
    try w.float64(self.`current_force`)
    try w.boolean(self.`moving`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsActionGrasp_Feedback {
    var v = Ros2Flexiv_msgsActionGrasp_Feedback()
    v.`current_width` = try r.float64()
    v.`current_force` = try r.float64()
    v.`moving` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/action/Move_Goal.
/// @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsActionMove_Goal: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2"
  public static let nativeType = "flexiv_msgs/action/Move_Goal"
  public static let nativeIdentity: String? = nil
  /// @brief m
  /// @details Original flexiv_msgs/action/Move_Goal.width; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `width`: Double = 0
  /// @brief m/s
  /// @details Original flexiv_msgs/action/Move_Goal.velocity; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `velocity`: Double = 0
  /// @brief N
  /// @details Original flexiv_msgs/action/Move_Goal.max_force; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `max_force`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`width`)
    try w.float64(self.`velocity`)
    try w.float64(self.`max_force`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsActionMove_Goal {
    var v = Ros2Flexiv_msgsActionMove_Goal()
    v.`width` = try r.float64()
    v.`velocity` = try r.float64()
    v.`max_force` = try r.float64()
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/action/Move_Result.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsActionMove_Result: Canonical {
  public static let maximumWireBytes = 261
  public static let codecIdentity =
    "UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d"
  public static let nativeType = "flexiv_msgs/action/Move_Result"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/action/Move_Result.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `success`: Bool = false
  /// @brief Retain the complete original string field.
  /// @details Original flexiv_msgs/action/Move_Result.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `error`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.boolean(self.`success`)
    try w.string(self.`error`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsActionMove_Result {
    var v = Ros2Flexiv_msgsActionMove_Result()
    v.`success` = try r.boolean()
    v.`error` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/action/Move_Feedback.
/// @details Canonical extent 17..17 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsActionMove_Feedback: Canonical {
  public static let maximumWireBytes = 17
  public static let codecIdentity =
    "UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38"
  public static let nativeType = "flexiv_msgs/action/Move_Feedback"
  public static let nativeIdentity: String? = nil
  /// @brief m
  /// @details Original flexiv_msgs/action/Move_Feedback.current_width; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `current_width`: Double = 0
  /// @brief N
  /// @details Original flexiv_msgs/action/Move_Feedback.current_force; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `current_force`: Double = 0
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/action/Move_Feedback.moving; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  public var `moving`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`current_width`)
    try w.float64(self.`current_force`)
    try w.boolean(self.`moving`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsActionMove_Feedback {
    var v = Ros2Flexiv_msgsActionMove_Feedback()
    v.`current_width` = try r.float64()
    v.`current_force` = try r.float64()
    v.`moving` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/msg/Digital.
/// @details Canonical extent 2..2 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsMsgDigital: Canonical {
  public static let maximumWireBytes = 2
  public static let codecIdentity =
    "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf"
  public static let nativeType = "flexiv_msgs/msg/Digital"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original uint8 field.
  /// @details Original flexiv_msgs/msg/Digital.pin; native type uint8. Scalar value. Storage belongs to
  /// the complete value and acquires no ROS resource.
  public var `pin`: UInt8 = 0
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/msg/Digital.state; native type bool. Scalar value. Storage belongs to
  /// the complete value and acquires no ROS resource.
  public var `state`: Bool = false
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`pin`)
    try w.boolean(self.`state`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsMsgDigital {
    var v = Ros2Flexiv_msgsMsgDigital()
    v.`pin` = try r.integer(UInt8.self)
    v.`state` = try r.boolean()
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/msg/GPIOStates.
/// @details Canonical extent 4..68 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsMsgGPIOStates: Canonical {
  public static let maximumWireBytes = 68
  public static let codecIdentity =
    "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14"
  public static let nativeType = "flexiv_msgs/msg/GPIOStates"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original flexiv_msgs/msg/Digital field.
  /// @details Original flexiv_msgs/msg/GPIOStates.states; native type flexiv_msgs/msg/Digital. At most 32
  /// elements. Storage belongs to the complete value and acquires no ROS resource.
  public var `states`: [Ros2Flexiv_msgsMsgDigital] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`states`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`states`.count))
    for e in self.`states` {
      try e.write(to: &w)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsMsgGPIOStates {
    var v = Ros2Flexiv_msgsMsgGPIOStates()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`states` = []
    v.`states`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`states`.append(try Ros2Flexiv_msgsMsgDigital.read(from: &r))
    }
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/msg/JointPosVel.
/// @details Canonical extent 8..520 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsMsgJointPosVel: Canonical {
  public static let maximumWireBytes = 520
  public static let codecIdentity =
    "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca"
  public static let nativeType = "flexiv_msgs/msg/JointPosVel"
  public static let nativeIdentity: String? = nil
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/JointPosVel.positions; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `positions`: [Double] = []
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/JointPosVel.velocities; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `velocities`: [Double] = []
  public init() {}
  public func write(to w: inout WireWriter) throws {
    guard self.`positions`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`positions`.count))
    for e in self.`positions` {
      try w.float64(e)
    }
    guard self.`velocities`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`velocities`.count))
    for e in self.`velocities` {
      try w.float64(e)
    }
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsMsgJointPosVel {
    var v = Ros2Flexiv_msgsMsgJointPosVel()
    let rawcount0 = try r.integer(UInt32.self)
    guard rawcount0 <= 32 else { throw RosError(22) }
    let count0 = Int(rawcount0)
    v.`positions` = []
    v.`positions`.reserveCapacity(count0)
    for _ in 0..<count0 {
      v.`positions`.append(try r.float64())
    }
    let rawcount1 = try r.integer(UInt32.self)
    guard rawcount1 <= 32 else { throw RosError(22) }
    let count1 = Int(rawcount1)
    v.`velocities` = []
    v.`velocities`.reserveCapacity(count1)
    for _ in 0..<count1 {
      v.`velocities`.append(try r.float64())
    }
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/msg/Mode.
/// @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsMsgMode: Canonical {
  public static let maximumWireBytes = 1
  public static let codecIdentity =
    "UWVMROS1_cccac829b8021d3eed69844ee81fbef0b785486d73a16ac212fd38b8100eb6d6"
  public static let nativeType = "flexiv_msgs/msg/Mode"
  public static let nativeIdentity: String? = nil
  public static let `MODE_UNKNOWN`: Int8 = -1
  public static let `MODE_IDLE`: Int8 = 0
  public static let `MODE_RT_JOINT_TORQUE`: Int8 = 1
  public static let `MODE_RT_JOINT_IMPEDANCE`: Int8 = 2
  public static let `MODE_NRT_JOINT_IMPEDANCE`: Int8 = 3
  public static let `MODE_RT_JOINT_POSITION`: Int8 = 4
  public static let `MODE_NRT_JOINT_POSITION`: Int8 = 5
  public static let `MODE_NRT_PLAN_EXECUTION`: Int8 = 6
  public static let `MODE_NRT_PRIMITIVE_EXECUTION`: Int8 = 7
  public static let `MODE_RT_CARTESIAN_MOTION_FORCE`: Int8 = 8
  public static let `MODE_NRT_CARTESIAN_MOTION_FORCE`: Int8 = 9
  public static let `MODE_NRT_SUPER_PRIMITIVE`: Int8 = 10
  /// @brief Retain the complete original int8 field.
  /// @details Original flexiv_msgs/msg/Mode.mode; native type int8. Scalar value. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `mode`: Int8 = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.integer(self.`mode`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsMsgMode {
    var v = Ros2Flexiv_msgsMsgMode()
    v.`mode` = try r.integer(Int8.self)
    return v
  }
}
/// @brief Own every original field of std_msgs/msg/Header.
/// @details Canonical extent 12..268 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Std_msgsMsgHeader: Canonical {
  public static let maximumWireBytes = 268
  public static let codecIdentity =
    "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b"
  public static let nativeType = "std_msgs/msg/Header"
  public static let nativeIdentity: String? = nil
  /// @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
  /// timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as
  /// seconds and nanoseconds.
  /// @details Original std_msgs/msg/Header.stamp; native type builtin_interfaces/msg/Time. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `stamp`: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  /// @brief Transform frame with which this data is associated.
  /// @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 256
  /// bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
  public var `frame_id`: String = ""
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`stamp`.write(to: &w)
    try w.string(self.`frame_id`, bound: 256)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Std_msgsMsgHeader {
    var v = Ros2Std_msgsMsgHeader()
    v.`stamp` = try Ros2Builtin_interfacesMsgTime.read(from: &r)
    v.`frame_id` = try r.string(bound: 256)
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/Point.
/// @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgPoint: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"
  public static let nativeType = "geometry_msgs/msg/Point"
  public static let nativeIdentity: String? = nil
  /// @brief This contains the position of a point in free space
  /// @details Original geometry_msgs/msg/Point.x; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  public var `x`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Point.y; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  public var `y`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Point.z; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  public var `z`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgPoint {
    var v = Ros2Geometry_msgsMsgPoint()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/Quaternion.
/// @details Canonical extent 32..32 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgQuaternion: Canonical {
  public static let maximumWireBytes = 32
  public static let codecIdentity =
    "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
  public static let nativeType = "geometry_msgs/msg/Quaternion"
  public static let nativeIdentity: String? = nil
  /// @brief This represents an orientation in free space in quaternion form.
  /// @details Original geometry_msgs/msg/Quaternion.x; native type float64. Scalar value. Declared
  /// original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `x`: Double = Double(bitPattern: 0x0)
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Quaternion.y; native type float64. Scalar value. Declared
  /// original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `y`: Double = Double(bitPattern: 0x0)
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Quaternion.z; native type float64. Scalar value. Declared
  /// original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `z`: Double = Double(bitPattern: 0x0)
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Quaternion.w; native type float64. Scalar value. Declared
  /// original default 1.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  public var `w`: Double = Double(bitPattern: 0x3ff0_0000_0000_0000)
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
    try w.float64(self.`w`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgQuaternion {
    var v = Ros2Geometry_msgsMsgQuaternion()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    v.`w` = try r.float64()
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/Pose.
/// @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgPose: Canonical {
  public static let maximumWireBytes = 56
  public static let codecIdentity =
    "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"
  public static let nativeType = "geometry_msgs/msg/Pose"
  public static let nativeIdentity: String? = nil
  /// @brief A representation of pose in free space, composed of position and orientation.
  /// @details Original geometry_msgs/msg/Pose.position; native type geometry_msgs/msg/Point. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `position`: Ros2Geometry_msgsMsgPoint = Ros2Geometry_msgsMsgPoint()
  /// @brief Retain the complete original geometry_msgs/msg/Quaternion field.
  /// @details Original geometry_msgs/msg/Pose.orientation; native type geometry_msgs/msg/Quaternion.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `orientation`: Ros2Geometry_msgsMsgQuaternion = Ros2Geometry_msgsMsgQuaternion()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`position`.write(to: &w)
    try self.`orientation`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgPose {
    var v = Ros2Geometry_msgsMsgPose()
    v.`position` = try Ros2Geometry_msgsMsgPoint.read(from: &r)
    v.`orientation` = try Ros2Geometry_msgsMsgQuaternion.read(from: &r)
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/PoseStamped.
/// @details Canonical extent 68..324 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgPoseStamped: Canonical {
  public static let maximumWireBytes = 324
  public static let codecIdentity =
    "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad"
  public static let nativeType = "geometry_msgs/msg/PoseStamped"
  public static let nativeIdentity: String? = nil
  /// @brief A Pose with reference coordinate frame and timestamp
  /// @details Original geometry_msgs/msg/PoseStamped.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Retain the complete original geometry_msgs/msg/Pose field.
  /// @details Original geometry_msgs/msg/PoseStamped.pose; native type geometry_msgs/msg/Pose. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `pose`: Ros2Geometry_msgsMsgPose = Ros2Geometry_msgsMsgPose()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`pose`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgPoseStamped {
    var v = Ros2Geometry_msgsMsgPoseStamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`pose` = try Ros2Geometry_msgsMsgPose.read(from: &r)
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/Vector3.
/// @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgVector3: Canonical {
  public static let maximumWireBytes = 24
  public static let codecIdentity =
    "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"
  public static let nativeType = "geometry_msgs/msg/Vector3"
  public static let nativeIdentity: String? = nil
  /// @brief This represents a vector in free space. This is semantically different than a point. A vector
  /// is always anchored at the origin. When a transform is applied to a vector, only the rotational
  /// component is applied.
  /// @details Original geometry_msgs/msg/Vector3.x; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `x`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Vector3.y; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `y`: Double = 0
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Vector3.z; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `z`: Double = 0
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try w.float64(self.`x`)
    try w.float64(self.`y`)
    try w.float64(self.`z`)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgVector3 {
    var v = Ros2Geometry_msgsMsgVector3()
    v.`x` = try r.float64()
    v.`y` = try r.float64()
    v.`z` = try r.float64()
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/Twist.
/// @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgTwist: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"
  public static let nativeType = "geometry_msgs/msg/Twist"
  public static let nativeIdentity: String? = nil
  /// @brief This expresses velocity in free space broken into its linear and angular parts.
  /// @details Original geometry_msgs/msg/Twist.linear; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `linear`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  /// @details Original geometry_msgs/msg/Twist.angular; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `angular`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`linear`.write(to: &w)
    try self.`angular`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgTwist {
    var v = Ros2Geometry_msgsMsgTwist()
    v.`linear` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    v.`angular` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/TwistStamped.
/// @details Canonical extent 60..316 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgTwistStamped: Canonical {
  public static let maximumWireBytes = 316
  public static let codecIdentity =
    "UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308"
  public static let nativeType = "geometry_msgs/msg/TwistStamped"
  public static let nativeIdentity: String? = nil
  /// @brief A twist with reference coordinate frame and timestamp
  /// @details Original geometry_msgs/msg/TwistStamped.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Retain the complete original geometry_msgs/msg/Twist field.
  /// @details Original geometry_msgs/msg/TwistStamped.twist; native type geometry_msgs/msg/Twist. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `twist`: Ros2Geometry_msgsMsgTwist = Ros2Geometry_msgsMsgTwist()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`twist`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgTwistStamped {
    var v = Ros2Geometry_msgsMsgTwistStamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`twist` = try Ros2Geometry_msgsMsgTwist.read(from: &r)
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/Wrench.
/// @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgWrench: Canonical {
  public static let maximumWireBytes = 48
  public static let codecIdentity =
    "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6"
  public static let nativeType = "geometry_msgs/msg/Wrench"
  public static let nativeIdentity: String? = nil
  /// @brief This represents force in free space, separated into its linear and angular parts.
  /// @details Original geometry_msgs/msg/Wrench.force; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `force`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  /// @details Original geometry_msgs/msg/Wrench.torque; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `torque`: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`force`.write(to: &w)
    try self.`torque`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgWrench {
    var v = Ros2Geometry_msgsMsgWrench()
    v.`force` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    v.`torque` = try Ros2Geometry_msgsMsgVector3.read(from: &r)
    return v
  }
}
/// @brief Own every original field of geometry_msgs/msg/WrenchStamped.
/// @details Canonical extent 60..316 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Geometry_msgsMsgWrenchStamped: Canonical {
  public static let maximumWireBytes = 316
  public static let codecIdentity =
    "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177"
  public static let nativeType = "geometry_msgs/msg/WrenchStamped"
  public static let nativeIdentity: String? = nil
  /// @brief A wrench with reference coordinate frame and timestamp
  /// @details Original geometry_msgs/msg/WrenchStamped.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Retain the complete original geometry_msgs/msg/Wrench field.
  /// @details Original geometry_msgs/msg/WrenchStamped.wrench; native type geometry_msgs/msg/Wrench.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `wrench`: Ros2Geometry_msgsMsgWrench = Ros2Geometry_msgsMsgWrench()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`wrench`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Geometry_msgsMsgWrenchStamped {
    var v = Ros2Geometry_msgsMsgWrenchStamped()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`wrench` = try Ros2Geometry_msgsMsgWrench.read(from: &r)
    return v
  }
}
/// @brief Own every original field of flexiv_msgs/msg/RobotStates.
/// @details Canonical extent 552..5160 bytes. Native type identity is independent; constructing a value
/// opens no resource.
public struct Ros2Flexiv_msgsMsgRobotStates: Canonical {
  public static let maximumWireBytes = 5160
  public static let codecIdentity =
    "UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a"
  public static let nativeType = "flexiv_msgs/msg/RobotStates"
  public static let nativeIdentity: String? = nil
  /// @brief Header
  /// @details Original flexiv_msgs/msg/RobotStates.header; native type std_msgs/msg/Header. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  public var `header`: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Robot system timestamp
  /// @details Original flexiv_msgs/msg/RobotStates.robot_timestamp; native type
  /// builtin_interfaces/msg/Time. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `robot_timestamp`: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  /// @brief Measured joint positions using link-side encoder
  /// @details Original flexiv_msgs/msg/RobotStates.q; native type float64. At most 32 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `q`: [Double] = []
  /// @brief Measured joint positions using motor-side encoder
  /// @details Original flexiv_msgs/msg/RobotStates.theta; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `theta`: [Double] = []
  /// @brief Measured joint velocities using link-side encoder
  /// @details Original flexiv_msgs/msg/RobotStates.dq; native type float64. At most 32 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `dq`: [Double] = []
  /// @brief Measured joint velocities using motor-side encoder
  /// @details Original flexiv_msgs/msg/RobotStates.dtheta; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `dtheta`: [Double] = []
  /// @brief Measured joint torques
  /// @details Original flexiv_msgs/msg/RobotStates.tau; native type float64. At most 32 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  public var `tau`: [Double] = []
  /// @brief Numerical derivative of measured joint torques
  /// @details Original flexiv_msgs/msg/RobotStates.tau_dot; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `tau_dot`: [Double] = []
  /// @brief Estimated external joint torques
  /// @details Original flexiv_msgs/msg/RobotStates.tau_ext; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `tau_ext`: [Double] = []
  /// @brief Estimated interaction joint torques
  /// @details Original flexiv_msgs/msg/RobotStates.tau_interact; native type float64. At most 32
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  public var `tau_interact`: [Double] = []
  /// @brief Measured joint temperatures
  /// @details Original flexiv_msgs/msg/RobotStates.temperature; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  public var `temperature`: [Double] = []
  /// @brief Measured TCP pose expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_pose; native type geometry_msgs/msg/PoseStamped.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `tcp_pose`: Ros2Geometry_msgsMsgPoseStamped = Ros2Geometry_msgsMsgPoseStamped()
  /// @brief Measured TCP twist expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_twist; native type geometry_msgs/msg/TwistStamped.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  public var `tcp_twist`: Ros2Geometry_msgsMsgTwistStamped = Ros2Geometry_msgsMsgTwistStamped()
  /// @brief Measured flange pose expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.flange_pose; native type
  /// geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `flange_pose`: Ros2Geometry_msgsMsgPoseStamped = Ros2Geometry_msgsMsgPoseStamped()
  /// @brief Raw force-torque (FT) sensor reading in flange frame
  /// @details Original flexiv_msgs/msg/RobotStates.raw_ft_sensor; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `raw_ft_sensor`: Ros2Geometry_msgsMsgWrenchStamped =
    Ros2Geometry_msgsMsgWrenchStamped()
  /// @brief Estimated external wrench applied on TCP and expressed in TCP frame
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_wrench_local; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `tcp_wrench_local`: Ros2Geometry_msgsMsgWrenchStamped =
    Ros2Geometry_msgsMsgWrenchStamped()
  /// @brief Estimated external wrench applied on TCP and expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_wrench; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `tcp_wrench`: Ros2Geometry_msgsMsgWrenchStamped = Ros2Geometry_msgsMsgWrenchStamped()
  /// @brief Unfiltered external wrench applied on TCP and expressed in TCP frame
  /// @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench_local; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `raw_tcp_wrench_local`: Ros2Geometry_msgsMsgWrenchStamped =
    Ros2Geometry_msgsMsgWrenchStamped()
  /// @brief Unfiltered external wrench applied on TCP and expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  public var `raw_tcp_wrench`: Ros2Geometry_msgsMsgWrenchStamped =
    Ros2Geometry_msgsMsgWrenchStamped()
  public init() {}
  public func write(to w: inout WireWriter) throws {
    try self.`header`.write(to: &w)
    try self.`robot_timestamp`.write(to: &w)
    guard self.`q`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`q`.count))
    for e in self.`q` {
      try w.float64(e)
    }
    guard self.`theta`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`theta`.count))
    for e in self.`theta` {
      try w.float64(e)
    }
    guard self.`dq`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`dq`.count))
    for e in self.`dq` {
      try w.float64(e)
    }
    guard self.`dtheta`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`dtheta`.count))
    for e in self.`dtheta` {
      try w.float64(e)
    }
    guard self.`tau`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`tau`.count))
    for e in self.`tau` {
      try w.float64(e)
    }
    guard self.`tau_dot`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`tau_dot`.count))
    for e in self.`tau_dot` {
      try w.float64(e)
    }
    guard self.`tau_ext`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`tau_ext`.count))
    for e in self.`tau_ext` {
      try w.float64(e)
    }
    guard self.`tau_interact`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`tau_interact`.count))
    for e in self.`tau_interact` {
      try w.float64(e)
    }
    guard self.`temperature`.count <= 32 else { throw RosError(22) }
    try w.integer(UInt32(self.`temperature`.count))
    for e in self.`temperature` {
      try w.float64(e)
    }
    try self.`tcp_pose`.write(to: &w)
    try self.`tcp_twist`.write(to: &w)
    try self.`flange_pose`.write(to: &w)
    try self.`raw_ft_sensor`.write(to: &w)
    try self.`tcp_wrench_local`.write(to: &w)
    try self.`tcp_wrench`.write(to: &w)
    try self.`raw_tcp_wrench_local`.write(to: &w)
    try self.`raw_tcp_wrench`.write(to: &w)
  }
  public static func read(from r: inout WireReader) throws -> Ros2Flexiv_msgsMsgRobotStates {
    var v = Ros2Flexiv_msgsMsgRobotStates()
    v.`header` = try Ros2Std_msgsMsgHeader.read(from: &r)
    v.`robot_timestamp` = try Ros2Builtin_interfacesMsgTime.read(from: &r)
    let rawcount2 = try r.integer(UInt32.self)
    guard rawcount2 <= 32 else { throw RosError(22) }
    let count2 = Int(rawcount2)
    v.`q` = []
    v.`q`.reserveCapacity(count2)
    for _ in 0..<count2 {
      v.`q`.append(try r.float64())
    }
    let rawcount3 = try r.integer(UInt32.self)
    guard rawcount3 <= 32 else { throw RosError(22) }
    let count3 = Int(rawcount3)
    v.`theta` = []
    v.`theta`.reserveCapacity(count3)
    for _ in 0..<count3 {
      v.`theta`.append(try r.float64())
    }
    let rawcount4 = try r.integer(UInt32.self)
    guard rawcount4 <= 32 else { throw RosError(22) }
    let count4 = Int(rawcount4)
    v.`dq` = []
    v.`dq`.reserveCapacity(count4)
    for _ in 0..<count4 {
      v.`dq`.append(try r.float64())
    }
    let rawcount5 = try r.integer(UInt32.self)
    guard rawcount5 <= 32 else { throw RosError(22) }
    let count5 = Int(rawcount5)
    v.`dtheta` = []
    v.`dtheta`.reserveCapacity(count5)
    for _ in 0..<count5 {
      v.`dtheta`.append(try r.float64())
    }
    let rawcount6 = try r.integer(UInt32.self)
    guard rawcount6 <= 32 else { throw RosError(22) }
    let count6 = Int(rawcount6)
    v.`tau` = []
    v.`tau`.reserveCapacity(count6)
    for _ in 0..<count6 {
      v.`tau`.append(try r.float64())
    }
    let rawcount7 = try r.integer(UInt32.self)
    guard rawcount7 <= 32 else { throw RosError(22) }
    let count7 = Int(rawcount7)
    v.`tau_dot` = []
    v.`tau_dot`.reserveCapacity(count7)
    for _ in 0..<count7 {
      v.`tau_dot`.append(try r.float64())
    }
    let rawcount8 = try r.integer(UInt32.self)
    guard rawcount8 <= 32 else { throw RosError(22) }
    let count8 = Int(rawcount8)
    v.`tau_ext` = []
    v.`tau_ext`.reserveCapacity(count8)
    for _ in 0..<count8 {
      v.`tau_ext`.append(try r.float64())
    }
    let rawcount9 = try r.integer(UInt32.self)
    guard rawcount9 <= 32 else { throw RosError(22) }
    let count9 = Int(rawcount9)
    v.`tau_interact` = []
    v.`tau_interact`.reserveCapacity(count9)
    for _ in 0..<count9 {
      v.`tau_interact`.append(try r.float64())
    }
    let rawcount10 = try r.integer(UInt32.self)
    guard rawcount10 <= 32 else { throw RosError(22) }
    let count10 = Int(rawcount10)
    v.`temperature` = []
    v.`temperature`.reserveCapacity(count10)
    for _ in 0..<count10 {
      v.`temperature`.append(try r.float64())
    }
    v.`tcp_pose` = try Ros2Geometry_msgsMsgPoseStamped.read(from: &r)
    v.`tcp_twist` = try Ros2Geometry_msgsMsgTwistStamped.read(from: &r)
    v.`flange_pose` = try Ros2Geometry_msgsMsgPoseStamped.read(from: &r)
    v.`raw_ft_sensor` = try Ros2Geometry_msgsMsgWrenchStamped.read(from: &r)
    v.`tcp_wrench_local` = try Ros2Geometry_msgsMsgWrenchStamped.read(from: &r)
    v.`tcp_wrench` = try Ros2Geometry_msgsMsgWrenchStamped.read(from: &r)
    v.`raw_tcp_wrench_local` = try Ros2Geometry_msgsMsgWrenchStamped.read(from: &r)
    v.`raw_tcp_wrench` = try Ros2Geometry_msgsMsgWrenchStamped.read(from: &r)
    return v
  }
}
