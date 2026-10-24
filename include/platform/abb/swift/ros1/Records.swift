/// @file Records.swift
/// @brief Complete original ABB ROS 1 Embedded Swift values and codecs.
/// @details Bytes are owned arrays; no Foundation, native ROS object or implicit authority is used.

/// @brief Complete original abb_egm_msgs/EGMChannelState value.
/// @details Retain all 7 fields and 10 constants in source order. Canonical extent 17..81 bytes.
public struct Ros1Abb_egm_msgsEGMChannelState {
  /// @brief Original abb_egm_msgs/EGMChannelState.name field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_name: [UInt8] = []
  /// @brief Original abb_egm_msgs/EGMChannelState.active field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_active: Bool = false
  /// @brief Original abb_egm_msgs/EGMChannelState.egm_convergence_met field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_egm_convergence_met: Bool = false
  /// @brief Original abb_egm_msgs/EGMChannelState.egm_client_state field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_egm_client_state: UInt8 = 0
  /// @brief Original abb_egm_msgs/EGMChannelState.motor_state field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_motor_state: UInt8 = 0
  /// @brief Original abb_egm_msgs/EGMChannelState.rapid_execution_state field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rapid_execution_state: UInt8 = 0
  /// @brief Original abb_egm_msgs/EGMChannelState.utilization_rate field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_utilization_rate: Double = 0
  /// @brief Original abb_egm_msgs/EGMChannelState.EGM_UNDEFINED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_UNDEFINED: UInt8 = 1
  /// @brief Original abb_egm_msgs/EGMChannelState.EGM_ERROR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_ERROR: UInt8 = 2
  /// @brief Original abb_egm_msgs/EGMChannelState.EGM_STOPPED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_STOPPED: UInt8 = 3
  /// @brief Original abb_egm_msgs/EGMChannelState.EGM_RUNNING constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_RUNNING: UInt8 = 4
  /// @brief Original abb_egm_msgs/EGMChannelState.MOTORS_UNDEFINED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MOTORS_UNDEFINED: UInt8 = 1
  /// @brief Original abb_egm_msgs/EGMChannelState.MOTORS_ON constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MOTORS_ON: UInt8 = 2
  /// @brief Original abb_egm_msgs/EGMChannelState.MOTORS_OFF constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MOTORS_OFF: UInt8 = 3
  /// @brief Original abb_egm_msgs/EGMChannelState.RAPID_UNDEFINED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RAPID_UNDEFINED: UInt8 = 1
  /// @brief Original abb_egm_msgs/EGMChannelState.RAPID_STOPPED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RAPID_STOPPED: UInt8 = 2
  /// @brief Original abb_egm_msgs/EGMChannelState.RAPID_RUNNING constant.
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
  /// @brief Encode every complete abb_egm_msgs/EGMChannelState field.
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
  /// @brief Decode exactly one complete abb_egm_msgs/EGMChannelState.
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

/// @brief Complete original time value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros1Time {
  /// @brief Original time.sec field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sec: UInt32 = 0
  /// @brief Original time.nsec field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_nsec: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout ABBCursor) {
    field_sec = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_sec), 4))
    field_nsec = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_nsec), 4))
    if field_nsec >= 1_000_000_000 { cursor.failed = true }
  }
  /// @brief Encode every complete time field.
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
  /// @brief Decode exactly one complete time.
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

/// @brief Complete original std_msgs/Header value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 16..80 bytes.
public struct Ros1Std_msgsHeader {
  /// @brief Original std_msgs/Header.seq field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_seq: UInt32 = 0
  /// @brief Original std_msgs/Header.stamp field.
  /// @details Original type time. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_stamp: Ros1Time = Ros1Time()
  /// @brief Original std_msgs/Header.frame_id field.
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
    field_seq = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_seq), 4))
    field_stamp.fields(&cursor)
    field_frame_id = cursor.text(field_frame_id, 64)
  }
  /// @brief Encode every complete std_msgs/Header field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 80),
      limit: 80, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete std_msgs/Header.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 16 || bytes.count > 80 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_egm_msgs/EGMState value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 20..1380 bytes.
public struct Ros1Abb_egm_msgsEGMState {
  /// @brief Original abb_egm_msgs/EGMState.header field.
  /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
  /// order. Backing storage belongs to this value; constructing or copying it creates no native
  /// ROS owner.
  public var field_header: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Original abb_egm_msgs/EGMState.egm_channels field.
  /// @details Original type abb_egm_msgs/EGMChannelState. Shape sequence; bound/count 16
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_egm_channels: [Ros1Abb_egm_msgsEGMChannelState] = []
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
      field_egm_channels = Array(repeating: Ros1Abb_egm_msgsEGMChannelState(), count: count1)
    }
    for index in 0..<count1 {
      field_egm_channels[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete abb_egm_msgs/EGMState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 1380),
      limit: 1380, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_egm_msgs/EGMState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 20 || bytes.count > 1380 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_msgs/ConfData value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 16..16 bytes.
public struct Ros1Abb_rapid_msgsConfData {
  /// @brief Original abb_rapid_msgs/ConfData.cf1 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cf1: Float = 0
  /// @brief Original abb_rapid_msgs/ConfData.cf4 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cf4: Float = 0
  /// @brief Original abb_rapid_msgs/ConfData.cf6 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cf6: Float = 0
  /// @brief Original abb_rapid_msgs/ConfData.cfx field.
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
  /// @brief Encode every complete abb_rapid_msgs/ConfData field.
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
  /// @brief Decode exactly one complete abb_rapid_msgs/ConfData.
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

/// @brief Complete original abb_rapid_msgs/ExtJoint value.
/// @details Retain all 6 fields and 0 constants in source order. Canonical extent 24..24 bytes.
public struct Ros1Abb_rapid_msgsExtJoint {
  /// @brief Original abb_rapid_msgs/ExtJoint.eax_a field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_eax_a: Float = 0
  /// @brief Original abb_rapid_msgs/ExtJoint.eax_b field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_eax_b: Float = 0
  /// @brief Original abb_rapid_msgs/ExtJoint.eax_c field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_eax_c: Float = 0
  /// @brief Original abb_rapid_msgs/ExtJoint.eax_d field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_eax_d: Float = 0
  /// @brief Original abb_rapid_msgs/ExtJoint.eax_e field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_eax_e: Float = 0
  /// @brief Original abb_rapid_msgs/ExtJoint.eax_f field.
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
  /// @brief Encode every complete abb_rapid_msgs/ExtJoint field.
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
  /// @brief Decode exactly one complete abb_rapid_msgs/ExtJoint.
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

/// @brief Complete original abb_rapid_msgs/RobJoint value.
/// @details Retain all 6 fields and 0 constants in source order. Canonical extent 24..24 bytes.
public struct Ros1Abb_rapid_msgsRobJoint {
  /// @brief Original abb_rapid_msgs/RobJoint.rax_1 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rax_1: Float = 0
  /// @brief Original abb_rapid_msgs/RobJoint.rax_2 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rax_2: Float = 0
  /// @brief Original abb_rapid_msgs/RobJoint.rax_3 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rax_3: Float = 0
  /// @brief Original abb_rapid_msgs/RobJoint.rax_4 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rax_4: Float = 0
  /// @brief Original abb_rapid_msgs/RobJoint.rax_5 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rax_5: Float = 0
  /// @brief Original abb_rapid_msgs/RobJoint.rax_6 field.
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
  /// @brief Encode every complete abb_rapid_msgs/RobJoint field.
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
  /// @brief Decode exactly one complete abb_rapid_msgs/RobJoint.
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

/// @brief Complete original abb_rapid_msgs/JointTarget value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 48..48 bytes.
public struct Ros1Abb_rapid_msgsJointTarget {
  /// @brief Original abb_rapid_msgs/JointTarget.robax field.
  /// @details Original type abb_rapid_msgs/RobJoint. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_robax: Ros1Abb_rapid_msgsRobJoint = Ros1Abb_rapid_msgsRobJoint()
  /// @brief Original abb_rapid_msgs/JointTarget.extax field.
  /// @details Original type abb_rapid_msgs/ExtJoint. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_extax: Ros1Abb_rapid_msgsExtJoint = Ros1Abb_rapid_msgsExtJoint()
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
  /// @brief Encode every complete abb_rapid_msgs/JointTarget field.
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
  /// @brief Decode exactly one complete abb_rapid_msgs/JointTarget.
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

/// @brief Complete original abb_rapid_msgs/Pos value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 12..12 bytes.
public struct Ros1Abb_rapid_msgsPos {
  /// @brief Original abb_rapid_msgs/Pos.x field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_x: Float = 0
  /// @brief Original abb_rapid_msgs/Pos.y field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_y: Float = 0
  /// @brief Original abb_rapid_msgs/Pos.z field.
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
  /// @brief Encode every complete abb_rapid_msgs/Pos field.
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
  /// @brief Decode exactly one complete abb_rapid_msgs/Pos.
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

/// @brief Complete original abb_rapid_msgs/Orient value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 16..16 bytes.
public struct Ros1Abb_rapid_msgsOrient {
  /// @brief Original abb_rapid_msgs/Orient.q1 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_q1: Float = 0
  /// @brief Original abb_rapid_msgs/Orient.q2 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_q2: Float = 0
  /// @brief Original abb_rapid_msgs/Orient.q3 field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_q3: Float = 0
  /// @brief Original abb_rapid_msgs/Orient.q4 field.
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
  /// @brief Encode every complete abb_rapid_msgs/Orient field.
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
  /// @brief Decode exactly one complete abb_rapid_msgs/Orient.
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

/// @brief Complete original abb_rapid_msgs/LoadData value.
/// @details Retain all 6 fields and 0 constants in source order. Canonical extent 44..44 bytes.
public struct Ros1Abb_rapid_msgsLoadData {
  /// @brief Original abb_rapid_msgs/LoadData.mass field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mass: Float = 0
  /// @brief Original abb_rapid_msgs/LoadData.cog field.
  /// @details Original type abb_rapid_msgs/Pos. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_cog: Ros1Abb_rapid_msgsPos = Ros1Abb_rapid_msgsPos()
  /// @brief Original abb_rapid_msgs/LoadData.aom field.
  /// @details Original type abb_rapid_msgs/Orient. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_aom: Ros1Abb_rapid_msgsOrient = Ros1Abb_rapid_msgsOrient()
  /// @brief Original abb_rapid_msgs/LoadData.ix field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ix: Float = 0
  /// @brief Original abb_rapid_msgs/LoadData.iy field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_iy: Float = 0
  /// @brief Original abb_rapid_msgs/LoadData.iz field.
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
  /// @brief Encode every complete abb_rapid_msgs/LoadData field.
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
  /// @brief Decode exactly one complete abb_rapid_msgs/LoadData.
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

/// @brief Complete original abb_rapid_msgs/Pose value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 28..28 bytes.
public struct Ros1Abb_rapid_msgsPose {
  /// @brief Original abb_rapid_msgs/Pose.trans field.
  /// @details Original type abb_rapid_msgs/Pos. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_trans: Ros1Abb_rapid_msgsPos = Ros1Abb_rapid_msgsPos()
  /// @brief Original abb_rapid_msgs/Pose.rot field.
  /// @details Original type abb_rapid_msgs/Orient. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_rot: Ros1Abb_rapid_msgsOrient = Ros1Abb_rapid_msgsOrient()
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
  /// @brief Encode every complete abb_rapid_msgs/Pose field.
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
  /// @brief Decode exactly one complete abb_rapid_msgs/Pose.
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

/// @brief Complete original abb_rapid_msgs/RobTarget value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 68..68 bytes.
public struct Ros1Abb_rapid_msgsRobTarget {
  /// @brief Original abb_rapid_msgs/RobTarget.trans field.
  /// @details Original type abb_rapid_msgs/Pos. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_trans: Ros1Abb_rapid_msgsPos = Ros1Abb_rapid_msgsPos()
  /// @brief Original abb_rapid_msgs/RobTarget.rot field.
  /// @details Original type abb_rapid_msgs/Orient. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_rot: Ros1Abb_rapid_msgsOrient = Ros1Abb_rapid_msgsOrient()
  /// @brief Original abb_rapid_msgs/RobTarget.robconf field.
  /// @details Original type abb_rapid_msgs/ConfData. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_robconf: Ros1Abb_rapid_msgsConfData = Ros1Abb_rapid_msgsConfData()
  /// @brief Original abb_rapid_msgs/RobTarget.extax field.
  /// @details Original type abb_rapid_msgs/ExtJoint. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_extax: Ros1Abb_rapid_msgsExtJoint = Ros1Abb_rapid_msgsExtJoint()
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
  /// @brief Encode every complete abb_rapid_msgs/RobTarget field.
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
  /// @brief Decode exactly one complete abb_rapid_msgs/RobTarget.
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

/// @brief Complete original abb_rapid_msgs/ToolData value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 73..73 bytes.
public struct Ros1Abb_rapid_msgsToolData {
  /// @brief Original abb_rapid_msgs/ToolData.robhold field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_robhold: Bool = false
  /// @brief Original abb_rapid_msgs/ToolData.tframe field.
  /// @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_tframe: Ros1Abb_rapid_msgsPose = Ros1Abb_rapid_msgsPose()
  /// @brief Original abb_rapid_msgs/ToolData.tload field.
  /// @details Original type abb_rapid_msgs/LoadData. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_tload: Ros1Abb_rapid_msgsLoadData = Ros1Abb_rapid_msgsLoadData()
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
  /// @brief Encode every complete abb_rapid_msgs/ToolData field.
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
  /// @brief Decode exactly one complete abb_rapid_msgs/ToolData.
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

/// @brief Complete original abb_rapid_msgs/WObjData value.
/// @details Retain all 5 fields and 0 constants in source order. Canonical extent 62..574 bytes.
public struct Ros1Abb_rapid_msgsWObjData {
  /// @brief Original abb_rapid_msgs/WObjData.robhold field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_robhold: Bool = false
  /// @brief Original abb_rapid_msgs/WObjData.ufprog field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ufprog: Bool = false
  /// @brief Original abb_rapid_msgs/WObjData.ufmec field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_ufmec: [UInt8] = []
  /// @brief Original abb_rapid_msgs/WObjData.uframe field.
  /// @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_uframe: Ros1Abb_rapid_msgsPose = Ros1Abb_rapid_msgsPose()
  /// @brief Original abb_rapid_msgs/WObjData.oframe field.
  /// @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_oframe: Ros1Abb_rapid_msgsPose = Ros1Abb_rapid_msgsPose()
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
  /// @brief Encode every complete abb_rapid_msgs/WObjData field.
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
  /// @brief Decode exactly one complete abb_rapid_msgs/WObjData.
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

/// @brief Complete original abb_rapid_sm_addin_msgs/EGMActivateSettings value.
/// @details Retain all 8 fields and 0 constants in source order. Canonical extent 204..716 bytes.
public struct Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings {
  /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.tool field.
  /// @details Original type abb_rapid_msgs/ToolData. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_tool: Ros1Abb_rapid_msgsToolData = Ros1Abb_rapid_msgsToolData()
  /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.wobj field.
  /// @details Original type abb_rapid_msgs/WObjData. Preserve declared units, frame, signedness
  /// and field order. Backing storage belongs to this value; constructing or copying it creates
  /// no native ROS owner.
  public var field_wobj: Ros1Abb_rapid_msgsWObjData = Ros1Abb_rapid_msgsWObjData()
  /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.correction_frame field.
  /// @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_correction_frame: Ros1Abb_rapid_msgsPose = Ros1Abb_rapid_msgsPose()
  /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.sensor_frame field.
  /// @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_sensor_frame: Ros1Abb_rapid_msgsPose = Ros1Abb_rapid_msgsPose()
  /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.cond_min_max field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cond_min_max: Float = 0
  /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.lp_filter field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_lp_filter: Float = 0
  /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.sample_rate field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sample_rate: UInt8 = 0
  /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.max_speed_deviation field.
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
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/EGMActivateSettings field.
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
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/EGMActivateSettings.
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

/// @brief Complete original abb_rapid_sm_addin_msgs/EGMRunSettings value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 40..40 bytes.
public struct Ros1Abb_rapid_sm_addin_msgsEGMRunSettings {
  /// @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.cond_time field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_cond_time: Float = 0
  /// @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.ramp_in_time field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_ramp_in_time: Float = 0
  /// @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.offset field.
  /// @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_offset: Ros1Abb_rapid_msgsPose = Ros1Abb_rapid_msgsPose()
  /// @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.pos_corr_gain field.
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
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/EGMRunSettings field.
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
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/EGMRunSettings.
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

/// @brief Complete original abb_rapid_sm_addin_msgs/EGMSetupSettings value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 5..5 bytes.
public struct Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings {
  /// @brief Original abb_rapid_sm_addin_msgs/EGMSetupSettings.use_filtering field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_filtering: Bool = false
  /// @brief Original abb_rapid_sm_addin_msgs/EGMSetupSettings.comm_timeout field.
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
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/EGMSetupSettings field.
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
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/EGMSetupSettings.
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

/// @brief Complete original abb_rapid_sm_addin_msgs/EGMStopSettings value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..4 bytes.
public struct Ros1Abb_rapid_sm_addin_msgsEGMStopSettings {
  /// @brief Original abb_rapid_sm_addin_msgs/EGMStopSettings.ramp_out_time field.
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
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/EGMStopSettings field.
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
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/EGMStopSettings.
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

/// @brief Complete original abb_rapid_sm_addin_msgs/EGMSettings value.
/// @details Retain all 6 fields and 0 constants in source order. Canonical extent 255..767 bytes.
public struct Ros1Abb_rapid_sm_addin_msgsEGMSettings {
  /// @brief Original abb_rapid_sm_addin_msgs/EGMSettings.allow_egm_motions field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_allow_egm_motions: Bool = false
  /// @brief Original abb_rapid_sm_addin_msgs/EGMSettings.use_presync field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_use_presync: Bool = false
  /// @brief Original abb_rapid_sm_addin_msgs/EGMSettings.setup_uc field.
  /// @details Original type abb_rapid_sm_addin_msgs/EGMSetupSettings. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_setup_uc: Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings =
    Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings()
  /// @brief Original abb_rapid_sm_addin_msgs/EGMSettings.activate field.
  /// @details Original type abb_rapid_sm_addin_msgs/EGMActivateSettings. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_activate: Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings =
    Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings()
  /// @brief Original abb_rapid_sm_addin_msgs/EGMSettings.run field.
  /// @details Original type abb_rapid_sm_addin_msgs/EGMRunSettings. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_run: Ros1Abb_rapid_sm_addin_msgsEGMRunSettings =
    Ros1Abb_rapid_sm_addin_msgsEGMRunSettings()
  /// @brief Original abb_rapid_sm_addin_msgs/EGMSettings.stop field.
  /// @details Original type abb_rapid_sm_addin_msgs/EGMStopSettings. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_stop: Ros1Abb_rapid_sm_addin_msgsEGMStopSettings =
    Ros1Abb_rapid_sm_addin_msgsEGMStopSettings()
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
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/EGMSettings field.
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
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/EGMSettings.
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

/// @brief Complete original abb_rapid_sm_addin_msgs/GetEGMSettingsRequest value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..68 bytes.
public struct Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest {
  /// @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsRequest.task field.
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
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/GetEGMSettingsRequest field.
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
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/GetEGMSettingsRequest.
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

/// @brief Complete original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 261..1285 bytes.
public struct Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse {
  /// @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.settings field.
  /// @details Original type abb_rapid_sm_addin_msgs/EGMSettings. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_settings: Ros1Abb_rapid_sm_addin_msgsEGMSettings =
    Ros1Abb_rapid_sm_addin_msgsEGMSettings()
  /// @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.message field.
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
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/GetEGMSettingsResponse field.
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
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.
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

/// @brief Complete original abb_rapid_sm_addin_msgs/StateMachineState value.
/// @details Retain all 3 fields and 12 constants in source order. Canonical extent 6..518 bytes.
public struct Ros1Abb_rapid_sm_addin_msgsStateMachineState {
  /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.rapid_task field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_rapid_task: [UInt8] = []
  /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.sm_state field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sm_state: UInt8 = 0
  /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.egm_action field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_egm_action: UInt8 = 0
  /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_UNKNOWN constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SM_STATE_UNKNOWN: UInt8 = 1
  /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_IDLE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SM_STATE_IDLE: UInt8 = 2
  /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_INITIALIZE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SM_STATE_INITIALIZE: UInt8 = 3
  /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_RUN_RAPID_ROUTINE
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SM_STATE_RUN_RAPID_ROUTINE: UInt8 = 4
  /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_RUN_EGM_ROUTINE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SM_STATE_RUN_EGM_ROUTINE: UInt8 = 5
  /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_UNKNOWN constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_ACTION_UNKNOWN: UInt8 = 1
  /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_NONE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_ACTION_NONE: UInt8 = 2
  /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_RUN_JOINT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_ACTION_RUN_JOINT: UInt8 = 3
  /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_RUN_POSE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_ACTION_RUN_POSE: UInt8 = 4
  /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_STOP constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_ACTION_STOP: UInt8 = 5
  /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_START_STREAM constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EGM_ACTION_START_STREAM: UInt8 = 6
  /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_STOP_STREAM constant.
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
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/StateMachineState field.
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
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/StateMachineState.
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

/// @brief Complete original abb_rapid_sm_addin_msgs/RuntimeState value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 20..8372 bytes.
public struct Ros1Abb_rapid_sm_addin_msgsRuntimeState {
  /// @brief Original abb_rapid_sm_addin_msgs/RuntimeState.header field.
  /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
  /// order. Backing storage belongs to this value; constructing or copying it creates no native
  /// ROS owner.
  public var field_header: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Original abb_rapid_sm_addin_msgs/RuntimeState.state_machines field.
  /// @details Original type abb_rapid_sm_addin_msgs/StateMachineState. Shape sequence;
  /// bound/count 16 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_state_machines: [Ros1Abb_rapid_sm_addin_msgsStateMachineState] = []
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
        repeating: Ros1Abb_rapid_sm_addin_msgsStateMachineState(), count: count1)
    }
    for index in 0..<count1 {
      field_state_machines[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/RuntimeState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 8372),
      limit: 8372, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/RuntimeState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 20 || bytes.count > 8372 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 259..835 bytes.
public struct Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest {
  /// @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.task field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_task: [UInt8] = []
  /// @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.settings field.
  /// @details Original type abb_rapid_sm_addin_msgs/EGMSettings. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_settings: Ros1Abb_rapid_sm_addin_msgsEGMSettings =
    Ros1Abb_rapid_sm_addin_msgsEGMSettings()
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
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/SetEGMSettingsRequest field.
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
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.
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

/// @brief Complete original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse {
  /// @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.message field.
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
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/SetEGMSettingsResponse field.
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
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.
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

/// @brief Complete original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..584 bytes.
public struct Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest {
  /// @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.task field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_task: [UInt8] = []
  /// @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.routine field.
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
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest field.
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
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.
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

/// @brief Complete original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse {
  /// @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.message field.
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
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse field.
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
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.
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

/// @brief Complete original abb_rapid_sm_addin_msgs/SetSGCommandRequest value.
/// @details Retain all 3 fields and 15 constants in source order. Canonical extent 9..73 bytes.
public struct Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest {
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.task field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_task: [UInt8] = []
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.command field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_command: UInt8 = 0
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.target_position field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_target_position: Float = 0
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_UNKNOWN constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_UNKNOWN: UInt8 = 1
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_NONE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_NONE: UInt8 = 2
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_INITIALIZE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_INITIALIZE: UInt8 = 3
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_CALIBRATE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_CALIBRATE: UInt8 = 4
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_MOVE_TO constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_MOVE_TO: UInt8 = 5
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_GRIP_IN constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_GRIP_IN: UInt8 = 6
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_GRIP_OUT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_GRIP_OUT: UInt8 = 7
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_ON_1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_BLOW_ON_1: UInt8 = 8
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_ON_2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_BLOW_ON_2: UInt8 = 9
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_OFF_1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_BLOW_OFF_1: UInt8 = 10
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_OFF_2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_BLOW_OFF_2: UInt8 = 11
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_ON_1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_VACUUM_ON_1: UInt8 = 12
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_ON_2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_VACUUM_ON_2: UInt8 = 13
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_OFF_1
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SG_COMMAND_VACUUM_OFF_1: UInt8 = 14
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_OFF_2
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
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/SetSGCommandRequest field.
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
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/SetSGCommandRequest.
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

/// @brief Complete original abb_rapid_sm_addin_msgs/SetSGCommandResponse value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse {
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandResponse.message field.
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
  /// @brief Encode every complete abb_rapid_sm_addin_msgs/SetSGCommandResponse field.
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
  /// @brief Decode exactly one complete abb_rapid_sm_addin_msgs/SetSGCommandResponse.
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

/// @brief Complete original abb_robot_msgs/GetFileContentsRequest value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..516 bytes.
public struct Ros1Abb_robot_msgsGetFileContentsRequest {
  /// @brief Original abb_robot_msgs/GetFileContentsRequest.filename field.
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
  /// @brief Encode every complete abb_robot_msgs/GetFileContentsRequest field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/GetFileContentsRequest.
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

/// @brief Complete original abb_robot_msgs/GetFileContentsResponse value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 10..4618 bytes.
public struct Ros1Abb_robot_msgsGetFileContentsResponse {
  /// @brief Original abb_robot_msgs/GetFileContentsResponse.contents field.
  /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_contents: [UInt8] = []
  /// @brief Original abb_robot_msgs/GetFileContentsResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/GetFileContentsResponse.message field.
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
  /// @brief Encode every complete abb_robot_msgs/GetFileContentsResponse field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/GetFileContentsResponse.
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

/// @brief Complete original abb_robot_msgs/GetIOSignalRequest value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..516 bytes.
public struct Ros1Abb_robot_msgsGetIOSignalRequest {
  /// @brief Original abb_robot_msgs/GetIOSignalRequest.signal field.
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
  /// @brief Encode every complete abb_robot_msgs/GetIOSignalRequest field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/GetIOSignalRequest.
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

/// @brief Complete original abb_robot_msgs/GetIOSignalResponse value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 10..1034 bytes.
public struct Ros1Abb_robot_msgsGetIOSignalResponse {
  /// @brief Original abb_robot_msgs/GetIOSignalResponse.value field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_value: [UInt8] = []
  /// @brief Original abb_robot_msgs/GetIOSignalResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/GetIOSignalResponse.message field.
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
  /// @brief Encode every complete abb_robot_msgs/GetIOSignalResponse field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/GetIOSignalResponse.
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

/// @brief Complete original abb_robot_msgs/RAPIDSymbolPath value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 12..204 bytes.
public struct Ros1Abb_robot_msgsRAPIDSymbolPath {
  /// @brief Original abb_robot_msgs/RAPIDSymbolPath.task field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_task: [UInt8] = []
  /// @brief Original abb_robot_msgs/RAPIDSymbolPath.module field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_module: [UInt8] = []
  /// @brief Original abb_robot_msgs/RAPIDSymbolPath.symbol field.
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
  /// @brief Encode every complete abb_robot_msgs/RAPIDSymbolPath field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/RAPIDSymbolPath.
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

/// @brief Complete original abb_robot_msgs/GetRAPIDBoolRequest value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 12..204 bytes.
public struct Ros1Abb_robot_msgsGetRAPIDBoolRequest {
  /// @brief Original abb_robot_msgs/GetRAPIDBoolRequest.path field.
  /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros1Abb_robot_msgsRAPIDSymbolPath = Ros1Abb_robot_msgsRAPIDSymbolPath()
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
  /// @brief Encode every complete abb_robot_msgs/GetRAPIDBoolRequest field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/GetRAPIDBoolRequest.
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

/// @brief Complete original abb_robot_msgs/GetRAPIDBoolResponse value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 7..519 bytes.
public struct Ros1Abb_robot_msgsGetRAPIDBoolResponse {
  /// @brief Original abb_robot_msgs/GetRAPIDBoolResponse.value field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Bool = false
  /// @brief Original abb_robot_msgs/GetRAPIDBoolResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/GetRAPIDBoolResponse.message field.
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
  /// @brief Encode every complete abb_robot_msgs/GetRAPIDBoolResponse field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/GetRAPIDBoolResponse.
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

/// @brief Complete original abb_robot_msgs/GetRAPIDDnumRequest value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 12..204 bytes.
public struct Ros1Abb_robot_msgsGetRAPIDDnumRequest {
  /// @brief Original abb_robot_msgs/GetRAPIDDnumRequest.path field.
  /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros1Abb_robot_msgsRAPIDSymbolPath = Ros1Abb_robot_msgsRAPIDSymbolPath()
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
  /// @brief Encode every complete abb_robot_msgs/GetRAPIDDnumRequest field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/GetRAPIDDnumRequest.
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

/// @brief Complete original abb_robot_msgs/GetRAPIDDnumResponse value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 14..526 bytes.
public struct Ros1Abb_robot_msgsGetRAPIDDnumResponse {
  /// @brief Original abb_robot_msgs/GetRAPIDDnumResponse.value field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Double = 0
  /// @brief Original abb_robot_msgs/GetRAPIDDnumResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/GetRAPIDDnumResponse.message field.
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
  /// @brief Encode every complete abb_robot_msgs/GetRAPIDDnumResponse field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/GetRAPIDDnumResponse.
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

/// @brief Complete original abb_robot_msgs/GetRAPIDNumRequest value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 12..204 bytes.
public struct Ros1Abb_robot_msgsGetRAPIDNumRequest {
  /// @brief Original abb_robot_msgs/GetRAPIDNumRequest.path field.
  /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros1Abb_robot_msgsRAPIDSymbolPath = Ros1Abb_robot_msgsRAPIDSymbolPath()
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
  /// @brief Encode every complete abb_robot_msgs/GetRAPIDNumRequest field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/GetRAPIDNumRequest.
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

/// @brief Complete original abb_robot_msgs/GetRAPIDNumResponse value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 10..522 bytes.
public struct Ros1Abb_robot_msgsGetRAPIDNumResponse {
  /// @brief Original abb_robot_msgs/GetRAPIDNumResponse.value field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_value: Float = 0
  /// @brief Original abb_robot_msgs/GetRAPIDNumResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/GetRAPIDNumResponse.message field.
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
  /// @brief Encode every complete abb_robot_msgs/GetRAPIDNumResponse field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/GetRAPIDNumResponse.
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

/// @brief Complete original abb_robot_msgs/GetRAPIDStringRequest value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 12..204 bytes.
public struct Ros1Abb_robot_msgsGetRAPIDStringRequest {
  /// @brief Original abb_robot_msgs/GetRAPIDStringRequest.path field.
  /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros1Abb_robot_msgsRAPIDSymbolPath = Ros1Abb_robot_msgsRAPIDSymbolPath()
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
  /// @brief Encode every complete abb_robot_msgs/GetRAPIDStringRequest field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/GetRAPIDStringRequest.
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

/// @brief Complete original abb_robot_msgs/GetRAPIDStringResponse value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 10..1034 bytes.
public struct Ros1Abb_robot_msgsGetRAPIDStringResponse {
  /// @brief Original abb_robot_msgs/GetRAPIDStringResponse.value field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_value: [UInt8] = []
  /// @brief Original abb_robot_msgs/GetRAPIDStringResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/GetRAPIDStringResponse.message field.
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
  /// @brief Encode every complete abb_robot_msgs/GetRAPIDStringResponse field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/GetRAPIDStringResponse.
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

/// @brief Complete original abb_robot_msgs/GetRAPIDSymbolRequest value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 12..204 bytes.
public struct Ros1Abb_robot_msgsGetRAPIDSymbolRequest {
  /// @brief Original abb_robot_msgs/GetRAPIDSymbolRequest.path field.
  /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros1Abb_robot_msgsRAPIDSymbolPath = Ros1Abb_robot_msgsRAPIDSymbolPath()
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
  /// @brief Encode every complete abb_robot_msgs/GetRAPIDSymbolRequest field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/GetRAPIDSymbolRequest.
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

/// @brief Complete original abb_robot_msgs/GetRAPIDSymbolResponse value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 10..1034 bytes.
public struct Ros1Abb_robot_msgsGetRAPIDSymbolResponse {
  /// @brief Original abb_robot_msgs/GetRAPIDSymbolResponse.value field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_value: [UInt8] = []
  /// @brief Original abb_robot_msgs/GetRAPIDSymbolResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/GetRAPIDSymbolResponse.message field.
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
  /// @brief Encode every complete abb_robot_msgs/GetRAPIDSymbolResponse field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/GetRAPIDSymbolResponse.
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

/// @brief Complete original abb_robot_msgs/GetRobotControllerDescriptionRequest value.
/// @details Retain all 0 fields and 0 constants in source order. Canonical extent 0..0 bytes.
public struct Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest {
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
  /// @brief Encode every complete abb_robot_msgs/GetRobotControllerDescriptionRequest field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/GetRobotControllerDescriptionRequest.
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

/// @brief Complete original abb_robot_msgs/GetRobotControllerDescriptionResponse value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 10..4618 bytes.
public struct Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse {
  /// @brief Original abb_robot_msgs/GetRobotControllerDescriptionResponse.description field.
  /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_description: [UInt8] = []
  /// @brief Original abb_robot_msgs/GetRobotControllerDescriptionResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/GetRobotControllerDescriptionResponse.message field.
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
  /// @brief Encode every complete abb_robot_msgs/GetRobotControllerDescriptionResponse field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/GetRobotControllerDescriptionResponse.
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

/// @brief Complete original abb_robot_msgs/GetSpeedRatioRequest value.
/// @details Retain all 0 fields and 0 constants in source order. Canonical extent 0..0 bytes.
public struct Ros1Abb_robot_msgsGetSpeedRatioRequest {
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
  /// @brief Encode every complete abb_robot_msgs/GetSpeedRatioRequest field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/GetSpeedRatioRequest.
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

/// @brief Complete original abb_robot_msgs/GetSpeedRatioResponse value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 7..519 bytes.
public struct Ros1Abb_robot_msgsGetSpeedRatioResponse {
  /// @brief Original abb_robot_msgs/GetSpeedRatioResponse.speed_ratio field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_speed_ratio: UInt8 = 0
  /// @brief Original abb_robot_msgs/GetSpeedRatioResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/GetSpeedRatioResponse.message field.
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
  /// @brief Encode every complete abb_robot_msgs/GetSpeedRatioResponse field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/GetSpeedRatioResponse.
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

/// @brief Complete original abb_robot_msgs/MechanicalUnitState value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 5..69 bytes.
public struct Ros1Abb_robot_msgsMechanicalUnitState {
  /// @brief Original abb_robot_msgs/MechanicalUnitState.name field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_name: [UInt8] = []
  /// @brief Original abb_robot_msgs/MechanicalUnitState.activated field.
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
  /// @brief Encode every complete abb_robot_msgs/MechanicalUnitState field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/MechanicalUnitState.
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

/// @brief Complete original abb_robot_msgs/RAPIDTaskState value.
/// @details Retain all 4 fields and 5 constants in source order. Canonical extent 7..71 bytes.
public struct Ros1Abb_robot_msgsRAPIDTaskState {
  /// @brief Original abb_robot_msgs/RAPIDTaskState.name field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_name: [UInt8] = []
  /// @brief Original abb_robot_msgs/RAPIDTaskState.activated field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_activated: Bool = false
  /// @brief Original abb_robot_msgs/RAPIDTaskState.execution_state field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_execution_state: UInt8 = 0
  /// @brief Original abb_robot_msgs/RAPIDTaskState.motion_task field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_motion_task: Bool = false
  /// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_UNKNOWN constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EXECUTION_STATE_UNKNOWN: UInt8 = 1
  /// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_READY constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EXECUTION_STATE_READY: UInt8 = 2
  /// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_STOPPED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EXECUTION_STATE_STOPPED: UInt8 = 3
  /// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_STARTED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EXECUTION_STATE_STARTED: UInt8 = 4
  /// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_UNINITIALIZED constant.
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
  /// @brief Encode every complete abb_robot_msgs/RAPIDTaskState field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/RAPIDTaskState.
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

/// @brief Complete original abb_robot_msgs/ServiceResponses value.
/// @details Retain all 0 fields and 32 constants in source order. Canonical extent 0..0 bytes.
public struct Ros1Abb_robot_msgsServiceResponses {
  /// @brief Original abb_robot_msgs/ServiceResponses.SUCCESS constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SUCCESS: StaticString = ""
  /// @brief Original abb_robot_msgs/ServiceResponses.RC_SUCCESS constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_SUCCESS: UInt16 = 1
  /// @brief Original abb_robot_msgs/ServiceResponses.FAILED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_FAILED: StaticString =
    "Service failed (e.g. timeout or resource not found, see the DEBUG log for details)"
  /// @brief Original abb_robot_msgs/ServiceResponses.RC_FAILED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_FAILED: UInt16 = 2
  /// @brief Original abb_robot_msgs/ServiceResponses.SERVER_IS_BUSY constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SERVER_IS_BUSY: StaticString = "Server is busy"
  /// @brief Original abb_robot_msgs/ServiceResponses.RC_SERVER_IS_BUSY constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_SERVER_IS_BUSY: UInt16 = 1001
  /// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_FILENAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EMPTY_FILENAME: StaticString = "Filename is empty"
  /// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_FILENAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_EMPTY_FILENAME: UInt16 = 2001
  /// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_SIGNAL_NAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EMPTY_SIGNAL_NAME: StaticString = "Signal name is empty"
  /// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_SIGNAL_NAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_EMPTY_SIGNAL_NAME: UInt16 = 2002
  /// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_TASK_NAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EMPTY_RAPID_TASK_NAME: StaticString = "RAPID task name is empty"
  /// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_TASK_NAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_EMPTY_RAPID_TASK_NAME: UInt16 = 2003
  /// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_MODULE_NAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EMPTY_RAPID_MODULE_NAME: StaticString = "RAPID module name is empty"
  /// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_MODULE_NAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_EMPTY_RAPID_MODULE_NAME: UInt16 = 2004
  /// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_SYMBOL_NAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_EMPTY_RAPID_SYMBOL_NAME: StaticString = "RAPID symbol name is empty"
  /// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_SYMBOL_NAME constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_EMPTY_RAPID_SYMBOL_NAME: UInt16 = 2005
  /// @brief Original abb_robot_msgs/ServiceResponses.NOT_IN_AUTO_MODE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_IN_AUTO_MODE: StaticString = "Robot controller is not in AUTO mode"
  /// @brief Original abb_robot_msgs/ServiceResponses.RC_NOT_IN_AUTO_MODE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_NOT_IN_AUTO_MODE: UInt16 = 3001
  /// @brief Original abb_robot_msgs/ServiceResponses.MOTORS_ARE_OFF constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MOTORS_ARE_OFF: StaticString = "Motors are off"
  /// @brief Original abb_robot_msgs/ServiceResponses.RC_MOTORS_ARE_OFF constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_MOTORS_ARE_OFF: UInt16 = 3002
  /// @brief Original abb_robot_msgs/ServiceResponses.MOTORS_ARE_ON constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MOTORS_ARE_ON: StaticString = "Motors are on"
  /// @brief Original abb_robot_msgs/ServiceResponses.RC_MOTORS_ARE_ON constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_MOTORS_ARE_ON: UInt16 = 3003
  /// @brief Original abb_robot_msgs/ServiceResponses.RAPID_NOT_STOPPED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RAPID_NOT_STOPPED: StaticString = "RAPID has not been stopped"
  /// @brief Original abb_robot_msgs/ServiceResponses.RC_RAPID_NOT_STOPPED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_RAPID_NOT_STOPPED: UInt16 = 3004
  /// @brief Original abb_robot_msgs/ServiceResponses.RAPID_NOT_RUNNING constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RAPID_NOT_RUNNING: StaticString = "RAPID is not running"
  /// @brief Original abb_robot_msgs/ServiceResponses.RC_RAPID_NOT_RUNNING constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_RAPID_NOT_RUNNING: UInt16 = 3005
  /// @brief Original abb_robot_msgs/ServiceResponses.SM_RUNTIME_STATES_MISSING constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SM_RUNTIME_STATES_MISSING: StaticString =
    "No runtime states received for any StateMachine Add-In instance"
  /// @brief Original abb_robot_msgs/ServiceResponses.RC_SM_RUNTIME_STATES_MISSING constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_SM_RUNTIME_STATES_MISSING: UInt16 = 4001
  /// @brief Original abb_robot_msgs/ServiceResponses.SM_UNKNOWN_RAPID_TASK constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SM_UNKNOWN_RAPID_TASK: StaticString =
    "RAPID task not found among known StateMachine Add-In instances"
  /// @brief Original abb_robot_msgs/ServiceResponses.RC_SM_UNKNOWN_RAPID_TASK constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RC_SM_UNKNOWN_RAPID_TASK: UInt16 = 4002
  /// @brief Original abb_robot_msgs/ServiceResponses.SM_UNINITIALIZED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SM_UNINITIALIZED: StaticString =
    "StateMachine Add-In instance has not been initialized"
  /// @brief Original abb_robot_msgs/ServiceResponses.RC_SM_UNINITIALIZED constant.
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
  /// @brief Encode every complete abb_robot_msgs/ServiceResponses field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/ServiceResponses.
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

/// @brief Complete original abb_robot_msgs/SetFileContentsRequest value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..4616 bytes.
public struct Ros1Abb_robot_msgsSetFileContentsRequest {
  /// @brief Original abb_robot_msgs/SetFileContentsRequest.filename field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_filename: [UInt8] = []
  /// @brief Original abb_robot_msgs/SetFileContentsRequest.contents field.
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
  /// @brief Encode every complete abb_robot_msgs/SetFileContentsRequest field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/SetFileContentsRequest.
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

/// @brief Complete original abb_robot_msgs/SetFileContentsResponse value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros1Abb_robot_msgsSetFileContentsResponse {
  /// @brief Original abb_robot_msgs/SetFileContentsResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/SetFileContentsResponse.message field.
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
  /// @brief Encode every complete abb_robot_msgs/SetFileContentsResponse field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/SetFileContentsResponse.
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

/// @brief Complete original abb_robot_msgs/SetIOSignalRequest value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..1032 bytes.
public struct Ros1Abb_robot_msgsSetIOSignalRequest {
  /// @brief Original abb_robot_msgs/SetIOSignalRequest.signal field.
  /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_signal: [UInt8] = []
  /// @brief Original abb_robot_msgs/SetIOSignalRequest.value field.
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
  /// @brief Encode every complete abb_robot_msgs/SetIOSignalRequest field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/SetIOSignalRequest.
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

/// @brief Complete original abb_robot_msgs/SetIOSignalResponse value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros1Abb_robot_msgsSetIOSignalResponse {
  /// @brief Original abb_robot_msgs/SetIOSignalResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/SetIOSignalResponse.message field.
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
  /// @brief Encode every complete abb_robot_msgs/SetIOSignalResponse field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/SetIOSignalResponse.
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

/// @brief Complete original abb_robot_msgs/SetRAPIDBoolRequest value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 13..205 bytes.
public struct Ros1Abb_robot_msgsSetRAPIDBoolRequest {
  /// @brief Original abb_robot_msgs/SetRAPIDBoolRequest.path field.
  /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros1Abb_robot_msgsRAPIDSymbolPath = Ros1Abb_robot_msgsRAPIDSymbolPath()
  /// @brief Original abb_robot_msgs/SetRAPIDBoolRequest.value field.
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
  /// @brief Encode every complete abb_robot_msgs/SetRAPIDBoolRequest field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/SetRAPIDBoolRequest.
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

/// @brief Complete original abb_robot_msgs/SetRAPIDBoolResponse value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros1Abb_robot_msgsSetRAPIDBoolResponse {
  /// @brief Original abb_robot_msgs/SetRAPIDBoolResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/SetRAPIDBoolResponse.message field.
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
  /// @brief Encode every complete abb_robot_msgs/SetRAPIDBoolResponse field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/SetRAPIDBoolResponse.
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

/// @brief Complete original abb_robot_msgs/SetRAPIDDnumRequest value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 20..212 bytes.
public struct Ros1Abb_robot_msgsSetRAPIDDnumRequest {
  /// @brief Original abb_robot_msgs/SetRAPIDDnumRequest.path field.
  /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros1Abb_robot_msgsRAPIDSymbolPath = Ros1Abb_robot_msgsRAPIDSymbolPath()
  /// @brief Original abb_robot_msgs/SetRAPIDDnumRequest.value field.
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
  /// @brief Encode every complete abb_robot_msgs/SetRAPIDDnumRequest field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/SetRAPIDDnumRequest.
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

/// @brief Complete original abb_robot_msgs/SetRAPIDDnumResponse value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros1Abb_robot_msgsSetRAPIDDnumResponse {
  /// @brief Original abb_robot_msgs/SetRAPIDDnumResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/SetRAPIDDnumResponse.message field.
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
  /// @brief Encode every complete abb_robot_msgs/SetRAPIDDnumResponse field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/SetRAPIDDnumResponse.
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

/// @brief Complete original abb_robot_msgs/SetRAPIDNumRequest value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 16..208 bytes.
public struct Ros1Abb_robot_msgsSetRAPIDNumRequest {
  /// @brief Original abb_robot_msgs/SetRAPIDNumRequest.path field.
  /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros1Abb_robot_msgsRAPIDSymbolPath = Ros1Abb_robot_msgsRAPIDSymbolPath()
  /// @brief Original abb_robot_msgs/SetRAPIDNumRequest.value field.
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
  /// @brief Encode every complete abb_robot_msgs/SetRAPIDNumRequest field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/SetRAPIDNumRequest.
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

/// @brief Complete original abb_robot_msgs/SetRAPIDNumResponse value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros1Abb_robot_msgsSetRAPIDNumResponse {
  /// @brief Original abb_robot_msgs/SetRAPIDNumResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/SetRAPIDNumResponse.message field.
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
  /// @brief Encode every complete abb_robot_msgs/SetRAPIDNumResponse field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/SetRAPIDNumResponse.
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

/// @brief Complete original abb_robot_msgs/SetRAPIDStringRequest value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 16..720 bytes.
public struct Ros1Abb_robot_msgsSetRAPIDStringRequest {
  /// @brief Original abb_robot_msgs/SetRAPIDStringRequest.path field.
  /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros1Abb_robot_msgsRAPIDSymbolPath = Ros1Abb_robot_msgsRAPIDSymbolPath()
  /// @brief Original abb_robot_msgs/SetRAPIDStringRequest.value field.
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
  /// @brief Encode every complete abb_robot_msgs/SetRAPIDStringRequest field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/SetRAPIDStringRequest.
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

/// @brief Complete original abb_robot_msgs/SetRAPIDStringResponse value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros1Abb_robot_msgsSetRAPIDStringResponse {
  /// @brief Original abb_robot_msgs/SetRAPIDStringResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/SetRAPIDStringResponse.message field.
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
  /// @brief Encode every complete abb_robot_msgs/SetRAPIDStringResponse field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/SetRAPIDStringResponse.
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

/// @brief Complete original abb_robot_msgs/SetRAPIDSymbolRequest value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 16..720 bytes.
public struct Ros1Abb_robot_msgsSetRAPIDSymbolRequest {
  /// @brief Original abb_robot_msgs/SetRAPIDSymbolRequest.path field.
  /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_path: Ros1Abb_robot_msgsRAPIDSymbolPath = Ros1Abb_robot_msgsRAPIDSymbolPath()
  /// @brief Original abb_robot_msgs/SetRAPIDSymbolRequest.value field.
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
  /// @brief Encode every complete abb_robot_msgs/SetRAPIDSymbolRequest field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/SetRAPIDSymbolRequest.
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

/// @brief Complete original abb_robot_msgs/SetRAPIDSymbolResponse value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros1Abb_robot_msgsSetRAPIDSymbolResponse {
  /// @brief Original abb_robot_msgs/SetRAPIDSymbolResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/SetRAPIDSymbolResponse.message field.
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
  /// @brief Encode every complete abb_robot_msgs/SetRAPIDSymbolResponse field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/SetRAPIDSymbolResponse.
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

/// @brief Complete original abb_robot_msgs/SetSpeedRatioRequest value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros1Abb_robot_msgsSetSpeedRatioRequest {
  /// @brief Original abb_robot_msgs/SetSpeedRatioRequest.speed_ratio field.
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
  /// @brief Encode every complete abb_robot_msgs/SetSpeedRatioRequest field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/SetSpeedRatioRequest.
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

/// @brief Complete original abb_robot_msgs/SetSpeedRatioResponse value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros1Abb_robot_msgsSetSpeedRatioResponse {
  /// @brief Original abb_robot_msgs/SetSpeedRatioResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/SetSpeedRatioResponse.message field.
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
  /// @brief Encode every complete abb_robot_msgs/SetSpeedRatioResponse field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/SetSpeedRatioResponse.
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

/// @brief Complete original abb_robot_msgs/SystemState value.
/// @details Retain all 6 fields and 0 constants in source order. Canonical extent 27..2331 bytes.
public struct Ros1Abb_robot_msgsSystemState {
  /// @brief Original abb_robot_msgs/SystemState.header field.
  /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
  /// order. Backing storage belongs to this value; constructing or copying it creates no native
  /// ROS owner.
  public var field_header: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Original abb_robot_msgs/SystemState.motors_on field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_motors_on: Bool = false
  /// @brief Original abb_robot_msgs/SystemState.auto_mode field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_auto_mode: Bool = false
  /// @brief Original abb_robot_msgs/SystemState.rapid_running field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_rapid_running: Bool = false
  /// @brief Original abb_robot_msgs/SystemState.rapid_tasks field.
  /// @details Original type abb_robot_msgs/RAPIDTaskState. Shape sequence; bound/count 16
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_rapid_tasks: [Ros1Abb_robot_msgsRAPIDTaskState] = []
  /// @brief Original abb_robot_msgs/SystemState.mechanical_units field.
  /// @details Original type abb_robot_msgs/MechanicalUnitState. Shape sequence; bound/count 16
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_mechanical_units: [Ros1Abb_robot_msgsMechanicalUnitState] = []
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
      field_rapid_tasks = Array(repeating: Ros1Abb_robot_msgsRAPIDTaskState(), count: count4)
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
        repeating: Ros1Abb_robot_msgsMechanicalUnitState(), count: count5)
    }
    for index in 0..<count5 {
      field_mechanical_units[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete abb_robot_msgs/SystemState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 2331),
      limit: 2331, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete abb_robot_msgs/SystemState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 27 || bytes.count > 2331 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original abb_robot_msgs/TriggerWithResultCodeRequest value.
/// @details Retain all 0 fields and 0 constants in source order. Canonical extent 0..0 bytes.
public struct Ros1Abb_robot_msgsTriggerWithResultCodeRequest {
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
  /// @brief Encode every complete abb_robot_msgs/TriggerWithResultCodeRequest field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/TriggerWithResultCodeRequest.
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

/// @brief Complete original abb_robot_msgs/TriggerWithResultCodeResponse value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 6..518 bytes.
public struct Ros1Abb_robot_msgsTriggerWithResultCodeResponse {
  /// @brief Original abb_robot_msgs/TriggerWithResultCodeResponse.result_code field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_result_code: UInt16 = 0
  /// @brief Original abb_robot_msgs/TriggerWithResultCodeResponse.message field.
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
  /// @brief Encode every complete abb_robot_msgs/TriggerWithResultCodeResponse field.
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
  /// @brief Decode exactly one complete abb_robot_msgs/TriggerWithResultCodeResponse.
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

/// @brief Complete original duration value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..8 bytes.
public struct Ros1Duration {
  /// @brief Original duration.sec field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_sec: Int32 = 0
  /// @brief Original duration.nsec field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_nsec: Int32 = 0
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
    field_nsec = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_nsec)), 4)))
    if field_nsec >= 1_000_000_000 || field_nsec < 0 { cursor.failed = true }
  }
  /// @brief Encode every complete duration field.
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
  /// @brief Decode exactly one complete duration.
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

/// @brief Complete original trajectory_msgs/JointTrajectoryPoint value.
/// @details Retain all 5 fields and 0 constants in source order. Canonical extent 24..408 bytes.
public struct Ros1Trajectory_msgsJointTrajectoryPoint {
  /// @brief Original trajectory_msgs/JointTrajectoryPoint.positions field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_positions: [Double] = []
  /// @brief Original trajectory_msgs/JointTrajectoryPoint.velocities field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_velocities: [Double] = []
  /// @brief Original trajectory_msgs/JointTrajectoryPoint.accelerations field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_accelerations: [Double] = []
  /// @brief Original trajectory_msgs/JointTrajectoryPoint.effort field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_effort: [Double] = []
  /// @brief Original trajectory_msgs/JointTrajectoryPoint.time_from_start field.
  /// @details Original type duration. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_time_from_start: Ros1Duration = Ros1Duration()
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
  /// @brief Encode every complete trajectory_msgs/JointTrajectoryPoint field.
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
  /// @brief Decode exactly one complete trajectory_msgs/JointTrajectoryPoint.
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

/// @brief Complete original trajectory_msgs/JointTrajectory value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 24..4168 bytes.
public struct Ros1Trajectory_msgsJointTrajectory {
  /// @brief Original trajectory_msgs/JointTrajectory.header field.
  /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
  /// order. Backing storage belongs to this value; constructing or copying it creates no native
  /// ROS owner.
  public var field_header: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Original trajectory_msgs/JointTrajectory.joint_names field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
  /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_joint_names: [[UInt8]] = []
  /// @brief Original trajectory_msgs/JointTrajectory.points field.
  /// @details Original type trajectory_msgs/JointTrajectoryPoint. Shape sequence; bound/count 8
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_points: [Ros1Trajectory_msgsJointTrajectoryPoint] = []
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
      field_points = Array(repeating: Ros1Trajectory_msgsJointTrajectoryPoint(), count: count2)
    }
    for index in 0..<count2 {
      field_points[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete trajectory_msgs/JointTrajectory field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 4168),
      limit: 4168, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete trajectory_msgs/JointTrajectory.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 24 || bytes.count > 4168 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original control_msgs/JointTolerance value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 28..92 bytes.
public struct Ros1Control_msgsJointTolerance {
  /// @brief Original control_msgs/JointTolerance.name field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_name: [UInt8] = []
  /// @brief Original control_msgs/JointTolerance.position field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_position: Double = 0
  /// @brief Original control_msgs/JointTolerance.velocity field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_velocity: Double = 0
  /// @brief Original control_msgs/JointTolerance.acceleration field.
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
  /// @brief Encode every complete control_msgs/JointTolerance field.
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
  /// @brief Decode exactly one complete control_msgs/JointTolerance.
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

/// @brief Complete original control_msgs/FollowJointTrajectoryGoal value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 40..6392 bytes.
public struct Ros1Control_msgsFollowJointTrajectoryGoal {
  /// @brief Original control_msgs/FollowJointTrajectoryGoal.trajectory field.
  /// @details Original type trajectory_msgs/JointTrajectory. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_trajectory: Ros1Trajectory_msgsJointTrajectory =
    Ros1Trajectory_msgsJointTrajectory()
  /// @brief Original control_msgs/FollowJointTrajectoryGoal.path_tolerance field.
  /// @details Original type control_msgs/JointTolerance. Shape sequence; bound/count 12 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_path_tolerance: [Ros1Control_msgsJointTolerance] = []
  /// @brief Original control_msgs/FollowJointTrajectoryGoal.goal_tolerance field.
  /// @details Original type control_msgs/JointTolerance. Shape sequence; bound/count 12 elements.
  /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
  /// value; constructing or copying it creates no native ROS owner.
  public var field_goal_tolerance: [Ros1Control_msgsJointTolerance] = []
  /// @brief Original control_msgs/FollowJointTrajectoryGoal.goal_time_tolerance field.
  /// @details Original type duration. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_goal_time_tolerance: Ros1Duration = Ros1Duration()
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
    let count1 = Int(cursor.number(UInt64(field_path_tolerance.count), 4))
    if count1 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_path_tolerance = Array(repeating: Ros1Control_msgsJointTolerance(), count: count1)
    }
    for index in 0..<count1 {
      field_path_tolerance[index].fields(&cursor)
    }
    let count2 = Int(cursor.number(UInt64(field_goal_tolerance.count), 4))
    if count2 > 12 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_goal_tolerance = Array(repeating: Ros1Control_msgsJointTolerance(), count: count2)
    }
    for index in 0..<count2 {
      field_goal_tolerance[index].fields(&cursor)
    }
    field_goal_time_tolerance.fields(&cursor)
  }
  /// @brief Encode every complete control_msgs/FollowJointTrajectoryGoal field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 6392),
      limit: 6392, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete control_msgs/FollowJointTrajectoryGoal.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 40 || bytes.count > 6392 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original control_msgs/FollowJointTrajectoryResult value.
/// @details Retain all 2 fields and 6 constants in source order. Canonical extent 8..4104 bytes.
public struct Ros1Control_msgsFollowJointTrajectoryResult {
  /// @brief Original control_msgs/FollowJointTrajectoryResult.error_code field.
  /// @details Original type int32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_error_code: Int32 = 0
  /// @brief Original control_msgs/FollowJointTrajectoryResult.error_string field.
  /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_error_string: [UInt8] = []
  /// @brief Original control_msgs/FollowJointTrajectoryResult.SUCCESSFUL constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_SUCCESSFUL: Int32 = 0
  /// @brief Original control_msgs/FollowJointTrajectoryResult.INVALID_GOAL constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INVALID_GOAL: Int32 = -1
  /// @brief Original control_msgs/FollowJointTrajectoryResult.INVALID_JOINTS constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_INVALID_JOINTS: Int32 = -2
  /// @brief Original control_msgs/FollowJointTrajectoryResult.OLD_HEADER_TIMESTAMP constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_OLD_HEADER_TIMESTAMP: Int32 = -3
  /// @brief Original control_msgs/FollowJointTrajectoryResult.PATH_TOLERANCE_VIOLATED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_PATH_TOLERANCE_VIOLATED: Int32 = -4
  /// @brief Original control_msgs/FollowJointTrajectoryResult.GOAL_TOLERANCE_VIOLATED constant.
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
  /// @brief Encode every complete control_msgs/FollowJointTrajectoryResult field.
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
  /// @brief Decode exactly one complete control_msgs/FollowJointTrajectoryResult.
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

/// @brief Complete original control_msgs/FollowJointTrajectoryFeedback value.
/// @details Retain all 5 fields and 0 constants in source order. Canonical extent 92..2124 bytes.
public struct Ros1Control_msgsFollowJointTrajectoryFeedback {
  /// @brief Original control_msgs/FollowJointTrajectoryFeedback.header field.
  /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
  /// order. Backing storage belongs to this value; constructing or copying it creates no native
  /// ROS owner.
  public var field_header: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Original control_msgs/FollowJointTrajectoryFeedback.joint_names field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
  /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_joint_names: [[UInt8]] = []
  /// @brief Original control_msgs/FollowJointTrajectoryFeedback.desired field.
  /// @details Original type trajectory_msgs/JointTrajectoryPoint. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_desired: Ros1Trajectory_msgsJointTrajectoryPoint =
    Ros1Trajectory_msgsJointTrajectoryPoint()
  /// @brief Original control_msgs/FollowJointTrajectoryFeedback.actual field.
  /// @details Original type trajectory_msgs/JointTrajectoryPoint. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_actual: Ros1Trajectory_msgsJointTrajectoryPoint =
    Ros1Trajectory_msgsJointTrajectoryPoint()
  /// @brief Original control_msgs/FollowJointTrajectoryFeedback.error field.
  /// @details Original type trajectory_msgs/JointTrajectoryPoint. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_error: Ros1Trajectory_msgsJointTrajectoryPoint =
    Ros1Trajectory_msgsJointTrajectoryPoint()
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
  }
  /// @brief Encode every complete control_msgs/FollowJointTrajectoryFeedback field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 2124),
      limit: 2124, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete control_msgs/FollowJointTrajectoryFeedback.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 92 || bytes.count > 2124 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original sensor_msgs/JointState value.
/// @details Retain all 5 fields and 0 constants in source order. Canonical extent 32..1200 bytes.
public struct Ros1Sensor_msgsJointState {
  /// @brief Original sensor_msgs/JointState.header field.
  /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
  /// order. Backing storage belongs to this value; constructing or copying it creates no native
  /// ROS owner.
  public var field_header: Ros1Std_msgsHeader = Ros1Std_msgsHeader()
  /// @brief Original sensor_msgs/JointState.name field.
  /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
  /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_name: [[UInt8]] = []
  /// @brief Original sensor_msgs/JointState.position field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_position: [Double] = []
  /// @brief Original sensor_msgs/JointState.velocity field.
  /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_velocity: [Double] = []
  /// @brief Original sensor_msgs/JointState.effort field.
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
  /// @brief Encode every complete sensor_msgs/JointState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = ABBCursor(
      bytes: [UInt8](repeating: 0, count: 1200),
      limit: 1200, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete sensor_msgs/JointState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 32 || bytes.count > 1200 { return (nil, 22) }
    var cursor = ABBCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}
