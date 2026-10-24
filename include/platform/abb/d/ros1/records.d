/// @file records.d
/// @brief Complete owned original ABB ROS 1 native records and codecs.
/// @details Generated from the admitted source-pinned catalog; no ROS authority is created.
module abb.d.ros1.records;
import ros.d.wire;

/// @brief Complete abb_egm_msgs/EGMChannelState value.
/// @details Retain all 7 original fields and 10 constants. Canonical extent 17..81 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_egm_msgsEGMChannelState
{
    /// @brief Original abb_egm_msgs/EGMChannelState.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_name;
    /// @brief Original abb_egm_msgs/EGMChannelState.active field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_active;
    /// @brief Original abb_egm_msgs/EGMChannelState.egm_convergence_met field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_egm_convergence_met;
    /// @brief Original abb_egm_msgs/EGMChannelState.egm_client_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_egm_client_state;
    /// @brief Original abb_egm_msgs/EGMChannelState.motor_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_motor_state;
    /// @brief Original abb_egm_msgs/EGMChannelState.rapid_execution_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_rapid_execution_state;
    /// @brief Original abb_egm_msgs/EGMChannelState.utilization_rate field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_utilization_rate = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 17;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 81;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_452d2adde3b1475fe3ff09ea11ff2ec7105a58c32e20d764e0c2ff152cb432f2";
    /// @brief Original abb_egm_msgs/EGMChannelState.EGM_UNDEFINED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_UNDEFINED = 1;
    /// @brief Original abb_egm_msgs/EGMChannelState.EGM_ERROR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_ERROR = 2;
    /// @brief Original abb_egm_msgs/EGMChannelState.EGM_STOPPED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_STOPPED = 3;
    /// @brief Original abb_egm_msgs/EGMChannelState.EGM_RUNNING constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_RUNNING = 4;
    /// @brief Original abb_egm_msgs/EGMChannelState.MOTORS_UNDEFINED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_MOTORS_UNDEFINED = 1;
    /// @brief Original abb_egm_msgs/EGMChannelState.MOTORS_ON constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_MOTORS_ON = 2;
    /// @brief Original abb_egm_msgs/EGMChannelState.MOTORS_OFF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_MOTORS_OFF = 3;
    /// @brief Original abb_egm_msgs/EGMChannelState.RAPID_UNDEFINED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_RAPID_UNDEFINED = 1;
    /// @brief Original abb_egm_msgs/EGMChannelState.RAPID_STOPPED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_RAPID_STOPPED = 2;
    /// @brief Original abb_egm_msgs/EGMChannelState.RAPID_RUNNING constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_RAPID_RUNNING = 3;
}
/// @brief Encode every field of complete abb_egm_msgs/EGMChannelState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_egm_msgsEGMChannelState(ref Ros1Abb_egm_msgsEGMChannelState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_egm_msgs/EGMChannelState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_egm_msgsEGMChannelState(const(ubyte)[] bytes, out Ros1Abb_egm_msgsEGMChannelState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete time value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Time
{
    /// @brief Original time.sec field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_sec;
    /// @brief Original time.nsec field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_nsec;
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
    enum codecIdentity = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
    /// @brief Validate the complete original time-domain invariant.
    /// @details Nanoseconds stay in the original normalized domain; no clock or unit conversion
    /// occurs.
    /// @return Zero or canonical error 22.
    uint validate() const @nogc nothrow
    {
        return this.field_nsec >= 1000000000 ? 22 : 0;
    }
}
/// @brief Encode every field of complete time.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Time(ref Ros1Time value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete time.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Time(const(ubyte)[] bytes, out Ros1Time value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete std_msgs/Header value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 16..80 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Std_msgsHeader
{
    /// @brief Original std_msgs/Header.seq field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_seq;
    /// @brief Original std_msgs/Header.stamp field.
    /// @details Original type time. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    Ros1Time field_stamp;
    /// @brief Original std_msgs/Header.frame_id field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_frame_id;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 80;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_ca1b8ffce276bdc4f86dccae58ede9f860ffe8778c6d4ffe0fb70675777801db";
}
/// @brief Encode every field of complete std_msgs/Header.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Std_msgsHeader(ref Ros1Std_msgsHeader value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete std_msgs/Header.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Std_msgsHeader(const(ubyte)[] bytes, out Ros1Std_msgsHeader value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_egm_msgs/EGMState value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 20..1380 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_egm_msgsEGMState
{
    /// @brief Original abb_egm_msgs/EGMState.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    Ros1Std_msgsHeader field_header;
    /// @brief Original abb_egm_msgs/EGMState.egm_channels field.
    /// @details Original type abb_egm_msgs/EGMChannelState. Shape sequence; bound/count 16
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros1Abb_egm_msgsEGMChannelState, 16) field_egm_channels;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1380;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_f7fe1d3924dc4e497c58aab27da69cfa6ab1a11f64b970b42e2d040a1312c4d8";
}
/// @brief Encode every field of complete abb_egm_msgs/EGMState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_egm_msgsEGMState(ref Ros1Abb_egm_msgsEGMState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_egm_msgs/EGMState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_egm_msgsEGMState(const(ubyte)[] bytes, out Ros1Abb_egm_msgsEGMState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/ConfData value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 16..16 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_msgsConfData
{
    /// @brief Original abb_rapid_msgs/ConfData.cf1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cf1 = 0;
    /// @brief Original abb_rapid_msgs/ConfData.cf4 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cf4 = 0;
    /// @brief Original abb_rapid_msgs/ConfData.cf6 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cf6 = 0;
    /// @brief Original abb_rapid_msgs/ConfData.cfx field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cfx = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 16;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_293eb01e8fa150a8a3c741626b76804255d0eb321a0484aac402201447392af2";
}
/// @brief Encode every field of complete abb_rapid_msgs/ConfData.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_msgsConfData(ref Ros1Abb_rapid_msgsConfData value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/ConfData.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_msgsConfData(const(ubyte)[] bytes, out Ros1Abb_rapid_msgsConfData value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/ExtJoint value.
/// @details Retain all 6 original fields and 0 constants. Canonical extent 24..24 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_msgsExtJoint
{
    /// @brief Original abb_rapid_msgs/ExtJoint.eax_a field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_eax_a = 0;
    /// @brief Original abb_rapid_msgs/ExtJoint.eax_b field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_eax_b = 0;
    /// @brief Original abb_rapid_msgs/ExtJoint.eax_c field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_eax_c = 0;
    /// @brief Original abb_rapid_msgs/ExtJoint.eax_d field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_eax_d = 0;
    /// @brief Original abb_rapid_msgs/ExtJoint.eax_e field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_eax_e = 0;
    /// @brief Original abb_rapid_msgs/ExtJoint.eax_f field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_eax_f = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 24;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 24;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_653a47c44ab85151fd9e6215901fb154962c32fe1082386733ec6205eaae613a";
}
/// @brief Encode every field of complete abb_rapid_msgs/ExtJoint.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_msgsExtJoint(ref Ros1Abb_rapid_msgsExtJoint value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/ExtJoint.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_msgsExtJoint(const(ubyte)[] bytes, out Ros1Abb_rapid_msgsExtJoint value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/RobJoint value.
/// @details Retain all 6 original fields and 0 constants. Canonical extent 24..24 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_msgsRobJoint
{
    /// @brief Original abb_rapid_msgs/RobJoint.rax_1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_rax_1 = 0;
    /// @brief Original abb_rapid_msgs/RobJoint.rax_2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_rax_2 = 0;
    /// @brief Original abb_rapid_msgs/RobJoint.rax_3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_rax_3 = 0;
    /// @brief Original abb_rapid_msgs/RobJoint.rax_4 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_rax_4 = 0;
    /// @brief Original abb_rapid_msgs/RobJoint.rax_5 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_rax_5 = 0;
    /// @brief Original abb_rapid_msgs/RobJoint.rax_6 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_rax_6 = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 24;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 24;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_5d45bc0efae8c4f5b26e4043fe537e163c4cc4c6458d1eac9be429c37aaf82f0";
}
/// @brief Encode every field of complete abb_rapid_msgs/RobJoint.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_msgsRobJoint(ref Ros1Abb_rapid_msgsRobJoint value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/RobJoint.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_msgsRobJoint(const(ubyte)[] bytes, out Ros1Abb_rapid_msgsRobJoint value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/JointTarget value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 48..48 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_msgsJointTarget
{
    /// @brief Original abb_rapid_msgs/JointTarget.robax field.
    /// @details Original type abb_rapid_msgs/RobJoint. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros1Abb_rapid_msgsRobJoint field_robax;
    /// @brief Original abb_rapid_msgs/JointTarget.extax field.
    /// @details Original type abb_rapid_msgs/ExtJoint. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros1Abb_rapid_msgsExtJoint field_extax;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 48;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 48;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_4a1cc175468da9204c5f2f399b76712617daec21a0d1675a6e73c84ff170dc24";
}
/// @brief Encode every field of complete abb_rapid_msgs/JointTarget.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_msgsJointTarget(ref Ros1Abb_rapid_msgsJointTarget value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/JointTarget.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_msgsJointTarget(const(ubyte)[] bytes, out Ros1Abb_rapid_msgsJointTarget value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/Pos value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 12..12 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_msgsPos
{
    /// @brief Original abb_rapid_msgs/Pos.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_x = 0;
    /// @brief Original abb_rapid_msgs/Pos.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_y = 0;
    /// @brief Original abb_rapid_msgs/Pos.z field.
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
    enum codecIdentity = "UWVMROS1_79edd4553fad8a8f833a3399e354c93538d4971bc3820cc14cf540e960356c01";
}
/// @brief Encode every field of complete abb_rapid_msgs/Pos.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_msgsPos(ref Ros1Abb_rapid_msgsPos value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/Pos.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_msgsPos(const(ubyte)[] bytes, out Ros1Abb_rapid_msgsPos value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/Orient value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 16..16 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_msgsOrient
{
    /// @brief Original abb_rapid_msgs/Orient.q1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_q1 = 0;
    /// @brief Original abb_rapid_msgs/Orient.q2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_q2 = 0;
    /// @brief Original abb_rapid_msgs/Orient.q3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_q3 = 0;
    /// @brief Original abb_rapid_msgs/Orient.q4 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_q4 = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 16;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_5a9c29323a5e3bc0c4c0afa7d305738cd52b49ae339e72f6b34b35b165f3d270";
}
/// @brief Encode every field of complete abb_rapid_msgs/Orient.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_msgsOrient(ref Ros1Abb_rapid_msgsOrient value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/Orient.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_msgsOrient(const(ubyte)[] bytes, out Ros1Abb_rapid_msgsOrient value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/LoadData value.
/// @details Retain all 6 original fields and 0 constants. Canonical extent 44..44 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_msgsLoadData
{
    /// @brief Original abb_rapid_msgs/LoadData.mass field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_mass = 0;
    /// @brief Original abb_rapid_msgs/LoadData.cog field.
    /// @details Original type abb_rapid_msgs/Pos. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros1Abb_rapid_msgsPos field_cog;
    /// @brief Original abb_rapid_msgs/LoadData.aom field.
    /// @details Original type abb_rapid_msgs/Orient. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros1Abb_rapid_msgsOrient field_aom;
    /// @brief Original abb_rapid_msgs/LoadData.ix field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ix = 0;
    /// @brief Original abb_rapid_msgs/LoadData.iy field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_iy = 0;
    /// @brief Original abb_rapid_msgs/LoadData.iz field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_iz = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 44;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 44;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_2cc985cc188a03e7c6de3d22310802cac1e0a748bae7f828d957436c1e03303d";
}
/// @brief Encode every field of complete abb_rapid_msgs/LoadData.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_msgsLoadData(ref Ros1Abb_rapid_msgsLoadData value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/LoadData.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_msgsLoadData(const(ubyte)[] bytes, out Ros1Abb_rapid_msgsLoadData value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/Pose value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 28..28 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_msgsPose
{
    /// @brief Original abb_rapid_msgs/Pose.trans field.
    /// @details Original type abb_rapid_msgs/Pos. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros1Abb_rapid_msgsPos field_trans;
    /// @brief Original abb_rapid_msgs/Pose.rot field.
    /// @details Original type abb_rapid_msgs/Orient. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros1Abb_rapid_msgsOrient field_rot;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 28;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 28;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_3e0cfbb7e25376639d1ff6e555a86e69f8c9ed177c1ef14b301d90b206a19c99";
}
/// @brief Encode every field of complete abb_rapid_msgs/Pose.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_msgsPose(ref Ros1Abb_rapid_msgsPose value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/Pose.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_msgsPose(const(ubyte)[] bytes, out Ros1Abb_rapid_msgsPose value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/RobTarget value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 68..68 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_msgsRobTarget
{
    /// @brief Original abb_rapid_msgs/RobTarget.trans field.
    /// @details Original type abb_rapid_msgs/Pos. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros1Abb_rapid_msgsPos field_trans;
    /// @brief Original abb_rapid_msgs/RobTarget.rot field.
    /// @details Original type abb_rapid_msgs/Orient. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros1Abb_rapid_msgsOrient field_rot;
    /// @brief Original abb_rapid_msgs/RobTarget.robconf field.
    /// @details Original type abb_rapid_msgs/ConfData. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros1Abb_rapid_msgsConfData field_robconf;
    /// @brief Original abb_rapid_msgs/RobTarget.extax field.
    /// @details Original type abb_rapid_msgs/ExtJoint. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros1Abb_rapid_msgsExtJoint field_extax;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 68;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 68;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_0abb3aee8b1303ccf9419f2774829d1231de3ac033e4b644d585f195972f09ce";
}
/// @brief Encode every field of complete abb_rapid_msgs/RobTarget.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_msgsRobTarget(ref Ros1Abb_rapid_msgsRobTarget value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/RobTarget.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_msgsRobTarget(const(ubyte)[] bytes, out Ros1Abb_rapid_msgsRobTarget value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/ToolData value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 73..73 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_msgsToolData
{
    /// @brief Original abb_rapid_msgs/ToolData.robhold field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_robhold;
    /// @brief Original abb_rapid_msgs/ToolData.tframe field.
    /// @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros1Abb_rapid_msgsPose field_tframe;
    /// @brief Original abb_rapid_msgs/ToolData.tload field.
    /// @details Original type abb_rapid_msgs/LoadData. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros1Abb_rapid_msgsLoadData field_tload;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 73;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 73;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_e2feaee4bda891f594542384d70883184262777e359fb037a648b7526ef76cba";
}
/// @brief Encode every field of complete abb_rapid_msgs/ToolData.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_msgsToolData(ref Ros1Abb_rapid_msgsToolData value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/ToolData.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_msgsToolData(const(ubyte)[] bytes, out Ros1Abb_rapid_msgsToolData value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/WObjData value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 62..574 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_msgsWObjData
{
    /// @brief Original abb_rapid_msgs/WObjData.robhold field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_robhold;
    /// @brief Original abb_rapid_msgs/WObjData.ufprog field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_ufprog;
    /// @brief Original abb_rapid_msgs/WObjData.ufmec field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_ufmec;
    /// @brief Original abb_rapid_msgs/WObjData.uframe field.
    /// @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros1Abb_rapid_msgsPose field_uframe;
    /// @brief Original abb_rapid_msgs/WObjData.oframe field.
    /// @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros1Abb_rapid_msgsPose field_oframe;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 62;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 574;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_6de4cf654a15ef3b63d9b0f3d0984438f21963c10ffd1b00238113b6fae8454f";
}
/// @brief Encode every field of complete abb_rapid_msgs/WObjData.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_msgsWObjData(ref Ros1Abb_rapid_msgsWObjData value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/WObjData.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_msgsWObjData(const(ubyte)[] bytes, out Ros1Abb_rapid_msgsWObjData value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/EGMActivateSettings value.
/// @details Retain all 8 original fields and 0 constants. Canonical extent 204..716 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings
{
    /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.tool field.
    /// @details Original type abb_rapid_msgs/ToolData. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros1Abb_rapid_msgsToolData field_tool;
    /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.wobj field.
    /// @details Original type abb_rapid_msgs/WObjData. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros1Abb_rapid_msgsWObjData field_wobj;
    /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.correction_frame field.
    /// @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros1Abb_rapid_msgsPose field_correction_frame;
    /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.sensor_frame field.
    /// @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros1Abb_rapid_msgsPose field_sensor_frame;
    /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.cond_min_max field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cond_min_max = 0;
    /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.lp_filter field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_lp_filter = 0;
    /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.sample_rate field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_sample_rate;
    /// @brief Original abb_rapid_sm_addin_msgs/EGMActivateSettings.max_speed_deviation field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_max_speed_deviation = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 204;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 716;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_c50be5682021e5d1a7a938e6fe3595cec7c0b0ae727070c0924da731c2c73d4d";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/EGMActivateSettings.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_sm_addin_msgsEGMActivateSettings(ref Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/EGMActivateSettings.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_sm_addin_msgsEGMActivateSettings(const(ubyte)[] bytes, out Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/EGMRunSettings value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 40..40 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_sm_addin_msgsEGMRunSettings
{
    /// @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.cond_time field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cond_time = 0;
    /// @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.ramp_in_time field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ramp_in_time = 0;
    /// @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.offset field.
    /// @details Original type abb_rapid_msgs/Pose. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros1Abb_rapid_msgsPose field_offset;
    /// @brief Original abb_rapid_sm_addin_msgs/EGMRunSettings.pos_corr_gain field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_pos_corr_gain = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 40;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 40;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_09a843da7aa89c60e6404f8d36b9a1a57f75e330329ac043449fd438b7029506";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/EGMRunSettings.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_sm_addin_msgsEGMRunSettings(ref Ros1Abb_rapid_sm_addin_msgsEGMRunSettings value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/EGMRunSettings.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_sm_addin_msgsEGMRunSettings(const(ubyte)[] bytes, out Ros1Abb_rapid_sm_addin_msgsEGMRunSettings value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/EGMSetupSettings value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..5 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings
{
    /// @brief Original abb_rapid_sm_addin_msgs/EGMSetupSettings.use_filtering field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_filtering;
    /// @brief Original abb_rapid_sm_addin_msgs/EGMSetupSettings.comm_timeout field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_comm_timeout = 0;
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
    enum codecIdentity = "UWVMROS1_ece31a7631bb3bb248aece52d4d5f6e190a94dcc3052b2761b759bed24513779";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/EGMSetupSettings.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_sm_addin_msgsEGMSetupSettings(ref Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/EGMSetupSettings.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_sm_addin_msgsEGMSetupSettings(const(ubyte)[] bytes, out Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/EGMStopSettings value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_sm_addin_msgsEGMStopSettings
{
    /// @brief Original abb_rapid_sm_addin_msgs/EGMStopSettings.ramp_out_time field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ramp_out_time = 0;
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
    enum codecIdentity = "UWVMROS1_64009cc452b9b2b12b3501d150e8c88c9cc07c796df06775195fa17c2a103a08";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/EGMStopSettings.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_sm_addin_msgsEGMStopSettings(ref Ros1Abb_rapid_sm_addin_msgsEGMStopSettings value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/EGMStopSettings.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_sm_addin_msgsEGMStopSettings(const(ubyte)[] bytes, out Ros1Abb_rapid_sm_addin_msgsEGMStopSettings value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/EGMSettings value.
/// @details Retain all 6 original fields and 0 constants. Canonical extent 255..767 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_sm_addin_msgsEGMSettings
{
    /// @brief Original abb_rapid_sm_addin_msgs/EGMSettings.allow_egm_motions field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_allow_egm_motions;
    /// @brief Original abb_rapid_sm_addin_msgs/EGMSettings.use_presync field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_presync;
    /// @brief Original abb_rapid_sm_addin_msgs/EGMSettings.setup_uc field.
    /// @details Original type abb_rapid_sm_addin_msgs/EGMSetupSettings. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings field_setup_uc;
    /// @brief Original abb_rapid_sm_addin_msgs/EGMSettings.activate field.
    /// @details Original type abb_rapid_sm_addin_msgs/EGMActivateSettings. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings field_activate;
    /// @brief Original abb_rapid_sm_addin_msgs/EGMSettings.run field.
    /// @details Original type abb_rapid_sm_addin_msgs/EGMRunSettings. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Ros1Abb_rapid_sm_addin_msgsEGMRunSettings field_run;
    /// @brief Original abb_rapid_sm_addin_msgs/EGMSettings.stop field.
    /// @details Original type abb_rapid_sm_addin_msgs/EGMStopSettings. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Ros1Abb_rapid_sm_addin_msgsEGMStopSettings field_stop;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 255;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 767;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_ebc0ca24a54451f863964c74bf0257b5b25546d0d4b8a75ac75c265e1d62317b";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/EGMSettings.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_sm_addin_msgsEGMSettings(ref Ros1Abb_rapid_sm_addin_msgsEGMSettings value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/EGMSettings.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_sm_addin_msgsEGMSettings(const(ubyte)[] bytes, out Ros1Abb_rapid_sm_addin_msgsEGMSettings value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/GetEGMSettingsRequest value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..68 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest
{
    /// @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsRequest.task field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_task;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 68;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_42cca857367e08720f989416d18d6a1f7d677f7e5bf49435b9735a9eb10a8f9c";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/GetEGMSettingsRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest(ref Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/GetEGMSettingsRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest(const(ubyte)[] bytes, out Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/GetEGMSettingsResponse value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 261..1285 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse
{
    /// @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.settings field.
    /// @details Original type abb_rapid_sm_addin_msgs/EGMSettings. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Abb_rapid_sm_addin_msgsEGMSettings field_settings;
    /// @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 261;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1285;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_094fd8b0b992c26d708bbd09952d36a3921ad5e5e66f45edb9d19af5ec3472bc";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse(ref Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/GetEGMSettingsResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse(const(ubyte)[] bytes, out Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/StateMachineState value.
/// @details Retain all 3 original fields and 12 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_sm_addin_msgsStateMachineState
{
    /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.rapid_task field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_rapid_task;
    /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.sm_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_sm_state;
    /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.egm_action field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_egm_action;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 518;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_9ef8cc3a0438ad892acc1a2f485039ca49abce6fedf40cc5d9b2fe03dd9490bb";
    /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_UNKNOWN constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SM_STATE_UNKNOWN = 1;
    /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_IDLE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SM_STATE_IDLE = 2;
    /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_INITIALIZE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SM_STATE_INITIALIZE = 3;
    /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_RUN_RAPID_ROUTINE
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SM_STATE_RUN_RAPID_ROUTINE = 4;
    /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_RUN_EGM_ROUTINE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SM_STATE_RUN_EGM_ROUTINE = 5;
    /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_UNKNOWN constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_ACTION_UNKNOWN = 1;
    /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_NONE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_ACTION_NONE = 2;
    /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_RUN_JOINT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_ACTION_RUN_JOINT = 3;
    /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_RUN_POSE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_ACTION_RUN_POSE = 4;
    /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_STOP constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_ACTION_STOP = 5;
    /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_START_STREAM constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_ACTION_START_STREAM = 6;
    /// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_STOP_STREAM constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_ACTION_STOP_STREAM = 7;
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/StateMachineState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_sm_addin_msgsStateMachineState(ref Ros1Abb_rapid_sm_addin_msgsStateMachineState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/StateMachineState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_sm_addin_msgsStateMachineState(const(ubyte)[] bytes, out Ros1Abb_rapid_sm_addin_msgsStateMachineState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/RuntimeState value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 20..8372 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_sm_addin_msgsRuntimeState
{
    /// @brief Original abb_rapid_sm_addin_msgs/RuntimeState.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    Ros1Std_msgsHeader field_header;
    /// @brief Original abb_rapid_sm_addin_msgs/RuntimeState.state_machines field.
    /// @details Original type abb_rapid_sm_addin_msgs/StateMachineState. Shape sequence;
    /// bound/count 16 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros1Abb_rapid_sm_addin_msgsStateMachineState, 16) field_state_machines;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 8372;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_50d7eab2eed3ce0b55160e85b44b4108d966290f6b8f126980ee452846f3660c";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/RuntimeState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_sm_addin_msgsRuntimeState(ref Ros1Abb_rapid_sm_addin_msgsRuntimeState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/RuntimeState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_sm_addin_msgsRuntimeState(const(ubyte)[] bytes, out Ros1Abb_rapid_sm_addin_msgsRuntimeState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/SetEGMSettingsRequest value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 259..835 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest
{
    /// @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.task field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_task;
    /// @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.settings field.
    /// @details Original type abb_rapid_sm_addin_msgs/EGMSettings. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Abb_rapid_sm_addin_msgsEGMSettings field_settings;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 259;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 835;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_fe85c34f8dff2c0a547f89385d75771af13a03d997b880ab7be2eb84ea800155";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest(ref Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/SetEGMSettingsRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest(const(ubyte)[] bytes, out Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/SetEGMSettingsResponse value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse
{
    /// @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 518;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_c0d4e594a51a6cdd245ad03b6e27bbdc298c5c9fbe26cc25fa3594deef9b2591";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse(ref Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/SetEGMSettingsResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse(const(ubyte)[] bytes, out Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..584 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest
{
    /// @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.task field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_task;
    /// @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.routine field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_routine;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 584;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_b16ba3e98ee1d45864532b01f914746f041e49463b9330ef6056e427d199a5a3";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest(ref Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest(const(ubyte)[] bytes, out Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse
{
    /// @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 518;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_44de2385f12a8612fa75ca7c3f97b07f22d04e920bdeca0f0bd7fed5322c680e";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse(ref Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse(const(ubyte)[] bytes, out Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/SetSGCommandRequest value.
/// @details Retain all 3 original fields and 15 constants. Canonical extent 9..73 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest
{
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.task field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_task;
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.command field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_command;
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.target_position field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_target_position = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 9;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 73;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_e39d7fee66c1efb9ea963216823f6e10bd632d78634d8c47f3283a1a1779f0c2";
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_UNKNOWN constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_UNKNOWN = 1;
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_NONE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_NONE = 2;
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_INITIALIZE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_INITIALIZE = 3;
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_CALIBRATE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_CALIBRATE = 4;
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_MOVE_TO constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_MOVE_TO = 5;
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_GRIP_IN constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_GRIP_IN = 6;
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_GRIP_OUT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_GRIP_OUT = 7;
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_ON_1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_BLOW_ON_1 = 8;
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_ON_2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_BLOW_ON_2 = 9;
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_OFF_1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_BLOW_OFF_1 = 10;
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_OFF_2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_BLOW_OFF_2 = 11;
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_ON_1 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_VACUUM_ON_1 = 12;
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_ON_2 constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_VACUUM_ON_2 = 13;
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_OFF_1
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_VACUUM_OFF_1 = 14;
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_OFF_2
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_VACUUM_OFF_2 = 15;
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/SetSGCommandRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_sm_addin_msgsSetSGCommandRequest(ref Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/SetSGCommandRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_sm_addin_msgsSetSGCommandRequest(const(ubyte)[] bytes, out Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/SetSGCommandResponse value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse
{
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 518;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_2f22b2098d86dd0764277247eb7f64dccecebf0cddce85654b01c1928eb9c192";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/SetSGCommandResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_rapid_sm_addin_msgsSetSGCommandResponse(ref Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/SetSGCommandResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_rapid_sm_addin_msgsSetSGCommandResponse(const(ubyte)[] bytes, out Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/GetFileContentsRequest value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..516 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsGetFileContentsRequest
{
    /// @brief Original abb_robot_msgs/GetFileContentsRequest.filename field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_filename;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 516;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_75f5802b385cc1efb524fadea657fda1d5cc4298c5720222d33cd3dd39656f21";
}
/// @brief Encode every field of complete abb_robot_msgs/GetFileContentsRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsGetFileContentsRequest(ref Ros1Abb_robot_msgsGetFileContentsRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/GetFileContentsRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsGetFileContentsRequest(const(ubyte)[] bytes, out Ros1Abb_robot_msgsGetFileContentsRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/GetFileContentsResponse value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 10..4618 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsGetFileContentsResponse
{
    /// @brief Original abb_robot_msgs/GetFileContentsResponse.contents field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Text!(4096, false) field_contents;
    /// @brief Original abb_robot_msgs/GetFileContentsResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/GetFileContentsResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 10;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4618;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_693b53ed168f81a7c93ac8083977c4f8bd6f4a3999d079f5b47029699ba68fdb";
}
/// @brief Encode every field of complete abb_robot_msgs/GetFileContentsResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsGetFileContentsResponse(ref Ros1Abb_robot_msgsGetFileContentsResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/GetFileContentsResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsGetFileContentsResponse(const(ubyte)[] bytes, out Ros1Abb_robot_msgsGetFileContentsResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/GetIOSignalRequest value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..516 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsGetIOSignalRequest
{
    /// @brief Original abb_robot_msgs/GetIOSignalRequest.signal field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_signal;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 516;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_d98f7577756b476cac0dd325d45f333fcd2b735df7dce58fb660790b5a91f83b";
}
/// @brief Encode every field of complete abb_robot_msgs/GetIOSignalRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsGetIOSignalRequest(ref Ros1Abb_robot_msgsGetIOSignalRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/GetIOSignalRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsGetIOSignalRequest(const(ubyte)[] bytes, out Ros1Abb_robot_msgsGetIOSignalRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/GetIOSignalResponse value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 10..1034 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsGetIOSignalResponse
{
    /// @brief Original abb_robot_msgs/GetIOSignalResponse.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_value;
    /// @brief Original abb_robot_msgs/GetIOSignalResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/GetIOSignalResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 10;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1034;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_10a66146c4815b0d758ec81dde1c552695c97a8727ee995299018b23f129d79e";
}
/// @brief Encode every field of complete abb_robot_msgs/GetIOSignalResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsGetIOSignalResponse(ref Ros1Abb_robot_msgsGetIOSignalResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/GetIOSignalResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsGetIOSignalResponse(const(ubyte)[] bytes, out Ros1Abb_robot_msgsGetIOSignalResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/RAPIDSymbolPath value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 12..204 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsRAPIDSymbolPath
{
    /// @brief Original abb_robot_msgs/RAPIDSymbolPath.task field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_task;
    /// @brief Original abb_robot_msgs/RAPIDSymbolPath.module field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_module;
    /// @brief Original abb_robot_msgs/RAPIDSymbolPath.symbol field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_symbol;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 204;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_07308d9ce1e71a02f5cc3546cdbaaa0b24a06534a55aa3ee3354b498038faad2";
}
/// @brief Encode every field of complete abb_robot_msgs/RAPIDSymbolPath.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsRAPIDSymbolPath(ref Ros1Abb_robot_msgsRAPIDSymbolPath value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/RAPIDSymbolPath.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsRAPIDSymbolPath(const(ubyte)[] bytes, out Ros1Abb_robot_msgsRAPIDSymbolPath value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/GetRAPIDBoolRequest value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsGetRAPIDBoolRequest
{
    /// @brief Original abb_robot_msgs/GetRAPIDBoolRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Abb_robot_msgsRAPIDSymbolPath field_path;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 204;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_46e49c0d6796175d0c56460dd4c7d2557deaa8db4f1a3bec40b53636d3b44b96";
}
/// @brief Encode every field of complete abb_robot_msgs/GetRAPIDBoolRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsGetRAPIDBoolRequest(ref Ros1Abb_robot_msgsGetRAPIDBoolRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/GetRAPIDBoolRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsGetRAPIDBoolRequest(const(ubyte)[] bytes, out Ros1Abb_robot_msgsGetRAPIDBoolRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/GetRAPIDBoolResponse value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 7..519 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsGetRAPIDBoolResponse
{
    /// @brief Original abb_robot_msgs/GetRAPIDBoolResponse.value field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_value;
    /// @brief Original abb_robot_msgs/GetRAPIDBoolResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/GetRAPIDBoolResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 7;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 519;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_bfe21e95cb79f1d9bc1bc1dc2f61c744a2a7dc49e5a5ed07b6c8619344b97b3f";
}
/// @brief Encode every field of complete abb_robot_msgs/GetRAPIDBoolResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsGetRAPIDBoolResponse(ref Ros1Abb_robot_msgsGetRAPIDBoolResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/GetRAPIDBoolResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsGetRAPIDBoolResponse(const(ubyte)[] bytes, out Ros1Abb_robot_msgsGetRAPIDBoolResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/GetRAPIDDnumRequest value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsGetRAPIDDnumRequest
{
    /// @brief Original abb_robot_msgs/GetRAPIDDnumRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Abb_robot_msgsRAPIDSymbolPath field_path;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 204;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_9058d8774de0da657344a00d75a7f75878da2b0453bf25708bc8ed7f45c90c9d";
}
/// @brief Encode every field of complete abb_robot_msgs/GetRAPIDDnumRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsGetRAPIDDnumRequest(ref Ros1Abb_robot_msgsGetRAPIDDnumRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/GetRAPIDDnumRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsGetRAPIDDnumRequest(const(ubyte)[] bytes, out Ros1Abb_robot_msgsGetRAPIDDnumRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/GetRAPIDDnumResponse value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 14..526 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsGetRAPIDDnumResponse
{
    /// @brief Original abb_robot_msgs/GetRAPIDDnumResponse.value field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_value = 0;
    /// @brief Original abb_robot_msgs/GetRAPIDDnumResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/GetRAPIDDnumResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 14;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 526;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_9c209b4b12d733e33b76cc33ae93b6d561ce1eb7f8864429a56bd073317a01b3";
}
/// @brief Encode every field of complete abb_robot_msgs/GetRAPIDDnumResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsGetRAPIDDnumResponse(ref Ros1Abb_robot_msgsGetRAPIDDnumResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/GetRAPIDDnumResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsGetRAPIDDnumResponse(const(ubyte)[] bytes, out Ros1Abb_robot_msgsGetRAPIDDnumResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/GetRAPIDNumRequest value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsGetRAPIDNumRequest
{
    /// @brief Original abb_robot_msgs/GetRAPIDNumRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Abb_robot_msgsRAPIDSymbolPath field_path;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 204;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_a316395c8a19b7c0a9c3a555e625fffc7d647c7b567f38c53b1c3735b50ee910";
}
/// @brief Encode every field of complete abb_robot_msgs/GetRAPIDNumRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsGetRAPIDNumRequest(ref Ros1Abb_robot_msgsGetRAPIDNumRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/GetRAPIDNumRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsGetRAPIDNumRequest(const(ubyte)[] bytes, out Ros1Abb_robot_msgsGetRAPIDNumRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/GetRAPIDNumResponse value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 10..522 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsGetRAPIDNumResponse
{
    /// @brief Original abb_robot_msgs/GetRAPIDNumResponse.value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_value = 0;
    /// @brief Original abb_robot_msgs/GetRAPIDNumResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/GetRAPIDNumResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 10;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 522;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_1573cba9a9046a6b304a49e3a77266fa0d6f615d2ea9a24692c25616970fd9b0";
}
/// @brief Encode every field of complete abb_robot_msgs/GetRAPIDNumResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsGetRAPIDNumResponse(ref Ros1Abb_robot_msgsGetRAPIDNumResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/GetRAPIDNumResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsGetRAPIDNumResponse(const(ubyte)[] bytes, out Ros1Abb_robot_msgsGetRAPIDNumResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/GetRAPIDStringRequest value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsGetRAPIDStringRequest
{
    /// @brief Original abb_robot_msgs/GetRAPIDStringRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Abb_robot_msgsRAPIDSymbolPath field_path;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 204;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_56514142e9e064aa43d09078b49ed8ee0366189727c35a9bc130b35007da4c9c";
}
/// @brief Encode every field of complete abb_robot_msgs/GetRAPIDStringRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsGetRAPIDStringRequest(ref Ros1Abb_robot_msgsGetRAPIDStringRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/GetRAPIDStringRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsGetRAPIDStringRequest(const(ubyte)[] bytes, out Ros1Abb_robot_msgsGetRAPIDStringRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/GetRAPIDStringResponse value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 10..1034 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsGetRAPIDStringResponse
{
    /// @brief Original abb_robot_msgs/GetRAPIDStringResponse.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_value;
    /// @brief Original abb_robot_msgs/GetRAPIDStringResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/GetRAPIDStringResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 10;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1034;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_d1188827af3c307a721f8128b6f14fa6020f3187afce8a4162ce6562cdd1c854";
}
/// @brief Encode every field of complete abb_robot_msgs/GetRAPIDStringResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsGetRAPIDStringResponse(ref Ros1Abb_robot_msgsGetRAPIDStringResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/GetRAPIDStringResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsGetRAPIDStringResponse(const(ubyte)[] bytes, out Ros1Abb_robot_msgsGetRAPIDStringResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/GetRAPIDSymbolRequest value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsGetRAPIDSymbolRequest
{
    /// @brief Original abb_robot_msgs/GetRAPIDSymbolRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Abb_robot_msgsRAPIDSymbolPath field_path;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 204;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_31302ad912a8ff39b56a429bc9dae22cbfc2c2101b8cd05162d00d9206aecf5b";
}
/// @brief Encode every field of complete abb_robot_msgs/GetRAPIDSymbolRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsGetRAPIDSymbolRequest(ref Ros1Abb_robot_msgsGetRAPIDSymbolRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/GetRAPIDSymbolRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsGetRAPIDSymbolRequest(const(ubyte)[] bytes, out Ros1Abb_robot_msgsGetRAPIDSymbolRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/GetRAPIDSymbolResponse value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 10..1034 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsGetRAPIDSymbolResponse
{
    /// @brief Original abb_robot_msgs/GetRAPIDSymbolResponse.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_value;
    /// @brief Original abb_robot_msgs/GetRAPIDSymbolResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/GetRAPIDSymbolResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 10;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1034;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_182dc465ea5fb9543791b6fb76520313cee1ed472ab0296c8ef7a9ed3d4d110f";
}
/// @brief Encode every field of complete abb_robot_msgs/GetRAPIDSymbolResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsGetRAPIDSymbolResponse(ref Ros1Abb_robot_msgsGetRAPIDSymbolResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/GetRAPIDSymbolResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsGetRAPIDSymbolResponse(const(ubyte)[] bytes, out Ros1Abb_robot_msgsGetRAPIDSymbolResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/GetRobotControllerDescriptionRequest value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest
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
    enum codecIdentity = "UWVMROS1_bc5f87f4d0f33cbc640c8188fbb15c9b0f43b3067f2406700d6f5bd2475089b6";
}
/// @brief Encode every field of complete abb_robot_msgs/GetRobotControllerDescriptionRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsGetRobotControllerDescriptionRequest(ref Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest value,
     ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/GetRobotControllerDescriptionRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsGetRobotControllerDescriptionRequest(const(ubyte)[] bytes, out Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/GetRobotControllerDescriptionResponse value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 10..4618 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse
{
    /// @brief Original abb_robot_msgs/GetRobotControllerDescriptionResponse.description field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Text!(4096, false) field_description;
    /// @brief Original abb_robot_msgs/GetRobotControllerDescriptionResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/GetRobotControllerDescriptionResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 10;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4618;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_7db41283fbe12a010e526b87d77a5bb7faecdf85595ef2dc13f14bfed56b6e39";
}
/// @brief Encode every field of complete abb_robot_msgs/GetRobotControllerDescriptionResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsGetRobotControllerDescriptionResponse(ref Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse value,
     ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/GetRobotControllerDescriptionResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsGetRobotControllerDescriptionResponse(const(ubyte)[] bytes, out Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/GetSpeedRatioRequest value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsGetSpeedRatioRequest
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
    enum codecIdentity = "UWVMROS1_82230aebf6fa923e09bcd413ecb3b4803a6f1cfd3e8334e0ce0c496b73008373";
}
/// @brief Encode every field of complete abb_robot_msgs/GetSpeedRatioRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsGetSpeedRatioRequest(ref Ros1Abb_robot_msgsGetSpeedRatioRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/GetSpeedRatioRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsGetSpeedRatioRequest(const(ubyte)[] bytes, out Ros1Abb_robot_msgsGetSpeedRatioRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/GetSpeedRatioResponse value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 7..519 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsGetSpeedRatioResponse
{
    /// @brief Original abb_robot_msgs/GetSpeedRatioResponse.speed_ratio field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_speed_ratio;
    /// @brief Original abb_robot_msgs/GetSpeedRatioResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/GetSpeedRatioResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 7;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 519;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_7784360ddafa1b8ad9626fde0afa2b2335f6a294507036c3aee953df99e91940";
}
/// @brief Encode every field of complete abb_robot_msgs/GetSpeedRatioResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsGetSpeedRatioResponse(ref Ros1Abb_robot_msgsGetSpeedRatioResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/GetSpeedRatioResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsGetSpeedRatioResponse(const(ubyte)[] bytes, out Ros1Abb_robot_msgsGetSpeedRatioResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/MechanicalUnitState value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..69 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsMechanicalUnitState
{
    /// @brief Original abb_robot_msgs/MechanicalUnitState.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_name;
    /// @brief Original abb_robot_msgs/MechanicalUnitState.activated field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_activated;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 5;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 69;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_872cc6e8bdf32426bb9e24322c951452aab6ebcbc1f2998f4fb19c34abece8fa";
}
/// @brief Encode every field of complete abb_robot_msgs/MechanicalUnitState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsMechanicalUnitState(ref Ros1Abb_robot_msgsMechanicalUnitState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/MechanicalUnitState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsMechanicalUnitState(const(ubyte)[] bytes, out Ros1Abb_robot_msgsMechanicalUnitState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/RAPIDTaskState value.
/// @details Retain all 4 original fields and 5 constants. Canonical extent 7..71 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsRAPIDTaskState
{
    /// @brief Original abb_robot_msgs/RAPIDTaskState.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_name;
    /// @brief Original abb_robot_msgs/RAPIDTaskState.activated field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_activated;
    /// @brief Original abb_robot_msgs/RAPIDTaskState.execution_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_execution_state;
    /// @brief Original abb_robot_msgs/RAPIDTaskState.motion_task field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_motion_task;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 7;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 71;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_ab1245cc352efa91cdcc8de801392857e25a4101a141439554b761525b31b947";
    /// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_UNKNOWN constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EXECUTION_STATE_UNKNOWN = 1;
    /// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_READY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EXECUTION_STATE_READY = 2;
    /// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_STOPPED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EXECUTION_STATE_STOPPED = 3;
    /// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_STARTED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EXECUTION_STATE_STARTED = 4;
    /// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_UNINITIALIZED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EXECUTION_STATE_UNINITIALIZED = 5;
}
/// @brief Encode every field of complete abb_robot_msgs/RAPIDTaskState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsRAPIDTaskState(ref Ros1Abb_robot_msgsRAPIDTaskState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/RAPIDTaskState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsRAPIDTaskState(const(ubyte)[] bytes, out Ros1Abb_robot_msgsRAPIDTaskState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/ServiceResponses value.
/// @details Retain all 0 original fields and 32 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsServiceResponses
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
    enum codecIdentity = "UWVMROS1_f0a3c4b160bf0ca52dbbb4e26d2c8a7d3c6a40ac70787ba59cf181945e4276d4";
    /// @brief Original abb_robot_msgs/ServiceResponses.SUCCESS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_SUCCESS = "";
    /// @brief Original abb_robot_msgs/ServiceResponses.RC_SUCCESS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_SUCCESS = 1;
    /// @brief Original abb_robot_msgs/ServiceResponses.FAILED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_FAILED = "Service failed (e.g. timeout or resource not found, see the DEBUG log for details)";
    /// @brief Original abb_robot_msgs/ServiceResponses.RC_FAILED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_FAILED = 2;
    /// @brief Original abb_robot_msgs/ServiceResponses.SERVER_IS_BUSY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_SERVER_IS_BUSY = "Server is busy";
    /// @brief Original abb_robot_msgs/ServiceResponses.RC_SERVER_IS_BUSY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_SERVER_IS_BUSY = 1001;
    /// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_FILENAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_EMPTY_FILENAME = "Filename is empty";
    /// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_FILENAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_EMPTY_FILENAME = 2001;
    /// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_SIGNAL_NAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_EMPTY_SIGNAL_NAME = "Signal name is empty";
    /// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_SIGNAL_NAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_EMPTY_SIGNAL_NAME = 2002;
    /// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_TASK_NAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_EMPTY_RAPID_TASK_NAME = "RAPID task name is empty";
    /// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_TASK_NAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_EMPTY_RAPID_TASK_NAME = 2003;
    /// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_MODULE_NAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_EMPTY_RAPID_MODULE_NAME = "RAPID module name is empty";
    /// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_MODULE_NAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_EMPTY_RAPID_MODULE_NAME = 2004;
    /// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_SYMBOL_NAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_EMPTY_RAPID_SYMBOL_NAME = "RAPID symbol name is empty";
    /// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_SYMBOL_NAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_EMPTY_RAPID_SYMBOL_NAME = 2005;
    /// @brief Original abb_robot_msgs/ServiceResponses.NOT_IN_AUTO_MODE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_NOT_IN_AUTO_MODE = "Robot controller is not in AUTO mode";
    /// @brief Original abb_robot_msgs/ServiceResponses.RC_NOT_IN_AUTO_MODE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_NOT_IN_AUTO_MODE = 3001;
    /// @brief Original abb_robot_msgs/ServiceResponses.MOTORS_ARE_OFF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_MOTORS_ARE_OFF = "Motors are off";
    /// @brief Original abb_robot_msgs/ServiceResponses.RC_MOTORS_ARE_OFF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_MOTORS_ARE_OFF = 3002;
    /// @brief Original abb_robot_msgs/ServiceResponses.MOTORS_ARE_ON constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_MOTORS_ARE_ON = "Motors are on";
    /// @brief Original abb_robot_msgs/ServiceResponses.RC_MOTORS_ARE_ON constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_MOTORS_ARE_ON = 3003;
    /// @brief Original abb_robot_msgs/ServiceResponses.RAPID_NOT_STOPPED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_RAPID_NOT_STOPPED = "RAPID has not been stopped";
    /// @brief Original abb_robot_msgs/ServiceResponses.RC_RAPID_NOT_STOPPED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_RAPID_NOT_STOPPED = 3004;
    /// @brief Original abb_robot_msgs/ServiceResponses.RAPID_NOT_RUNNING constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_RAPID_NOT_RUNNING = "RAPID is not running";
    /// @brief Original abb_robot_msgs/ServiceResponses.RC_RAPID_NOT_RUNNING constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_RAPID_NOT_RUNNING = 3005;
    /// @brief Original abb_robot_msgs/ServiceResponses.SM_RUNTIME_STATES_MISSING constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_SM_RUNTIME_STATES_MISSING = "No runtime states received for any StateMachine Add-In instance";
    /// @brief Original abb_robot_msgs/ServiceResponses.RC_SM_RUNTIME_STATES_MISSING constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_SM_RUNTIME_STATES_MISSING = 4001;
    /// @brief Original abb_robot_msgs/ServiceResponses.SM_UNKNOWN_RAPID_TASK constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_SM_UNKNOWN_RAPID_TASK = "RAPID task not found among known StateMachine Add-In instances";
    /// @brief Original abb_robot_msgs/ServiceResponses.RC_SM_UNKNOWN_RAPID_TASK constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_SM_UNKNOWN_RAPID_TASK = 4002;
    /// @brief Original abb_robot_msgs/ServiceResponses.SM_UNINITIALIZED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_SM_UNINITIALIZED = "StateMachine Add-In instance has not been initialized";
    /// @brief Original abb_robot_msgs/ServiceResponses.RC_SM_UNINITIALIZED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_SM_UNINITIALIZED = 4003;
}
/// @brief Encode every field of complete abb_robot_msgs/ServiceResponses.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsServiceResponses(ref Ros1Abb_robot_msgsServiceResponses value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/ServiceResponses.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsServiceResponses(const(ubyte)[] bytes, out Ros1Abb_robot_msgsServiceResponses value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/SetFileContentsRequest value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..4616 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsSetFileContentsRequest
{
    /// @brief Original abb_robot_msgs/SetFileContentsRequest.filename field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_filename;
    /// @brief Original abb_robot_msgs/SetFileContentsRequest.contents field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Text!(4096, false) field_contents;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4616;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_f764448d9754e9ebc5e5fab64f0c8ebb01c534ec7b95751ed7d58e8ce0bd3012";
}
/// @brief Encode every field of complete abb_robot_msgs/SetFileContentsRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsSetFileContentsRequest(ref Ros1Abb_robot_msgsSetFileContentsRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/SetFileContentsRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsSetFileContentsRequest(const(ubyte)[] bytes, out Ros1Abb_robot_msgsSetFileContentsRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/SetFileContentsResponse value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsSetFileContentsResponse
{
    /// @brief Original abb_robot_msgs/SetFileContentsResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/SetFileContentsResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 518;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_3de2a08b8e158e0612898880d6d9c98f1995828eb53bd5639b47f730c6cbefd0";
}
/// @brief Encode every field of complete abb_robot_msgs/SetFileContentsResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsSetFileContentsResponse(ref Ros1Abb_robot_msgsSetFileContentsResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/SetFileContentsResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsSetFileContentsResponse(const(ubyte)[] bytes, out Ros1Abb_robot_msgsSetFileContentsResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/SetIOSignalRequest value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..1032 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsSetIOSignalRequest
{
    /// @brief Original abb_robot_msgs/SetIOSignalRequest.signal field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_signal;
    /// @brief Original abb_robot_msgs/SetIOSignalRequest.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_value;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1032;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_57a0197e2a5de7efd2fc91d945d699be24559baec6651179a1256f1d9d35bbc9";
}
/// @brief Encode every field of complete abb_robot_msgs/SetIOSignalRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsSetIOSignalRequest(ref Ros1Abb_robot_msgsSetIOSignalRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/SetIOSignalRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsSetIOSignalRequest(const(ubyte)[] bytes, out Ros1Abb_robot_msgsSetIOSignalRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/SetIOSignalResponse value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsSetIOSignalResponse
{
    /// @brief Original abb_robot_msgs/SetIOSignalResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/SetIOSignalResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 518;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_becc0f844ce6a7fabd8a683175edd8033ba5c943c2de152991755ee112b460e5";
}
/// @brief Encode every field of complete abb_robot_msgs/SetIOSignalResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsSetIOSignalResponse(ref Ros1Abb_robot_msgsSetIOSignalResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/SetIOSignalResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsSetIOSignalResponse(const(ubyte)[] bytes, out Ros1Abb_robot_msgsSetIOSignalResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/SetRAPIDBoolRequest value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 13..205 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsSetRAPIDBoolRequest
{
    /// @brief Original abb_robot_msgs/SetRAPIDBoolRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Abb_robot_msgsRAPIDSymbolPath field_path;
    /// @brief Original abb_robot_msgs/SetRAPIDBoolRequest.value field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_value;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 13;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 205;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_d8e5420678fe5feeffa20ad9ab8431678ec346f764c94871c4496c62e9dd8e8d";
}
/// @brief Encode every field of complete abb_robot_msgs/SetRAPIDBoolRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsSetRAPIDBoolRequest(ref Ros1Abb_robot_msgsSetRAPIDBoolRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/SetRAPIDBoolRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsSetRAPIDBoolRequest(const(ubyte)[] bytes, out Ros1Abb_robot_msgsSetRAPIDBoolRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/SetRAPIDBoolResponse value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsSetRAPIDBoolResponse
{
    /// @brief Original abb_robot_msgs/SetRAPIDBoolResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/SetRAPIDBoolResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 518;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_da2ae1231cb0c1ec452fb2733d5c99dcae78ad0bfd10771241708931b271bf13";
}
/// @brief Encode every field of complete abb_robot_msgs/SetRAPIDBoolResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsSetRAPIDBoolResponse(ref Ros1Abb_robot_msgsSetRAPIDBoolResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/SetRAPIDBoolResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsSetRAPIDBoolResponse(const(ubyte)[] bytes, out Ros1Abb_robot_msgsSetRAPIDBoolResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/SetRAPIDDnumRequest value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 20..212 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsSetRAPIDDnumRequest
{
    /// @brief Original abb_robot_msgs/SetRAPIDDnumRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Abb_robot_msgsRAPIDSymbolPath field_path;
    /// @brief Original abb_robot_msgs/SetRAPIDDnumRequest.value field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_value = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 212;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_0f17e3068f86bca6effb99f3bc850234b0163028f372340c450fce31657b9cf9";
}
/// @brief Encode every field of complete abb_robot_msgs/SetRAPIDDnumRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsSetRAPIDDnumRequest(ref Ros1Abb_robot_msgsSetRAPIDDnumRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/SetRAPIDDnumRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsSetRAPIDDnumRequest(const(ubyte)[] bytes, out Ros1Abb_robot_msgsSetRAPIDDnumRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/SetRAPIDDnumResponse value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsSetRAPIDDnumResponse
{
    /// @brief Original abb_robot_msgs/SetRAPIDDnumResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/SetRAPIDDnumResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 518;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_1905aed9683e03494baa54627ddbaf4aed0b92357823c0c042f9b7c6a970c8ed";
}
/// @brief Encode every field of complete abb_robot_msgs/SetRAPIDDnumResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsSetRAPIDDnumResponse(ref Ros1Abb_robot_msgsSetRAPIDDnumResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/SetRAPIDDnumResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsSetRAPIDDnumResponse(const(ubyte)[] bytes, out Ros1Abb_robot_msgsSetRAPIDDnumResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/SetRAPIDNumRequest value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..208 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsSetRAPIDNumRequest
{
    /// @brief Original abb_robot_msgs/SetRAPIDNumRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Abb_robot_msgsRAPIDSymbolPath field_path;
    /// @brief Original abb_robot_msgs/SetRAPIDNumRequest.value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_value = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 208;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_9982d02cb0b6ee5813f5fb38072d665226b7885aeb90517af881f4fc990f392f";
}
/// @brief Encode every field of complete abb_robot_msgs/SetRAPIDNumRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsSetRAPIDNumRequest(ref Ros1Abb_robot_msgsSetRAPIDNumRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/SetRAPIDNumRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsSetRAPIDNumRequest(const(ubyte)[] bytes, out Ros1Abb_robot_msgsSetRAPIDNumRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/SetRAPIDNumResponse value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsSetRAPIDNumResponse
{
    /// @brief Original abb_robot_msgs/SetRAPIDNumResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/SetRAPIDNumResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 518;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_af1181242b4afdb6d387d39c24d0bc343e872fb9ab21c0ec1e451785786a4e64";
}
/// @brief Encode every field of complete abb_robot_msgs/SetRAPIDNumResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsSetRAPIDNumResponse(ref Ros1Abb_robot_msgsSetRAPIDNumResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/SetRAPIDNumResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsSetRAPIDNumResponse(const(ubyte)[] bytes, out Ros1Abb_robot_msgsSetRAPIDNumResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/SetRAPIDStringRequest value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..720 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsSetRAPIDStringRequest
{
    /// @brief Original abb_robot_msgs/SetRAPIDStringRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Abb_robot_msgsRAPIDSymbolPath field_path;
    /// @brief Original abb_robot_msgs/SetRAPIDStringRequest.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_value;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 720;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_e06839324f8abfa8780b683386f87bab1ec04f1e6463e63c0599f5c2f8a75f0c";
}
/// @brief Encode every field of complete abb_robot_msgs/SetRAPIDStringRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsSetRAPIDStringRequest(ref Ros1Abb_robot_msgsSetRAPIDStringRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/SetRAPIDStringRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsSetRAPIDStringRequest(const(ubyte)[] bytes, out Ros1Abb_robot_msgsSetRAPIDStringRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/SetRAPIDStringResponse value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsSetRAPIDStringResponse
{
    /// @brief Original abb_robot_msgs/SetRAPIDStringResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/SetRAPIDStringResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 518;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_e175bdff5a150722b8c50cf2e1c0f28a99289a0b148339efdee4b034ea3b96b4";
}
/// @brief Encode every field of complete abb_robot_msgs/SetRAPIDStringResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsSetRAPIDStringResponse(ref Ros1Abb_robot_msgsSetRAPIDStringResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/SetRAPIDStringResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsSetRAPIDStringResponse(const(ubyte)[] bytes, out Ros1Abb_robot_msgsSetRAPIDStringResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/SetRAPIDSymbolRequest value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..720 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsSetRAPIDSymbolRequest
{
    /// @brief Original abb_robot_msgs/SetRAPIDSymbolRequest.path field.
    /// @details Original type abb_robot_msgs/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Abb_robot_msgsRAPIDSymbolPath field_path;
    /// @brief Original abb_robot_msgs/SetRAPIDSymbolRequest.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_value;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 720;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_0654a5a8e5ec42f4feab54b086a008e02a74d44df65d2fcf60f007736e3fec7d";
}
/// @brief Encode every field of complete abb_robot_msgs/SetRAPIDSymbolRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsSetRAPIDSymbolRequest(ref Ros1Abb_robot_msgsSetRAPIDSymbolRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/SetRAPIDSymbolRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsSetRAPIDSymbolRequest(const(ubyte)[] bytes, out Ros1Abb_robot_msgsSetRAPIDSymbolRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/SetRAPIDSymbolResponse value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsSetRAPIDSymbolResponse
{
    /// @brief Original abb_robot_msgs/SetRAPIDSymbolResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/SetRAPIDSymbolResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 518;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_a4ca0a8821337d1f16ba1f2ad2b232aceaba419308ca03b27f43dac427a32846";
}
/// @brief Encode every field of complete abb_robot_msgs/SetRAPIDSymbolResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsSetRAPIDSymbolResponse(ref Ros1Abb_robot_msgsSetRAPIDSymbolResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/SetRAPIDSymbolResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsSetRAPIDSymbolResponse(const(ubyte)[] bytes, out Ros1Abb_robot_msgsSetRAPIDSymbolResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/SetSpeedRatioRequest value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsSetSpeedRatioRequest
{
    /// @brief Original abb_robot_msgs/SetSpeedRatioRequest.speed_ratio field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_speed_ratio;
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
    enum codecIdentity = "UWVMROS1_a6ac368d243d488901b03d5e4303600d5f0eaf62150801103e5f5f9c0863fab5";
}
/// @brief Encode every field of complete abb_robot_msgs/SetSpeedRatioRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsSetSpeedRatioRequest(ref Ros1Abb_robot_msgsSetSpeedRatioRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/SetSpeedRatioRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsSetSpeedRatioRequest(const(ubyte)[] bytes, out Ros1Abb_robot_msgsSetSpeedRatioRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/SetSpeedRatioResponse value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsSetSpeedRatioResponse
{
    /// @brief Original abb_robot_msgs/SetSpeedRatioResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/SetSpeedRatioResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 518;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_9775dc1029993d1dfdf5f3080e6ae4262177ba96cdc0fbe9851dc4fea16c70d8";
}
/// @brief Encode every field of complete abb_robot_msgs/SetSpeedRatioResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsSetSpeedRatioResponse(ref Ros1Abb_robot_msgsSetSpeedRatioResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/SetSpeedRatioResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsSetSpeedRatioResponse(const(ubyte)[] bytes, out Ros1Abb_robot_msgsSetSpeedRatioResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/SystemState value.
/// @details Retain all 6 original fields and 0 constants. Canonical extent 27..2331 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsSystemState
{
    /// @brief Original abb_robot_msgs/SystemState.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    Ros1Std_msgsHeader field_header;
    /// @brief Original abb_robot_msgs/SystemState.motors_on field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_motors_on;
    /// @brief Original abb_robot_msgs/SystemState.auto_mode field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_auto_mode;
    /// @brief Original abb_robot_msgs/SystemState.rapid_running field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_rapid_running;
    /// @brief Original abb_robot_msgs/SystemState.rapid_tasks field.
    /// @details Original type abb_robot_msgs/RAPIDTaskState. Shape sequence; bound/count 16
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros1Abb_robot_msgsRAPIDTaskState, 16) field_rapid_tasks;
    /// @brief Original abb_robot_msgs/SystemState.mechanical_units field.
    /// @details Original type abb_robot_msgs/MechanicalUnitState. Shape sequence; bound/count 16
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros1Abb_robot_msgsMechanicalUnitState, 16) field_mechanical_units;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 27;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 2331;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_b57aa1fdf098aa78c51a96bd2978e02f97cbae67148c0028557d2a3e1e8630f2";
}
/// @brief Encode every field of complete abb_robot_msgs/SystemState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsSystemState(ref Ros1Abb_robot_msgsSystemState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/SystemState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsSystemState(const(ubyte)[] bytes, out Ros1Abb_robot_msgsSystemState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/TriggerWithResultCodeRequest value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsTriggerWithResultCodeRequest
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
    enum codecIdentity = "UWVMROS1_999f63504788e522f7d0108a895cf35cd101e9a50856e480ae9edabf791bcf94";
}
/// @brief Encode every field of complete abb_robot_msgs/TriggerWithResultCodeRequest.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsTriggerWithResultCodeRequest(ref Ros1Abb_robot_msgsTriggerWithResultCodeRequest value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/TriggerWithResultCodeRequest.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsTriggerWithResultCodeRequest(const(ubyte)[] bytes, out Ros1Abb_robot_msgsTriggerWithResultCodeRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/TriggerWithResultCodeResponse value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Abb_robot_msgsTriggerWithResultCodeResponse
{
    /// @brief Original abb_robot_msgs/TriggerWithResultCodeResponse.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/TriggerWithResultCodeResponse.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 6;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 518;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_4ef5c987592e849766b82b7fd99a65b7a1e17605f3e3341c99803181887967ff";
}
/// @brief Encode every field of complete abb_robot_msgs/TriggerWithResultCodeResponse.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Abb_robot_msgsTriggerWithResultCodeResponse(ref Ros1Abb_robot_msgsTriggerWithResultCodeResponse value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/TriggerWithResultCodeResponse.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Abb_robot_msgsTriggerWithResultCodeResponse(const(ubyte)[] bytes, out Ros1Abb_robot_msgsTriggerWithResultCodeResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete duration value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Duration
{
    /// @brief Original duration.sec field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_sec;
    /// @brief Original duration.nsec field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_nsec;
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
    enum codecIdentity = "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8";
    /// @brief Validate the complete original time-domain invariant.
    /// @details Nanoseconds stay in the original normalized domain; no clock or unit conversion
    /// occurs.
    /// @return Zero or canonical error 22.
    uint validate() const @nogc nothrow
    {
        return this.field_nsec >= 1000000000 || this.field_nsec < 0 ? 22 : 0;
    }
}
/// @brief Encode every field of complete duration.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Duration(ref Ros1Duration value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete duration.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Duration(const(ubyte)[] bytes, out Ros1Duration value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete trajectory_msgs/JointTrajectoryPoint value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 24..408 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Trajectory_msgsJointTrajectoryPoint
{
    /// @brief Original trajectory_msgs/JointTrajectoryPoint.positions field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_positions;
    /// @brief Original trajectory_msgs/JointTrajectoryPoint.velocities field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_velocities;
    /// @brief Original trajectory_msgs/JointTrajectoryPoint.accelerations field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_accelerations;
    /// @brief Original trajectory_msgs/JointTrajectoryPoint.effort field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_effort;
    /// @brief Original trajectory_msgs/JointTrajectoryPoint.time_from_start field.
    /// @details Original type duration. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    Ros1Duration field_time_from_start;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 24;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 408;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_9773572fff8616235c4d7e23fccbe01f28dcfa62c7c80323a65c8c305feba3c5";
}
/// @brief Encode every field of complete trajectory_msgs/JointTrajectoryPoint.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Trajectory_msgsJointTrajectoryPoint(ref Ros1Trajectory_msgsJointTrajectoryPoint value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete trajectory_msgs/JointTrajectoryPoint.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Trajectory_msgsJointTrajectoryPoint(const(ubyte)[] bytes, out Ros1Trajectory_msgsJointTrajectoryPoint value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete trajectory_msgs/JointTrajectory value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 24..4168 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Trajectory_msgsJointTrajectory
{
    /// @brief Original trajectory_msgs/JointTrajectory.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    Ros1Std_msgsHeader field_header;
    /// @brief Original trajectory_msgs/JointTrajectory.joint_names field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Text!(64, false), 12) field_joint_names;
    /// @brief Original trajectory_msgs/JointTrajectory.points field.
    /// @details Original type trajectory_msgs/JointTrajectoryPoint. Shape sequence; bound/count 8
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros1Trajectory_msgsJointTrajectoryPoint, 8) field_points;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 24;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4168;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_079e6c432f0a858d6bd47c87aaf353a8b0676706809e0f984705b1a688de282b";
}
/// @brief Encode every field of complete trajectory_msgs/JointTrajectory.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Trajectory_msgsJointTrajectory(ref Ros1Trajectory_msgsJointTrajectory value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete trajectory_msgs/JointTrajectory.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Trajectory_msgsJointTrajectory(const(ubyte)[] bytes, out Ros1Trajectory_msgsJointTrajectory value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete control_msgs/JointTolerance value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 28..92 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Control_msgsJointTolerance
{
    /// @brief Original control_msgs/JointTolerance.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_name;
    /// @brief Original control_msgs/JointTolerance.position field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_position = 0;
    /// @brief Original control_msgs/JointTolerance.velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_velocity = 0;
    /// @brief Original control_msgs/JointTolerance.acceleration field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_acceleration = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 28;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 92;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_c9f71f98726d4a6621dcc8db96a394a24941a79d9041c8ad7a07724ee64d3c88";
}
/// @brief Encode every field of complete control_msgs/JointTolerance.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Control_msgsJointTolerance(ref Ros1Control_msgsJointTolerance value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete control_msgs/JointTolerance.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Control_msgsJointTolerance(const(ubyte)[] bytes, out Ros1Control_msgsJointTolerance value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete control_msgs/FollowJointTrajectoryGoal value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 40..6392 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Control_msgsFollowJointTrajectoryGoal
{
    /// @brief Original control_msgs/FollowJointTrajectoryGoal.trajectory field.
    /// @details Original type trajectory_msgs/JointTrajectory. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Trajectory_msgsJointTrajectory field_trajectory;
    /// @brief Original control_msgs/FollowJointTrajectoryGoal.path_tolerance field.
    /// @details Original type control_msgs/JointTolerance. Shape sequence; bound/count 12 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros1Control_msgsJointTolerance, 12) field_path_tolerance;
    /// @brief Original control_msgs/FollowJointTrajectoryGoal.goal_tolerance field.
    /// @details Original type control_msgs/JointTolerance. Shape sequence; bound/count 12 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros1Control_msgsJointTolerance, 12) field_goal_tolerance;
    /// @brief Original control_msgs/FollowJointTrajectoryGoal.goal_time_tolerance field.
    /// @details Original type duration. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    Ros1Duration field_goal_time_tolerance;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 40;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 6392;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_e9fda6f9e732450f2cf1af046ceb67815e6e1a22105eda2fee38f8f470252d40";
}
/// @brief Encode every field of complete control_msgs/FollowJointTrajectoryGoal.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Control_msgsFollowJointTrajectoryGoal(ref Ros1Control_msgsFollowJointTrajectoryGoal value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete control_msgs/FollowJointTrajectoryGoal.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Control_msgsFollowJointTrajectoryGoal(const(ubyte)[] bytes, out Ros1Control_msgsFollowJointTrajectoryGoal value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete control_msgs/FollowJointTrajectoryResult value.
/// @details Retain all 2 original fields and 6 constants. Canonical extent 8..4104 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Control_msgsFollowJointTrajectoryResult
{
    /// @brief Original control_msgs/FollowJointTrajectoryResult.error_code field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_error_code;
    /// @brief Original control_msgs/FollowJointTrajectoryResult.error_string field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Text!(4096, false) field_error_string;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4104;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281";
    /// @brief Original control_msgs/FollowJointTrajectoryResult.SUCCESSFUL constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum int constant_SUCCESSFUL = 0;
    /// @brief Original control_msgs/FollowJointTrajectoryResult.INVALID_GOAL constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum int constant_INVALID_GOAL = -1;
    /// @brief Original control_msgs/FollowJointTrajectoryResult.INVALID_JOINTS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum int constant_INVALID_JOINTS = -2;
    /// @brief Original control_msgs/FollowJointTrajectoryResult.OLD_HEADER_TIMESTAMP constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum int constant_OLD_HEADER_TIMESTAMP = -3;
    /// @brief Original control_msgs/FollowJointTrajectoryResult.PATH_TOLERANCE_VIOLATED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum int constant_PATH_TOLERANCE_VIOLATED = -4;
    /// @brief Original control_msgs/FollowJointTrajectoryResult.GOAL_TOLERANCE_VIOLATED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum int constant_GOAL_TOLERANCE_VIOLATED = -5;
}
/// @brief Encode every field of complete control_msgs/FollowJointTrajectoryResult.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Control_msgsFollowJointTrajectoryResult(ref Ros1Control_msgsFollowJointTrajectoryResult value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete control_msgs/FollowJointTrajectoryResult.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Control_msgsFollowJointTrajectoryResult(const(ubyte)[] bytes, out Ros1Control_msgsFollowJointTrajectoryResult value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete control_msgs/FollowJointTrajectoryFeedback value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 92..2124 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Control_msgsFollowJointTrajectoryFeedback
{
    /// @brief Original control_msgs/FollowJointTrajectoryFeedback.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    Ros1Std_msgsHeader field_header;
    /// @brief Original control_msgs/FollowJointTrajectoryFeedback.joint_names field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Text!(64, false), 12) field_joint_names;
    /// @brief Original control_msgs/FollowJointTrajectoryFeedback.desired field.
    /// @details Original type trajectory_msgs/JointTrajectoryPoint. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Trajectory_msgsJointTrajectoryPoint field_desired;
    /// @brief Original control_msgs/FollowJointTrajectoryFeedback.actual field.
    /// @details Original type trajectory_msgs/JointTrajectoryPoint. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Trajectory_msgsJointTrajectoryPoint field_actual;
    /// @brief Original control_msgs/FollowJointTrajectoryFeedback.error field.
    /// @details Original type trajectory_msgs/JointTrajectoryPoint. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros1Trajectory_msgsJointTrajectoryPoint field_error;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 92;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 2124;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_a1ad5a1f8a00b60f97d06209737993bd395d83d1a008705d65193b63933b62a8";
}
/// @brief Encode every field of complete control_msgs/FollowJointTrajectoryFeedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Control_msgsFollowJointTrajectoryFeedback(ref Ros1Control_msgsFollowJointTrajectoryFeedback value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete control_msgs/FollowJointTrajectoryFeedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Control_msgsFollowJointTrajectoryFeedback(const(ubyte)[] bytes, out Ros1Control_msgsFollowJointTrajectoryFeedback value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete sensor_msgs/JointState value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 32..1200 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros1Sensor_msgsJointState
{
    /// @brief Original sensor_msgs/JointState.header field.
    /// @details Original type std_msgs/Header. Preserve declared units, frame, signedness and field
    /// order. Backing storage belongs to this value; constructing or copying it creates no native
    /// ROS owner.
    Ros1Std_msgsHeader field_header;
    /// @brief Original sensor_msgs/JointState.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Text!(64, false), 12) field_name;
    /// @brief Original sensor_msgs/JointState.position field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_position;
    /// @brief Original sensor_msgs/JointState.velocity field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_velocity;
    /// @brief Original sensor_msgs/JointState.effort field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_effort;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 32;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1200;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_8d1bb9c4903dd4b070a5ab157b3590815722d6b574d610c9b9fb5ead8be7a057";
}
/// @brief Encode every field of complete sensor_msgs/JointState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos1Sensor_msgsJointState(ref Ros1Sensor_msgsJointState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete sensor_msgs/JointState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos1Sensor_msgsJointState(const(ubyte)[] bytes, out Ros1Sensor_msgsJointState value) @nogc nothrow
{
    return decode(bytes, value);
}

