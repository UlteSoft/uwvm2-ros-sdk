/// @file records.d
/// @brief Complete owned original clearpath ROS 2 native records and codecs.
/// @details Generated from the admitted source-pinned catalog; no ROS authority is created.
module clearpath.d.ros2_humble.records;
import native.d.wire;

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
/// @details Retain all 1 original fields and 9 constants. Canonical extent 4..6 bytes. Native
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
    enum codecIdentity = "UWVMROS1_addc15a9b6db4f7a0eba3545f02ece0800e48796f71e387b4d249af861f95317";
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
/// @details Retain all 1 original fields and 20 constants. Canonical extent 4..10 bytes. Native
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
    enum codecIdentity = "UWVMROS1_14da254234c9c897e39bf4ee0db8faad0798d23fe7017195f35f88fb6e0b3332";
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

/// @brief Complete clearpath_platform_msgs/msg/Power value.
/// @details Retain all 8 original fields and 42 constants. Canonical extent 25..169 bytes. Native
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
    enum codecIdentity = "UWVMROS1_e97ba89dea149ff43d0134038985ea45d2f072af592ea128aa5502a053478d22";
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
/// @details Retain all 7 original fields and 0 constants. Canonical extent 44..684 bytes. Native
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
    /// @brief Original clearpath_platform_msgs/msg/Status.pcb_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_pcb_temperature = 0;
    /// @brief Original clearpath_platform_msgs/msg/Status.mcu_temperature field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_mcu_temperature = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 44;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 684;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_331afb70728e70e0391da1b2a0f2b97fdc8742a363a2b007606121ad778dd5c1";

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
