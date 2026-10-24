/// @file records.d
/// @brief Complete owned original Unitree ROS 1 native records and codecs.
/// @details Generated from the admitted source-pinned catalog; no ROS authority is created.
module unitree.d.ros1.records;
import unitree.d.wire;

/// @brief Complete unitree_legged_msgs/BmsCmd value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Unitree_legged_msgsBmsCmd
{
    /// @brief Original unitree_legged_msgs/BmsCmd.off field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_off;
    /// @brief Original unitree_legged_msgs/BmsCmd.reserve field.
    /// @details Original type uint8. Shape array; bound/count 3 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ubyte[3] field_reserve;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928";

}
/// @brief Encode every field of complete unitree_legged_msgs/BmsCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Unitree_legged_msgsBmsCmd(
    ref Ros1Unitree_legged_msgsBmsCmd value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_legged_msgs/BmsCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Unitree_legged_msgsBmsCmd(const(ubyte)[] bytes, out Ros1Unitree_legged_msgsBmsCmd value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_legged_msgs/BmsState value.
/// @details Retain all 9 original fields and 0 constants. Canonical extent 34..34 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Unitree_legged_msgsBmsState
{
    /// @brief Original unitree_legged_msgs/BmsState.version_h field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_version_h;
    /// @brief Original unitree_legged_msgs/BmsState.version_l field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_version_l;
    /// @brief Original unitree_legged_msgs/BmsState.bms_status field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_bms_status;
    /// @brief Original unitree_legged_msgs/BmsState.SOC field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_SOC;
    /// @brief Original unitree_legged_msgs/BmsState.current field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_current;
    /// @brief Original unitree_legged_msgs/BmsState.cycle field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_cycle;
    /// @brief Original unitree_legged_msgs/BmsState.BQ_NTC field.
    /// @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    byte[2] field_BQ_NTC;
    /// @brief Original unitree_legged_msgs/BmsState.MCU_NTC field.
    /// @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    byte[2] field_MCU_NTC;
    /// @brief Original unitree_legged_msgs/BmsState.cell_vol field.
    /// @details Original type uint16. Shape array; bound/count 10 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    ushort[10] field_cell_vol;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 34;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 34;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a";

}
/// @brief Encode every field of complete unitree_legged_msgs/BmsState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Unitree_legged_msgsBmsState(
    ref Ros1Unitree_legged_msgsBmsState value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_legged_msgs/BmsState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Unitree_legged_msgsBmsState(const(ubyte)[] bytes, out Ros1Unitree_legged_msgsBmsState value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_legged_msgs/Cartesian value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 12..12 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Unitree_legged_msgsCartesian
{
    /// @brief Original unitree_legged_msgs/Cartesian.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_x = 0;
    /// @brief Original unitree_legged_msgs/Cartesian.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_y = 0;
    /// @brief Original unitree_legged_msgs/Cartesian.z field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_z = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 12;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722";

}
/// @brief Encode every field of complete unitree_legged_msgs/Cartesian.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Unitree_legged_msgsCartesian(
    ref Ros1Unitree_legged_msgsCartesian value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_legged_msgs/Cartesian.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Unitree_legged_msgsCartesian(const(ubyte)[] bytes, out Ros1Unitree_legged_msgsCartesian value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_legged_msgs/LED value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 3..3 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Unitree_legged_msgsLED
{
    /// @brief Original unitree_legged_msgs/LED.r field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_r;
    /// @brief Original unitree_legged_msgs/LED.g field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_g;
    /// @brief Original unitree_legged_msgs/LED.b field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_b;
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
    enum codecIdentity = "UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5";

}
/// @brief Encode every field of complete unitree_legged_msgs/LED.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Unitree_legged_msgsLED(
    ref Ros1Unitree_legged_msgsLED value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_legged_msgs/LED.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Unitree_legged_msgsLED(const(ubyte)[] bytes, out Ros1Unitree_legged_msgsLED value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_legged_msgs/HighCmd value.
/// @details Retain all 20 original fields and 0 constants. Canonical extent 129..129 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Unitree_legged_msgsHighCmd
{
    /// @brief Original unitree_legged_msgs/HighCmd.head field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ubyte[2] field_head;
    /// @brief Original unitree_legged_msgs/HighCmd.levelFlag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_levelFlag;
    /// @brief Original unitree_legged_msgs/HighCmd.frameReserve field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_frameReserve;
    /// @brief Original unitree_legged_msgs/HighCmd.SN field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[2] field_SN;
    /// @brief Original unitree_legged_msgs/HighCmd.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[2] field_version;
    /// @brief Original unitree_legged_msgs/HighCmd.bandWidth field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_bandWidth;
    /// @brief Original unitree_legged_msgs/HighCmd.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_mode;
    /// @brief Original unitree_legged_msgs/HighCmd.gaitType field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_gaitType;
    /// @brief Original unitree_legged_msgs/HighCmd.speedLevel field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_speedLevel;
    /// @brief Original unitree_legged_msgs/HighCmd.footRaiseHeight field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_footRaiseHeight = 0;
    /// @brief Original unitree_legged_msgs/HighCmd.bodyHeight field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_bodyHeight = 0;
    /// @brief Original unitree_legged_msgs/HighCmd.position field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[2] field_position = 0;
    /// @brief Original unitree_legged_msgs/HighCmd.euler field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[3] field_euler = 0;
    /// @brief Original unitree_legged_msgs/HighCmd.velocity field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[2] field_velocity = 0;
    /// @brief Original unitree_legged_msgs/HighCmd.yawSpeed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_yawSpeed = 0;
    /// @brief Original unitree_legged_msgs/HighCmd.bms field.
    /// @details Original type unitree_legged_msgs/BmsCmd. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Unitree_legged_msgsBmsCmd field_bms;
    /// @brief Original unitree_legged_msgs/HighCmd.led field.
    /// @details Original type unitree_legged_msgs/LED. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Ros1Unitree_legged_msgsLED[4] field_led;
    /// @brief Original unitree_legged_msgs/HighCmd.wirelessRemote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ubyte[40] field_wirelessRemote;
    /// @brief Original unitree_legged_msgs/HighCmd.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_reserve;
    /// @brief Original unitree_legged_msgs/HighCmd.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_crc;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 129;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 129;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38";

}
/// @brief Encode every field of complete unitree_legged_msgs/HighCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Unitree_legged_msgsHighCmd(
    ref Ros1Unitree_legged_msgsHighCmd value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_legged_msgs/HighCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Unitree_legged_msgsHighCmd(const(ubyte)[] bytes, out Ros1Unitree_legged_msgsHighCmd value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_legged_msgs/IMU value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 53..53 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Unitree_legged_msgsIMU
{
    /// @brief Original unitree_legged_msgs/IMU.quaternion field.
    /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[4] field_quaternion = 0;
    /// @brief Original unitree_legged_msgs/IMU.gyroscope field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[3] field_gyroscope = 0;
    /// @brief Original unitree_legged_msgs/IMU.accelerometer field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[3] field_accelerometer = 0;
    /// @brief Original unitree_legged_msgs/IMU.rpy field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[3] field_rpy = 0;
    /// @brief Original unitree_legged_msgs/IMU.temperature field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_temperature;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 53;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 53;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276";

}
/// @brief Encode every field of complete unitree_legged_msgs/IMU.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Unitree_legged_msgsIMU(
    ref Ros1Unitree_legged_msgsIMU value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_legged_msgs/IMU.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Unitree_legged_msgsIMU(const(ubyte)[] bytes, out Ros1Unitree_legged_msgsIMU value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_legged_msgs/MotorState value.
/// @details Retain all 10 original fields and 0 constants. Canonical extent 38..38 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Unitree_legged_msgsMotorState
{
    /// @brief Original unitree_legged_msgs/MotorState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_mode;
    /// @brief Original unitree_legged_msgs/MotorState.q field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_q = 0;
    /// @brief Original unitree_legged_msgs/MotorState.dq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_dq = 0;
    /// @brief Original unitree_legged_msgs/MotorState.ddq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ddq = 0;
    /// @brief Original unitree_legged_msgs/MotorState.tauEst field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_tauEst = 0;
    /// @brief Original unitree_legged_msgs/MotorState.q_raw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_q_raw = 0;
    /// @brief Original unitree_legged_msgs/MotorState.dq_raw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_dq_raw = 0;
    /// @brief Original unitree_legged_msgs/MotorState.ddq_raw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ddq_raw = 0;
    /// @brief Original unitree_legged_msgs/MotorState.temperature field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_temperature;
    /// @brief Original unitree_legged_msgs/MotorState.reserve field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[2] field_reserve;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 38;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 38;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf";

}
/// @brief Encode every field of complete unitree_legged_msgs/MotorState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Unitree_legged_msgsMotorState(
    ref Ros1Unitree_legged_msgsMotorState value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_legged_msgs/MotorState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Unitree_legged_msgsMotorState(const(ubyte)[] bytes, out Ros1Unitree_legged_msgsMotorState value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_legged_msgs/HighState value.
/// @details Retain all 25 original fields and 0 constants. Canonical extent 1087..1087 bytes.
/// Native registration and transport permission require independent deployment proof.
struct Ros1Unitree_legged_msgsHighState
{
    /// @brief Original unitree_legged_msgs/HighState.head field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ubyte[2] field_head;
    /// @brief Original unitree_legged_msgs/HighState.levelFlag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_levelFlag;
    /// @brief Original unitree_legged_msgs/HighState.frameReserve field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_frameReserve;
    /// @brief Original unitree_legged_msgs/HighState.SN field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[2] field_SN;
    /// @brief Original unitree_legged_msgs/HighState.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[2] field_version;
    /// @brief Original unitree_legged_msgs/HighState.bandWidth field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_bandWidth;
    /// @brief Original unitree_legged_msgs/HighState.imu field.
    /// @details Original type unitree_legged_msgs/IMU. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros1Unitree_legged_msgsIMU field_imu;
    /// @brief Original unitree_legged_msgs/HighState.motorState field.
    /// @details Original type unitree_legged_msgs/MotorState. Shape array; bound/count 20 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Ros1Unitree_legged_msgsMotorState[20] field_motorState;
    /// @brief Original unitree_legged_msgs/HighState.bms field.
    /// @details Original type unitree_legged_msgs/BmsState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Unitree_legged_msgsBmsState field_bms;
    /// @brief Original unitree_legged_msgs/HighState.footForce field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    short[4] field_footForce;
    /// @brief Original unitree_legged_msgs/HighState.footForceEst field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    short[4] field_footForceEst;
    /// @brief Original unitree_legged_msgs/HighState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_mode;
    /// @brief Original unitree_legged_msgs/HighState.progress field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_progress = 0;
    /// @brief Original unitree_legged_msgs/HighState.gaitType field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_gaitType;
    /// @brief Original unitree_legged_msgs/HighState.footRaiseHeight field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_footRaiseHeight = 0;
    /// @brief Original unitree_legged_msgs/HighState.position field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[3] field_position = 0;
    /// @brief Original unitree_legged_msgs/HighState.bodyHeight field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_bodyHeight = 0;
    /// @brief Original unitree_legged_msgs/HighState.velocity field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[3] field_velocity = 0;
    /// @brief Original unitree_legged_msgs/HighState.yawSpeed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_yawSpeed = 0;
    /// @brief Original unitree_legged_msgs/HighState.rangeObstacle field.
    /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[4] field_rangeObstacle = 0;
    /// @brief Original unitree_legged_msgs/HighState.footPosition2Body field.
    /// @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Ros1Unitree_legged_msgsCartesian[4] field_footPosition2Body;
    /// @brief Original unitree_legged_msgs/HighState.footSpeed2Body field.
    /// @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Ros1Unitree_legged_msgsCartesian[4] field_footSpeed2Body;
    /// @brief Original unitree_legged_msgs/HighState.wirelessRemote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ubyte[40] field_wirelessRemote;
    /// @brief Original unitree_legged_msgs/HighState.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_reserve;
    /// @brief Original unitree_legged_msgs/HighState.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_crc;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 1087;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1087;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d";

}
/// @brief Encode every field of complete unitree_legged_msgs/HighState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Unitree_legged_msgsHighState(
    ref Ros1Unitree_legged_msgsHighState value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_legged_msgs/HighState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Unitree_legged_msgsHighState(const(ubyte)[] bytes, out Ros1Unitree_legged_msgsHighState value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_legged_msgs/MotorCmd value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 33..33 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Unitree_legged_msgsMotorCmd
{
    /// @brief Original unitree_legged_msgs/MotorCmd.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_mode;
    /// @brief Original unitree_legged_msgs/MotorCmd.q field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_q = 0;
    /// @brief Original unitree_legged_msgs/MotorCmd.dq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_dq = 0;
    /// @brief Original unitree_legged_msgs/MotorCmd.tau field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_tau = 0;
    /// @brief Original unitree_legged_msgs/MotorCmd.Kp field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_Kp = 0;
    /// @brief Original unitree_legged_msgs/MotorCmd.Kd field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_Kd = 0;
    /// @brief Original unitree_legged_msgs/MotorCmd.reserve field.
    /// @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[3] field_reserve;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 33;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 33;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083";

}
/// @brief Encode every field of complete unitree_legged_msgs/MotorCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Unitree_legged_msgsMotorCmd(
    ref Ros1Unitree_legged_msgsMotorCmd value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_legged_msgs/MotorCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Unitree_legged_msgsMotorCmd(const(ubyte)[] bytes, out Ros1Unitree_legged_msgsMotorCmd value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_legged_msgs/LowCmd value.
/// @details Retain all 11 original fields and 0 constants. Canonical extent 734..734 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Unitree_legged_msgsLowCmd
{
    /// @brief Original unitree_legged_msgs/LowCmd.head field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ubyte[2] field_head;
    /// @brief Original unitree_legged_msgs/LowCmd.levelFlag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_levelFlag;
    /// @brief Original unitree_legged_msgs/LowCmd.frameReserve field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_frameReserve;
    /// @brief Original unitree_legged_msgs/LowCmd.SN field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[2] field_SN;
    /// @brief Original unitree_legged_msgs/LowCmd.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[2] field_version;
    /// @brief Original unitree_legged_msgs/LowCmd.bandWidth field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_bandWidth;
    /// @brief Original unitree_legged_msgs/LowCmd.motorCmd field.
    /// @details Original type unitree_legged_msgs/MotorCmd. Shape array; bound/count 20 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Ros1Unitree_legged_msgsMotorCmd[20] field_motorCmd;
    /// @brief Original unitree_legged_msgs/LowCmd.bms field.
    /// @details Original type unitree_legged_msgs/BmsCmd. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Unitree_legged_msgsBmsCmd field_bms;
    /// @brief Original unitree_legged_msgs/LowCmd.wirelessRemote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ubyte[40] field_wirelessRemote;
    /// @brief Original unitree_legged_msgs/LowCmd.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_reserve;
    /// @brief Original unitree_legged_msgs/LowCmd.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_crc;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 734;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 734;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181";

}
/// @brief Encode every field of complete unitree_legged_msgs/LowCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Unitree_legged_msgsLowCmd(
    ref Ros1Unitree_legged_msgsLowCmd value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_legged_msgs/LowCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Unitree_legged_msgsLowCmd(const(ubyte)[] bytes, out Ros1Unitree_legged_msgsLowCmd value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_legged_msgs/LowState value.
/// @details Retain all 20 original fields and 0 constants. Canonical extent 1069..1069 bytes.
/// Native registration and transport permission require independent deployment proof.
struct Ros1Unitree_legged_msgsLowState
{
    /// @brief Original unitree_legged_msgs/LowState.head field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ubyte[2] field_head;
    /// @brief Original unitree_legged_msgs/LowState.levelFlag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_levelFlag;
    /// @brief Original unitree_legged_msgs/LowState.frameReserve field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_frameReserve;
    /// @brief Original unitree_legged_msgs/LowState.SN field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[2] field_SN;
    /// @brief Original unitree_legged_msgs/LowState.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[2] field_version;
    /// @brief Original unitree_legged_msgs/LowState.bandWidth field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_bandWidth;
    /// @brief Original unitree_legged_msgs/LowState.imu field.
    /// @details Original type unitree_legged_msgs/IMU. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros1Unitree_legged_msgsIMU field_imu;
    /// @brief Original unitree_legged_msgs/LowState.motorState field.
    /// @details Original type unitree_legged_msgs/MotorState. Shape array; bound/count 20 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Ros1Unitree_legged_msgsMotorState[20] field_motorState;
    /// @brief Original unitree_legged_msgs/LowState.bms field.
    /// @details Original type unitree_legged_msgs/BmsState. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Unitree_legged_msgsBmsState field_bms;
    /// @brief Original unitree_legged_msgs/LowState.footForce field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    short[4] field_footForce;
    /// @brief Original unitree_legged_msgs/LowState.footForceEst field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    short[4] field_footForceEst;
    /// @brief Original unitree_legged_msgs/LowState.tick field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_tick;
    /// @brief Original unitree_legged_msgs/LowState.wirelessRemote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ubyte[40] field_wirelessRemote;
    /// @brief Original unitree_legged_msgs/LowState.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_reserve;
    /// @brief Original unitree_legged_msgs/LowState.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_crc;
    /// @brief Original unitree_legged_msgs/LowState.eeForceRaw field.
    /// @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Ros1Unitree_legged_msgsCartesian[4] field_eeForceRaw;
    /// @brief Original unitree_legged_msgs/LowState.eeForce field.
    /// @details Original type unitree_legged_msgs/Cartesian. Shape array; bound/count 4 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Ros1Unitree_legged_msgsCartesian[4] field_eeForce;
    /// @brief Original unitree_legged_msgs/LowState.position field.
    /// @details Original type unitree_legged_msgs/Cartesian. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Unitree_legged_msgsCartesian field_position;
    /// @brief Original unitree_legged_msgs/LowState.velocity field.
    /// @details Original type unitree_legged_msgs/Cartesian. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Unitree_legged_msgsCartesian field_velocity;
    /// @brief Original unitree_legged_msgs/LowState.velocity_w field.
    /// @details Original type unitree_legged_msgs/Cartesian. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Unitree_legged_msgsCartesian field_velocity_w;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 1069;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1069;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0";

}
/// @brief Encode every field of complete unitree_legged_msgs/LowState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Unitree_legged_msgsLowState(
    ref Ros1Unitree_legged_msgsLowState value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_legged_msgs/LowState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Unitree_legged_msgsLowState(const(ubyte)[] bytes, out Ros1Unitree_legged_msgsLowState value)
    @nogc nothrow
{
    return decode(bytes, value);
}
