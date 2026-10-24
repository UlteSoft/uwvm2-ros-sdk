/// @file records.d
/// @brief Complete owned original clearpath ROS 2 native records and codecs.
/// @details Generated from the admitted source-pinned catalog; no ROS authority is created.
module clearpath.d.ros2.jazzy.records;
import native.d.wire;

/// @brief Complete clearpath_motor_msgs/action/LynxCalibrate_Goal value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal
{
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 0;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 0;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_61b01a6234b41f96464de9449b3e8d1b955decf6afa12aa3ba94062c98cec681";

}
/// @brief Encode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Goal.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_motor_msgsActionLynxCalibrate_Goal(ref Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal value,
                                                            ubyte[] output,
                                                            out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Goal.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_motor_msgsActionLynxCalibrate_Goal(const(ubyte)[] bytes,
                                                            out Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_motor_msgs/action/LynxCalibrate_Result value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..12 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_motor_msgsActionLynxCalibrate_Result
{
    /// @brief Original clearpath_motor_msgs/action/LynxCalibrate_Result.offset field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(float, 2)field_offset;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 12;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_686450363b8b15eba1e9e9e9ff05c9aacfb95bb0d113eaa7c443e4c70d55d41f";

}
/// @brief Encode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Result.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_motor_msgsActionLynxCalibrate_Result(
    ref Ros2Clearpath_motor_msgsActionLynxCalibrate_Result value, ubyte[] output, out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Result.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_motor_msgsActionLynxCalibrate_Result(
    const(ubyte)[] bytes, out Ros2Clearpath_motor_msgsActionLynxCalibrate_Result value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_motor_msgs/action/LynxCalibrate_Feedback value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback
{
    /// @brief Original clearpath_motor_msgs/action/LynxCalibrate_Feedback.iteration field.
    /// @details Original type uint16. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(ushort, 2)field_iteration;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 8;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_ebe7badd3f72982079911d8aa72c4ddd27ff0a12d2f948e5970649317a592b53";

}
/// @brief Encode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Feedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_motor_msgsActionLynxCalibrate_Feedback(
    ref Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback value, ubyte[] output, out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_motor_msgs/action/LynxCalibrate_Feedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_motor_msgsActionLynxCalibrate_Feedback(
    const(ubyte)[] bytes, out Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_motor_msgs/action/LynxUpdate_Goal value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..260 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_motor_msgsActionLynxUpdate_Goal
{
    /// @brief Original clearpath_motor_msgs/action/LynxUpdate_Goal.file field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_file;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 260;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_f0362f8a90391e8ffda2e8f3b798769b644091058361882c4e9457196f007565";

}
/// @brief Encode every field of complete clearpath_motor_msgs/action/LynxUpdate_Goal.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_motor_msgsActionLynxUpdate_Goal(ref Ros2Clearpath_motor_msgsActionLynxUpdate_Goal value,
                                                         ubyte[] output,
                                                         out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_motor_msgs/action/LynxUpdate_Goal.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_motor_msgsActionLynxUpdate_Goal(const(ubyte)[] bytes,
                                                         out Ros2Clearpath_motor_msgsActionLynxUpdate_Goal value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_motor_msgs/action/LynxUpdate_Result value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..6 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_motor_msgsActionLynxUpdate_Result
{
    /// @brief Original clearpath_motor_msgs/action/LynxUpdate_Result.success field.
    /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(bool, 2)field_success;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 6;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_126fe871dbcb036e485d20e8ccdc8e9fb7be01757f539bfba895aabf44d341d8";

}
/// @brief Encode every field of complete clearpath_motor_msgs/action/LynxUpdate_Result.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_motor_msgsActionLynxUpdate_Result(ref Ros2Clearpath_motor_msgsActionLynxUpdate_Result value,
                                                           ubyte[] output,
                                                           out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_motor_msgs/action/LynxUpdate_Result.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_motor_msgsActionLynxUpdate_Result(const(ubyte)[] bytes,
                                                           out Ros2Clearpath_motor_msgsActionLynxUpdate_Result value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_motor_msgs/action/LynxUpdate_Feedback value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..12 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback
{
    /// @brief Original clearpath_motor_msgs/action/LynxUpdate_Feedback.progress field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(float, 2)field_progress;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 12;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_2179ec9dee627234a1a31e9681ff214cc45ca837349cd8e407e019a354121b19";

}
/// @brief Encode every field of complete clearpath_motor_msgs/action/LynxUpdate_Feedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_motor_msgsActionLynxUpdate_Feedback(
    ref Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback value, ubyte[] output, out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_motor_msgs/action/LynxUpdate_Feedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_motor_msgsActionLynxUpdate_Feedback(
    const(ubyte)[] bytes, out Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete builtin_interfaces/msg/Duration value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Builtin_interfacesMsgDuration
{
    /// @brief Original builtin_interfaces/msg/Duration.sec field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_sec;
    /// @brief Original builtin_interfaces/msg/Duration.nanosec field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_nanosec;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 8;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4";

    /// @brief Validate every original complete-value semantic constraint.
    /// @details Preserve normalized time and all six optional JointState array pairs without
    /// changing fields.
    /// @return Zero or canonical error 22.
    uint validate() const @nogc nothrow
    {
        if (this.field_nanosec >= 1000000000)
            return 22;
        return 0;
    }

}
/// @brief Encode every field of complete builtin_interfaces/msg/Duration.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Builtin_interfacesMsgDuration(ref Ros2Builtin_interfacesMsgDuration value,
                                             ubyte[] output,
                                             out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete builtin_interfaces/msg/Duration.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Builtin_interfacesMsgDuration(const(ubyte)[] bytes, out Ros2Builtin_interfacesMsgDuration value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete builtin_interfaces/msg/Time value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Builtin_interfacesMsgTime
{
    /// @brief Original builtin_interfaces/msg/Time.sec field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_sec;
    /// @brief Original builtin_interfaces/msg/Time.nanosec field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_nanosec;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 8;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";

    /// @brief Validate every original complete-value semantic constraint.
    /// @details Preserve normalized time and all six optional JointState array pairs without
    /// changing fields.
    /// @return Zero or canonical error 22.
    uint validate() const @nogc nothrow
    {
        if (this.field_nanosec >= 1000000000)
            return 22;
        return 0;
    }

}
/// @brief Encode every field of complete builtin_interfaces/msg/Time.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Builtin_interfacesMsgTime(ref Ros2Builtin_interfacesMsgTime value, ubyte[] output, out size_t written)
    @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete builtin_interfaces/msg/Time.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Builtin_interfacesMsgTime(const(ubyte)[] bytes, out Ros2Builtin_interfacesMsgTime value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_control_msgs/msg/DeviceInfo value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 28..1820 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_control_msgsMsgDeviceInfo
{
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.device_id field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_device_id;
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.device_class field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_device_class;
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.model field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_model;
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.manufacturer field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_manufacturer;
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.firmware_version field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_firmware_version;
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.hardware_version field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_hardware_version;
    /// @brief Original clearpath_control_msgs/msg/DeviceInfo.serial_number field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_serial_number;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 28;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1820;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_9111f5d4b5324c36eb85f01e6fdbc3c589479ff5b64a8fa7b9d467aa14675c3e";

}
/// @brief Encode every field of complete clearpath_control_msgs/msg/DeviceInfo.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_control_msgsMsgDeviceInfo(ref Ros2Clearpath_control_msgsMsgDeviceInfo value,
                                                   ubyte[] output,
                                                   out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_control_msgs/msg/DeviceInfo.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_control_msgsMsgDeviceInfo(const(ubyte)[] bytes,
                                                   out Ros2Clearpath_control_msgsMsgDeviceInfo value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_control_msgs/msg/StreamControl value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..261 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_control_msgsMsgStreamControl
{
    /// @brief Original clearpath_control_msgs/msg/StreamControl.stream field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_stream;
    /// @brief Original clearpath_control_msgs/msg/StreamControl.enabled field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_enabled;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 5;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 261;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_26208e266c9185bfb0e715407ab0fe313f2d47e6bc9f54594a102c3a09d34734";

}
/// @brief Encode every field of complete clearpath_control_msgs/msg/StreamControl.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_control_msgsMsgStreamControl(ref Ros2Clearpath_control_msgsMsgStreamControl value,
                                                      ubyte[] output,
                                                      out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_control_msgs/msg/StreamControl.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_control_msgsMsgStreamControl(const(ubyte)[] bytes,
                                                      out Ros2Clearpath_control_msgsMsgStreamControl value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_motor_msgs/msg/LynxDebug value.
/// @details Retain all 6 original fields and 33 constants. Canonical extent 19..291 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_motor_msgsMsgLynxDebug
{
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.can_id field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_can_id;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.joint_name field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_joint_name;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.fault_frequency field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_fault_frequency;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.accumulator_flags field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_accumulator_flags;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.accumulators field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(float, 2)field_accumulators;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.currents field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(float, 2)field_currents;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 19;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 291;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_0341ae040f1e8a1f980bde84498c4a4f8b9c55c3806839a73727c1579ab4416e";
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_ABOVE_RATED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_ABOVE_RATED = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_1_1 = 1;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_1_2 = 2;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_1_3 = 3;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_4 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_1_4 = 4;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_5 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_1_5 = 5;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_6 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_1_6 = 6;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_7 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_1_7 = 7;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_8 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_1_8 = 8;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_1_9 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_1_9 = 9;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_0 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_2_0 = 10;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_2_1 = 11;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_2_2 = 12;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_2_3 = 13;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_4 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_2_4 = 14;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_5 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_2_5 = 15;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_6 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_2_6 = 16;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_7 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_2_7 = 17;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_8 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_2_8 = 18;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_2_9 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_2_9 = 19;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_FLAG_CONTINUOUS_3_0 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_FLAG_CONTINUOUS_3_0 = 20;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_ABOVE_RATED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_ABOVE_RATED = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_1_1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_CONTINUOUS_1_1 = 1;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_1_5 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_CONTINUOUS_1_5 = 2;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_2_0 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_CONTINUOUS_2_0 = 3;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_2_5 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_CONTINUOUS_2_5 = 4;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.ACCUMULATOR_CONTINUOUS_3_0 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ACCUMULATOR_CONTINUOUS_3_0 = 5;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_ID_FB constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CURRENT_ID_FB = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_ID_FF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CURRENT_ID_FF = 1;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_ID_REF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CURRENT_ID_REF = 2;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_IQ_FB constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CURRENT_IQ_FB = 3;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_IQ_FF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CURRENT_IQ_FF = 4;
    /// @brief Original clearpath_motor_msgs/msg/LynxDebug.CURRENT_IQ_REF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CURRENT_IQ_REF = 5;

}
/// @brief Encode every field of complete clearpath_motor_msgs/msg/LynxDebug.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_motor_msgsMsgLynxDebug(ref Ros2Clearpath_motor_msgsMsgLynxDebug value,
                                                ubyte[] output,
                                                out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_motor_msgs/msg/LynxDebug.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_motor_msgsMsgLynxDebug(const(ubyte)[] bytes, out Ros2Clearpath_motor_msgsMsgLynxDebug value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_motor_msgs/msg/LynxFeedback value.
/// @details Retain all 6 original fields and 0 constants. Canonical extent 21..277 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_motor_msgsMsgLynxFeedback
{
    /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.can_id field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_can_id;
    /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.joint_name field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_joint_name;
    /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.current field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_current = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.voltage field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_voltage = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.velocity field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_velocity = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxFeedback.travel field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_travel = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 21;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 277;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_5d92c7085019ebf00ba93788b5b2f4055ad40b2c6714575a66fb75cf314429eb";

}
/// @brief Encode every field of complete clearpath_motor_msgs/msg/LynxFeedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_motor_msgsMsgLynxFeedback(ref Ros2Clearpath_motor_msgsMsgLynxFeedback value,
                                                   ubyte[] output,
                                                   out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_motor_msgs/msg/LynxFeedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_motor_msgsMsgLynxFeedback(const(ubyte)[] bytes,
                                                   out Ros2Clearpath_motor_msgsMsgLynxFeedback value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_motor_msgs/msg/LynxMotorProtection value.
/// @details Retain all 3 original fields and 4 constants. Canonical extent 6..262 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_motor_msgsMsgLynxMotorProtection
{
    /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.can_id field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_can_id;
    /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.joint_name field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_joint_name;
    /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_state;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 262;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_f824abfa97f6f24934e04094d66170167f19a14fb933f325cbef4ed6fca16630";
    /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.NORMAL constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_NORMAL = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.THROTTLED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_THROTTLED = 1;
    /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.OVERHEATED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_OVERHEATED = 2;
    /// @brief Original clearpath_motor_msgs/msg/LynxMotorProtection.ERROR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ERROR = 3;

}
/// @brief Encode every field of complete clearpath_motor_msgs/msg/LynxMotorProtection.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_motor_msgsMsgLynxMotorProtection(ref Ros2Clearpath_motor_msgsMsgLynxMotorProtection value,
                                                          ubyte[] output,
                                                          out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_motor_msgs/msg/LynxMotorProtection.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_motor_msgsMsgLynxMotorProtection(const(ubyte)[] bytes,
                                                          out Ros2Clearpath_motor_msgsMsgLynxMotorProtection value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete std_msgs/msg/Header value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 12..140 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Std_msgsMsgHeader
{
    /// @brief Original std_msgs/msg/Header.stamp field.
    /// @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Builtin_interfacesMsgTime field_stamp;
    /// @brief Original std_msgs/msg/Header.frame_id field.
    /// @details Original type string. String bound 128 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(128, false)field_frame_id;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 140;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";

}
/// @brief Encode every field of complete std_msgs/msg/Header.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Std_msgsMsgHeader(ref Ros2Std_msgsMsgHeader value, ubyte[] output, out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete std_msgs/msg/Header.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Std_msgsMsgHeader(const(ubyte)[] bytes, out Ros2Std_msgsMsgHeader value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_motor_msgs/msg/LynxMultiDebug value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..1308 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_motor_msgsMsgLynxMultiDebug
{
    /// @brief Original clearpath_motor_msgs/msg/LynxMultiDebug.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original clearpath_motor_msgs/msg/LynxMultiDebug.drivers field.
    /// @details Original type clearpath_motor_msgs/msg/LynxDebug. Shape sequence; bound/count 4
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence !(Ros2Clearpath_motor_msgsMsgLynxDebug, 4)field_drivers;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1308;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_056abd2153e7f1a6df223bf5daba581e6c218bb7ef365444fc5c3171dfc62e95";

}
/// @brief Encode every field of complete clearpath_motor_msgs/msg/LynxMultiDebug.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_motor_msgsMsgLynxMultiDebug(ref Ros2Clearpath_motor_msgsMsgLynxMultiDebug value,
                                                     ubyte[] output,
                                                     out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_motor_msgs/msg/LynxMultiDebug.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_motor_msgsMsgLynxMultiDebug(const(ubyte)[] bytes,
                                                     out Ros2Clearpath_motor_msgsMsgLynxMultiDebug value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_motor_msgs/msg/LynxMultiFeedback value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..1252 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_motor_msgsMsgLynxMultiFeedback
{
    /// @brief Original clearpath_motor_msgs/msg/LynxMultiFeedback.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original clearpath_motor_msgs/msg/LynxMultiFeedback.drivers field.
    /// @details Original type clearpath_motor_msgs/msg/LynxFeedback. Shape sequence; bound/count 4
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence !(Ros2Clearpath_motor_msgsMsgLynxFeedback, 4)field_drivers;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1252;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_2c83cade6bec4d766fd2cff97338642b3d2065d41e9968ccf5054c6f231242c7";

}
/// @brief Encode every field of complete clearpath_motor_msgs/msg/LynxMultiFeedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_motor_msgsMsgLynxMultiFeedback(ref Ros2Clearpath_motor_msgsMsgLynxMultiFeedback value,
                                                        ubyte[] output,
                                                        out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_motor_msgs/msg/LynxMultiFeedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_motor_msgsMsgLynxMultiFeedback(const(ubyte)[] bytes,
                                                        out Ros2Clearpath_motor_msgsMsgLynxMultiFeedback value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_motor_msgs/msg/LynxStatus value.
/// @details Retain all 10 original fields and 27 constants. Canonical extent 34..546 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_motor_msgsMsgLynxStatus
{
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.can_id field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_can_id;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.joint_name field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_joint_name;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.firmware_version field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_firmware_version;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.motor_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_motor_temperature = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.mcu_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_mcu_temperature = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.pcb_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_pcb_temperature = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.stopped field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_stopped;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.status_flags field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_status_flags;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.warning_flags field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_warning_flags;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.error_flags field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_error_flags;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 34;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 546;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_b68a7ab9bc5312c59d2ef86e49313468b631e8cacdf52468374b67f4eced5c6d";
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_ADC_CALIBRATED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_STATUS_FLAG_ADC_CALIBRATED = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_FOC_ENABLED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_STATUS_FLAG_FOC_ENABLED = 1;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_CALIBRATION_REQUESTED
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_STATUS_FLAG_CALIBRATION_REQUESTED = 2;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_CALIBRATION_CANCELLED
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_STATUS_FLAG_CALIBRATION_CANCELLED = 3;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.STATUS_FLAG_ESTOPPED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_STATUS_FLAG_ESTOPPED = 4;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_MOTOR_THERMISTOR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_WARNING_FLAG_MOTOR_THERMISTOR = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PCB_THERMISTOR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_WARNING_FLAG_PCB_THERMISTOR = 1;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_WARNING_FLAG_PHASE = 2;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE_A constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_WARNING_FLAG_PHASE_A = 3;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE_B constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_WARNING_FLAG_PHASE_B = 4;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_PHASE_C constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_WARNING_FLAG_PHASE_C = 5;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_ENCODER_INDEX constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_WARNING_FLAG_ENCODER_INDEX = 6;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_ENCODER_OUTPUT_A constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_WARNING_FLAG_ENCODER_OUTPUT_A = 7;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.WARNING_FLAG_ENCODER_OUTPUT_B constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_WARNING_FLAG_ENCODER_OUTPUT_B = 8;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_NOT_CALIBRATED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ERROR_FLAG_NOT_CALIBRATED = 0;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_MOTOR_FAULT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ERROR_FLAG_MOTOR_FAULT = 1;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_MOTOR_STALLING constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ERROR_FLAG_MOTOR_STALLING = 2;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_MOTOR_THERMISTOR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ERROR_FLAG_MOTOR_THERMISTOR = 3;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PCB_THERMISTOR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ERROR_FLAG_PCB_THERMISTOR = 4;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ERROR_FLAG_PHASE = 5;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE_A constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ERROR_FLAG_PHASE_A = 6;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE_B constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ERROR_FLAG_PHASE_B = 7;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_PHASE_C constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ERROR_FLAG_PHASE_C = 8;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_POWER constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ERROR_FLAG_ENCODER_POWER = 9;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_INDEX constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ERROR_FLAG_ENCODER_INDEX = 10;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_OUTPUT_A constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ERROR_FLAG_ENCODER_OUTPUT_A = 11;
    /// @brief Original clearpath_motor_msgs/msg/LynxStatus.ERROR_FLAG_ENCODER_OUTPUT_B constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_ERROR_FLAG_ENCODER_OUTPUT_B = 12;

}
/// @brief Encode every field of complete clearpath_motor_msgs/msg/LynxStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_motor_msgsMsgLynxStatus(ref Ros2Clearpath_motor_msgsMsgLynxStatus value,
                                                 ubyte[] output,
                                                 out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_motor_msgs/msg/LynxStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_motor_msgsMsgLynxStatus(const(ubyte)[] bytes, out Ros2Clearpath_motor_msgsMsgLynxStatus value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_motor_msgs/msg/LynxMultiStatus value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..2328 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_motor_msgsMsgLynxMultiStatus
{
    /// @brief Original clearpath_motor_msgs/msg/LynxMultiStatus.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original clearpath_motor_msgs/msg/LynxMultiStatus.drivers field.
    /// @details Original type clearpath_motor_msgs/msg/LynxStatus. Shape sequence; bound/count 4
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence !(Ros2Clearpath_motor_msgsMsgLynxStatus, 4)field_drivers;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 2328;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_595cd0847b4332e14cc067b916166e9a6e1d1e12a7a68cdb7e1cd414a9ea9ce1";

}
/// @brief Encode every field of complete clearpath_motor_msgs/msg/LynxMultiStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_motor_msgsMsgLynxMultiStatus(ref Ros2Clearpath_motor_msgsMsgLynxMultiStatus value,
                                                      ubyte[] output,
                                                      out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_motor_msgs/msg/LynxMultiStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_motor_msgsMsgLynxMultiStatus(const(ubyte)[] bytes,
                                                      out Ros2Clearpath_motor_msgsMsgLynxMultiStatus value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_motor_msgs/msg/LynxSystemProtection value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 17..669 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_motor_msgsMsgLynxSystemProtection
{
    /// @brief Original clearpath_motor_msgs/msg/LynxSystemProtection.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original clearpath_motor_msgs/msg/LynxSystemProtection.system_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_system_state;
    /// @brief Original clearpath_motor_msgs/msg/LynxSystemProtection.motor_states field.
    /// @details Original type clearpath_motor_msgs/msg/LynxMotorProtection. Shape sequence;
    /// bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence !(Ros2Clearpath_motor_msgsMsgLynxMotorProtection, 2)field_motor_states;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 17;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 669;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_4d662de03c34bb633a122399be1a1aaea6187550c83231bf6d8a06b95fa82d9f";

}
/// @brief Encode every field of complete clearpath_motor_msgs/msg/LynxSystemProtection.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_motor_msgsMsgLynxSystemProtection(ref Ros2Clearpath_motor_msgsMsgLynxSystemProtection value,
                                                           ubyte[] output,
                                                           out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_motor_msgs/msg/LynxSystemProtection.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_motor_msgsMsgLynxSystemProtection(const(ubyte)[] bytes,
                                                           out Ros2Clearpath_motor_msgsMsgLynxSystemProtection value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_motor_msgs/msg/PumaFeedback value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 37..293 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_motor_msgsMsgPumaFeedback
{
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.device_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_device_number;
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.device_name field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_device_name;
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.duty_cycle field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_duty_cycle = 0;
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.current field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_current = 0;
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.travel field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_travel = 0;
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.speed field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_speed = 0;
    /// @brief Original clearpath_motor_msgs/msg/PumaFeedback.setpoint field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_setpoint = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 37;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 293;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_c020162b07a55ac5f41df6021c0d3053d7302863f4e544a738b6cc5bc4dc9659";

}
/// @brief Encode every field of complete clearpath_motor_msgs/msg/PumaFeedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_motor_msgsMsgPumaFeedback(ref Ros2Clearpath_motor_msgsMsgPumaFeedback value,
                                                   ubyte[] output,
                                                   out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_motor_msgs/msg/PumaFeedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_motor_msgsMsgPumaFeedback(const(ubyte)[] bytes,
                                                   out Ros2Clearpath_motor_msgsMsgPumaFeedback value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_motor_msgs/msg/PumaMultiFeedback value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..1316 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_motor_msgsMsgPumaMultiFeedback
{
    /// @brief Original clearpath_motor_msgs/msg/PumaMultiFeedback.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original clearpath_motor_msgs/msg/PumaMultiFeedback.drivers_feedback field.
    /// @details Original type clearpath_motor_msgs/msg/PumaFeedback. Shape sequence; bound/count 4
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence !(Ros2Clearpath_motor_msgsMsgPumaFeedback, 4)field_drivers_feedback;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1316;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_638309564580ad23d585799dcd46156e1e4261ebf9febfbb91754c250907c947";

}
/// @brief Encode every field of complete clearpath_motor_msgs/msg/PumaMultiFeedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_motor_msgsMsgPumaMultiFeedback(ref Ros2Clearpath_motor_msgsMsgPumaMultiFeedback value,
                                                        ubyte[] output,
                                                        out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_motor_msgs/msg/PumaMultiFeedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_motor_msgsMsgPumaMultiFeedback(const(ubyte)[] bytes,
                                                        out Ros2Clearpath_motor_msgsMsgPumaMultiFeedback value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_motor_msgs/msg/PumaStatus value.
/// @details Retain all 8 original fields and 9 constants. Canonical extent 23..279 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_motor_msgsMsgPumaStatus
{
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.device_number field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_device_number;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.device_name field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_device_name;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.bus_voltage field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_bus_voltage = 0;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_temperature = 0;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.output_voltage field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_output_voltage = 0;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.analog_input field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_analog_input = 0;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_mode;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.fault field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_fault;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 23;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 279;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_a027229db2c8500f707d97064548b27e77e24ae4840ad9722d2dc74726099da8";
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_MODE_VOLTAGE = 0;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_MODE_CURRENT = 1;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_SPEED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_MODE_SPEED = 2;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_POSITION constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_MODE_POSITION = 3;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.MODE_VCOMP constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_MODE_VCOMP = 4;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_FAULT_CURRENT = 1;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_TEMPERATURE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_FAULT_TEMPERATURE = 2;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_BUS_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_FAULT_BUS_VOLTAGE = 4;
    /// @brief Original clearpath_motor_msgs/msg/PumaStatus.FAULT_BRIDGE_DRIVER constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_FAULT_BRIDGE_DRIVER = 8;

}
/// @brief Encode every field of complete clearpath_motor_msgs/msg/PumaStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_motor_msgsMsgPumaStatus(ref Ros2Clearpath_motor_msgsMsgPumaStatus value,
                                                 ubyte[] output,
                                                 out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_motor_msgs/msg/PumaStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_motor_msgsMsgPumaStatus(const(ubyte)[] bytes, out Ros2Clearpath_motor_msgsMsgPumaStatus value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_motor_msgs/msg/PumaMultiStatus value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..1260 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_motor_msgsMsgPumaMultiStatus
{
    /// @brief Original clearpath_motor_msgs/msg/PumaMultiStatus.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original clearpath_motor_msgs/msg/PumaMultiStatus.drivers field.
    /// @details Original type clearpath_motor_msgs/msg/PumaStatus. Shape sequence; bound/count 4
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence !(Ros2Clearpath_motor_msgsMsgPumaStatus, 4)field_drivers;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1260;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_30a0210fea4fffe07371c898c365ef9696501a7541935dd80770671a7163c8f2";

}
/// @brief Encode every field of complete clearpath_motor_msgs/msg/PumaMultiStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_motor_msgsMsgPumaMultiStatus(ref Ros2Clearpath_motor_msgsMsgPumaMultiStatus value,
                                                      ubyte[] output,
                                                      out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_motor_msgs/msg/PumaMultiStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_motor_msgsMsgPumaMultiStatus(const(ubyte)[] bytes,
                                                      out Ros2Clearpath_motor_msgsMsgPumaMultiStatus value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_platform_msgs/msg/DisplayStatus value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..106 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_platform_msgsMsgDisplayStatus
{
    /// @brief Original clearpath_platform_msgs/msg/DisplayStatus.string1 field.
    /// @details Original type string. String bound 49 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(49, false)field_string1;
    /// @brief Original clearpath_platform_msgs/msg/DisplayStatus.string2 field.
    /// @details Original type string. String bound 49 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(49, false)field_string2;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 106;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_e4585117414581491304a26d528b44c770799f622c3f1cde037078f5cb2462c2";

}
/// @brief Encode every field of complete clearpath_platform_msgs/msg/DisplayStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_platform_msgsMsgDisplayStatus(ref Ros2Clearpath_platform_msgsMsgDisplayStatus value,
                                                       ubyte[] output,
                                                       out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_platform_msgs/msg/DisplayStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_platform_msgsMsgDisplayStatus(const(ubyte)[] bytes,
                                                       out Ros2Clearpath_platform_msgsMsgDisplayStatus value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_platform_msgs/msg/Drive value.
/// @details Retain all 2 original fields and 5 constants. Canonical extent 9..9 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_platform_msgsMsgDrive
{
    /// @brief Original clearpath_platform_msgs/msg/Drive.mode field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_mode;
    /// @brief Original clearpath_platform_msgs/msg/Drive.drivers field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[2] field_drivers = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 9;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 9;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_be8664128ff89a066550f1a2496c30396f39bafd1d96483c545048a328138785";
    /// @brief Original clearpath_platform_msgs/msg/Drive.MODE_VELOCITY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum byte constant_MODE_VELOCITY = 0;
    /// @brief Original clearpath_platform_msgs/msg/Drive.MODE_PWM constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum byte constant_MODE_PWM = 1;
    /// @brief Original clearpath_platform_msgs/msg/Drive.MODE_NONE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum byte constant_MODE_NONE = -1;
    /// @brief Original clearpath_platform_msgs/msg/Drive.LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum byte constant_LEFT = 0;
    /// @brief Original clearpath_platform_msgs/msg/Drive.RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum byte constant_RIGHT = 1;

}
/// @brief Encode every field of complete clearpath_platform_msgs/msg/Drive.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_platform_msgsMsgDrive(ref Ros2Clearpath_platform_msgsMsgDrive value,
                                               ubyte[] output,
                                               out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_platform_msgs/msg/Drive.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_platform_msgsMsgDrive(const(ubyte)[] bytes, out Ros2Clearpath_platform_msgsMsgDrive value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_platform_msgs/msg/DriveFeedback value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 25..25 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_platform_msgsMsgDriveFeedback
{
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.current field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_current = 0;
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.duty_cycle field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_duty_cycle = 0;
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.bridge_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_bridge_temperature = 0;
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.motor_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_motor_temperature = 0;
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.measured_velocity field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_measured_velocity = 0;
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.measured_travel field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_measured_travel = 0;
    /// @brief Original clearpath_platform_msgs/msg/DriveFeedback.driver_fault field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_driver_fault;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 25;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 25;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_008f51d4c8341723ffec72651f93c00db0f9feceb037ee7b6b460ffcafd3f287";

}
/// @brief Encode every field of complete clearpath_platform_msgs/msg/DriveFeedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_platform_msgsMsgDriveFeedback(ref Ros2Clearpath_platform_msgsMsgDriveFeedback value,
                                                       ubyte[] output,
                                                       out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_platform_msgs/msg/DriveFeedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_platform_msgsMsgDriveFeedback(const(ubyte)[] bytes,
                                                       out Ros2Clearpath_platform_msgsMsgDriveFeedback value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_platform_msgs/msg/Fans value.
/// @details Retain all 1 original fields and 17 constants. Canonical extent 4..6 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_platform_msgsMsgFans
{
    /// @brief Original clearpath_platform_msgs/msg/Fans.fans field.
    /// @details Original type uint8. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(ubyte, 2)field_fans;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 6;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_a7d96f2242d992baf96f31bd8f93088547f92c72912c241c2d237f7714800cc8";
    /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_FAN1 = 0;
    /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_FAN2 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_FAN3 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN4 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_FAN4 = 3;
    /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN5 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_FAN5 = 4;
    /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN6 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_FAN6 = 5;
    /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN7 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_FAN7 = 6;
    /// @brief Original clearpath_platform_msgs/msg/Fans.CC01_FAN8 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_FAN8 = 7;
    /// @brief Original clearpath_platform_msgs/msg/Fans.R100_EQUIPMENT_BAY_INTAKE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_EQUIPMENT_BAY_INTAKE = 0;
    /// @brief Original clearpath_platform_msgs/msg/Fans.R100_EQUIPMENT_BAY_EXHAUST constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_EQUIPMENT_BAY_EXHAUST = 1;
    /// @brief Original clearpath_platform_msgs/msg/Fans.R100_CHARGER_BAY_INTAKE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_CHARGER_BAY_INTAKE = 2;
    /// @brief Original clearpath_platform_msgs/msg/Fans.R100_CHARGER_BAY_EXHAUST constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_CHARGER_BAY_EXHAUST = 3;
    /// @brief Original clearpath_platform_msgs/msg/Fans.R100_USER_BAY_INTAKE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_USER_BAY_INTAKE = 4;
    /// @brief Original clearpath_platform_msgs/msg/Fans.R100_USER_BAY_EXHAUST constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_USER_BAY_EXHAUST = 5;
    /// @brief Original clearpath_platform_msgs/msg/Fans.FAN_OFF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_FAN_OFF = 0;
    /// @brief Original clearpath_platform_msgs/msg/Fans.FAN_ON_HIGH constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_FAN_ON_HIGH = 1;
    /// @brief Original clearpath_platform_msgs/msg/Fans.FAN_ON_LOW constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_FAN_ON_LOW = 2;

}
/// @brief Encode every field of complete clearpath_platform_msgs/msg/Fans.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_platform_msgsMsgFans(ref Ros2Clearpath_platform_msgsMsgFans value,
                                              ubyte[] output,
                                              out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_platform_msgs/msg/Fans.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_platform_msgsMsgFans(const(ubyte)[] bytes, out Ros2Clearpath_platform_msgsMsgFans value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_platform_msgs/msg/Feedback value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 64..192 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_platform_msgsMsgFeedback
{
    /// @brief Original clearpath_platform_msgs/msg/Feedback.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original clearpath_platform_msgs/msg/Feedback.drivers field.
    /// @details Original type clearpath_platform_msgs/msg/DriveFeedback. Shape array; bound/count 2
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Ros2Clearpath_platform_msgsMsgDriveFeedback[2] field_drivers;
    /// @brief Original clearpath_platform_msgs/msg/Feedback.commanded_mode field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_commanded_mode;
    /// @brief Original clearpath_platform_msgs/msg/Feedback.actual_mode field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_actual_mode;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 64;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 192;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_15fdfd2e12df38bab09bf083beb61ce23d3c1082e794c34d51eec4c473e29442";

}
/// @brief Encode every field of complete clearpath_platform_msgs/msg/Feedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_platform_msgsMsgFeedback(ref Ros2Clearpath_platform_msgsMsgFeedback value,
                                                  ubyte[] output,
                                                  out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_platform_msgs/msg/Feedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_platform_msgsMsgFeedback(const(ubyte)[] bytes,
                                                  out Ros2Clearpath_platform_msgsMsgFeedback value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_platform_msgs/msg/RGB value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 3..3 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_platform_msgsMsgRGB
{
    /// @brief Original clearpath_platform_msgs/msg/RGB.red field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_red;
    /// @brief Original clearpath_platform_msgs/msg/RGB.green field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_green;
    /// @brief Original clearpath_platform_msgs/msg/RGB.blue field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_blue;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 3;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 3;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_42db8731293054ef44002afc54c16dac45544354932d5353cf749fb376cef1a1";

}
/// @brief Encode every field of complete clearpath_platform_msgs/msg/RGB.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_platform_msgsMsgRGB(ref Ros2Clearpath_platform_msgsMsgRGB value,
                                             ubyte[] output,
                                             out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_platform_msgs/msg/RGB.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_platform_msgsMsgRGB(const(ubyte)[] bytes, out Ros2Clearpath_platform_msgsMsgRGB value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_platform_msgs/msg/Lights value.
/// @details Retain all 1 original fields and 24 constants. Canonical extent 4..10 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_platform_msgsMsgLights
{
    /// @brief Original clearpath_platform_msgs/msg/Lights.lights field.
    /// @details Original type clearpath_platform_msgs/msg/RGB. Shape sequence; bound/count 2
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence !(Ros2Clearpath_platform_msgsMsgRGB, 2)field_lights;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 10;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_3f975a3ec1fca4f8add9523d4f9f99963be520c0e2982e644551b71cbd4b8a27";
    /// @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_REAR_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_LIGHTS_REAR_LEFT = 0;
    /// @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_FRONT_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_LIGHTS_FRONT_LEFT = 1;
    /// @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_FRONT_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_LIGHTS_FRONT_RIGHT = 2;
    /// @brief Original clearpath_platform_msgs/msg/Lights.D100_LIGHTS_REAR_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_LIGHTS_REAR_RIGHT = 3;
    /// @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_REAR_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_LIGHTS_REAR_LEFT = 0;
    /// @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_FRONT_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_LIGHTS_FRONT_LEFT = 1;
    /// @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_FRONT_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_LIGHTS_FRONT_RIGHT = 2;
    /// @brief Original clearpath_platform_msgs/msg/Lights.D150_LIGHTS_REAR_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_LIGHTS_REAR_RIGHT = 3;
    /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_PORT_UPPER constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_LIGHTS_FRONT_PORT_UPPER = 0;
    /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_PORT_LOWER constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_LIGHTS_FRONT_PORT_LOWER = 1;
    /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_STARBOARD_UPPER
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_LIGHTS_FRONT_STARBOARD_UPPER = 2;
    /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_FRONT_STARBOARD_LOWER
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_LIGHTS_FRONT_STARBOARD_LOWER = 3;
    /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_PORT_UPPER constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_LIGHTS_REAR_PORT_UPPER = 4;
    /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_PORT_LOWER constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_LIGHTS_REAR_PORT_LOWER = 5;
    /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_STARBOARD_UPPER
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_LIGHTS_REAR_STARBOARD_UPPER = 6;
    /// @brief Original clearpath_platform_msgs/msg/Lights.R100_LIGHTS_REAR_STARBOARD_LOWER
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_LIGHTS_REAR_STARBOARD_LOWER = 7;
    /// @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_FRONT_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_W200_LIGHTS_FRONT_LEFT = 0;
    /// @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_FRONT_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_W200_LIGHTS_FRONT_RIGHT = 1;
    /// @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_REAR_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_W200_LIGHTS_REAR_LEFT = 2;
    /// @brief Original clearpath_platform_msgs/msg/Lights.W200_LIGHTS_REAR_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_W200_LIGHTS_REAR_RIGHT = 3;
    /// @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_FRONT_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_A300_LIGHTS_FRONT_RIGHT = 0;
    /// @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_FRONT_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_A300_LIGHTS_FRONT_LEFT = 1;
    /// @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_REAR_LEFT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_A300_LIGHTS_REAR_LEFT = 2;
    /// @brief Original clearpath_platform_msgs/msg/Lights.A300_LIGHTS_REAR_RIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_A300_LIGHTS_REAR_RIGHT = 3;

}
/// @brief Encode every field of complete clearpath_platform_msgs/msg/Lights.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_platform_msgsMsgLights(ref Ros2Clearpath_platform_msgsMsgLights value,
                                                ubyte[] output,
                                                out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_platform_msgs/msg/Lights.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_platform_msgsMsgLights(const(ubyte)[] bytes, out Ros2Clearpath_platform_msgsMsgLights value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_platform_msgs/msg/PinoutCommand value.
/// @details Retain all 2 original fields and 14 constants. Canonical extent 8..18 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_platform_msgsMsgPinoutCommand
{
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.rails field.
    /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(bool, 2)field_rails;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.outputs field.
    /// @details Original type uint32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(uint, 2)field_outputs;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 18;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_b26c2baf1e64cefa889c4ac6bd6b7f4647d9247eca0626b83cd726547a4e80ff";
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_USER_PWR_CTRL constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_USER_PWR_CTRL = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D100_AUX_OUT1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_AUX_OUT1 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D100_AUX_OUT2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_AUX_OUT2 = 1;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D100_AUX_OUT3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_AUX_OUT3 = 2;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D150_AUX_OUT1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_AUX_OUT1 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D150_AUX_OUT2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_AUX_OUT2 = 1;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.D150_AUX_OUT3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_AUX_OUT3 = 2;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_AUX_OUT1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_AUX_OUT1 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_AUX_OUT2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_AUX_OUT2 = 1;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_AUX_OUT3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_AUX_OUT3 = 2;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO0 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_GPO0 = 3;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_GPO1 = 4;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_GPO2 = 5;
    /// @brief Original clearpath_platform_msgs/msg/PinoutCommand.CC01_GPO3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_GPO3 = 6;

}
/// @brief Encode every field of complete clearpath_platform_msgs/msg/PinoutCommand.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_platform_msgsMsgPinoutCommand(ref Ros2Clearpath_platform_msgsMsgPinoutCommand value,
                                                       ubyte[] output,
                                                       out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_platform_msgs/msg/PinoutCommand.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_platform_msgsMsgPinoutCommand(const(ubyte)[] bytes,
                                                       out Ros2Clearpath_platform_msgsMsgPinoutCommand value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_platform_msgs/msg/PinoutState value.
/// @details Retain all 5 original fields and 27 constants. Canonical extent 28..170 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_platform_msgsMsgPinoutState
{
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.rails field.
    /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(bool, 2)field_rails;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.inputs field.
    /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(bool, 2)field_inputs;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.outputs field.
    /// @details Original type bool. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(bool, 2)field_outputs;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.output_periods field.
    /// @details Original type uint32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(uint, 2)field_output_periods;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 28;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 170;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_a936c6d91440709d50fa9b0be8fb567a9ce793e84f57e5379f6a160c8cbf73e7";
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_USER_PWR_CTRL constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_USER_PWR_CTRL = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_IN1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_AUX_IN1 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_IN2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_AUX_IN2 = 1;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_IN3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_AUX_IN3 = 2;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_IN1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_AUX_IN1 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_IN2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_AUX_IN2 = 1;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_IN3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_AUX_IN3 = 2;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_IN1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_AUX_IN1 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_IN2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_AUX_IN2 = 1;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_IN3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_AUX_IN3 = 2;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI0 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_GPI0 = 3;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_GPI1 = 4;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_GPI2 = 5;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPI3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_GPI3 = 6;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_OUT1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_AUX_OUT1 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_OUT2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_AUX_OUT2 = 1;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D100_AUX_OUT3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_AUX_OUT3 = 2;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_OUT1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_AUX_OUT1 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_OUT2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_AUX_OUT2 = 1;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.D150_AUX_OUT3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_AUX_OUT3 = 2;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_OUT1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_AUX_OUT1 = 0;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_OUT2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_AUX_OUT2 = 1;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_AUX_OUT3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_AUX_OUT3 = 2;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO0 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_GPO0 = 3;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_GPO1 = 4;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_GPO2 = 5;
    /// @brief Original clearpath_platform_msgs/msg/PinoutState.CC01_GPO3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_GPO3 = 6;

}
/// @brief Encode every field of complete clearpath_platform_msgs/msg/PinoutState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_platform_msgsMsgPinoutState(ref Ros2Clearpath_platform_msgsMsgPinoutState value,
                                                     ubyte[] output,
                                                     out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_platform_msgs/msg/PinoutState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_platform_msgsMsgPinoutState(const(ubyte)[] bytes,
                                                     out Ros2Clearpath_platform_msgsMsgPinoutState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_platform_msgs/msg/Power value.
/// @details Retain all 8 original fields and 68 constants. Canonical extent 25..169 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_platform_msgsMsgPower
{
    /// @brief Original clearpath_platform_msgs/msg/Power.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original clearpath_platform_msgs/msg/Power.shore_power_connected field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_shore_power_connected;
    /// @brief Original clearpath_platform_msgs/msg/Power.battery_connected field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_battery_connected;
    /// @brief Original clearpath_platform_msgs/msg/Power.power_12v_user_nominal field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_power_12v_user_nominal;
    /// @brief Original clearpath_platform_msgs/msg/Power.charger_connected field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_charger_connected;
    /// @brief Original clearpath_platform_msgs/msg/Power.charging_complete field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_charging_complete;
    /// @brief Original clearpath_platform_msgs/msg/Power.measured_voltages field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(float, 2)field_measured_voltages;
    /// @brief Original clearpath_platform_msgs/msg/Power.measured_currents field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(float, 2)field_measured_currents;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 25;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 169;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_3fc241d6b81da2f80bfce22933b81786b5e582715dc66cd238fa40b239e7aecc";
    /// @brief Original clearpath_platform_msgs/msg/Power.NOT_APPLICABLE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum byte constant_NOT_APPLICABLE = -1;
    /// @brief Original clearpath_platform_msgs/msg/Power.J100_MEASURED_BATTERY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_J100_MEASURED_BATTERY = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.J100_MEASURED_5V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_J100_MEASURED_5V = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.J100_MEASURED_12V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_J100_MEASURED_12V = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.D100_MEASURED_BATTERY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_MEASURED_BATTERY = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.D100_MEASURED_5V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_MEASURED_5V = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.D100_MEASURED_12V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_MEASURED_12V = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.D150_MEASURED_BATTERY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_MEASURED_BATTERY = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.D150_MEASURED_5V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_MEASURED_5V = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.D150_MEASURED_12V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_MEASURED_12V = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_BATTERY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_W200_MEASURED_BATTERY = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_12V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_W200_MEASURED_12V = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_24V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_W200_MEASURED_24V = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.W200_MEASURED_48V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_W200_MEASURED_48V = 3;
    /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_BATTERY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_MEASURED_BATTERY = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_5V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_MEASURED_5V = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_12V constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_MEASURED_12V = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_INVERTER constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_MEASURED_INVERTER = 3;
    /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_FRONT_AXLE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_MEASURED_FRONT_AXLE = 4;
    /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_REAR_AXLE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_MEASURED_REAR_AXLE = 5;
    /// @brief Original clearpath_platform_msgs/msg/Power.R100_MEASURED_LIGHT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_MEASURED_LIGHT = 6;
    /// @brief Original clearpath_platform_msgs/msg/Power.A200_BATTERY_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_A200_BATTERY_VOLTAGE = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.A200_LEFT_DRIVER_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_A200_LEFT_DRIVER_VOLTAGE = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.A200_RIGHT_DRIVER_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_A200_RIGHT_DRIVER_VOLTAGE = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.A200_VOLTAGES_SIZE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_A200_VOLTAGES_SIZE = 3;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BATTERY_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_BATTERY_VOLTAGE = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_BATTERY_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_USER_BATTERY_VOLTAGE = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_24V_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_USER_24V_VOLTAGE = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_12VB_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_USER_12VB_VOLTAGE = 3;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_SYSTEM_12V_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_SYSTEM_12V_VOLTAGE = 4;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_EXPANSION_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_EXPANSION_VOLTAGE = 5;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_24V_AUX_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_BREAKOUT_24V_AUX_VOLTAGE = 6;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_12V_AUX_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_BREAKOUT_12V_AUX_VOLTAGE = 7;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_12VA_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_BREAKOUT_USER_12VA_VOLTAGE = 8;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX1_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_BREAKOUT_LYNX1_VOLTAGE = 9;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX2_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_BREAKOUT_LYNX2_VOLTAGE = 10;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX3_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_BREAKOUT_LYNX3_VOLTAGE = 11;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_LYNX4_VOLTAGE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_BREAKOUT_LYNX4_VOLTAGE = 12;
    /// @brief Original clearpath_platform_msgs/msg/Power.J100_TOTAL_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_J100_TOTAL_CURRENT = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.J100_COMPUTER_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_J100_COMPUTER_CURRENT = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.J100_DRIVE_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_J100_DRIVE_CURRENT = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.J100_USER_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_J100_USER_CURRENT = 3;
    /// @brief Original clearpath_platform_msgs/msg/Power.D100_TOTAL_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_TOTAL_CURRENT = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.D100_COMPUTER_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_COMPUTER_CURRENT = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.D150_TOTAL_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_TOTAL_CURRENT = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.D150_COMPUTER_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_COMPUTER_CURRENT = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.W200_TOTAL_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_W200_TOTAL_CURRENT = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.W200_COMPUTER_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_W200_COMPUTER_CURRENT = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.W200_12V_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_W200_12V_CURRENT = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.W200_24V_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_W200_24V_CURRENT = 3;
    /// @brief Original clearpath_platform_msgs/msg/Power.R100_TOTAL_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_TOTAL_CURRENT = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.A200_MCU_AND_USER_PORT_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_A200_MCU_AND_USER_PORT_CURRENT = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.A200_LEFT_DRIVER_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_A200_LEFT_DRIVER_CURRENT = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.A200_RIGHT_DRIVER_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_A200_RIGHT_DRIVER_CURRENT = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.A200_CURRENTS_SIZE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_A200_CURRENTS_SIZE = 3;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BATTERY_PACK_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_BATTERY_PACK_CURRENT = 0;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_USER_BATTERY_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_USER_BATTERY_CURRENT = 1;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_AUX_HES_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_AUX_HES_CURRENT = 2;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_SYSTEM_12V_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_SYSTEM_12V_CURRENT = 3;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_24V_AUX_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_24V_AUX_CURRENT = 4;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_12V_AUX_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_12V_AUX_CURRENT = 5;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_24V_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_BREAKOUT_USER_24V_CURRENT = 6;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_12VA_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_BREAKOUT_USER_12VA_CURRENT = 7;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_12VB_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_BREAKOUT_USER_12VB_CURRENT = 8;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX1_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_BREAKOUT_USER_LYNX1_CURRENT = 9;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX2_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_BREAKOUT_USER_LYNX2_CURRENT = 10;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX3_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_BREAKOUT_USER_LYNX3_CURRENT = 11;
    /// @brief Original clearpath_platform_msgs/msg/Power.CC01_BREAKOUT_USER_LYNX4_CURRENT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_BREAKOUT_USER_LYNX4_CURRENT = 12;

}
/// @brief Encode every field of complete clearpath_platform_msgs/msg/Power.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_platform_msgsMsgPower(ref Ros2Clearpath_platform_msgsMsgPower value,
                                               ubyte[] output,
                                               out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_platform_msgs/msg/Power.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_platform_msgsMsgPower(const(ubyte)[] bytes, out Ros2Clearpath_platform_msgsMsgPower value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_platform_msgs/msg/Status value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 36..676 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_platform_msgsMsgStatus
{
    /// @brief Original clearpath_platform_msgs/msg/Status.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original clearpath_platform_msgs/msg/Status.hardware_id field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_hardware_id;
    /// @brief Original clearpath_platform_msgs/msg/Status.firmware_version field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_firmware_version;
    /// @brief Original clearpath_platform_msgs/msg/Status.mcu_uptime field.
    /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Builtin_interfacesMsgDuration field_mcu_uptime;
    /// @brief Original clearpath_platform_msgs/msg/Status.connection_uptime field.
    /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Builtin_interfacesMsgDuration field_connection_uptime;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 36;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 676;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_1bd99cc11ea9efcb51eeba8fc1d599960c16e958a8adf33a56d47fe27be87782";

}
/// @brief Encode every field of complete clearpath_platform_msgs/msg/Status.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_platform_msgsMsgStatus(ref Ros2Clearpath_platform_msgsMsgStatus value,
                                                ubyte[] output,
                                                out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_platform_msgs/msg/Status.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_platform_msgsMsgStatus(const(ubyte)[] bytes, out Ros2Clearpath_platform_msgsMsgStatus value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_platform_msgs/msg/StopStatus value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 15..143 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_platform_msgsMsgStopStatus
{
    /// @brief Original clearpath_platform_msgs/msg/StopStatus.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original clearpath_platform_msgs/msg/StopStatus.stop_power_status field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_stop_power_status;
    /// @brief Original clearpath_platform_msgs/msg/StopStatus.external_stop_present field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_external_stop_present;
    /// @brief Original clearpath_platform_msgs/msg/StopStatus.needs_reset field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_needs_reset;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 15;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 143;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_101f96c8d48e7a945a2f94108e7b48393fc9d4bd75507dd709b95180ff4794d2";

}
/// @brief Encode every field of complete clearpath_platform_msgs/msg/StopStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_platform_msgsMsgStopStatus(ref Ros2Clearpath_platform_msgsMsgStopStatus value,
                                                    ubyte[] output,
                                                    out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_platform_msgs/msg/StopStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_platform_msgsMsgStopStatus(const(ubyte)[] bytes,
                                                    out Ros2Clearpath_platform_msgsMsgStopStatus value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_platform_msgs/msg/Temperature value.
/// @details Retain all 2 original fields and 28 constants. Canonical extent 16..152 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_platform_msgsMsgTemperature
{
    /// @brief Original clearpath_platform_msgs/msg/Temperature.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.temperatures field.
    /// @details Original type float32. Shape sequence; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(float, 2)field_temperatures;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 152;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_b4ae4d6ace9045ce96b0931f08d3b2c7ec358ab9c6da7022afd9ea489f9b0466";
    /// @brief Original clearpath_platform_msgs/msg/Temperature.J100_MCU constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_J100_MCU = 0;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.J100_PCB constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_J100_PCB = 1;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.D100_MCU constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_MCU = 0;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.D100_PCB constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D100_PCB = 1;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.D150_MCU constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_MCU = 0;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.D150_PCB constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_D150_PCB = 1;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.W200_MCU constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_W200_MCU = 0;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.R100_MCU constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_MCU = 0;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.R100_PCB constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_R100_PCB = 1;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_MCU constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_MCU = 0;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_FAN1 = 1;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_FAN2 = 2;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_FAN3 = 3;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN4 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_FAN4 = 4;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN5 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_FAN5 = 5;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN6 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_FAN6 = 6;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN7 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_FAN7 = 7;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_FAN8 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_FAN8 = 8;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_5V_INDUCTOR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_5V_INDUCTOR = 9;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_MAIN_GND_LUG constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_MAIN_GND_LUG = 10;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_24V_DCDC constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_24V_DCDC = 11;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_12V_DCDC constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_12V_DCDC = 12;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_EXT_1 = 13;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_EXT_2 = 14;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_3 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_EXT_3 = 15;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_EXT_4 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_EXT_4 = 16;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_BREAKOUT_1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_BREAKOUT_1 = 17;
    /// @brief Original clearpath_platform_msgs/msg/Temperature.CC01_BREAKOUT_2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_CC01_BREAKOUT_2 = 18;

}
/// @brief Encode every field of complete clearpath_platform_msgs/msg/Temperature.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_platform_msgsMsgTemperature(ref Ros2Clearpath_platform_msgsMsgTemperature value,
                                                     ubyte[] output,
                                                     out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_platform_msgs/msg/Temperature.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_platform_msgsMsgTemperature(const(ubyte)[] bytes,
                                                     out Ros2Clearpath_platform_msgsMsgTemperature value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_control_msgs/srv/PowerControl_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_control_msgsSrvPowerControl_Request
{
    /// @brief Original clearpath_control_msgs/srv/PowerControl_Request.power_on field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_power_on;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_1ad49d42d8895b3bd219799ab9cc080cf09d23aa4bca4c1172d19bc18fa416c4";

}
/// @brief Encode every field of complete clearpath_control_msgs/srv/PowerControl_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_control_msgsSrvPowerControl_Request(
    ref Ros2Clearpath_control_msgsSrvPowerControl_Request value, ubyte[] output, out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_control_msgs/srv/PowerControl_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_control_msgsSrvPowerControl_Request(
    const(ubyte)[] bytes, out Ros2Clearpath_control_msgsSrvPowerControl_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_control_msgs/srv/PowerControl_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..261 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_control_msgsSrvPowerControl_Response
{
    /// @brief Original clearpath_control_msgs/srv/PowerControl_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_success;
    /// @brief Original clearpath_control_msgs/srv/PowerControl_Response.message field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 5;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 261;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_6d74d07d6a8ff1c41ed4ca13939d54e9e642f423dc2ff6598665238ebbf10a8b";

}
/// @brief Encode every field of complete clearpath_control_msgs/srv/PowerControl_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_control_msgsSrvPowerControl_Response(
    ref Ros2Clearpath_control_msgsSrvPowerControl_Response value, ubyte[] output, out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_control_msgs/srv/PowerControl_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_control_msgsSrvPowerControl_Response(
    const(ubyte)[] bytes, out Ros2Clearpath_control_msgsSrvPowerControl_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_platform_msgs/srv/ConfigureMcu_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..261 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_platform_msgsSrvConfigureMcu_Request
{
    /// @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Request.domain_id field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_domain_id;
    /// @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Request.robot_namespace field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_robot_namespace;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 5;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 261;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_9c48451b208c4de7a51c5075587dfbe710e7ec6b249c7e1eef519022154023fa";

}
/// @brief Encode every field of complete clearpath_platform_msgs/srv/ConfigureMcu_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_platform_msgsSrvConfigureMcu_Request(
    ref Ros2Clearpath_platform_msgsSrvConfigureMcu_Request value, ubyte[] output, out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_platform_msgs/srv/ConfigureMcu_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_platform_msgsSrvConfigureMcu_Request(
    const(ubyte)[] bytes, out Ros2Clearpath_platform_msgsSrvConfigureMcu_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_platform_msgs/srv/ConfigureMcu_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..261 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_platform_msgsSrvConfigureMcu_Response
{
    /// @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_success;
    /// @brief Original clearpath_platform_msgs/srv/ConfigureMcu_Response.message field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 5;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 261;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_552e715f290b5b9aa5dc926519cf2ab5120d6b2ae5eca9902efcc3f8c9e459ad";

}
/// @brief Encode every field of complete clearpath_platform_msgs/srv/ConfigureMcu_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_platform_msgsSrvConfigureMcu_Response(
    ref Ros2Clearpath_platform_msgsSrvConfigureMcu_Response value, ubyte[] output, out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_platform_msgs/srv/ConfigureMcu_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_platform_msgsSrvConfigureMcu_Response(
    const(ubyte)[] bytes, out Ros2Clearpath_platform_msgsSrvConfigureMcu_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_platform_msgs/srv/SetPinout_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..5 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_platform_msgsSrvSetPinout_Request
{
    /// @brief Original clearpath_platform_msgs/srv/SetPinout_Request.state field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_state;
    /// @brief Original clearpath_platform_msgs/srv/SetPinout_Request.toggle_period field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_toggle_period;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 5;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 5;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_3a3a2f8f16279c2e7a057353cd1f7f11e1a65e887dd3ce0a4b7f584708afb238";

}
/// @brief Encode every field of complete clearpath_platform_msgs/srv/SetPinout_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_platform_msgsSrvSetPinout_Request(ref Ros2Clearpath_platform_msgsSrvSetPinout_Request value,
                                                           ubyte[] output,
                                                           out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_platform_msgs/srv/SetPinout_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_platform_msgsSrvSetPinout_Request(const(ubyte)[] bytes,
                                                           out Ros2Clearpath_platform_msgsSrvSetPinout_Request value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete clearpath_platform_msgs/srv/SetPinout_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..261 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Clearpath_platform_msgsSrvSetPinout_Response
{
    /// @brief Original clearpath_platform_msgs/srv/SetPinout_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_success;
    /// @brief Original clearpath_platform_msgs/srv/SetPinout_Response.message field.
    /// @details Original type string. String bound 256 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text !(256, false)field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 5;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 261;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_b643ef5de2dfb725906ef8f11d79601400953211b47220be7a6fcc05d1be8ee3";

}
/// @brief Encode every field of complete clearpath_platform_msgs/srv/SetPinout_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Clearpath_platform_msgsSrvSetPinout_Response(ref Ros2Clearpath_platform_msgsSrvSetPinout_Response value,
                                                            ubyte[] output,
                                                            out size_t written) @nogc nothrow

{
    return encode(value, output, written);
}

/// @brief Decode every field of complete clearpath_platform_msgs/srv/SetPinout_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Clearpath_platform_msgsSrvSetPinout_Response(const(ubyte)[] bytes,
                                                            out Ros2Clearpath_platform_msgsSrvSetPinout_Response value)
    @nogc nothrow
{
    return decode(bytes, value);
}
