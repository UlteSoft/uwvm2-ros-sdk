/// @file Records.swift
/// @brief Complete original clearpath ROS 2 Embedded Swift values and codecs.
/// @details Bytes are owned arrays; no Foundation, native ROS object or implicit authority is used.

/// @brief Complete original clearpath_motor_msgs/action/LynxCalibrate_Goal value.
/// @details Retain all 0 fields and 0 constants in source order. Canonical extent 0..0 bytes.
public struct Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal {
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
  }
  /// @brief Encode every complete clearpath_motor_msgs/action/LynxCalibrate_Goal field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 0),
      limit: 0, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_motor_msgs/action/LynxCalibrate_Goal.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 0 || bytes.count > 0 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_motor_msgs/action/LynxCalibrate_Result value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..12 bytes.
public struct Ros2Clearpath_motor_msgsActionLynxCalibrate_Result {
  /// @brief Original clearpath_motor_msgs/action/LynxCalibrate_Result.offset field.
  /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_offset: [Float] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    let count0 = Int(cursor.number(UInt64(field_offset.count), 4))
    if count0 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_offset = Array(repeating: 0, count: count0) }
    for index in 0..<count0 {
      field_offset[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_offset[index].bitPattern), 4)))
      if !field_offset[index].isFinite { cursor.failed = true }
    }
  }
  /// @brief Encode every complete clearpath_motor_msgs/action/LynxCalibrate_Result field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 12),
      limit: 12, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_motor_msgs/action/LynxCalibrate_Result.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 12 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_motor_msgs/action/LynxCalibrate_Feedback value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..8 bytes.
public struct Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback {
  /// @brief Original clearpath_motor_msgs/action/LynxCalibrate_Feedback.iteration field.
  /// @details Original type uint16. Shape sequence; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_iteration: [UInt16] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    let count0 = Int(cursor.number(UInt64(field_iteration.count), 4))
    if count0 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_iteration = Array(repeating: 0, count: count0) }
    for index in 0..<count0 {
      field_iteration[index] = UInt16(
        truncatingIfNeeded: cursor.number(UInt64(field_iteration[index]), 2))
    }
  }
  /// @brief Encode every complete clearpath_motor_msgs/action/LynxCalibrate_Feedback field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 8),
      limit: 8, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_motor_msgs/action/LynxCalibrate_Feedback.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 8 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_motor_msgs/action/LynxUpdate_Goal value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..260 bytes.
public struct Ros2Clearpath_motor_msgsActionLynxUpdate_Goal {
  /// @brief Original clearpath_motor_msgs/action/LynxUpdate_Goal.file field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_file: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_file = cursor.text(field_file, 256)
  }
  /// @brief Encode every complete clearpath_motor_msgs/action/LynxUpdate_Goal field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 260),
      limit: 260, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_motor_msgs/action/LynxUpdate_Goal.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 260 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_motor_msgs/action/LynxUpdate_Result value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..6 bytes.
public struct Ros2Clearpath_motor_msgsActionLynxUpdate_Result {
  /// @brief Original clearpath_motor_msgs/action/LynxUpdate_Result.success field.
  /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_success: [Bool] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    let count0 = Int(cursor.number(UInt64(field_success.count), 4))
    if count0 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_success = Array(repeating: false, count: count0) }
    for index in 0..<count0 {
      field_success[index] = cursor.boolean(field_success[index])
    }
  }
  /// @brief Encode every complete clearpath_motor_msgs/action/LynxUpdate_Result field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 6),
      limit: 6, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_motor_msgs/action/LynxUpdate_Result.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 6 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_motor_msgs/action/LynxUpdate_Feedback value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 4..12 bytes.
public struct Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback {
  /// @brief Original clearpath_motor_msgs/action/LynxUpdate_Feedback.progress field.
  /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_progress: [Float] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    let count0 = Int(cursor.number(UInt64(field_progress.count), 4))
    if count0 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_progress = Array(repeating: 0, count: count0) }
    for index in 0..<count0 {
      field_progress[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_progress[index].bitPattern), 4)))
      if !field_progress[index].isFinite { cursor.failed = true }
    }
  }
  /// @brief Encode every complete clearpath_motor_msgs/action/LynxUpdate_Feedback field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 12),
      limit: 12, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_motor_msgs/action/LynxUpdate_Feedback.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 12 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout NativeCursor) {
    field_sec = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_sec)), 4)))
    field_nanosec = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_nanosec), 4))
    if self.field_nanosec >= 1_000_000_000 { cursor.failed = true }
  }
  /// @brief Encode every complete builtin_interfaces/msg/Duration field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
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
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
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
  mutating func fields(_ cursor: inout NativeCursor) {
    field_sec = Int32(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(UInt32(bitPattern: field_sec)), 4)))
    field_nanosec = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_nanosec), 4))
    if self.field_nanosec >= 1_000_000_000 { cursor.failed = true }
  }
  /// @brief Encode every complete builtin_interfaces/msg/Time field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
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
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_control_msgs/msg/DeviceInfo value.
/// @details Retain all 7 fields and 0 constants in source order. Canonical extent 28..1820 bytes.
public struct Ros2Clearpath_control_msgsMsgDeviceInfo {
  /// @brief Original clearpath_control_msgs/msg/DeviceInfo.device_id field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_device_id: [UInt8] = []
  /// @brief Original clearpath_control_msgs/msg/DeviceInfo.device_class field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_device_class: [UInt8] = []
  /// @brief Original clearpath_control_msgs/msg/DeviceInfo.model field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_model: [UInt8] = []
  /// @brief Original clearpath_control_msgs/msg/DeviceInfo.manufacturer field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_manufacturer: [UInt8] = []
  /// @brief Original clearpath_control_msgs/msg/DeviceInfo.firmware_version field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_firmware_version: [UInt8] = []
  /// @brief Original clearpath_control_msgs/msg/DeviceInfo.hardware_version field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_hardware_version: [UInt8] = []
  /// @brief Original clearpath_control_msgs/msg/DeviceInfo.serial_number field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_serial_number: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_device_id = cursor.text(field_device_id, 256)
    field_device_class = cursor.text(field_device_class, 256)
    field_model = cursor.text(field_model, 256)
    field_manufacturer = cursor.text(field_manufacturer, 256)
    field_firmware_version = cursor.text(field_firmware_version, 256)
    field_hardware_version = cursor.text(field_hardware_version, 256)
    field_serial_number = cursor.text(field_serial_number, 256)
  }
  /// @brief Encode every complete clearpath_control_msgs/msg/DeviceInfo field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 1820),
      limit: 1820, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_control_msgs/msg/DeviceInfo.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 28 || bytes.count > 1820 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_control_msgs/msg/StreamControl value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 5..261 bytes.
public struct Ros2Clearpath_control_msgsMsgStreamControl {
  /// @brief Original clearpath_control_msgs/msg/StreamControl.stream field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_stream: [UInt8] = []
  /// @brief Original clearpath_control_msgs/msg/StreamControl.enabled field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_enabled: Bool = false
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_stream = cursor.text(field_stream, 256)
    field_enabled = cursor.boolean(field_enabled)
  }
  /// @brief Encode every complete clearpath_control_msgs/msg/StreamControl field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 261),
      limit: 261, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_control_msgs/msg/StreamControl.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 5 || bytes.count > 261 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_motor_msgs/msg/LynxDebug value.
/// @details Retain all 6 fields and 33 constants in source order. Canonical extent 19..291 bytes.
public struct Ros2Clearpath_motor_msgsMsgLynxDebug {
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.can_id field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_can_id: UInt8 = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.joint_name field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_joint_name: [UInt8] = []
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.fault_frequency field.
  /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_fault_frequency: UInt16 = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.accumulator_flags field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_accumulator_flags: UInt32 = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.accumulators field.
  /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_accumulators: [Float] = []
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.currents field.
  /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_currents: [Float] = []
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_ABOVE_RATED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_ABOVE_RATED: UInt8 = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_1_1: UInt8 = 1
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_1_2: UInt8 = 2
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_3 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_1_3: UInt8 = 3
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_4 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_1_4: UInt8 = 4
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_5 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_1_5: UInt8 = 5
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_6 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_1_6: UInt8 = 6
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_7 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_1_7: UInt8 = 7
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_8 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_1_8: UInt8 = 8
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_9 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_1_9: UInt8 = 9
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_0 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_2_0: UInt8 = 10
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_2_1: UInt8 = 11
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_2_2: UInt8 = 12
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_3 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_2_3: UInt8 = 13
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_4 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_2_4: UInt8 = 14
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_5 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_2_5: UInt8 = 15
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_6 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_2_6: UInt8 = 16
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_7 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_2_7: UInt8 = 17
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_8 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_2_8: UInt8 = 18
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_9 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_2_9: UInt8 = 19
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_3_0 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_FLAG_CONTINUOUS_3_0: UInt8 = 20
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_ABOVE_RATED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_ABOVE_RATED: UInt8 = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_1_1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_CONTINUOUS_1_1: UInt8 = 1
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_1_5 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_CONTINUOUS_1_5: UInt8 = 2
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_2_0 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_CONTINUOUS_2_0: UInt8 = 3
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_2_5 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_CONTINUOUS_2_5: UInt8 = 4
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_3_0 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ACCUMULATOR_CONTINUOUS_3_0: UInt8 = 5
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_ID_FB constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CURRENT_ID_FB: UInt8 = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_ID_FF constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CURRENT_ID_FF: UInt8 = 1
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_ID_REF constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CURRENT_ID_REF: UInt8 = 2
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_IQ_FB constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CURRENT_IQ_FB: UInt8 = 3
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_IQ_FF constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CURRENT_IQ_FF: UInt8 = 4
  /// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_IQ_REF constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CURRENT_IQ_REF: UInt8 = 5
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_can_id = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_can_id), 1))
    field_joint_name = cursor.text(field_joint_name, 256)
    field_fault_frequency = UInt16(
      truncatingIfNeeded: cursor.number(UInt64(field_fault_frequency), 2))
    field_accumulator_flags = UInt32(
      truncatingIfNeeded: cursor.number(UInt64(field_accumulator_flags), 4))
    let count4 = Int(cursor.number(UInt64(field_accumulators.count), 4))
    if count4 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_accumulators = Array(repeating: 0, count: count4) }
    for index in 0..<count4 {
      field_accumulators[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_accumulators[index].bitPattern), 4)))
      if !field_accumulators[index].isFinite { cursor.failed = true }
    }
    let count5 = Int(cursor.number(UInt64(field_currents.count), 4))
    if count5 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_currents = Array(repeating: 0, count: count5) }
    for index in 0..<count5 {
      field_currents[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_currents[index].bitPattern), 4)))
      if !field_currents[index].isFinite { cursor.failed = true }
    }
  }
  /// @brief Encode every complete clearpath_motor_msgs/msg/LynxDebug field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 291),
      limit: 291, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_motor_msgs/msg/LynxDebug.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 19 || bytes.count > 291 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_motor_msgs/msg/LynxFeedback value.
/// @details Retain all 6 fields and 0 constants in source order. Canonical extent 21..277 bytes.
public struct Ros2Clearpath_motor_msgsMsgLynxFeedback {
  /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.can_id field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_can_id: UInt8 = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.joint_name field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_joint_name: [UInt8] = []
  /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.current field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_current: Float = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.voltage field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_voltage: Float = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.velocity field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_velocity: Float = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.travel field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_travel: Float = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_can_id = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_can_id), 1))
    field_joint_name = cursor.text(field_joint_name, 256)
    field_current = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_current.bitPattern), 4)))
    if !field_current.isFinite { cursor.failed = true }
    field_voltage = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_voltage.bitPattern), 4)))
    if !field_voltage.isFinite { cursor.failed = true }
    field_velocity = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_velocity.bitPattern), 4)))
    if !field_velocity.isFinite { cursor.failed = true }
    field_travel = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_travel.bitPattern), 4)))
    if !field_travel.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete clearpath_motor_msgs/msg/LynxFeedback field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 277),
      limit: 277, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_motor_msgs/msg/LynxFeedback.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 21 || bytes.count > 277 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_motor_msgs/msg/LynxMotorProtection value.
/// @details Retain all 3 fields and 4 constants in source order. Canonical extent 6..262 bytes.
public struct Ros2Clearpath_motor_msgsMsgLynxMotorProtection {
  /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.can_id field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_can_id: UInt8 = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.joint_name field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_joint_name: [UInt8] = []
  /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.state field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_state: UInt8 = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.NORMAL constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NORMAL: UInt8 = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.THROTTLED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_THROTTLED: UInt8 = 1
  /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.OVERHEATED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_OVERHEATED: UInt8 = 2
  /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.ERROR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ERROR: UInt8 = 3
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_can_id = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_can_id), 1))
    field_joint_name = cursor.text(field_joint_name, 256)
    field_state = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_state), 1))
  }
  /// @brief Encode every complete clearpath_motor_msgs/msg/LynxMotorProtection field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 262),
      limit: 262, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_motor_msgs/msg/LynxMotorProtection.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 6 || bytes.count > 262 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original std_msgs/msg/Header value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 12..140 bytes.
public struct Ros2Std_msgsMsgHeader {
  /// @brief Original std_msgs/msg/Header.stamp field.
  /// @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_stamp: Ros2Builtin_interfacesMsgTime = Ros2Builtin_interfacesMsgTime()
  /// @brief Original std_msgs/msg/Header.frame_id field.
  /// @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
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
  mutating func fields(_ cursor: inout NativeCursor) {
    field_stamp.fields(&cursor)
    field_frame_id = cursor.text(field_frame_id, 128)
  }
  /// @brief Encode every complete std_msgs/msg/Header field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 140),
      limit: 140, writing: true)
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
    if bytes.count < 12 || bytes.count > 140 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_motor_msgs/msg/LynxMultiDebug value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 16..1308 bytes.
public struct Ros2Clearpath_motor_msgsMsgLynxMultiDebug {
  /// @brief Original clearpath_motor_msgs/msg/LynxMultiDebug.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original clearpath_motor_msgs/msg/LynxMultiDebug.drivers field.
  /// @details Original type clearpath_motor_msgs/msg/LynxDebug. Shape sequence; bound/count 4
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_drivers: [Ros2Clearpath_motor_msgsMsgLynxDebug] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_header.fields(&cursor)
    let count1 = Int(cursor.number(UInt64(field_drivers.count), 4))
    if count1 > 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_drivers = Array(repeating: Ros2Clearpath_motor_msgsMsgLynxDebug(), count: count1)
    }
    for index in 0..<count1 {
      field_drivers[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete clearpath_motor_msgs/msg/LynxMultiDebug field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 1308),
      limit: 1308, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_motor_msgs/msg/LynxMultiDebug.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 16 || bytes.count > 1308 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_motor_msgs/msg/LynxMultiFeedback value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 16..1252 bytes.
public struct Ros2Clearpath_motor_msgsMsgLynxMultiFeedback {
  /// @brief Original clearpath_motor_msgs/msg/LynxMultiFeedback.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original clearpath_motor_msgs/msg/LynxMultiFeedback.drivers field.
  /// @details Original type clearpath_motor_msgs/msg/LynxFeedback. Shape sequence; bound/count 4
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_drivers: [Ros2Clearpath_motor_msgsMsgLynxFeedback] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_header.fields(&cursor)
    let count1 = Int(cursor.number(UInt64(field_drivers.count), 4))
    if count1 > 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_drivers = Array(repeating: Ros2Clearpath_motor_msgsMsgLynxFeedback(), count: count1)
    }
    for index in 0..<count1 {
      field_drivers[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete clearpath_motor_msgs/msg/LynxMultiFeedback field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 1252),
      limit: 1252, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_motor_msgs/msg/LynxMultiFeedback.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 16 || bytes.count > 1252 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_motor_msgs/msg/LynxStatus value.
/// @details Retain all 10 fields and 27 constants in source order. Canonical extent 34..546 bytes.
public struct Ros2Clearpath_motor_msgsMsgLynxStatus {
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.can_id field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_can_id: UInt8 = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.joint_name field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_joint_name: [UInt8] = []
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.firmware_version field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_firmware_version: [UInt8] = []
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.motor_temperature field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_motor_temperature: Float = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.mcu_temperature field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mcu_temperature: Float = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.pcb_temperature field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_pcb_temperature: Float = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.stopped field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_stopped: Bool = false
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.status_flags field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_status_flags: UInt32 = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.warning_flags field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_warning_flags: UInt32 = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.error_flags field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_error_flags: UInt32 = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_ADC_CALIBRATED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_STATUS_FLAG_ADC_CALIBRATED: UInt8 = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_FOC_ENABLED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_STATUS_FLAG_FOC_ENABLED: UInt8 = 1
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_CALIBRATION_REQUESTED
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_STATUS_FLAG_CALIBRATION_REQUESTED: UInt8 = 2
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_CALIBRATION_CANCELLED
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_STATUS_FLAG_CALIBRATION_CANCELLED: UInt8 = 3
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_ESTOPPED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_STATUS_FLAG_ESTOPPED: UInt8 = 4
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_MOTOR_THERMISTOR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WARNING_FLAG_MOTOR_THERMISTOR: UInt8 = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PCB_THERMISTOR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WARNING_FLAG_PCB_THERMISTOR: UInt8 = 1
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WARNING_FLAG_PHASE: UInt8 = 2
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE_A constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WARNING_FLAG_PHASE_A: UInt8 = 3
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE_B constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WARNING_FLAG_PHASE_B: UInt8 = 4
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE_C constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WARNING_FLAG_PHASE_C: UInt8 = 5
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_ENCODER_INDEX constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WARNING_FLAG_ENCODER_INDEX: UInt8 = 6
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_ENCODER_OUTPUT_A constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WARNING_FLAG_ENCODER_OUTPUT_A: UInt8 = 7
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_ENCODER_OUTPUT_B constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_WARNING_FLAG_ENCODER_OUTPUT_B: UInt8 = 8
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_NOT_CALIBRATED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ERROR_FLAG_NOT_CALIBRATED: UInt8 = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_MOTOR_FAULT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ERROR_FLAG_MOTOR_FAULT: UInt8 = 1
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_MOTOR_STALLING constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ERROR_FLAG_MOTOR_STALLING: UInt8 = 2
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_MOTOR_THERMISTOR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ERROR_FLAG_MOTOR_THERMISTOR: UInt8 = 3
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PCB_THERMISTOR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ERROR_FLAG_PCB_THERMISTOR: UInt8 = 4
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ERROR_FLAG_PHASE: UInt8 = 5
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE_A constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ERROR_FLAG_PHASE_A: UInt8 = 6
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE_B constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ERROR_FLAG_PHASE_B: UInt8 = 7
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE_C constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ERROR_FLAG_PHASE_C: UInt8 = 8
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_POWER constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ERROR_FLAG_ENCODER_POWER: UInt8 = 9
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_INDEX constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ERROR_FLAG_ENCODER_INDEX: UInt8 = 10
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_OUTPUT_A constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ERROR_FLAG_ENCODER_OUTPUT_A: UInt8 = 11
  /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_OUTPUT_B constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_ERROR_FLAG_ENCODER_OUTPUT_B: UInt8 = 12
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_can_id = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_can_id), 1))
    field_joint_name = cursor.text(field_joint_name, 256)
    field_firmware_version = cursor.text(field_firmware_version, 256)
    field_motor_temperature = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_motor_temperature.bitPattern), 4)))
    if !field_motor_temperature.isFinite { cursor.failed = true }
    field_mcu_temperature = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_mcu_temperature.bitPattern), 4)))
    if !field_mcu_temperature.isFinite { cursor.failed = true }
    field_pcb_temperature = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_pcb_temperature.bitPattern), 4)))
    if !field_pcb_temperature.isFinite { cursor.failed = true }
    field_stopped = cursor.boolean(field_stopped)
    field_status_flags = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_status_flags), 4))
    field_warning_flags = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_warning_flags), 4))
    field_error_flags = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_error_flags), 4))
  }
  /// @brief Encode every complete clearpath_motor_msgs/msg/LynxStatus field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 546),
      limit: 546, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_motor_msgs/msg/LynxStatus.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 34 || bytes.count > 546 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_motor_msgs/msg/LynxMultiStatus value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 16..2328 bytes.
public struct Ros2Clearpath_motor_msgsMsgLynxMultiStatus {
  /// @brief Original clearpath_motor_msgs/msg/LynxMultiStatus.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original clearpath_motor_msgs/msg/LynxMultiStatus.drivers field.
  /// @details Original type clearpath_motor_msgs/msg/LynxStatus. Shape sequence; bound/count 4
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_drivers: [Ros2Clearpath_motor_msgsMsgLynxStatus] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_header.fields(&cursor)
    let count1 = Int(cursor.number(UInt64(field_drivers.count), 4))
    if count1 > 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_drivers = Array(repeating: Ros2Clearpath_motor_msgsMsgLynxStatus(), count: count1)
    }
    for index in 0..<count1 {
      field_drivers[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete clearpath_motor_msgs/msg/LynxMultiStatus field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 2328),
      limit: 2328, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_motor_msgs/msg/LynxMultiStatus.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 16 || bytes.count > 2328 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_motor_msgs/msg/LynxSystemProtection value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 17..669 bytes.
public struct Ros2Clearpath_motor_msgsMsgLynxSystemProtection {
  /// @brief Original clearpath_motor_msgs/msg/LynxSystemProtection.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original clearpath_motor_msgs/msg/LynxSystemProtection.system_state field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_system_state: UInt8 = 0
  /// @brief Original clearpath_motor_msgs/msg/LynxSystemProtection.motor_states field.
  /// @details Original type clearpath_motor_msgs/msg/LynxMotorProtection. Shape sequence;
  /// bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
  /// storage belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_motor_states: [Ros2Clearpath_motor_msgsMsgLynxMotorProtection] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_header.fields(&cursor)
    field_system_state = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_system_state), 1))
    let count2 = Int(cursor.number(UInt64(field_motor_states.count), 4))
    if count2 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_motor_states = Array(
        repeating: Ros2Clearpath_motor_msgsMsgLynxMotorProtection(), count: count2)
    }
    for index in 0..<count2 {
      field_motor_states[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete clearpath_motor_msgs/msg/LynxSystemProtection field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 669),
      limit: 669, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_motor_msgs/msg/LynxSystemProtection.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 17 || bytes.count > 669 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_motor_msgs/msg/PumaFeedback value.
/// @details Retain all 7 fields and 0 constants in source order. Canonical extent 37..293 bytes.
public struct Ros2Clearpath_motor_msgsMsgPumaFeedback {
  /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.device_number field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_device_number: UInt8 = 0
  /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.device_name field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_device_name: [UInt8] = []
  /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.duty_cycle field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_duty_cycle: Float = 0
  /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.current field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_current: Float = 0
  /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.travel field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_travel: Double = 0
  /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.speed field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_speed: Double = 0
  /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.setpoint field.
  /// @details Original type float64. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_setpoint: Double = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_device_number = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_device_number), 1))
    field_device_name = cursor.text(field_device_name, 256)
    field_duty_cycle = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_duty_cycle.bitPattern), 4)))
    if !field_duty_cycle.isFinite { cursor.failed = true }
    field_current = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_current.bitPattern), 4)))
    if !field_current.isFinite { cursor.failed = true }
    field_travel = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_travel.bitPattern), 8)))
    if !field_travel.isFinite { cursor.failed = true }
    field_speed = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_speed.bitPattern), 8)))
    if !field_speed.isFinite { cursor.failed = true }
    field_setpoint = Double(
      bitPattern: UInt64(truncatingIfNeeded: cursor.number(UInt64(field_setpoint.bitPattern), 8)))
    if !field_setpoint.isFinite { cursor.failed = true }
  }
  /// @brief Encode every complete clearpath_motor_msgs/msg/PumaFeedback field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 293),
      limit: 293, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_motor_msgs/msg/PumaFeedback.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 37 || bytes.count > 293 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_motor_msgs/msg/PumaMultiFeedback value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 16..1316 bytes.
public struct Ros2Clearpath_motor_msgsMsgPumaMultiFeedback {
  /// @brief Original clearpath_motor_msgs/msg/PumaMultiFeedback.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original clearpath_motor_msgs/msg/PumaMultiFeedback.drivers_feedback field.
  /// @details Original type clearpath_motor_msgs/msg/PumaFeedback. Shape sequence; bound/count 4
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_drivers_feedback: [Ros2Clearpath_motor_msgsMsgPumaFeedback] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_header.fields(&cursor)
    let count1 = Int(cursor.number(UInt64(field_drivers_feedback.count), 4))
    if count1 > 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_drivers_feedback = Array(
        repeating: Ros2Clearpath_motor_msgsMsgPumaFeedback(), count: count1)
    }
    for index in 0..<count1 {
      field_drivers_feedback[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete clearpath_motor_msgs/msg/PumaMultiFeedback field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 1316),
      limit: 1316, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_motor_msgs/msg/PumaMultiFeedback.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 16 || bytes.count > 1316 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_motor_msgs/msg/PumaStatus value.
/// @details Retain all 8 fields and 9 constants in source order. Canonical extent 23..279 bytes.
public struct Ros2Clearpath_motor_msgsMsgPumaStatus {
  /// @brief Original clearpath_motor_msgs/msg/PumaStatus.device_number field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_device_number: UInt8 = 0
  /// @brief Original clearpath_motor_msgs/msg/PumaStatus.device_name field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_device_name: [UInt8] = []
  /// @brief Original clearpath_motor_msgs/msg/PumaStatus.bus_voltage field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_bus_voltage: Float = 0
  /// @brief Original clearpath_motor_msgs/msg/PumaStatus.temperature field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_temperature: Float = 0
  /// @brief Original clearpath_motor_msgs/msg/PumaStatus.output_voltage field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_output_voltage: Float = 0
  /// @brief Original clearpath_motor_msgs/msg/PumaStatus.analog_input field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_analog_input: Float = 0
  /// @brief Original clearpath_motor_msgs/msg/PumaStatus.mode field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mode: UInt8 = 0
  /// @brief Original clearpath_motor_msgs/msg/PumaStatus.fault field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_fault: UInt8 = 0
  /// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_VOLTAGE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MODE_VOLTAGE: UInt8 = 0
  /// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MODE_CURRENT: UInt8 = 1
  /// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_SPEED constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MODE_SPEED: UInt8 = 2
  /// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_POSITION constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MODE_POSITION: UInt8 = 3
  /// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_VCOMP constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MODE_VCOMP: UInt8 = 4
  /// @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_FAULT_CURRENT: UInt8 = 1
  /// @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_TEMPERATURE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_FAULT_TEMPERATURE: UInt8 = 2
  /// @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_BUS_VOLTAGE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_FAULT_BUS_VOLTAGE: UInt8 = 4
  /// @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_BRIDGE_DRIVER constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_FAULT_BRIDGE_DRIVER: UInt8 = 8
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_device_number = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_device_number), 1))
    field_device_name = cursor.text(field_device_name, 256)
    field_bus_voltage = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_bus_voltage.bitPattern), 4))
    )
    if !field_bus_voltage.isFinite { cursor.failed = true }
    field_temperature = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_temperature.bitPattern), 4))
    )
    if !field_temperature.isFinite { cursor.failed = true }
    field_output_voltage = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_output_voltage.bitPattern), 4)))
    if !field_output_voltage.isFinite { cursor.failed = true }
    field_analog_input = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_analog_input.bitPattern), 4)))
    if !field_analog_input.isFinite { cursor.failed = true }
    field_mode = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_mode), 1))
    field_fault = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_fault), 1))
  }
  /// @brief Encode every complete clearpath_motor_msgs/msg/PumaStatus field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 279),
      limit: 279, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_motor_msgs/msg/PumaStatus.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 23 || bytes.count > 279 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_motor_msgs/msg/PumaMultiStatus value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 16..1260 bytes.
public struct Ros2Clearpath_motor_msgsMsgPumaMultiStatus {
  /// @brief Original clearpath_motor_msgs/msg/PumaMultiStatus.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original clearpath_motor_msgs/msg/PumaMultiStatus.drivers field.
  /// @details Original type clearpath_motor_msgs/msg/PumaStatus. Shape sequence; bound/count 4
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_drivers: [Ros2Clearpath_motor_msgsMsgPumaStatus] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_header.fields(&cursor)
    let count1 = Int(cursor.number(UInt64(field_drivers.count), 4))
    if count1 > 4 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_drivers = Array(repeating: Ros2Clearpath_motor_msgsMsgPumaStatus(), count: count1)
    }
    for index in 0..<count1 {
      field_drivers[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete clearpath_motor_msgs/msg/PumaMultiStatus field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 1260),
      limit: 1260, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_motor_msgs/msg/PumaMultiStatus.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 16 || bytes.count > 1260 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_platform_msgs/msg/DisplayStatus value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 8..106 bytes.
public struct Ros2Clearpath_platform_msgsMsgDisplayStatus {
  /// @brief Original clearpath_platform_msgs/msg/DisplayStatus.string1 field.
  /// @details Original type string. String bound 49 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_string1: [UInt8] = []
  /// @brief Original clearpath_platform_msgs/msg/DisplayStatus.string2 field.
  /// @details Original type string. String bound 49 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_string2: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_string1 = cursor.text(field_string1, 49)
    field_string2 = cursor.text(field_string2, 49)
  }
  /// @brief Encode every complete clearpath_platform_msgs/msg/DisplayStatus field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 106),
      limit: 106, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_platform_msgs/msg/DisplayStatus.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 106 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_platform_msgs/msg/Drive value.
/// @details Retain all 2 fields and 5 constants in source order. Canonical extent 9..9 bytes.
public struct Ros2Clearpath_platform_msgsMsgDrive {
  /// @brief Original clearpath_platform_msgs/msg/Drive.mode field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_mode: Int8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Drive.drivers field.
  /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_drivers: [Float] = Array(repeating: 0, count: 2)
  /// @brief Original clearpath_platform_msgs/msg/Drive.MODE_VELOCITY constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MODE_VELOCITY: Int8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Drive.MODE_PWM constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MODE_PWM: Int8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Drive.MODE_NONE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_MODE_NONE: Int8 = -1
  /// @brief Original clearpath_platform_msgs/msg/Drive.LEFT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_LEFT: Int8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Drive.RIGHT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_RIGHT: Int8 = 1
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_mode = Int8(
      bitPattern: UInt8(truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_mode)), 1))
    )
    let count1 = 2
    if cursor.writing && field_drivers.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_drivers = Array(repeating: 0, count: count1) }
    for index in 0..<count1 {
      field_drivers[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_drivers[index].bitPattern), 4)))
      if !field_drivers[index].isFinite { cursor.failed = true }
    }
  }
  /// @brief Encode every complete clearpath_platform_msgs/msg/Drive field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 9),
      limit: 9, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_platform_msgs/msg/Drive.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 9 || bytes.count > 9 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_platform_msgs/msg/DriveFeedback value.
/// @details Retain all 7 fields and 0 constants in source order. Canonical extent 25..25 bytes.
public struct Ros2Clearpath_platform_msgsMsgDriveFeedback {
  /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.current field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_current: Float = 0
  /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.duty_cycle field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_duty_cycle: Float = 0
  /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.bridge_temperature field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_bridge_temperature: Float = 0
  /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.motor_temperature field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_motor_temperature: Float = 0
  /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.measured_velocity field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_measured_velocity: Float = 0
  /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.measured_travel field.
  /// @details Original type float32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_measured_travel: Float = 0
  /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.driver_fault field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_driver_fault: Bool = false
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_current = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_current.bitPattern), 4)))
    if !field_current.isFinite { cursor.failed = true }
    field_duty_cycle = Float(
      bitPattern: UInt32(truncatingIfNeeded: cursor.number(UInt64(field_duty_cycle.bitPattern), 4)))
    if !field_duty_cycle.isFinite { cursor.failed = true }
    field_bridge_temperature = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_bridge_temperature.bitPattern), 4)))
    if !field_bridge_temperature.isFinite { cursor.failed = true }
    field_motor_temperature = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_motor_temperature.bitPattern), 4)))
    if !field_motor_temperature.isFinite { cursor.failed = true }
    field_measured_velocity = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_measured_velocity.bitPattern), 4)))
    if !field_measured_velocity.isFinite { cursor.failed = true }
    field_measured_travel = Float(
      bitPattern: UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_measured_travel.bitPattern), 4)))
    if !field_measured_travel.isFinite { cursor.failed = true }
    field_driver_fault = cursor.boolean(field_driver_fault)
  }
  /// @brief Encode every complete clearpath_platform_msgs/msg/DriveFeedback field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 25),
      limit: 25, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_platform_msgs/msg/DriveFeedback.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 25 || bytes.count > 25 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_platform_msgs/msg/Fans value.
/// @details Retain all 1 fields and 17 constants in source order. Canonical extent 4..6 bytes.
public struct Ros2Clearpath_platform_msgsMsgFans {
  /// @brief Original clearpath_platform_msgs/msg/Fans.fans field.
  /// @details Original type uint8. Shape sequence; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_fans: [UInt8] = []
  /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_FAN1: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_FAN2: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN3 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_FAN3: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN4 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_FAN4: UInt8 = 3
  /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN5 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_FAN5: UInt8 = 4
  /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN6 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_FAN6: UInt8 = 5
  /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN7 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_FAN7: UInt8 = 6
  /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN8 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_FAN8: UInt8 = 7
  /// @brief Original clearpath_platform_msgs/msg/Fans.R100_EQUIPMENT_BAY_INTAKE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_EQUIPMENT_BAY_INTAKE: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Fans.R100_EQUIPMENT_BAY_EXHAUST constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_EQUIPMENT_BAY_EXHAUST: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Fans.R100_CHARGER_BAY_INTAKE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_CHARGER_BAY_INTAKE: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/Fans.R100_CHARGER_BAY_EXHAUST constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_CHARGER_BAY_EXHAUST: UInt8 = 3
  /// @brief Original clearpath_platform_msgs/msg/Fans.R100_USER_BAY_INTAKE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_USER_BAY_INTAKE: UInt8 = 4
  /// @brief Original clearpath_platform_msgs/msg/Fans.R100_USER_BAY_EXHAUST constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_USER_BAY_EXHAUST: UInt8 = 5
  /// @brief Original clearpath_platform_msgs/msg/Fans.FAN_OFF constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_FAN_OFF: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Fans.FAN_ON_HIGH constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_FAN_ON_HIGH: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Fans.FAN_ON_LOW constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_FAN_ON_LOW: UInt8 = 2
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    let count0 = Int(cursor.number(UInt64(field_fans.count), 4))
    if count0 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_fans = Array(repeating: 0, count: count0) }
    for index in 0..<count0 {
      field_fans[index] = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_fans[index]), 1))
    }
  }
  /// @brief Encode every complete clearpath_platform_msgs/msg/Fans field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 6),
      limit: 6, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_platform_msgs/msg/Fans.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 6 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_platform_msgs/msg/Feedback value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 64..192 bytes.
public struct Ros2Clearpath_platform_msgsMsgFeedback {
  /// @brief Original clearpath_platform_msgs/msg/Feedback.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original clearpath_platform_msgs/msg/Feedback.drivers field.
  /// @details Original type clearpath_platform_msgs/msg/DriveFeedback. Shape array; bound/count 2
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_drivers: [Ros2Clearpath_platform_msgsMsgDriveFeedback] = Array(
    repeating: Ros2Clearpath_platform_msgsMsgDriveFeedback(), count: 2)
  /// @brief Original clearpath_platform_msgs/msg/Feedback.commanded_mode field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_commanded_mode: Int8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Feedback.actual_mode field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_actual_mode: Int8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_header.fields(&cursor)
    let count1 = 2
    if cursor.writing && field_drivers.count != 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_drivers = Array(repeating: Ros2Clearpath_platform_msgsMsgDriveFeedback(), count: count1)
    }
    for index in 0..<count1 {
      field_drivers[index].fields(&cursor)
    }
    field_commanded_mode = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_commanded_mode)), 1)))
    field_actual_mode = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_actual_mode)), 1)))
  }
  /// @brief Encode every complete clearpath_platform_msgs/msg/Feedback field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 192),
      limit: 192, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_platform_msgs/msg/Feedback.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 64 || bytes.count > 192 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_platform_msgs/msg/RGB value.
/// @details Retain all 3 fields and 0 constants in source order. Canonical extent 3..3 bytes.
public struct Ros2Clearpath_platform_msgsMsgRGB {
  /// @brief Original clearpath_platform_msgs/msg/RGB.red field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_red: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/RGB.green field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_green: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/RGB.blue field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_blue: UInt8 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_red = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_red), 1))
    field_green = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_green), 1))
    field_blue = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_blue), 1))
  }
  /// @brief Encode every complete clearpath_platform_msgs/msg/RGB field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 3),
      limit: 3, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_platform_msgs/msg/RGB.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 3 || bytes.count > 3 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_platform_msgs/msg/Lights value.
/// @details Retain all 1 fields and 24 constants in source order. Canonical extent 4..10 bytes.
public struct Ros2Clearpath_platform_msgsMsgLights {
  /// @brief Original clearpath_platform_msgs/msg/Lights.lights field.
  /// @details Original type clearpath_platform_msgs/msg/RGB. Shape sequence; bound/count 2
  /// elements. Preserve declared units, frame, signedness and field order. Backing storage
  /// belongs to this value; constructing or copying it creates no native ROS owner.
  public var field_lights: [Ros2Clearpath_platform_msgsMsgRGB] = []
  /// @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_REAR_LEFT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_LIGHTS_REAR_LEFT: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_FRONT_LEFT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_LIGHTS_FRONT_LEFT: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_FRONT_RIGHT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_LIGHTS_FRONT_RIGHT: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_REAR_RIGHT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_LIGHTS_REAR_RIGHT: UInt8 = 3
  /// @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_REAR_LEFT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_LIGHTS_REAR_LEFT: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_FRONT_LEFT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_LIGHTS_FRONT_LEFT: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_FRONT_RIGHT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_LIGHTS_FRONT_RIGHT: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_REAR_RIGHT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_LIGHTS_REAR_RIGHT: UInt8 = 3
  /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_PORT_UPPER constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_LIGHTS_FRONT_PORT_UPPER: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_PORT_LOWER constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_LIGHTS_FRONT_PORT_LOWER: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_STARBOARD_UPPER
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_LIGHTS_FRONT_STARBOARD_UPPER: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_STARBOARD_LOWER
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_LIGHTS_FRONT_STARBOARD_LOWER: UInt8 = 3
  /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_PORT_UPPER constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_LIGHTS_REAR_PORT_UPPER: UInt8 = 4
  /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_PORT_LOWER constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_LIGHTS_REAR_PORT_LOWER: UInt8 = 5
  /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_STARBOARD_UPPER
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_LIGHTS_REAR_STARBOARD_UPPER: UInt8 = 6
  /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_STARBOARD_LOWER
  /// constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_LIGHTS_REAR_STARBOARD_LOWER: UInt8 = 7
  /// @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_FRONT_LEFT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_W200_LIGHTS_FRONT_LEFT: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_FRONT_RIGHT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_W200_LIGHTS_FRONT_RIGHT: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_REAR_LEFT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_W200_LIGHTS_REAR_LEFT: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_REAR_RIGHT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_W200_LIGHTS_REAR_RIGHT: UInt8 = 3
  /// @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_FRONT_RIGHT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_A300_LIGHTS_FRONT_RIGHT: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_FRONT_LEFT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_A300_LIGHTS_FRONT_LEFT: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_REAR_LEFT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_A300_LIGHTS_REAR_LEFT: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_REAR_RIGHT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_A300_LIGHTS_REAR_RIGHT: UInt8 = 3
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    let count0 = Int(cursor.number(UInt64(field_lights.count), 4))
    if count0 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing {
      field_lights = Array(repeating: Ros2Clearpath_platform_msgsMsgRGB(), count: count0)
    }
    for index in 0..<count0 {
      field_lights[index].fields(&cursor)
    }
  }
  /// @brief Encode every complete clearpath_platform_msgs/msg/Lights field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 10),
      limit: 10, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_platform_msgs/msg/Lights.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 4 || bytes.count > 10 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_platform_msgs/msg/PinoutCommand value.
/// @details Retain all 2 fields and 14 constants in source order. Canonical extent 8..18 bytes.
public struct Ros2Clearpath_platform_msgsMsgPinoutCommand {
  /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.rails field.
  /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_rails: [Bool] = []
  /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.outputs field.
  /// @details Original type uint32. Shape sequence; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_outputs: [UInt32] = []
  /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_USER_PWR_CTRL constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_USER_PWR_CTRL: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D100_AUX_OUT1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_AUX_OUT1: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D100_AUX_OUT2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_AUX_OUT2: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D100_AUX_OUT3 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_AUX_OUT3: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D150_AUX_OUT1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_AUX_OUT1: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D150_AUX_OUT2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_AUX_OUT2: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D150_AUX_OUT3 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_AUX_OUT3: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_AUX_OUT1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_AUX_OUT1: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_AUX_OUT2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_AUX_OUT2: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_AUX_OUT3 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_AUX_OUT3: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO0 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_GPO0: UInt8 = 3
  /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_GPO1: UInt8 = 4
  /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_GPO2: UInt8 = 5
  /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO3 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_GPO3: UInt8 = 6
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    let count0 = Int(cursor.number(UInt64(field_rails.count), 4))
    if count0 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_rails = Array(repeating: false, count: count0) }
    for index in 0..<count0 {
      field_rails[index] = cursor.boolean(field_rails[index])
    }
    let count1 = Int(cursor.number(UInt64(field_outputs.count), 4))
    if count1 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_outputs = Array(repeating: 0, count: count1) }
    for index in 0..<count1 {
      field_outputs[index] = UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_outputs[index]), 4))
    }
  }
  /// @brief Encode every complete clearpath_platform_msgs/msg/PinoutCommand field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 18),
      limit: 18, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_platform_msgs/msg/PinoutCommand.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 8 || bytes.count > 18 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_platform_msgs/msg/PinoutState value.
/// @details Retain all 5 fields and 27 constants in source order. Canonical extent 28..170 bytes.
public struct Ros2Clearpath_platform_msgsMsgPinoutState {
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.rails field.
  /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_rails: [Bool] = []
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.inputs field.
  /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_inputs: [Bool] = []
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.outputs field.
  /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_outputs: [Bool] = []
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.output_periods field.
  /// @details Original type uint32. Shape sequence; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_output_periods: [UInt32] = []
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_USER_PWR_CTRL constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_USER_PWR_CTRL: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_IN1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_AUX_IN1: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_IN2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_AUX_IN2: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_IN3 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_AUX_IN3: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_IN1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_AUX_IN1: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_IN2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_AUX_IN2: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_IN3 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_AUX_IN3: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_IN1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_AUX_IN1: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_IN2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_AUX_IN2: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_IN3 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_AUX_IN3: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI0 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_GPI0: UInt8 = 3
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_GPI1: UInt8 = 4
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_GPI2: UInt8 = 5
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI3 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_GPI3: UInt8 = 6
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_OUT1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_AUX_OUT1: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_OUT2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_AUX_OUT2: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_OUT3 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_AUX_OUT3: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_OUT1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_AUX_OUT1: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_OUT2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_AUX_OUT2: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_OUT3 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_AUX_OUT3: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_OUT1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_AUX_OUT1: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_OUT2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_AUX_OUT2: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_OUT3 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_AUX_OUT3: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO0 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_GPO0: UInt8 = 3
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_GPO1: UInt8 = 4
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_GPO2: UInt8 = 5
  /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO3 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_GPO3: UInt8 = 6
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_header.fields(&cursor)
    let count1 = Int(cursor.number(UInt64(field_rails.count), 4))
    if count1 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_rails = Array(repeating: false, count: count1) }
    for index in 0..<count1 {
      field_rails[index] = cursor.boolean(field_rails[index])
    }
    let count2 = Int(cursor.number(UInt64(field_inputs.count), 4))
    if count2 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_inputs = Array(repeating: false, count: count2) }
    for index in 0..<count2 {
      field_inputs[index] = cursor.boolean(field_inputs[index])
    }
    let count3 = Int(cursor.number(UInt64(field_outputs.count), 4))
    if count3 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_outputs = Array(repeating: false, count: count3) }
    for index in 0..<count3 {
      field_outputs[index] = cursor.boolean(field_outputs[index])
    }
    let count4 = Int(cursor.number(UInt64(field_output_periods.count), 4))
    if count4 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_output_periods = Array(repeating: 0, count: count4) }
    for index in 0..<count4 {
      field_output_periods[index] = UInt32(
        truncatingIfNeeded: cursor.number(UInt64(field_output_periods[index]), 4))
    }
  }
  /// @brief Encode every complete clearpath_platform_msgs/msg/PinoutState field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 170),
      limit: 170, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_platform_msgs/msg/PinoutState.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 28 || bytes.count > 170 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_platform_msgs/msg/Power value.
/// @details Retain all 8 fields and 68 constants in source order. Canonical extent 25..169 bytes.
public struct Ros2Clearpath_platform_msgsMsgPower {
  /// @brief Original clearpath_platform_msgs/msg/Power.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original clearpath_platform_msgs/msg/Power.shore_power_connected field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_shore_power_connected: Int8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Power.battery_connected field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_battery_connected: Int8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Power.power_12v_user_nominal field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_power_12v_user_nominal: Int8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Power.charger_connected field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_charger_connected: Int8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Power.charging_complete field.
  /// @details Original type int8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_charging_complete: Int8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Power.measured_voltages field.
  /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_measured_voltages: [Float] = []
  /// @brief Original clearpath_platform_msgs/msg/Power.measured_currents field.
  /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_measured_currents: [Float] = []
  /// @brief Original clearpath_platform_msgs/msg/Power.NOT_APPLICABLE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_NOT_APPLICABLE: Int8 = -1
  /// @brief Original clearpath_platform_msgs/msg/Power.J100_MEASURED_BATTERY constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_J100_MEASURED_BATTERY: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Power.J100_MEASURED_5V constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_J100_MEASURED_5V: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Power.J100_MEASURED_12V constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_J100_MEASURED_12V: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/Power.D100_MEASURED_BATTERY constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_MEASURED_BATTERY: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Power.D100_MEASURED_5V constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_MEASURED_5V: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Power.D100_MEASURED_12V constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_MEASURED_12V: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/Power.D150_MEASURED_BATTERY constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_MEASURED_BATTERY: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Power.D150_MEASURED_5V constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_MEASURED_5V: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Power.D150_MEASURED_12V constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_MEASURED_12V: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_BATTERY constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_W200_MEASURED_BATTERY: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_12V constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_W200_MEASURED_12V: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_24V constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_W200_MEASURED_24V: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_48V constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_W200_MEASURED_48V: UInt8 = 3
  /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_BATTERY constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_MEASURED_BATTERY: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_5V constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_MEASURED_5V: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_12V constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_MEASURED_12V: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_INVERTER constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_MEASURED_INVERTER: UInt8 = 3
  /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_FRONT_AXLE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_MEASURED_FRONT_AXLE: UInt8 = 4
  /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_REAR_AXLE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_MEASURED_REAR_AXLE: UInt8 = 5
  /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_LIGHT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_MEASURED_LIGHT: UInt8 = 6
  /// @brief Original clearpath_platform_msgs/msg/Power.A200_BATTERY_VOLTAGE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_A200_BATTERY_VOLTAGE: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Power.A200_LEFT_DRIVER_VOLTAGE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_A200_LEFT_DRIVER_VOLTAGE: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Power.A200_RIGHT_DRIVER_VOLTAGE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_A200_RIGHT_DRIVER_VOLTAGE: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/Power.A200_VOLTAGES_SIZE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_A200_VOLTAGES_SIZE: UInt8 = 3
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BATTERY_VOLTAGE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_BATTERY_VOLTAGE: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_BATTERY_VOLTAGE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_USER_BATTERY_VOLTAGE: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_24V_VOLTAGE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_USER_24V_VOLTAGE: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_12VB_VOLTAGE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_USER_12VB_VOLTAGE: UInt8 = 3
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_SYSTEM_12V_VOLTAGE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_SYSTEM_12V_VOLTAGE: UInt8 = 4
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_EXPANSION_VOLTAGE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_EXPANSION_VOLTAGE: UInt8 = 5
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_24V_AUX_VOLTAGE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_BREAKOUT_24V_AUX_VOLTAGE: UInt8 = 6
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_12V_AUX_VOLTAGE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_BREAKOUT_12V_AUX_VOLTAGE: UInt8 = 7
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_12VA_VOLTAGE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_BREAKOUT_USER_12VA_VOLTAGE: UInt8 = 8
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX1_VOLTAGE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_BREAKOUT_LYNX1_VOLTAGE: UInt8 = 9
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX2_VOLTAGE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_BREAKOUT_LYNX2_VOLTAGE: UInt8 = 10
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX3_VOLTAGE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_BREAKOUT_LYNX3_VOLTAGE: UInt8 = 11
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX4_VOLTAGE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_BREAKOUT_LYNX4_VOLTAGE: UInt8 = 12
  /// @brief Original clearpath_platform_msgs/msg/Power.J100_TOTAL_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_J100_TOTAL_CURRENT: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Power.J100_COMPUTER_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_J100_COMPUTER_CURRENT: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Power.J100_DRIVE_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_J100_DRIVE_CURRENT: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/Power.J100_USER_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_J100_USER_CURRENT: UInt8 = 3
  /// @brief Original clearpath_platform_msgs/msg/Power.D100_TOTAL_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_TOTAL_CURRENT: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Power.D100_COMPUTER_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_COMPUTER_CURRENT: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Power.D150_TOTAL_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_TOTAL_CURRENT: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Power.D150_COMPUTER_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_COMPUTER_CURRENT: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Power.W200_TOTAL_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_W200_TOTAL_CURRENT: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Power.W200_COMPUTER_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_W200_COMPUTER_CURRENT: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Power.W200_12V_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_W200_12V_CURRENT: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/Power.W200_24V_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_W200_24V_CURRENT: UInt8 = 3
  /// @brief Original clearpath_platform_msgs/msg/Power.R100_TOTAL_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_TOTAL_CURRENT: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Power.A200_MCU_AND_USER_PORT_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_A200_MCU_AND_USER_PORT_CURRENT: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Power.A200_LEFT_DRIVER_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_A200_LEFT_DRIVER_CURRENT: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Power.A200_RIGHT_DRIVER_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_A200_RIGHT_DRIVER_CURRENT: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/Power.A200_CURRENTS_SIZE constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_A200_CURRENTS_SIZE: UInt8 = 3
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BATTERY_PACK_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_BATTERY_PACK_CURRENT: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_BATTERY_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_USER_BATTERY_CURRENT: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_AUX_HES_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_AUX_HES_CURRENT: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_SYSTEM_12V_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_SYSTEM_12V_CURRENT: UInt8 = 3
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_24V_AUX_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_24V_AUX_CURRENT: UInt8 = 4
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_12V_AUX_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_12V_AUX_CURRENT: UInt8 = 5
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_24V_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_BREAKOUT_USER_24V_CURRENT: UInt8 = 6
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_12VA_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_BREAKOUT_USER_12VA_CURRENT: UInt8 = 7
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_12VB_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_BREAKOUT_USER_12VB_CURRENT: UInt8 = 8
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX1_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_BREAKOUT_USER_LYNX1_CURRENT: UInt8 = 9
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX2_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_BREAKOUT_USER_LYNX2_CURRENT: UInt8 = 10
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX3_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_BREAKOUT_USER_LYNX3_CURRENT: UInt8 = 11
  /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX4_CURRENT constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_BREAKOUT_USER_LYNX4_CURRENT: UInt8 = 12
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_header.fields(&cursor)
    field_shore_power_connected = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_shore_power_connected)), 1)
      ))
    field_battery_connected = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_battery_connected)), 1)))
    field_power_12v_user_nominal = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(
          UInt64(UInt8(bitPattern: field_power_12v_user_nominal)), 1)))
    field_charger_connected = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_charger_connected)), 1)))
    field_charging_complete = Int8(
      bitPattern: UInt8(
        truncatingIfNeeded: cursor.number(UInt64(UInt8(bitPattern: field_charging_complete)), 1)))
    let count6 = Int(cursor.number(UInt64(field_measured_voltages.count), 4))
    if count6 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_measured_voltages = Array(repeating: 0, count: count6) }
    for index in 0..<count6 {
      field_measured_voltages[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_measured_voltages[index].bitPattern), 4)))
      if !field_measured_voltages[index].isFinite { cursor.failed = true }
    }
    let count7 = Int(cursor.number(UInt64(field_measured_currents.count), 4))
    if count7 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_measured_currents = Array(repeating: 0, count: count7) }
    for index in 0..<count7 {
      field_measured_currents[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_measured_currents[index].bitPattern), 4)))
      if !field_measured_currents[index].isFinite { cursor.failed = true }
    }
  }
  /// @brief Encode every complete clearpath_platform_msgs/msg/Power field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 169),
      limit: 169, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_platform_msgs/msg/Power.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 25 || bytes.count > 169 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_platform_msgs/msg/Status value.
/// @details Retain all 5 fields and 0 constants in source order. Canonical extent 36..676 bytes.
public struct Ros2Clearpath_platform_msgsMsgStatus {
  /// @brief Original clearpath_platform_msgs/msg/Status.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original clearpath_platform_msgs/msg/Status.hardware_id field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_hardware_id: [UInt8] = []
  /// @brief Original clearpath_platform_msgs/msg/Status.firmware_version field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_firmware_version: [UInt8] = []
  /// @brief Original clearpath_platform_msgs/msg/Status.mcu_uptime field.
  /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_mcu_uptime: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  /// @brief Original clearpath_platform_msgs/msg/Status.connection_uptime field.
  /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
  /// signedness and field order. Backing storage belongs to this value; constructing or copying
  /// it creates no native ROS owner.
  public var field_connection_uptime: Ros2Builtin_interfacesMsgDuration =
    Ros2Builtin_interfacesMsgDuration()
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_header.fields(&cursor)
    field_hardware_id = cursor.text(field_hardware_id, 256)
    field_firmware_version = cursor.text(field_firmware_version, 256)
    field_mcu_uptime.fields(&cursor)
    field_connection_uptime.fields(&cursor)
  }
  /// @brief Encode every complete clearpath_platform_msgs/msg/Status field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 676),
      limit: 676, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_platform_msgs/msg/Status.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 36 || bytes.count > 676 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_platform_msgs/msg/StopStatus value.
/// @details Retain all 4 fields and 0 constants in source order. Canonical extent 15..143 bytes.
public struct Ros2Clearpath_platform_msgsMsgStopStatus {
  /// @brief Original clearpath_platform_msgs/msg/StopStatus.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original clearpath_platform_msgs/msg/StopStatus.stop_power_status field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_stop_power_status: Bool = false
  /// @brief Original clearpath_platform_msgs/msg/StopStatus.external_stop_present field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_external_stop_present: Bool = false
  /// @brief Original clearpath_platform_msgs/msg/StopStatus.needs_reset field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_needs_reset: Bool = false
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_header.fields(&cursor)
    field_stop_power_status = cursor.boolean(field_stop_power_status)
    field_external_stop_present = cursor.boolean(field_external_stop_present)
    field_needs_reset = cursor.boolean(field_needs_reset)
  }
  /// @brief Encode every complete clearpath_platform_msgs/msg/StopStatus field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 143),
      limit: 143, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_platform_msgs/msg/StopStatus.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 15 || bytes.count > 143 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_platform_msgs/msg/Temperature value.
/// @details Retain all 2 fields and 28 constants in source order. Canonical extent 16..152 bytes.
public struct Ros2Clearpath_platform_msgsMsgTemperature {
  /// @brief Original clearpath_platform_msgs/msg/Temperature.header field.
  /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
  /// field order. Backing storage belongs to this value; constructing or copying it creates no
  /// native ROS owner.
  public var field_header: Ros2Std_msgsMsgHeader = Ros2Std_msgsMsgHeader()
  /// @brief Original clearpath_platform_msgs/msg/Temperature.temperatures field.
  /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
  /// units, frame, signedness and field order. Backing storage belongs to this value;
  /// constructing or copying it creates no native ROS owner.
  public var field_temperatures: [Float] = []
  /// @brief Original clearpath_platform_msgs/msg/Temperature.J100_MCU constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_J100_MCU: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Temperature.J100_PCB constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_J100_PCB: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Temperature.D100_MCU constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_MCU: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Temperature.D100_PCB constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D100_PCB: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Temperature.D150_MCU constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_MCU: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Temperature.D150_PCB constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_D150_PCB: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Temperature.W200_MCU constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_W200_MCU: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Temperature.R100_MCU constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_MCU: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Temperature.R100_PCB constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_R100_PCB: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_MCU constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_MCU: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_FAN1: UInt8 = 1
  /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_FAN2: UInt8 = 2
  /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN3 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_FAN3: UInt8 = 3
  /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN4 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_FAN4: UInt8 = 4
  /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN5 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_FAN5: UInt8 = 5
  /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN6 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_FAN6: UInt8 = 6
  /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN7 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_FAN7: UInt8 = 7
  /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN8 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_FAN8: UInt8 = 8
  /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_5V_INDUCTOR constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_5V_INDUCTOR: UInt8 = 9
  /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_MAIN_GND_LUG constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_MAIN_GND_LUG: UInt8 = 10
  /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_24V_DCDC constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_24V_DCDC: UInt8 = 11
  /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_12V_DCDC constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_12V_DCDC: UInt8 = 12
  /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_EXT_1: UInt8 = 13
  /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_EXT_2: UInt8 = 14
  /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_3 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_EXT_3: UInt8 = 15
  /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_4 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_EXT_4: UInt8 = 16
  /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_BREAKOUT_1 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_BREAKOUT_1: UInt8 = 17
  /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_BREAKOUT_2 constant.
  /// @details An immutable original source constant consumes no instance or wire field.
  public static let constant_CC01_BREAKOUT_2: UInt8 = 18
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_header.fields(&cursor)
    let count1 = Int(cursor.number(UInt64(field_temperatures.count), 4))
    if count1 > 2 || cursor.failed {
      cursor.failed = true
      return
    }
    if !cursor.writing { field_temperatures = Array(repeating: 0, count: count1) }
    for index in 0..<count1 {
      field_temperatures[index] = Float(
        bitPattern: UInt32(
          truncatingIfNeeded: cursor.number(UInt64(field_temperatures[index].bitPattern), 4)))
      if !field_temperatures[index].isFinite { cursor.failed = true }
    }
  }
  /// @brief Encode every complete clearpath_platform_msgs/msg/Temperature field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 152),
      limit: 152, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_platform_msgs/msg/Temperature.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 16 || bytes.count > 152 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_control_msgs/srv/PowerControl_Request value.
/// @details Retain all 1 fields and 0 constants in source order. Canonical extent 1..1 bytes.
public struct Ros2Clearpath_control_msgsSrvPowerControl_Request {
  /// @brief Original clearpath_control_msgs/srv/PowerControl_Request.power_on field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_power_on: Bool = false
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_power_on = cursor.boolean(field_power_on)
  }
  /// @brief Encode every complete clearpath_control_msgs/srv/PowerControl_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 1),
      limit: 1, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_control_msgs/srv/PowerControl_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 1 || bytes.count > 1 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_control_msgs/srv/PowerControl_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 5..261 bytes.
public struct Ros2Clearpath_control_msgsSrvPowerControl_Response {
  /// @brief Original clearpath_control_msgs/srv/PowerControl_Response.success field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_success: Bool = false
  /// @brief Original clearpath_control_msgs/srv/PowerControl_Response.message field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
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
  mutating func fields(_ cursor: inout NativeCursor) {
    field_success = cursor.boolean(field_success)
    field_message = cursor.text(field_message, 256)
  }
  /// @brief Encode every complete clearpath_control_msgs/srv/PowerControl_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 261),
      limit: 261, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_control_msgs/srv/PowerControl_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 5 || bytes.count > 261 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_platform_msgs/srv/ConfigureMcu_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 5..261 bytes.
public struct Ros2Clearpath_platform_msgsSrvConfigureMcu_Request {
  /// @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Request.domain_id field.
  /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_domain_id: UInt8 = 0
  /// @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Request.robot_namespace field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
  /// frame, signedness and field order. Backing storage belongs to this value; constructing or
  /// copying it creates no native ROS owner.
  public var field_robot_namespace: [UInt8] = []
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_domain_id = UInt8(truncatingIfNeeded: cursor.number(UInt64(field_domain_id), 1))
    field_robot_namespace = cursor.text(field_robot_namespace, 256)
  }
  /// @brief Encode every complete clearpath_platform_msgs/srv/ConfigureMcu_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 261),
      limit: 261, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_platform_msgs/srv/ConfigureMcu_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 5 || bytes.count > 261 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_platform_msgs/srv/ConfigureMcu_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 5..261 bytes.
public struct Ros2Clearpath_platform_msgsSrvConfigureMcu_Response {
  /// @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Response.success field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_success: Bool = false
  /// @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Response.message field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
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
  mutating func fields(_ cursor: inout NativeCursor) {
    field_success = cursor.boolean(field_success)
    field_message = cursor.text(field_message, 256)
  }
  /// @brief Encode every complete clearpath_platform_msgs/srv/ConfigureMcu_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 261),
      limit: 261, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_platform_msgs/srv/ConfigureMcu_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 5 || bytes.count > 261 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_platform_msgs/srv/SetPinout_Request value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 5..5 bytes.
public struct Ros2Clearpath_platform_msgsSrvSetPinout_Request {
  /// @brief Original clearpath_platform_msgs/srv/SetPinout_Request.state field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_state: Bool = false
  /// @brief Original clearpath_platform_msgs/srv/SetPinout_Request.toggle_period field.
  /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_toggle_period: UInt32 = 0
  /// @brief Construct the declared original zero/empty value.
  /// @details No ROS allocation, host action or authority is obtained.
  /// @return Independent complete ordinary value.
  public init() {}
  /// @brief Traverse all original fields in their declared order.
  /// @details Only an exclusive local canonical cursor is advanced. Failed values remain
  /// unusable.
  /// @param cursor Exclusive bounded reader or writer.
  mutating func fields(_ cursor: inout NativeCursor) {
    field_state = cursor.boolean(field_state)
    field_toggle_period = UInt32(truncatingIfNeeded: cursor.number(UInt64(field_toggle_period), 4))
  }
  /// @brief Encode every complete clearpath_platform_msgs/srv/SetPinout_Request field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 5),
      limit: 5, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_platform_msgs/srv/SetPinout_Request.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 5 || bytes.count > 5 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}

/// @brief Complete original clearpath_platform_msgs/srv/SetPinout_Response value.
/// @details Retain all 2 fields and 0 constants in source order. Canonical extent 5..261 bytes.
public struct Ros2Clearpath_platform_msgsSrvSetPinout_Response {
  /// @brief Original clearpath_platform_msgs/srv/SetPinout_Response.success field.
  /// @details Original type bool. Preserve declared units, frame, signedness and field order.
  /// Backing storage belongs to this value; constructing or copying it creates no native ROS
  /// owner.
  public var field_success: Bool = false
  /// @brief Original clearpath_platform_msgs/srv/SetPinout_Response.message field.
  /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
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
  mutating func fields(_ cursor: inout NativeCursor) {
    field_success = cursor.boolean(field_success)
    field_message = cursor.text(field_message, 256)
  }
  /// @brief Encode every complete clearpath_platform_msgs/srv/SetPinout_Response field.
  /// @details Caller owns the record; the returned array is independent. Invalid fields, counts
  /// or output extent return 22.
  /// @return Complete owned bytes/status; bytes are empty on failure.
  public mutating func encode() -> (bytes: [UInt8], status: UInt32) {
    var cursor = NativeCursor(
      bytes: [UInt8](repeating: 0, count: 261),
      limit: 261, writing: true)
    fields(&cursor)
    if cursor.failed { return ([], 22) }
    return (Array(cursor.bytes[0..<cursor.at]), 0)
  }
  /// @brief Decode exactly one complete clearpath_platform_msgs/srv/SetPinout_Response.
  /// @details Reject malformed fields, finite bounds and trailing bytes before publishing a whole
  /// owned record.
  /// @param bytes Complete immutable canonical bytes.
  /// @return Independent complete value/status; value is nil on failure.
  public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {
    if bytes.count < 5 || bytes.count > 261 { return (nil, 22) }
    var cursor = NativeCursor(bytes: bytes, limit: bytes.count)
    var value = Self()
    value.fields(&cursor)
    if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }
    return (value, 0)
  }
}
