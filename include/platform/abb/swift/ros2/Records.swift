/// @file Records.swift
/// @brief Complete original ABB ROS 2 Embedded Swift values and codecs.
/// @details Bytes are owned arrays; no Foundation, native ROS object or implicit authority is used.

/// @brief Complete original abb_egm_msgs/msg/EGMChannelState value.
/// @details Retain all 7 fields and 10 constants in source order. Canonical extent 17..81 bytes.
public struct Ros2Abb_egm_msgsMsgEGMChannelState {
  /// @brief Original abb_egm_msgs/msg/EGMChannelState.name field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_name: [UInt8] = []
  /// @brief Original abb_egm_msgs/msg/EGMChannelState.active field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_active: Bool = false
  /// @brief Original abb_egm_msgs/msg/EGMChannelState.egm_convergence_met field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_egm_convergence_met: Bool = false
  /// @brief Original abb_egm_msgs/msg/EGMChannelState.egm_client_state field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_egm_client_state: UInt8 = 0
  /// @brief Original abb_egm_msgs/msg/EGMChannelState.motor_state field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_motor_state: UInt8 = 0
  /// @brief Original abb_egm_msgs/msg/EGMChannelState.rapid_execution_state field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rapid_execution_state: UInt8 = 0
  /// @brief Original abb_egm_msgs/msg/EGMChannelState.utilization_rate field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_utilization_rate: Double = 0
  /// @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_UNDEFINED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_UNDEFINED: UInt8 = 1
  /// @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_ERROR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_ERROR: UInt8 = 2
  /// @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_STOPPED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_STOPPED: UInt8 = 3
  /// @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_RUNNING constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_RUNNING: UInt8 = 4
  /// @brief Original abb_egm_msgs/msg/EGMChannelState.MOTORS_UNDEFINED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MOTORS_UNDEFINED: UInt8 = 1
  /// @brief Original abb_egm_msgs/msg/EGMChannelState.MOTORS_ON constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MOTORS_ON: UInt8 = 2
  /// @brief Original abb_egm_msgs/msg/EGMChannelState.MOTORS_OFF constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MOTORS_OFF: UInt8 = 3
  /// @brief Original abb_egm_msgs/msg/EGMChannelState.RAPID_UNDEFINED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RAPID_UNDEFINED: UInt8 = 1
  /// @brief Original abb_egm_msgs/msg/EGMChannelState.RAPID_STOPPED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RAPID_STOPPED: UInt8 = 2
  /// @brief Original abb_egm_msgs/msg/EGMChannelState.RAPID_RUNNING constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RAPID_RUNNING: UInt8 = 3
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_name = cursor.text(field_name, 64)
    field_active = cursor.boolean(field_active)
    field_egm_convergence_met = cursor.boolean(field_egm_convergence_met)
    field_egm_client_state = UInt8(
      truncatingIfNeeded: cursor.number(UInt64(field_egm_client_state), 1))
    field_motor_state = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_motor_state), 1))
    field_rapid_execution_state = UInt8(
      truncatingIfNeeded: cursor.number(UInt64(field_rapid_execution_state), 1))
    field_utilization_rate = Double(
      bitPattern: UInt64(
        truncatingIfNeeded: cursor.number(UInt64(field_utilization_rate.bitPattern), 8)))
    if !field_utilization_rate.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete abb_egm_msgs/msg/EGMChannelState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 81),
      limit: 81, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_egm_msgs/msg/EGMChannelState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 17 || bytes.count > 81 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original builtin_interfaces/msg/Time value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Builtin_interfacesMsgTime {
  /// @brief Original builtin_interfaces/msg/Time.sec field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sec: Int32 = 0
  /// @brief Original builtin_interfaces/msg/Time.nanosec field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_nanosec: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_sec = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_sec)), 4)))
    field_nanosec = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_nanosec), 4))
    if field_nanosec >= 1_000_000_000 { cursor.failed = true }
  }
  /// @brief Encode every complete builtin_interfaces/msg/Time field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete builtin_interfaces/msg/Time.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original std_msgs/msg/Header value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 12..76 bytes.
public struct Ros2Std_msgsMsgHeader {
  /// @brief Original std_msgs/msg/Header.stamp field.
  /// @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_stamp: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  /// @brief Original std_msgs/msg/Header.frame_id field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_frame_id: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_stamp.fields(&cursor)
    field_frame_id = cursor.text(field_frame_id, 64)
  }
  /// @brief Encode every complete std_msgs/msg/Header field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 76),
      limit: 76, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete std_msgs/msg/Header.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 12 || bytes.count > 76 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_egm_msgs/msg/EGMState value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 16..1376 bytes.
public struct Ros2Abb_egm_msgsMsgEGMState {
  /// @brief Original abb_egm_msgs/msg/EGMState.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original abb_egm_msgs/msg/EGMState.egm_channels field.
  /// @details Original type abb_egm_msgs/msg/EGMChannelState. Shape sequence; bound/count 16
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_egm_channels: [Ros2Abb_egm_msgsMsgEGMChannelState] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_header.fields(&cursor)
    let count1 = Int(cursor.number(UInt64(field_egm_channels.count), 4))
    if count1 > 16 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_egm_channels = Array(repeating: Ros2Abb_egm_msgsMsgEGMChannelState(), count: count1)
    }
    for index in 0..<count1 {
      field_egm_channels[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete abb_egm_msgs/msg/EGMState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 1376),
      limit: 1376, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_egm_msgs/msg/EGMState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 16 || bytes.count > 1376 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_msgs/msg/ConfData value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 16..16 bytes.
public struct Ros2Abb_rapid_msgsMsgConfData {
  /// @brief Original abb_rapid_msgs/msg/ConfData.cf1 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cf1: Float = 0
  /// @brief Original abb_rapid_msgs/msg/ConfData.cf4 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cf4: Float = 0
  /// @brief Original abb_rapid_msgs/msg/ConfData.cf6 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cf6: Float = 0
  /// @brief Original abb_rapid_msgs/msg/ConfData.cfx field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cfx: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_cf1 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_cf1.bitPattern), 4)))
    if !field_cf1.isFinite { cursor.failed = true }
    field_cf4 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_cf4.bitPattern), 4)))
    if !field_cf4.isFinite { cursor.failed = true }
    field_cf6 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_cf6.bitPattern), 4)))
    if !field_cf6.isFinite { cursor.failed = true }
    field_cfx = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_cfx.bitPattern), 4)))
    if !field_cfx.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete abb_rapid_msgs/msg/ConfData field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 16),
      limit: 16, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_msgs/msg/ConfData.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 16 || bytes.count > 16 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_msgs/msg/ExtJoint value.
/// @details Retain all 6 fields and 0 constants in source order. Canonical extent 24..24 bytes.
public struct Ros2Abb_rapid_msgsMsgExtJoint {
  /// @brief Original abb_rapid_msgs/msg/ExtJoint.eax_a field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_eax_a: Float = 0
  /// @brief Original abb_rapid_msgs/msg/ExtJoint.eax_b field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_eax_b: Float = 0
  /// @brief Original abb_rapid_msgs/msg/ExtJoint.eax_c field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_eax_c: Float = 0
  /// @brief Original abb_rapid_msgs/msg/ExtJoint.eax_d field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_eax_d: Float = 0
  /// @brief Original abb_rapid_msgs/msg/ExtJoint.eax_e field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_eax_e: Float = 0
  /// @brief Original abb_rapid_msgs/msg/ExtJoint.eax_f field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_eax_f: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_eax_a = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_eax_a.bitPattern), 4)))
    if !field_eax_a.isFinite { cursor.failed = true }
    field_eax_b = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_eax_b.bitPattern), 4)))
    if !field_eax_b.isFinite { cursor.failed = true }
    field_eax_c = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_eax_c.bitPattern), 4)))
    if !field_eax_c.isFinite { cursor.failed = true }
    field_eax_d = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_eax_d.bitPattern), 4)))
    if !field_eax_d.isFinite { cursor.failed = true }
    field_eax_e = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_eax_e.bitPattern), 4)))
    if !field_eax_e.isFinite { cursor.failed = true }
    field_eax_f = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_eax_f.bitPattern), 4)))
    if !field_eax_f.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete abb_rapid_msgs/msg/ExtJoint field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 24),
      limit: 24, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_msgs/msg/ExtJoint.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 24 || bytes.count > 24 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_msgs/msg/RobJoint value.
/// @details Retain all 6 fields and 0 constants in source order. Canonical extent 24..24 bytes.
public struct Ros2Abb_rapid_msgsMsgRobJoint {
  /// @brief Original abb_rapid_msgs/msg/RobJoint.rax_1 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rax_1: Float = 0
  /// @brief Original abb_rapid_msgs/msg/RobJoint.rax_2 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rax_2: Float = 0
  /// @brief Original abb_rapid_msgs/msg/RobJoint.rax_3 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rax_3: Float = 0
  /// @brief Original abb_rapid_msgs/msg/RobJoint.rax_4 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rax_4: Float = 0
  /// @brief Original abb_rapid_msgs/msg/RobJoint.rax_5 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rax_5: Float = 0
  /// @brief Original abb_rapid_msgs/msg/RobJoint.rax_6 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rax_6: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_rax_1 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_rax_1.bitPattern), 4)))
    if !field_rax_1.isFinite { cursor.failed = true }
    field_rax_2 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_rax_2.bitPattern), 4)))
    if !field_rax_2.isFinite { cursor.failed = true }
    field_rax_3 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_rax_3.bitPattern), 4)))
    if !field_rax_3.isFinite { cursor.failed = true }
    field_rax_4 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_rax_4.bitPattern), 4)))
    if !field_rax_4.isFinite { cursor.failed = true }
    field_rax_5 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_rax_5.bitPattern), 4)))
    if !field_rax_5.isFinite { cursor.failed = true }
    field_rax_6 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_rax_6.bitPattern), 4)))
    if !field_rax_6.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete abb_rapid_msgs/msg/RobJoint field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 24),
      limit: 24, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_msgs/msg/RobJoint.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 24 || bytes.count > 24 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_msgs/msg/JointTarget value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 48..48 bytes.
public struct Ros2Abb_rapid_msgsMsgJointTarget {
  /// @brief Original abb_rapid_msgs/msg/JointTarget.robax field.
  /// @details Original type abb_rapid_msgs/msg/RobJoint. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_robax: Ros2Abb_rapid_msgsMsgRobJoint = Ros2Abb_rapid_msgsMsgRobJoint()
  /// @brief Original abb_rapid_msgs/msg/JointTarget.extax field.
  /// @details Original type abb_rapid_msgs/msg/ExtJoint. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_extax: Ros2Abb_rapid_msgsMsgExtJoint = Ros2Abb_rapid_msgsMsgExtJoint()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_robax.fields(&cursor)
    field_extax.fields(&cursor)
  }
  /// @brief Encode every complete abb_rapid_msgs/msg/JointTarget field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 48),
      limit: 48, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_msgs/msg/JointTarget.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 48 || bytes.count > 48 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_msgs/msg/Pos value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 12..12 bytes.
public struct Ros2Abb_rapid_msgsMsgPos {
  /// @brief Original abb_rapid_msgs/msg/Pos.x field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_x: Float = 0
  /// @brief Original abb_rapid_msgs/msg/Pos.y field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_y: Float = 0
  /// @brief Original abb_rapid_msgs/msg/Pos.z field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_z: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_x = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_x.bitPattern), 4)))
    if !field_x.isFinite { cursor.failed = true }
    field_y = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_y.bitPattern), 4)))
    if !field_y.isFinite { cursor.failed = true }
    field_z = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_z.bitPattern), 4)))
    if !field_z.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete abb_rapid_msgs/msg/Pos field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 12),
      limit: 12, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_msgs/msg/Pos.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 12 || bytes.count > 12 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_msgs/msg/Orient value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 16..16 bytes.
public struct Ros2Abb_rapid_msgsMsgOrient {
  /// @brief Original abb_rapid_msgs/msg/Orient.q1 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_q1: Float = 0
  /// @brief Original abb_rapid_msgs/msg/Orient.q2 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_q2: Float = 0
  /// @brief Original abb_rapid_msgs/msg/Orient.q3 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_q3: Float = 0
  /// @brief Original abb_rapid_msgs/msg/Orient.q4 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_q4: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_q1 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_q1.bitPattern), 4)))
    if !field_q1.isFinite { cursor.failed = true }
    field_q2 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_q2.bitPattern), 4)))
    if !field_q2.isFinite { cursor.failed = true }
    field_q3 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_q3.bitPattern), 4)))
    if !field_q3.isFinite { cursor.failed = true }
    field_q4 = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_q4.bitPattern), 4)))
    if !field_q4.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete abb_rapid_msgs/msg/Orient field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 16),
      limit: 16, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_msgs/msg/Orient.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 16 || bytes.count > 16 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_msgs/msg/LoadData value.
/// @details Retain all 6 fields and 0 constants in source order. Canonical extent 44..44 bytes.
public struct Ros2Abb_rapid_msgsMsgLoadData {
  /// @brief Original abb_rapid_msgs/msg/LoadData.mass field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mass: Float = 0
  /// @brief Original abb_rapid_msgs/msg/LoadData.cog field.
  /// @details Original type abb_rapid_msgs/msg/Pos. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_cog: Ros2Abb_rapid_msgsMsgPos = Ros2Abb_rapid_msgsMsgPos()
  /// @brief Original abb_rapid_msgs/msg/LoadData.aom field.
  /// @details Original type abb_rapid_msgs/msg/Orient. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_aom: Ros2Abb_rapid_msgsMsgOrient = Ros2Abb_rapid_msgsMsgOrient()
  /// @brief Original abb_rapid_msgs/msg/LoadData.ix field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ix: Float = 0
  /// @brief Original abb_rapid_msgs/msg/LoadData.iy field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_iy: Float = 0
  /// @brief Original abb_rapid_msgs/msg/LoadData.iz field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_iz: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_mass = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_mass.bitPattern), 4)))
    if !field_mass.isFinite { cursor.failed = true }
    field_cog.fields(&cursor)
    field_aom.fields(&cursor)
    field_ix = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_ix.bitPattern), 4)))
    if !field_ix.isFinite { cursor.failed = true }
    field_iy = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_iy.bitPattern), 4)))
    if !field_iy.isFinite { cursor.failed = true }
    field_iz = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_iz.bitPattern), 4)))
    if !field_iz.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete abb_rapid_msgs/msg/LoadData field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 44),
      limit: 44, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_msgs/msg/LoadData.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 44 || bytes.count > 44 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_msgs/msg/Pose value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 28..28 bytes.
public struct Ros2Abb_rapid_msgsMsgPose {
  /// @brief Original abb_rapid_msgs/msg/Pose.trans field.
  /// @details Original type abb_rapid_msgs/msg/Pos. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_trans: Ros2Abb_rapid_msgsMsgPos = Ros2Abb_rapid_msgsMsgPos()
  /// @brief Original abb_rapid_msgs/msg/Pose.rot field.
  /// @details Original type abb_rapid_msgs/msg/Orient. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_rot: Ros2Abb_rapid_msgsMsgOrient = Ros2Abb_rapid_msgsMsgOrient()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_trans.fields(&cursor)
    field_rot.fields(&cursor)
  }
  /// @brief Encode every complete abb_rapid_msgs/msg/Pose field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 28),
      limit: 28, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_msgs/msg/Pose.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 28 || bytes.count > 28 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_msgs/msg/RobTarget value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 68..68 bytes.
public struct Ros2Abb_rapid_msgsMsgRobTarget {
  /// @brief Original abb_rapid_msgs/msg/RobTarget.trans field.
  /// @details Original type abb_rapid_msgs/msg/Pos. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_trans: Ros2Abb_rapid_msgsMsgPos = Ros2Abb_rapid_msgsMsgPos()
  /// @brief Original abb_rapid_msgs/msg/RobTarget.rot field.
  /// @details Original type abb_rapid_msgs/msg/Orient. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_rot: Ros2Abb_rapid_msgsMsgOrient = Ros2Abb_rapid_msgsMsgOrient()
  /// @brief Original abb_rapid_msgs/msg/RobTarget.robconf field.
  /// @details Original type abb_rapid_msgs/msg/ConfData. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_robconf: Ros2Abb_rapid_msgsMsgConfData = Ros2Abb_rapid_msgsMsgConfData()
  /// @brief Original abb_rapid_msgs/msg/RobTarget.extax field.
  /// @details Original type abb_rapid_msgs/msg/ExtJoint. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_extax: Ros2Abb_rapid_msgsMsgExtJoint = Ros2Abb_rapid_msgsMsgExtJoint()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_trans.fields(&cursor)
    field_rot.fields(&cursor)
    field_robconf.fields(&cursor)
    field_extax.fields(&cursor)
  }
  /// @brief Encode every complete abb_rapid_msgs/msg/RobTarget field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 68),
      limit: 68, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_msgs/msg/RobTarget.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 68 || bytes.count > 68 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_msgs/msg/ToolData value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 73..73 bytes.
public struct Ros2Abb_rapid_msgsMsgToolData {
  /// @brief Original abb_rapid_msgs/msg/ToolData.robhold field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_robhold: Bool = false
  /// @brief Original abb_rapid_msgs/msg/ToolData.tframe field.
  /// @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_tframe: Ros2Abb_rapid_msgsMsgPose = Ros2Abb_rapid_msgsMsgPose()
  /// @brief Original abb_rapid_msgs/msg/ToolData.tload field.
  /// @details Original type abb_rapid_msgs/msg/LoadData. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_tload: Ros2Abb_rapid_msgsMsgLoadData = Ros2Abb_rapid_msgsMsgLoadData()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_robhold = cursor.boolean(field_robhold)
    field_tframe.fields(&cursor)
    field_tload.fields(&cursor)
  }
  /// @brief Encode every complete abb_rapid_msgs/msg/ToolData field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 73),
      limit: 73, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_msgs/msg/ToolData.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 73 || bytes.count > 73 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_msgs/msg/WObjData value.
/// @details Retain all 5 fields and 0 constants in source order. Canonical extent 62..574 bytes.
public struct Ros2Abb_rapid_msgsMsgWObjData {
  /// @brief Original abb_rapid_msgs/msg/WObjData.robhold field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_robhold: Bool = false
  /// @brief Original abb_rapid_msgs/msg/WObjData.ufprog field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ufprog: Bool = false
  /// @brief Original abb_rapid_msgs/msg/WObjData.ufmec field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_ufmec: [UInt8] = []
  /// @brief Original abb_rapid_msgs/msg/WObjData.uframe field.
  /// @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_uframe: Ros2Abb_rapid_msgsMsgPose = Ros2Abb_rapid_msgsMsgPose()
  /// @brief Original abb_rapid_msgs/msg/WObjData.oframe field.
  /// @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_oframe: Ros2Abb_rapid_msgsMsgPose = Ros2Abb_rapid_msgsMsgPose()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_robhold = cursor.boolean(field_robhold)
    field_ufprog = cursor.boolean(field_ufprog)
    field_ufmec = cursor.text(field_ufmec, 512)
    field_uframe.fields(&cursor)
    field_oframe.fields(&cursor)
  }
  /// @brief Encode every complete abb_rapid_msgs/msg/WObjData field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 574),
      limit: 574, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_msgs/msg/WObjData.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 62 || bytes.count > 574 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings value.
/// @details Retain all 8 fields and 0 constants in source order. Canonical extent 204..716 bytes.
public struct Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings {
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.tool field.
  /// @details Original type abb_rapid_msgs/msg/ToolData. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_tool: Ros2Abb_rapid_msgsMsgToolData = Ros2Abb_rapid_msgsMsgToolData()
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.wobj field.
  /// @details Original type abb_rapid_msgs/msg/WObjData. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_wobj: Ros2Abb_rapid_msgsMsgWObjData = Ros2Abb_rapid_msgsMsgWObjData()
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.correction_frame field.
  /// @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_correction_frame: Ros2Abb_rapid_msgsMsgPose = Ros2Abb_rapid_msgsMsgPose()
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.sensor_frame field.
  /// @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_sensor_frame: Ros2Abb_rapid_msgsMsgPose = Ros2Abb_rapid_msgsMsgPose()
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.cond_min_max field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cond_min_max: Float = 0
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.lp_filter field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_lp_filter: Float = 0
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.sample_rate field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sample_rate: UInt8 = 0
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.max_speed_deviation field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_max_speed_deviation: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_tool.fields(&cursor)
    field_wobj.fields(&cursor)
    field_correction_frame.fields(&cursor)
    field_sensor_frame.fields(&cursor)
    field_cond_min_max = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_cond_min_max.bitPattern), 4)))
    if !field_cond_min_max.isFinite { cursor.failed = true }
    field_lp_filter = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_lp_filter.bitPattern), 4)))
    if !field_lp_filter.isFinite { cursor.failed = true }
    field_sample_rate = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_sample_rate), 1))
    field_max_speed_deviation = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_max_speed_deviation.bitPattern), 4)))
    if !field_max_speed_deviation.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/msg/EGMActivateSettings field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 716),
      limit: 716, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 204 || bytes.count > 716 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_sm_addin_msgs/msg/EGMRunSettings value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 40..40 bytes.
public struct Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings {
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.cond_time field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cond_time: Float = 0
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.ramp_in_time field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ramp_in_time: Float = 0
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.offset field.
  /// @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_offset: Ros2Abb_rapid_msgsMsgPose = Ros2Abb_rapid_msgsMsgPose()
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.pos_corr_gain field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_pos_corr_gain: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_cond_time = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_cond_time.bitPattern), 4)))
    if !field_cond_time.isFinite { cursor.failed = true }
    field_ramp_in_time = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_ramp_in_time.bitPattern), 4)))
    if !field_ramp_in_time.isFinite { cursor.failed = true }
    field_offset.fields(&cursor)
    field_pos_corr_gain = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_pos_corr_gain.bitPattern), 4)))
    if !field_pos_corr_gain.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/msg/EGMRunSettings field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 40),
      limit: 40, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/msg/EGMRunSettings.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 40 || bytes.count > 40 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 5..5 bytes.
public struct Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings {
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.use_filtering field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_filtering: Bool = false
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.comm_timeout field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_comm_timeout: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_use_filtering = cursor.boolean(field_use_filtering)
    field_comm_timeout = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_comm_timeout.bitPattern), 4)))
    if !field_comm_timeout.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/msg/EGMSetupSettings field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 5),
      limit: 5, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 5 || bytes.count > 5 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_sm_addin_msgs/msg/EGMStopSettings value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings {
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMStopSettings.ramp_out_time field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ramp_out_time: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_ramp_out_time = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_ramp_out_time.bitPattern), 4)))
    if !field_ramp_out_time.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/msg/EGMStopSettings field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 4),
      limit: 4, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/msg/EGMStopSettings.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 4 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_sm_addin_msgs/msg/EGMSettings value.
/// @details Retain all 6 fields and 0 constants in source order. Canonical extent 255..767 bytes.
public struct Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings {
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.allow_egm_motions field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_allow_egm_motions: Bool = false
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.use_presync field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_presync: Bool = false
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.setup_uc field.
  /// @details Original type abb_rapid_sm_addin_msgs/msg/EGMSetupSettings. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_setup_uc: Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings =
    Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings()
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.activate field.
  /// @details Original type abb_rapid_sm_addin_msgs/msg/EGMActivateSettings. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_activate: Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings =
    Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings()
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.run field.
  /// @details Original type abb_rapid_sm_addin_msgs/msg/EGMRunSettings. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_run: Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings =
    Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings()
  /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.stop field.
  /// @details Original type abb_rapid_sm_addin_msgs/msg/EGMStopSettings. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_stop: Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings =
    Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_allow_egm_motions = cursor.boolean(field_allow_egm_motions)
    field_use_presync = cursor.boolean(field_use_presync)
    field_setup_uc.fields(&cursor)
    field_activate.fields(&cursor)
    field_run.fields(&cursor)
    field_stop.fields(&cursor)
  }
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/msg/EGMSettings field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 767),
      limit: 767, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/msg/EGMSettings.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 255 || bytes.count > 767 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_sm_addin_msgs/msg/StateMachineState value.
/// @details Retain all 3 fields and 12 constants in source order. Canonical extent 6..518 bytes.
public struct Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState {
  /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.rapid_task field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_rapid_task: [UInt8] = []
  /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.sm_state field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sm_state: UInt8 = 0
  /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.egm_action field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_egm_action: UInt8 = 0
  /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_UNKNOWN constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SM_STATE_UNKNOWN: UInt8 = 1
  /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_IDLE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SM_STATE_IDLE: UInt8 = 2
  /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_INITIALIZE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SM_STATE_INITIALIZE: UInt8 = 3
  /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_RUN_RAPID_ROUTINE
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SM_STATE_RUN_RAPID_ROUTINE: UInt8 = 4
  /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_RUN_EGM_ROUTINE
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SM_STATE_RUN_EGM_ROUTINE: UInt8 = 5
  /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_UNKNOWN constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_ACTION_UNKNOWN: UInt8 = 1
  /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_NONE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_ACTION_NONE: UInt8 = 2
  /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_RUN_JOINT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_ACTION_RUN_JOINT: UInt8 = 3
  /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_RUN_POSE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_ACTION_RUN_POSE: UInt8 = 4
  /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_STOP constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_ACTION_STOP: UInt8 = 5
  /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_START_STREAM
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_ACTION_START_STREAM: UInt8 = 6
  /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_STOP_STREAM
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_ACTION_STOP_STREAM: UInt8 = 7
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_rapid_task = cursor.text(field_rapid_task, 512)
    field_sm_state = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_sm_state), 1))
    field_egm_action = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_egm_action), 1))
  }
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/msg/StateMachineState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 518),
      limit: 518, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/msg/StateMachineState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 518 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_sm_addin_msgs/msg/RuntimeState value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 16..8368 bytes.
public struct Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState {
  /// @brief Original abb_rapid_sm_addin_msgs/msg/RuntimeState.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original abb_rapid_sm_addin_msgs/msg/RuntimeState.state_machines field.
  /// @details Original type abb_rapid_sm_addin_msgs/msg/StateMachineState. Shape sequence;
  /// bound/count 16 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_state_machines: [Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_header.fields(&cursor)
    let count1 = Int(cursor.number(UInt64(field_state_machines.count), 4))
    if count1 > 16 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_state_machines = Array(
        repeating: Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState(), count: count1)
    }
    for index in 0..<count1 {
      field_state_machines[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/msg/RuntimeState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 8368),
      limit: 8368, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/msg/RuntimeState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 16 || bytes.count > 8368 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..68 bytes.
public struct Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request {
  /// @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request.task field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_task: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_task = cursor.text(field_task, 64)
  }
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 68),
      limit: 68, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 68 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 261..1285 bytes.
public struct Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response {
  /// @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.settings field.
  /// @details Original type abb_rapid_sm_addin_msgs/msg/EGMSettings. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_settings: Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings =
    Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings()
  /// @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_settings.fields(&cursor)
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 1285),
      limit: 1285, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 261 || bytes.count > 1285 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 259..835 bytes.
public struct Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request {
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.task field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_task: [UInt8] = []
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.settings field.
  /// @details Original type abb_rapid_sm_addin_msgs/msg/EGMSettings. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_settings: Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings =
    Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_task = cursor.text(field_task, 64)
    field_settings.fields(&cursor)
  }
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 835),
      limit: 835, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 259 || bytes.count > 835 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response {
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 518),
      limit: 518, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 518 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..584 bytes.
public struct Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request {
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.task field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_task: [UInt8] = []
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.routine field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_routine: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_task = cursor.text(field_task, 64)
    field_routine = cursor.text(field_routine, 512)
  }
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 584),
      limit: 584, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 584 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response {
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 518),
      limit: 518, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 518 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request value.
/// @details Retain all 3 fields and 15 constants in source order. Canonical extent 9..73 bytes.
public struct Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request {
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.task field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_task: [UInt8] = []
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.command field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_command: UInt8 = 0
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.target_position field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_target_position: Float = 0
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_UNKNOWN
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_UNKNOWN: UInt8 = 1
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_NONE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_NONE: UInt8 = 2
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_INITIALIZE
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_INITIALIZE: UInt8 = 3
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_CALIBRATE
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_CALIBRATE: UInt8 = 4
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_MOVE_TO
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_MOVE_TO: UInt8 = 5
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_GRIP_IN
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_GRIP_IN: UInt8 = 6
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_GRIP_OUT
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_GRIP_OUT: UInt8 = 7
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_ON_1
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_BLOW_ON_1: UInt8 = 8
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_ON_2
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_BLOW_ON_2: UInt8 = 9
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_OFF_1
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_BLOW_OFF_1: UInt8 = 10
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_OFF_2
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_BLOW_OFF_2: UInt8 = 11
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_ON_1
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_VACUUM_ON_1: UInt8 = 12
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_ON_2
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_VACUUM_ON_2: UInt8 = 13
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_OFF_1
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_VACUUM_OFF_1: UInt8 = 14
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_OFF_2
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_VACUUM_OFF_2: UInt8 = 15
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_task = cursor.text(field_task, 64)
    field_command = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_command), 1))
    field_target_position = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_target_position.bitPattern), 4)))
    if !field_target_position.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 73),
      limit: 73, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 9 || bytes.count > 73 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response {
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 518),
      limit: 518, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 518 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/msg/MechanicalUnitState value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 5..69 bytes.
public struct Ros2Abb_robot_msgsMsgMechanicalUnitState {
  /// @brief Original abb_robot_msgs/msg/MechanicalUnitState.name field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_name: [UInt8] = []
  /// @brief Original abb_robot_msgs/msg/MechanicalUnitState.activated field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_activated: Bool = false
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_name = cursor.text(field_name, 64)
    field_activated = cursor.boolean(field_activated)
  }
  /// @brief Encode every complete abb_robot_msgs/msg/MechanicalUnitState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 69),
      limit: 69, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/msg/MechanicalUnitState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 5 || bytes.count > 69 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/msg/RAPIDSymbolPath value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 12..204 bytes.
public struct Ros2Abb_robot_msgsMsgRAPIDSymbolPath {
  /// @brief Original abb_robot_msgs/msg/RAPIDSymbolPath.task field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_task: [UInt8] = []
  /// @brief Original abb_robot_msgs/msg/RAPIDSymbolPath.module field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_module: [UInt8] = []
  /// @brief Original abb_robot_msgs/msg/RAPIDSymbolPath.symbol field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_symbol: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_task = cursor.text(field_task, 64)
    field_module = cursor.text(field_module, 64)
    field_symbol = cursor.text(field_symbol, 64)
  }
  /// @brief Encode every complete abb_robot_msgs/msg/RAPIDSymbolPath field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 204),
      limit: 204, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/msg/RAPIDSymbolPath.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 12 || bytes.count > 204 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/msg/RAPIDTaskState value.
/// @details Retain all 4 fields and 5 constants in source order. Canonical extent 7..71 bytes.
public struct Ros2Abb_robot_msgsMsgRAPIDTaskState {
  /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.name field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_name: [UInt8] = []
  /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.activated field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_activated: Bool = false
  /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.execution_state field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_execution_state: UInt8 = 0
  /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.motion_task field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_motion_task: Bool = false
  /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_UNKNOWN constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EXECUTION_STATE_UNKNOWN: UInt8 = 1
  /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_READY constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EXECUTION_STATE_READY: UInt8 = 2
  /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_STOPPED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EXECUTION_STATE_STOPPED: UInt8 = 3
  /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_STARTED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EXECUTION_STATE_STARTED: UInt8 = 4
  /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_UNINITIALIZED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EXECUTION_STATE_UNINITIALIZED: UInt8 = 5
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_name = cursor.text(field_name, 64)
    field_activated = cursor.boolean(field_activated)
    field_execution_state = UInt8(
      truncatingIfNeeded: cursor.number(UInt64(field_execution_state), 1))
    field_motion_task = cursor.boolean(field_motion_task)
  }
  /// @brief Encode every complete abb_robot_msgs/msg/RAPIDTaskState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 71),
      limit: 71, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/msg/RAPIDTaskState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 7 || bytes.count > 71 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/msg/ServiceResponses value.
/// @details Retain all 0 fields and 32 constants in source order. Canonical extent 0..0 bytes.
public struct Ros2Abb_robot_msgsMsgServiceResponses {
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.SUCCESS constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SUCCESS: StaticString = ""
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SUCCESS constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_SUCCESS: UInt16 = 1
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.FAILED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_FAILED: StaticString =
    "Service failed (e.g. timeout or resource not found, see the DEBUG log for details)"
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_FAILED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_FAILED: UInt16 = 2
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.SERVER_IS_BUSY constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SERVER_IS_BUSY: StaticString = "Server is busy"
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SERVER_IS_BUSY constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_SERVER_IS_BUSY: UInt16 = 1001
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_FILENAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EMPTY_FILENAME: StaticString = "Filename is empty"
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_FILENAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_EMPTY_FILENAME: UInt16 = 2001
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_SIGNAL_NAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EMPTY_SIGNAL_NAME: StaticString = "Signal name is empty"
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_SIGNAL_NAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_EMPTY_SIGNAL_NAME: UInt16 = 2002
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_RAPID_TASK_NAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EMPTY_RAPID_TASK_NAME: StaticString = "RAPID task name is empty"
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_RAPID_TASK_NAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_EMPTY_RAPID_TASK_NAME: UInt16 = 2003
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_RAPID_MODULE_NAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EMPTY_RAPID_MODULE_NAME: StaticString = "RAPID module name is empty"
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_RAPID_MODULE_NAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_EMPTY_RAPID_MODULE_NAME: UInt16 = 2004
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_RAPID_SYMBOL_NAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EMPTY_RAPID_SYMBOL_NAME: StaticString = "RAPID symbol name is empty"
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_RAPID_SYMBOL_NAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_EMPTY_RAPID_SYMBOL_NAME: UInt16 = 2005
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.NOT_IN_AUTO_MODE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_IN_AUTO_MODE: StaticString = "Robot controller is not in AUTO mode"
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_NOT_IN_AUTO_MODE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_NOT_IN_AUTO_MODE: UInt16 = 3001
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.MOTORS_ARE_OFF constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MOTORS_ARE_OFF: StaticString = "Motors are off"
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_MOTORS_ARE_OFF constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_MOTORS_ARE_OFF: UInt16 = 3002
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.MOTORS_ARE_ON constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MOTORS_ARE_ON: StaticString = "Motors are on"
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_MOTORS_ARE_ON constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_MOTORS_ARE_ON: UInt16 = 3003
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.RAPID_NOT_STOPPED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RAPID_NOT_STOPPED: StaticString = "RAPID has not been stopped"
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_RAPID_NOT_STOPPED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_RAPID_NOT_STOPPED: UInt16 = 3004
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.RAPID_NOT_RUNNING constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RAPID_NOT_RUNNING: StaticString = "RAPID is not running"
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_RAPID_NOT_RUNNING constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_RAPID_NOT_RUNNING: UInt16 = 3005
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.SM_RUNTIME_STATES_MISSING constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SM_RUNTIME_STATES_MISSING: StaticString =
    "No runtime states received for any StateMachine Add-In instance"
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SM_RUNTIME_STATES_MISSING constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_SM_RUNTIME_STATES_MISSING: UInt16 = 4001
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.SM_UNKNOWN_RAPID_TASK constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SM_UNKNOWN_RAPID_TASK: StaticString =
    "RAPID task not found among known StateMachine Add-In instances"
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SM_UNKNOWN_RAPID_TASK constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_SM_UNKNOWN_RAPID_TASK: UInt16 = 4002
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.SM_UNINITIALIZED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SM_UNINITIALIZED: StaticString =
    "StateMachine Add-In instance has not been initialized"
  /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SM_UNINITIALIZED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_SM_UNINITIALIZED: UInt16 = 4003
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
  }
  /// @brief Encode every complete abb_robot_msgs/msg/ServiceResponses field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 0),
      limit: 0, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/msg/ServiceResponses.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 0 || bytes.count > 0 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/msg/SystemState value.
/// @details Retain all 6 fields and 0 constants in source order. Canonical extent 23..2327 bytes.
public struct Ros2Abb_robot_msgsMsgSystemState {
  /// @brief Original abb_robot_msgs/msg/SystemState.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original abb_robot_msgs/msg/SystemState.motors_on field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_motors_on: Bool = false
  /// @brief Original abb_robot_msgs/msg/SystemState.auto_mode field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_auto_mode: Bool = false
  /// @brief Original abb_robot_msgs/msg/SystemState.rapid_running field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rapid_running: Bool = false
  /// @brief Original abb_robot_msgs/msg/SystemState.rapid_tasks field.
  /// @details Original type abb_robot_msgs/msg/RAPIDTaskState. Shape sequence; bound/count 16
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_rapid_tasks: [Ros2Abb_robot_msgsMsgRAPIDTaskState] = []
  /// @brief Original abb_robot_msgs/msg/SystemState.mechanical_units field.
  /// @details Original type abb_robot_msgs/msg/MechanicalUnitState. Shape sequence; bound/count
  /// 16 elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_mechanical_units: [Ros2Abb_robot_msgsMsgMechanicalUnitState] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_header.fields(&cursor)
    field_motors_on = cursor.boolean(field_motors_on)
    field_auto_mode = cursor.boolean(field_auto_mode)
    field_rapid_running = cursor.boolean(field_rapid_running)
    let count4 = Int(cursor.number(UInt64(field_rapid_tasks.count), 4))
    if count4 > 16 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_rapid_tasks = Array(repeating: Ros2Abb_robot_msgsMsgRAPIDTaskState(), count: count4)
    }
    for index in 0..<count4 {
      field_rapid_tasks[index].fields(&cursor)
    }
    let count5 = Int(cursor.number(UInt64(field_mechanical_units.count), 4))
    if count5 > 16 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_mechanical_units = Array(
        repeating: Ros2Abb_robot_msgsMsgMechanicalUnitState(), count: count5)
    }
    for index in 0..<count5 {
      field_mechanical_units[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete abb_robot_msgs/msg/SystemState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 2327),
      limit: 2327, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/msg/SystemState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 23 || bytes.count > 2327 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/GetFileContents_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..516 bytes.
public struct Ros2Abb_robot_msgsSrvGetFileContents_Request {
  /// @brief Original abb_robot_msgs/srv/GetFileContents_Request.filename field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_filename: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_filename = cursor.text(field_filename, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/GetFileContents_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 516),
      limit: 516, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/GetFileContents_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 516 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/GetFileContents_Response value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 10..4618 bytes.
public struct Ros2Abb_robot_msgsSrvGetFileContents_Response {
  /// @brief Original abb_robot_msgs/srv/GetFileContents_Response.contents field.
  /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_contents: [UInt8] = []
  /// @brief Original abb_robot_msgs/srv/GetFileContents_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/srv/GetFileContents_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_contents = cursor.text(field_contents, 4096)
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/GetFileContents_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 4618),
      limit: 4618, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/GetFileContents_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 10 || bytes.count > 4618 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/GetIOSignal_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..516 bytes.
public struct Ros2Abb_robot_msgsSrvGetIOSignal_Request {
  /// @brief Original abb_robot_msgs/srv/GetIOSignal_Request.signal field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_signal: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_signal = cursor.text(field_signal, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/GetIOSignal_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 516),
      limit: 516, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/GetIOSignal_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 516 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/GetIOSignal_Response value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 10..1034 bytes.
public struct Ros2Abb_robot_msgsSrvGetIOSignal_Response {
  /// @brief Original abb_robot_msgs/srv/GetIOSignal_Response.value field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_value: [UInt8] = []
  /// @brief Original abb_robot_msgs/srv/GetIOSignal_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/srv/GetIOSignal_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_value = cursor.text(field_value, 512)
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/GetIOSignal_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 1034),
      limit: 1034, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/GetIOSignal_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 10 || bytes.count > 1034 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDBool_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 12..204 bytes.
public struct Ros2Abb_robot_msgsSrvGetRAPIDBool_Request {
  /// @brief Original abb_robot_msgs/srv/GetRAPIDBool_Request.path field.
  /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath =
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_path.fields(&cursor)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/GetRAPIDBool_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 204),
      limit: 204, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDBool_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 12 || bytes.count > 204 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDBool_Response value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 7..519 bytes.
public struct Ros2Abb_robot_msgsSrvGetRAPIDBool_Response {
  /// @brief Original abb_robot_msgs/srv/GetRAPIDBool_Response.value field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Bool = false
  /// @brief Original abb_robot_msgs/srv/GetRAPIDBool_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/srv/GetRAPIDBool_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_value = cursor.boolean(field_value)
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/GetRAPIDBool_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 519),
      limit: 519, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDBool_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 7 || bytes.count > 519 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDDnum_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 12..204 bytes.
public struct Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request {
  /// @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Request.path field.
  /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath =
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_path.fields(&cursor)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/GetRAPIDDnum_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 204),
      limit: 204, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDDnum_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 12 || bytes.count > 204 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDDnum_Response value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 14..526 bytes.
public struct Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response {
  /// @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Response.value field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Double = 0
  /// @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_value = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_value.bitPattern), 8)))
    if !field_value.isFinite { cursor.failed = true }
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/GetRAPIDDnum_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 526),
      limit: 526, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDDnum_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 14 || bytes.count > 526 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDNum_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 12..204 bytes.
public struct Ros2Abb_robot_msgsSrvGetRAPIDNum_Request {
  /// @brief Original abb_robot_msgs/srv/GetRAPIDNum_Request.path field.
  /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath =
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_path.fields(&cursor)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/GetRAPIDNum_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 204),
      limit: 204, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDNum_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 12 || bytes.count > 204 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDNum_Response value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 10..522 bytes.
public struct Ros2Abb_robot_msgsSrvGetRAPIDNum_Response {
  /// @brief Original abb_robot_msgs/srv/GetRAPIDNum_Response.value field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Float = 0
  /// @brief Original abb_robot_msgs/srv/GetRAPIDNum_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/srv/GetRAPIDNum_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_value = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_value.bitPattern), 4)))
    if !field_value.isFinite { cursor.failed = true }
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/GetRAPIDNum_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 522),
      limit: 522, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDNum_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 10 || bytes.count > 522 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDString_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 12..204 bytes.
public struct Ros2Abb_robot_msgsSrvGetRAPIDString_Request {
  /// @brief Original abb_robot_msgs/srv/GetRAPIDString_Request.path field.
  /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath =
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_path.fields(&cursor)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/GetRAPIDString_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 204),
      limit: 204, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDString_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 12 || bytes.count > 204 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDString_Response value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 10..1034 bytes.
public struct Ros2Abb_robot_msgsSrvGetRAPIDString_Response {
  /// @brief Original abb_robot_msgs/srv/GetRAPIDString_Response.value field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_value: [UInt8] = []
  /// @brief Original abb_robot_msgs/srv/GetRAPIDString_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/srv/GetRAPIDString_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_value = cursor.text(field_value, 512)
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/GetRAPIDString_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 1034),
      limit: 1034, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDString_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 10 || bytes.count > 1034 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDSymbol_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 12..204 bytes.
public struct Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request {
  /// @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Request.path field.
  /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath =
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_path.fields(&cursor)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/GetRAPIDSymbol_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 204),
      limit: 204, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDSymbol_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 12 || bytes.count > 204 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/GetRAPIDSymbol_Response value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 10..1034 bytes.
public struct Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response {
  /// @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Response.value field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_value: [UInt8] = []
  /// @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_value = cursor.text(field_value, 512)
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/GetRAPIDSymbol_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 1034),
      limit: 1034, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/GetRAPIDSymbol_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 10 || bytes.count > 1034 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/GetRobotControllerDescription_Request value.
/// @details Retain all 0 fields and 0 constants in source order. Canonical extent 0..0 bytes.
public struct Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request {
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
  }
  /// @brief Encode every complete abb_robot_msgs/srv/GetRobotControllerDescription_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 0),
      limit: 0, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/GetRobotControllerDescription_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 0 || bytes.count > 0 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/GetRobotControllerDescription_Response value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 10..4618 bytes.
public struct Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response {
  /// @brief Original abb_robot_msgs/srv/GetRobotControllerDescription_Response.description field.
  /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_description: [UInt8] = []
  /// @brief Original abb_robot_msgs/srv/GetRobotControllerDescription_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/srv/GetRobotControllerDescription_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_description = cursor.text(field_description, 4096)
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/GetRobotControllerDescription_Response
  /// field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 4618),
      limit: 4618, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete
  /// abb_robot_msgs/srv/GetRobotControllerDescription_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 10 || bytes.count > 4618 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/GetSpeedRatio_Request value.
/// @details Retain all 0 fields and 0 constants in source order. Canonical extent 0..0 bytes.
public struct Ros2Abb_robot_msgsSrvGetSpeedRatio_Request {
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
  }
  /// @brief Encode every complete abb_robot_msgs/srv/GetSpeedRatio_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 0),
      limit: 0, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/GetSpeedRatio_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 0 || bytes.count > 0 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/GetSpeedRatio_Response value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 7..519 bytes.
public struct Ros2Abb_robot_msgsSrvGetSpeedRatio_Response {
  /// @brief Original abb_robot_msgs/srv/GetSpeedRatio_Response.speed_ratio field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_speed_ratio: UInt8 = 0
  /// @brief Original abb_robot_msgs/srv/GetSpeedRatio_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/srv/GetSpeedRatio_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_speed_ratio = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_speed_ratio), 1))
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/GetSpeedRatio_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 519),
      limit: 519, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/GetSpeedRatio_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 7 || bytes.count > 519 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/SetFileContents_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..4616 bytes.
public struct Ros2Abb_robot_msgsSrvSetFileContents_Request {
  /// @brief Original abb_robot_msgs/srv/SetFileContents_Request.filename field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_filename: [UInt8] = []
  /// @brief Original abb_robot_msgs/srv/SetFileContents_Request.contents field.
  /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_contents: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_filename = cursor.text(field_filename, 512)
    field_contents = cursor.text(field_contents, 4096)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/SetFileContents_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 4616),
      limit: 4616, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/SetFileContents_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 4616 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/SetFileContents_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros2Abb_robot_msgsSrvSetFileContents_Response {
  /// @brief Original abb_robot_msgs/srv/SetFileContents_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/srv/SetFileContents_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/SetFileContents_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 518),
      limit: 518, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/SetFileContents_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 518 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/SetIOSignal_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..1032 bytes.
public struct Ros2Abb_robot_msgsSrvSetIOSignal_Request {
  /// @brief Original abb_robot_msgs/srv/SetIOSignal_Request.signal field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_signal: [UInt8] = []
  /// @brief Original abb_robot_msgs/srv/SetIOSignal_Request.value field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_value: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_signal = cursor.text(field_signal, 512)
    field_value = cursor.text(field_value, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/SetIOSignal_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 1032),
      limit: 1032, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/SetIOSignal_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 1032 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/SetIOSignal_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros2Abb_robot_msgsSrvSetIOSignal_Response {
  /// @brief Original abb_robot_msgs/srv/SetIOSignal_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/srv/SetIOSignal_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/SetIOSignal_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 518),
      limit: 518, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/SetIOSignal_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 518 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDBool_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 13..205 bytes.
public struct Ros2Abb_robot_msgsSrvSetRAPIDBool_Request {
  /// @brief Original abb_robot_msgs/srv/SetRAPIDBool_Request.path field.
  /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath =
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath()
  /// @brief Original abb_robot_msgs/srv/SetRAPIDBool_Request.value field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Bool = false
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_path.fields(&cursor)
    field_value = cursor.boolean(field_value)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/SetRAPIDBool_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 205),
      limit: 205, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDBool_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 13 || bytes.count > 205 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDBool_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros2Abb_robot_msgsSrvSetRAPIDBool_Response {
  /// @brief Original abb_robot_msgs/srv/SetRAPIDBool_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/srv/SetRAPIDBool_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/SetRAPIDBool_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 518),
      limit: 518, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDBool_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 518 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDDnum_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 20..212 bytes.
public struct Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request {
  /// @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Request.path field.
  /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath =
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath()
  /// @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Request.value field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Double = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_path.fields(&cursor)
    field_value = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_value.bitPattern), 8)))
    if !field_value.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete abb_robot_msgs/srv/SetRAPIDDnum_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 212),
      limit: 212, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDDnum_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 20 || bytes.count > 212 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDDnum_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response {
  /// @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/SetRAPIDDnum_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 518),
      limit: 518, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDDnum_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 518 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDNum_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 16..208 bytes.
public struct Ros2Abb_robot_msgsSrvSetRAPIDNum_Request {
  /// @brief Original abb_robot_msgs/srv/SetRAPIDNum_Request.path field.
  /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath =
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath()
  /// @brief Original abb_robot_msgs/srv/SetRAPIDNum_Request.value field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_path.fields(&cursor)
    field_value = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_value.bitPattern), 4)))
    if !field_value.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete abb_robot_msgs/srv/SetRAPIDNum_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 208),
      limit: 208, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDNum_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 16 || bytes.count > 208 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDNum_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros2Abb_robot_msgsSrvSetRAPIDNum_Response {
  /// @brief Original abb_robot_msgs/srv/SetRAPIDNum_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/srv/SetRAPIDNum_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/SetRAPIDNum_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 518),
      limit: 518, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDNum_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 518 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDString_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 16..720 bytes.
public struct Ros2Abb_robot_msgsSrvSetRAPIDString_Request {
  /// @brief Original abb_robot_msgs/srv/SetRAPIDString_Request.path field.
  /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath =
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath()
  /// @brief Original abb_robot_msgs/srv/SetRAPIDString_Request.value field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_value: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_path.fields(&cursor)
    field_value = cursor.text(field_value, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/SetRAPIDString_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 720),
      limit: 720, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDString_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 16 || bytes.count > 720 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDString_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros2Abb_robot_msgsSrvSetRAPIDString_Response {
  /// @brief Original abb_robot_msgs/srv/SetRAPIDString_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/srv/SetRAPIDString_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/SetRAPIDString_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 518),
      limit: 518, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDString_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 518 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDSymbol_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 16..720 bytes.
public struct Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request {
  /// @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Request.path field.
  /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath =
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath()
  /// @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Request.value field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_value: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_path.fields(&cursor)
    field_value = cursor.text(field_value, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/SetRAPIDSymbol_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 720),
      limit: 720, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDSymbol_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 16 || bytes.count > 720 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/SetRAPIDSymbol_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response {
  /// @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/SetRAPIDSymbol_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 518),
      limit: 518, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/SetRAPIDSymbol_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 518 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/SetSpeedRatio_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Abb_robot_msgsSrvSetSpeedRatio_Request {
  /// @brief Original abb_robot_msgs/srv/SetSpeedRatio_Request.speed_ratio field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_speed_ratio: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_speed_ratio = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_speed_ratio), 1))
  }
  /// @brief Encode every complete abb_robot_msgs/srv/SetSpeedRatio_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/SetSpeedRatio_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/SetSpeedRatio_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros2Abb_robot_msgsSrvSetSpeedRatio_Response {
  /// @brief Original abb_robot_msgs/srv/SetSpeedRatio_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/srv/SetSpeedRatio_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/SetSpeedRatio_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 518),
      limit: 518, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/SetSpeedRatio_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 518 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/TriggerWithResultCode_Request value.
/// @details Retain all 0 fields and 0 constants in source order. Canonical extent 0..0 bytes.
public struct Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request {
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
  }
  /// @brief Encode every complete abb_robot_msgs/srv/TriggerWithResultCode_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 0),
      limit: 0, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/TriggerWithResultCode_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 0 || bytes.count > 0 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/srv/TriggerWithResultCode_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response {
  /// @brief Original abb_robot_msgs/srv/TriggerWithResultCode_Response.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/srv/TriggerWithResultCode_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_result_code = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_result_code), 2))
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete abb_robot_msgs/srv/TriggerWithResultCode_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 518),
      limit: 518, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/srv/TriggerWithResultCode_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 518 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original builtin_interfaces/msg/Duration value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros2Builtin_interfacesMsgDuration {
  /// @brief Original builtin_interfaces/msg/Duration.sec field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sec: Int32 = 0
  /// @brief Original builtin_interfaces/msg/Duration.nanosec field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_nanosec: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_sec = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_sec)), 4)))
    field_nanosec = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_nanosec), 4))
    if field_nanosec >= 1_000_000_000 { cursor.failed = true }
  }
  /// @brief Encode every complete builtin_interfaces/msg/Duration field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete builtin_interfaces/msg/Duration.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 8 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original trajectory_msgs/msg/JointTrajectoryPoint value.
/// @details Retain all 5 fields and 0 constants in source order. Canonical extent 24..408 bytes.
public struct Ros2Trajectory_msgsMsgJointTrajectoryPoint {
  /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.positions field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_positions: [Double] = []
  /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.velocities field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_velocities: [Double] = []
  /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_accelerations: [Double] = []
  /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.effort field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_effort: [Double] = []
  /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.time_from_start field.
  /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_time_from_start: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    let count0 = Int(cursor.number(UInt64(field_positions.count), 4))
    if count0 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_positions = Array(repeating: 0, count: count0) }
    for index in 0..<count0 {
      field_positions[index] = Double(
        bitPattern: UInt64(
          truncatingIfNeeded: cursor.number(UInt64(field_positions[index].bitPattern), 8)))
      if !field_positions[index].isFinite { cursor.failed = true }
    }
    let count1 = Int(cursor.number(UInt64(field_velocities.count), 4))
    if count1 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_velocities = Array(repeating: 0, count: count1) }
    for index in 0..<count1 {
      field_velocities[index] = Double(
        bitPattern: UInt64(
          truncatingIfNeeded: cursor.number(UInt64(field_velocities[index].bitPattern), 8)))
      if !field_velocities[index].isFinite { cursor.failed = true }
    }
    let count2 = Int(cursor.number(UInt64(field_accelerations.count), 4))
    if count2 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_accelerations = Array(repeating: 0, count: count2) }
    for index in 0..<count2 {
      field_accelerations[index] = Double(
        bitPattern: UInt64(
          truncatingIfNeeded: cursor.number(UInt64(field_accelerations[index].bitPattern), 8)))
      if !field_accelerations[index].isFinite { cursor.failed = true }
    }
    let count3 = Int(cursor.number(UInt64(field_effort.count), 4))
    if count3 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_effort = Array(repeating: 0, count: count3) }
    for index in 0..<count3 {
      field_effort[index] = Double(
        bitPattern: UInt64(
          truncatingIfNeeded: cursor.number(UInt64(field_effort[index].bitPattern), 8)))
      if !field_effort[index].isFinite { cursor.failed = true }
    }
    field_time_from_start.fields(&cursor)
  }
  /// @brief Encode every complete trajectory_msgs/msg/JointTrajectoryPoint field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 408),
      limit: 408, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectoryPoint.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 24 || bytes.count > 408 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original trajectory_msgs/msg/JointTrajectory value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 20..4164 bytes.
public struct Ros2Trajectory_msgsMsgJointTrajectory {
  /// @brief Original trajectory_msgs/msg/JointTrajectory.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original trajectory_msgs/msg/JointTrajectory.joint_names field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
  /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_joint_names: [[UInt8]] = []
  /// @brief Original trajectory_msgs/msg/JointTrajectory.points field.
  /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Shape sequence; bound/count
  /// 8 elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_points: [Ros2Trajectory_msgsMsgJointTrajectoryPoint] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_header.fields(&cursor)
    let count1 = Int(cursor.number(UInt64(field_joint_names.count), 4))
    if count1 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_joint_names = Array(repeating: [], count: count1) }
    for index in 0..<count1 {
      field_joint_names[index] = cursor.text(field_joint_names[index], 64)
    }
    let count2 = Int(cursor.number(UInt64(field_points.count), 4))
    if count2 > 8 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_points = Array(repeating: Ros2Trajectory_msgsMsgJointTrajectoryPoint(), count: count2)
    }
    for index in 0..<count2 {
      field_points[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete trajectory_msgs/msg/JointTrajectory field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 4164),
      limit: 4164, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete trajectory_msgs/msg/JointTrajectory.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 20 || bytes.count > 4164 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original geometry_msgs/msg/Vector3 value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 24..24 bytes.
public struct Ros2Geometry_msgsMsgVector3 {
  /// @brief Original geometry_msgs/msg/Vector3.x field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_x: Double = 0
  /// @brief Original geometry_msgs/msg/Vector3.y field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_y: Double = 0
  /// @brief Original geometry_msgs/msg/Vector3.z field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_z: Double = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_x = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_x.bitPattern), 8)))
    if !field_x.isFinite { cursor.failed = true }
    field_y = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_y.bitPattern), 8)))
    if !field_y.isFinite { cursor.failed = true }
    field_z = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_z.bitPattern), 8)))
    if !field_z.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete geometry_msgs/msg/Vector3 field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 24),
      limit: 24, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete geometry_msgs/msg/Vector3.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 24 || bytes.count > 24 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original geometry_msgs/msg/Quaternion value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 32..32 bytes.
public struct Ros2Geometry_msgsMsgQuaternion {
  /// @brief Original geometry_msgs/msg/Quaternion.x field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_x: Double = 0.0
  /// @brief Original geometry_msgs/msg/Quaternion.y field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_y: Double = 0.0
  /// @brief Original geometry_msgs/msg/Quaternion.z field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_z: Double = 0.0
  /// @brief Original geometry_msgs/msg/Quaternion.w field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_w: Double = 1.0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_x = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_x.bitPattern), 8)))
    if !field_x.isFinite { cursor.failed = true }
    field_y = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_y.bitPattern), 8)))
    if !field_y.isFinite { cursor.failed = true }
    field_z = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_z.bitPattern), 8)))
    if !field_z.isFinite { cursor.failed = true }
    field_w = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_w.bitPattern), 8)))
    if !field_w.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete geometry_msgs/msg/Quaternion field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 32),
      limit: 32, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete geometry_msgs/msg/Quaternion.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 32 || bytes.count > 32 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original geometry_msgs/msg/Transform value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 56..56 bytes.
public struct Ros2Geometry_msgsMsgTransform {
  /// @brief Original geometry_msgs/msg/Transform.translation field.
  /// @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_translation: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Original geometry_msgs/msg/Transform.rotation field.
  /// @details Original type geometry_msgs/msg/Quaternion. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_rotation: Ros2Geometry_msgsMsgQuaternion = Ros2Geometry_msgsMsgQuaternion()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_translation.fields(&cursor)
    field_rotation.fields(&cursor)
  }
  /// @brief Encode every complete geometry_msgs/msg/Transform field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 56),
      limit: 56, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete geometry_msgs/msg/Transform.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 56 || bytes.count > 56 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original geometry_msgs/msg/Twist value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 48..48 bytes.
public struct Ros2Geometry_msgsMsgTwist {
  /// @brief Original geometry_msgs/msg/Twist.linear field.
  /// @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_linear: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Original geometry_msgs/msg/Twist.angular field.
  /// @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_angular: Ros2Geometry_msgsMsgVector3 = Ros2Geometry_msgsMsgVector3()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_linear.fields(&cursor)
    field_angular.fields(&cursor)
  }
  /// @brief Encode every complete geometry_msgs/msg/Twist field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 48),
      limit: 48, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete geometry_msgs/msg/Twist.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 48 || bytes.count > 48 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 20..324 bytes.
public struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint {
  /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms field.
  /// @details Original type geometry_msgs/msg/Transform. Shape sequence; bound/count 2 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_transforms: [Ros2Geometry_msgsMsgTransform] = []
  /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities field.
  /// @details Original type geometry_msgs/msg/Twist. Shape sequence; bound/count 2 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_velocities: [Ros2Geometry_msgsMsgTwist] = []
  /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations field.
  /// @details Original type geometry_msgs/msg/Twist. Shape sequence; bound/count 2 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_accelerations: [Ros2Geometry_msgsMsgTwist] = []
  /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start field.
  /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_time_from_start: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    let count0 = Int(cursor.number(UInt64(field_transforms.count), 4))
    if count0 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_transforms = Array(repeating: Ros2Geometry_msgsMsgTransform(), count: count0)
    }
    for index in 0..<count0 {
      field_transforms[index].fields(&cursor)
    }
    let count1 = Int(cursor.number(UInt64(field_velocities.count), 4))
    if count1 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_velocities = Array(repeating: Ros2Geometry_msgsMsgTwist(), count: count1)
    }
    for index in 0..<count1 {
      field_velocities[index].fields(&cursor)
    }
    let count2 = Int(cursor.number(UInt64(field_accelerations.count), 4))
    if count2 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_accelerations = Array(repeating: Ros2Geometry_msgsMsgTwist(), count: count2)
    }
    for index in 0..<count2 {
      field_accelerations[index].fields(&cursor)
    }
    field_time_from_start.fields(&cursor)
  }
  /// @brief Encode every complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 324),
      limit: 324, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 20 || bytes.count > 324 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original trajectory_msgs/msg/MultiDOFJointTrajectory value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 20..1516 bytes.
public struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectory {
  /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
  /// bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_joint_names: [[UInt8]] = []
  /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.points field.
  /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Shape sequence;
  /// bound/count 4 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_points: [Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_header.fields(&cursor)
    let count1 = Int(cursor.number(UInt64(field_joint_names.count), 4))
    if count1 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_joint_names = Array(repeating: [], count: count1) }
    for index in 0..<count1 {
      field_joint_names[index] = cursor.text(field_joint_names[index], 64)
    }
    let count2 = Int(cursor.number(UInt64(field_points.count), 4))
    if count2 > 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_points = Array(
        repeating: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(), count: count2)
    }
    for index in 0..<count2 {
      field_points[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete trajectory_msgs/msg/MultiDOFJointTrajectory field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 1516),
      limit: 1516, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete trajectory_msgs/msg/MultiDOFJointTrajectory.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 20 || bytes.count > 1516 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original control_msgs/msg/JointTolerance value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 28..92 bytes.
public struct Ros2Control_msgsMsgJointTolerance {
  /// @brief Original control_msgs/msg/JointTolerance.name field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_name: [UInt8] = []
  /// @brief Original control_msgs/msg/JointTolerance.position field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_position: Double = 0
  /// @brief Original control_msgs/msg/JointTolerance.velocity field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_velocity: Double = 0
  /// @brief Original control_msgs/msg/JointTolerance.acceleration field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_acceleration: Double = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_name = cursor.text(field_name, 64)
    field_position = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_position.bitPattern), 8)))
    if !field_position.isFinite { cursor.failed = true }
    field_velocity = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_velocity.bitPattern), 8)))
    if !field_velocity.isFinite { cursor.failed = true }
    field_acceleration = Double(
      bitPattern: UInt64(
        truncatingIfNeeded: cursor.number(UInt64(field_acceleration.bitPattern), 8)))
    if !field_acceleration.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete control_msgs/msg/JointTolerance field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 92),
      limit: 92, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete control_msgs/msg/JointTolerance.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 28 || bytes.count > 92 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original control_msgs/msg/JointComponentTolerance value.
/// @details Retain all 5 fields and 5 constants in source order. Canonical extent 30..542 bytes.
public struct Ros2Control_msgsMsgJointComponentTolerance {
  /// @brief Original control_msgs/msg/JointComponentTolerance.joint_name field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_joint_name: [UInt8] = []
  /// @brief Original control_msgs/msg/JointComponentTolerance.component field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_component: UInt16 = 0
  /// @brief Original control_msgs/msg/JointComponentTolerance.position field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_position: Double = 0
  /// @brief Original control_msgs/msg/JointComponentTolerance.velocity field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_velocity: Double = 0
  /// @brief Original control_msgs/msg/JointComponentTolerance.acceleration field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_acceleration: Double = 0
  /// @brief Original control_msgs/msg/JointComponentTolerance.X_AXIS constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_X_AXIS: UInt16 = 1
  /// @brief Original control_msgs/msg/JointComponentTolerance.Y_AXIS constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_Y_AXIS: UInt16 = 2
  /// @brief Original control_msgs/msg/JointComponentTolerance.Z_AXIS constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_Z_AXIS: UInt16 = 3
  /// @brief Original control_msgs/msg/JointComponentTolerance.TRANSLATION constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_TRANSLATION: UInt16 = 4
  /// @brief Original control_msgs/msg/JointComponentTolerance.ROTATION constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ROTATION: UInt16 = 5
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_joint_name = cursor.text(field_joint_name, 512)
    field_component = UInt16(truncatingIfNeeded: cursor.number(UInt64(field_component), 2))
    field_position = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_position.bitPattern), 8)))
    if !field_position.isFinite { cursor.failed = true }
    field_velocity = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_velocity.bitPattern), 8)))
    if !field_velocity.isFinite { cursor.failed = true }
    field_acceleration = Double(
      bitPattern: UInt64(
        truncatingIfNeeded: cursor.number(UInt64(field_acceleration.bitPattern), 8)))
    if !field_acceleration.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete control_msgs/msg/JointComponentTolerance field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 542),
      limit: 542, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete control_msgs/msg/JointComponentTolerance.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 30 || bytes.count > 542 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original control_msgs/action/FollowJointTrajectory_Goal value.
/// @details Retain all 7 fields and 0 constants in source order. Canonical extent 64..20920 bytes.
public struct Ros2Control_msgsActionFollowJointTrajectory_Goal {
  /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.trajectory field.
  /// @details Original type trajectory_msgs/msg/JointTrajectory. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_trajectory: Ros2Trajectory_msgsMsgJointTrajectory =
    Ros2Trajectory_msgsMsgJointTrajectory()
  /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory field.
  /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectory. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_multi_dof_trajectory: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectory()
  /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.path_tolerance field.
  /// @details Original type control_msgs/msg/JointTolerance. Shape sequence; bound/count 12
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_path_tolerance: [Ros2Control_msgsMsgJointTolerance] = []
  /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance
  /// field.
  /// @details Original type control_msgs/msg/JointComponentTolerance. Shape sequence; bound/count
  /// 12 elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_component_path_tolerance: [Ros2Control_msgsMsgJointComponentTolerance] = []
  /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance field.
  /// @details Original type control_msgs/msg/JointTolerance. Shape sequence; bound/count 12
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_goal_tolerance: [Ros2Control_msgsMsgJointTolerance] = []
  /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance
  /// field.
  /// @details Original type control_msgs/msg/JointComponentTolerance. Shape sequence; bound/count
  /// 12 elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_component_goal_tolerance: [Ros2Control_msgsMsgJointComponentTolerance] = []
  /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance field.
  /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_goal_time_tolerance: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_trajectory.fields(&cursor)
    field_multi_dof_trajectory.fields(&cursor)
    let count2 = Int(cursor.number(UInt64(field_path_tolerance.count), 4))
    if count2 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_path_tolerance = Array(repeating: Ros2Control_msgsMsgJointTolerance(), count: count2)
    }
    for index in 0..<count2 {
      field_path_tolerance[index].fields(&cursor)
    }
    let count3 = Int(cursor.number(UInt64(field_component_path_tolerance.count), 4))
    if count3 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_component_path_tolerance = Array(
        repeating: Ros2Control_msgsMsgJointComponentTolerance(), count: count3)
    }
    for index in 0..<count3 {
      field_component_path_tolerance[index].fields(&cursor)
    }
    let count4 = Int(cursor.number(UInt64(field_goal_tolerance.count), 4))
    if count4 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_goal_tolerance = Array(repeating: Ros2Control_msgsMsgJointTolerance(), count: count4)
    }
    for index in 0..<count4 {
      field_goal_tolerance[index].fields(&cursor)
    }
    let count5 = Int(cursor.number(UInt64(field_component_goal_tolerance.count), 4))
    if count5 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_component_goal_tolerance = Array(
        repeating: Ros2Control_msgsMsgJointComponentTolerance(), count: count5)
    }
    for index in 0..<count5 {
      field_component_goal_tolerance[index].fields(&cursor)
    }
    field_goal_time_tolerance.fields(&cursor)
  }
  /// @brief Encode every complete control_msgs/action/FollowJointTrajectory_Goal field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 20920),
      limit: 20920, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Goal.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 64 || bytes.count > 20920 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original control_msgs/action/FollowJointTrajectory_Result value.
/// @details Retain all 2 fields and 6 constants in source order. Canonical extent 8..4104 bytes.
public struct Ros2Control_msgsActionFollowJointTrajectory_Result {
  /// @brief Original control_msgs/action/FollowJointTrajectory_Result.error_code field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_error_code: Int32 = 0
  /// @brief Original control_msgs/action/FollowJointTrajectory_Result.error_string field.
  /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_error_string: [UInt8] = []
  /// @brief Original control_msgs/action/FollowJointTrajectory_Result.SUCCESSFUL constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SUCCESSFUL: Int32 = 0
  /// @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_GOAL constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INVALID_GOAL: Int32 = -1
  /// @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_JOINTS constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INVALID_JOINTS: Int32 = -2
  /// @brief Original control_msgs/action/FollowJointTrajectory_Result.OLD_HEADER_TIMESTAMP
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_OLD_HEADER_TIMESTAMP: Int32 = -3
  /// @brief Original control_msgs/action/FollowJointTrajectory_Result.PATH_TOLERANCE_VIOLATED
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_PATH_TOLERANCE_VIOLATED: Int32 = -4
  /// @brief Original control_msgs/action/FollowJointTrajectory_Result.GOAL_TOLERANCE_VIOLATED
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_GOAL_TOLERANCE_VIOLATED: Int32 = -5
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_error_code = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_error_code)), 4)))
    field_error_string = cursor.text(field_error_string, 4096)
  }
  /// @brief Encode every complete control_msgs/action/FollowJointTrajectory_Result field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 4104),
      limit: 4104, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Result.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 4104 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original control_msgs/action/FollowJointTrajectory_Feedback value.
/// @details Retain all 9 fields and 0 constants in source order. Canonical extent 152..4128 bytes.
public struct Ros2Control_msgsActionFollowJointTrajectory_Feedback {
  /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.joint_names field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
  /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_joint_names: [[UInt8]] = []
  /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.desired field.
  /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_desired: Ros2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint()
  /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.actual field.
  /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_actual: Ros2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint()
  /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.error field.
  /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_error: Ros2Trajectory_msgsMsgJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgJointTrajectoryPoint()
  /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names
  /// field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Shape sequence;
  /// bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_multi_dof_joint_names: [[UInt8]] = []
  /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired field.
  /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_multi_dof_desired: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual field.
  /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_multi_dof_actual: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error field.
  /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_multi_dof_error: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_header.fields(&cursor)
    let count1 = Int(cursor.number(UInt64(field_joint_names.count), 4))
    if count1 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_joint_names = Array(repeating: [], count: count1) }
    for index in 0..<count1 {
      field_joint_names[index] = cursor.text(field_joint_names[index], 64)
    }
    field_desired.fields(&cursor)
    field_actual.fields(&cursor)
    field_error.fields(&cursor)
    let count5 = Int(cursor.number(UInt64(field_multi_dof_joint_names.count), 4))
    if count5 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_multi_dof_joint_names = Array(repeating: [], count: count5) }
    for index in 0..<count5 {
      field_multi_dof_joint_names[index] = cursor.text(field_multi_dof_joint_names[index], 512)
    }
    field_multi_dof_desired.fields(&cursor)
    field_multi_dof_actual.fields(&cursor)
    field_multi_dof_error.fields(&cursor)
  }
  /// @brief Encode every complete control_msgs/action/FollowJointTrajectory_Feedback field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 4128),
      limit: 4128, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Feedback.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 152 || bytes.count > 4128 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original sensor_msgs/msg/JointState value.
/// @details Retain all 5 fields and 0 constants in source order. Canonical extent 28..1196 bytes.
public struct Ros2Sensor_msgsMsgJointState {
  /// @brief Original sensor_msgs/msg/JointState.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original sensor_msgs/msg/JointState.name field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
  /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_name: [[UInt8]] = []
  /// @brief Original sensor_msgs/msg/JointState.position field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_position: [Double] = []
  /// @brief Original sensor_msgs/msg/JointState.velocity field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_velocity: [Double] = []
  /// @brief Original sensor_msgs/msg/JointState.effort field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_effort: [Double] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_header.fields(&cursor)
    let count1 = Int(cursor.number(UInt64(field_name.count), 4))
    if count1 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_name = Array(repeating: [], count: count1) }
    for index in 0..<count1 {
      field_name[index] = cursor.text(field_name[index], 64)
    }
    let count2 = Int(cursor.number(UInt64(field_position.count), 4))
    if count2 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_position = Array(repeating: 0, count: count2) }
    for index in 0..<count2 {
      field_position[index] = Double(
        bitPattern: UInt64(
          truncatingIfNeeded: cursor.number(UInt64(field_position[index].bitPattern), 8)))
      if !field_position[index].isFinite { cursor.failed = true }
    }
    let count3 = Int(cursor.number(UInt64(field_velocity.count), 4))
    if count3 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_velocity = Array(repeating: 0, count: count3) }
    for index in 0..<count3 {
      field_velocity[index] = Double(
        bitPattern: UInt64(
          truncatingIfNeeded: cursor.number(UInt64(field_velocity[index].bitPattern), 8)))
      if !field_velocity[index].isFinite { cursor.failed = true }
    }
    let count4 = Int(cursor.number(UInt64(field_effort.count), 4))
    if count4 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_effort = Array(repeating: 0, count: count4) }
    for index in 0..<count4 {
      field_effort[index] = Double(
        bitPattern: UInt64(
          truncatingIfNeeded: cursor.number(UInt64(field_effort[index].bitPattern), 8)))
      if !field_effort[index].isFinite { cursor.failed = true }
    }
  }
  /// @brief Encode every complete sensor_msgs/msg/JointState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 1196),
      limit: 1196, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete sensor_msgs/msg/JointState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 28 || bytes.count > 1196 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original std_srvs/srv/Trigger_Request value.
/// @details Retain all 0 fields and 0 constants in source order. Canonical extent 0..0 bytes.
public struct Ros2Std_srvsSrvTrigger_Request {
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
  }
  /// @brief Encode every complete std_srvs/srv/Trigger_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 0),
      limit: 0, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete std_srvs/srv/Trigger_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 0 || bytes.count > 0 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original std_srvs/srv/Trigger_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 5..517 bytes.
public struct Ros2Std_srvsSrvTrigger_Response {
  /// @brief Original std_srvs/srv/Trigger_Response.success field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_success: Bool = false
  /// @brief Original std_srvs/srv/Trigger_Response.message field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_message: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_success = cursor.boolean(field_success)
    field_message = cursor.text(field_message, 512)
  }
  /// @brief Encode every complete std_srvs/srv/Trigger_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 517),
      limit: 517, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete std_srvs/srv/Trigger_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 5 || bytes.count > 517 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}
