/// @file records.d
/// @brief Complete owned original ABB ROS 2 native records and codecs.
/// @details Generated from the admitted source-pinned catalog; no ROS authority is created.
module abb.d.ros2.records;
import ros.d.wire;

/// @brief Complete abb_egm_msgs/msg/EGMChannelState value.
/// @details Retain all 7 original fields and 10 constants. Canonical extent 17..81 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_egm_msgsMsgEGMChannelState
{
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_name;
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.active field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_active;
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.egm_convergence_met field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_egm_convergence_met;
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.egm_client_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_egm_client_state;
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.motor_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_motor_state;
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.rapid_execution_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_rapid_execution_state;
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.utilization_rate field.
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
    enum codecIdentity = "UWVMROS1_fbd288b93963fccc92aa114570c0a4f6a1fdc5b473cb8e252922720f5d88b519";
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_UNDEFINED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_UNDEFINED = 1;
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_ERROR constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_ERROR = 2;
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_STOPPED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_STOPPED = 3;
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.EGM_RUNNING constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_RUNNING = 4;
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.MOTORS_UNDEFINED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_MOTORS_UNDEFINED = 1;
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.MOTORS_ON constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_MOTORS_ON = 2;
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.MOTORS_OFF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_MOTORS_OFF = 3;
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.RAPID_UNDEFINED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_RAPID_UNDEFINED = 1;
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.RAPID_STOPPED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_RAPID_STOPPED = 2;
    /// @brief Original abb_egm_msgs/msg/EGMChannelState.RAPID_RUNNING constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_RAPID_RUNNING = 3;
}
/// @brief Encode every field of complete abb_egm_msgs/msg/EGMChannelState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_egm_msgsMsgEGMChannelState(ref Ros2Abb_egm_msgsMsgEGMChannelState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_egm_msgs/msg/EGMChannelState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_egm_msgsMsgEGMChannelState(const(ubyte)[] bytes, out Ros2Abb_egm_msgsMsgEGMChannelState value) @nogc nothrow
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
    /// @brief Validate the complete original time-domain invariant.
    /// @details Nanoseconds stay in the original normalized domain; no clock or unit conversion
    /// occurs.
    /// @return Zero or canonical error 22.
    uint validate() const @nogc nothrow
    {
        return this.field_nanosec >= 1000000000 ? 22 : 0;
    }
}
/// @brief Encode every field of complete builtin_interfaces/msg/Time.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Builtin_interfacesMsgTime(ref Ros2Builtin_interfacesMsgTime value, ubyte[] output, out size_t written) @nogc nothrow
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

/// @brief Complete std_msgs/msg/Header value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 12..76 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Std_msgsMsgHeader
{
    /// @brief Original std_msgs/msg/Header.stamp field.
    /// @details Original type builtin_interfaces/msg/Time. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Builtin_interfacesMsgTime field_stamp;
    /// @brief Original std_msgs/msg/Header.frame_id field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_frame_id;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 76;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396";
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

/// @brief Complete abb_egm_msgs/msg/EGMState value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..1376 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_egm_msgsMsgEGMState
{
    /// @brief Original abb_egm_msgs/msg/EGMState.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original abb_egm_msgs/msg/EGMState.egm_channels field.
    /// @details Original type abb_egm_msgs/msg/EGMChannelState. Shape sequence; bound/count 16
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Abb_egm_msgsMsgEGMChannelState, 16) field_egm_channels;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1376;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_5b10efb13c3be7290c7e391d55679a174969887edd1b8baca682edac311a8e5d";
}
/// @brief Encode every field of complete abb_egm_msgs/msg/EGMState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_egm_msgsMsgEGMState(ref Ros2Abb_egm_msgsMsgEGMState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_egm_msgs/msg/EGMState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_egm_msgsMsgEGMState(const(ubyte)[] bytes, out Ros2Abb_egm_msgsMsgEGMState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/msg/ConfData value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 16..16 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_msgsMsgConfData
{
    /// @brief Original abb_rapid_msgs/msg/ConfData.cf1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cf1 = 0;
    /// @brief Original abb_rapid_msgs/msg/ConfData.cf4 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cf4 = 0;
    /// @brief Original abb_rapid_msgs/msg/ConfData.cf6 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cf6 = 0;
    /// @brief Original abb_rapid_msgs/msg/ConfData.cfx field.
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
    enum codecIdentity = "UWVMROS1_0c22cc29db62f5001ef20ea7b131de63099e31ac5f150d3e9f0bb62120d60571";
}
/// @brief Encode every field of complete abb_rapid_msgs/msg/ConfData.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_msgsMsgConfData(ref Ros2Abb_rapid_msgsMsgConfData value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/msg/ConfData.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_msgsMsgConfData(const(ubyte)[] bytes, out Ros2Abb_rapid_msgsMsgConfData value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/msg/ExtJoint value.
/// @details Retain all 6 original fields and 0 constants. Canonical extent 24..24 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_msgsMsgExtJoint
{
    /// @brief Original abb_rapid_msgs/msg/ExtJoint.eax_a field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_eax_a = 0;
    /// @brief Original abb_rapid_msgs/msg/ExtJoint.eax_b field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_eax_b = 0;
    /// @brief Original abb_rapid_msgs/msg/ExtJoint.eax_c field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_eax_c = 0;
    /// @brief Original abb_rapid_msgs/msg/ExtJoint.eax_d field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_eax_d = 0;
    /// @brief Original abb_rapid_msgs/msg/ExtJoint.eax_e field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_eax_e = 0;
    /// @brief Original abb_rapid_msgs/msg/ExtJoint.eax_f field.
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
    enum codecIdentity = "UWVMROS1_8b799c6bec9e4eab0900a633a93375a7792e49fde0bf302f6752115a001a4ae2";
}
/// @brief Encode every field of complete abb_rapid_msgs/msg/ExtJoint.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_msgsMsgExtJoint(ref Ros2Abb_rapid_msgsMsgExtJoint value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/msg/ExtJoint.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_msgsMsgExtJoint(const(ubyte)[] bytes, out Ros2Abb_rapid_msgsMsgExtJoint value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/msg/RobJoint value.
/// @details Retain all 6 original fields and 0 constants. Canonical extent 24..24 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_msgsMsgRobJoint
{
    /// @brief Original abb_rapid_msgs/msg/RobJoint.rax_1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_rax_1 = 0;
    /// @brief Original abb_rapid_msgs/msg/RobJoint.rax_2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_rax_2 = 0;
    /// @brief Original abb_rapid_msgs/msg/RobJoint.rax_3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_rax_3 = 0;
    /// @brief Original abb_rapid_msgs/msg/RobJoint.rax_4 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_rax_4 = 0;
    /// @brief Original abb_rapid_msgs/msg/RobJoint.rax_5 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_rax_5 = 0;
    /// @brief Original abb_rapid_msgs/msg/RobJoint.rax_6 field.
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
    enum codecIdentity = "UWVMROS1_6d842aebc0a3b222a727063a41ef7e96f2b8c14ffbba5c8d6e140ba2890e69cd";
}
/// @brief Encode every field of complete abb_rapid_msgs/msg/RobJoint.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_msgsMsgRobJoint(ref Ros2Abb_rapid_msgsMsgRobJoint value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/msg/RobJoint.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_msgsMsgRobJoint(const(ubyte)[] bytes, out Ros2Abb_rapid_msgsMsgRobJoint value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/msg/JointTarget value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 48..48 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_msgsMsgJointTarget
{
    /// @brief Original abb_rapid_msgs/msg/JointTarget.robax field.
    /// @details Original type abb_rapid_msgs/msg/RobJoint. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Abb_rapid_msgsMsgRobJoint field_robax;
    /// @brief Original abb_rapid_msgs/msg/JointTarget.extax field.
    /// @details Original type abb_rapid_msgs/msg/ExtJoint. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Abb_rapid_msgsMsgExtJoint field_extax;
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
    enum codecIdentity = "UWVMROS1_5949cf0121391646c1f04b54d8f7deaae0497f4920f7817739fc25bfddc4e540";
}
/// @brief Encode every field of complete abb_rapid_msgs/msg/JointTarget.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_msgsMsgJointTarget(ref Ros2Abb_rapid_msgsMsgJointTarget value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/msg/JointTarget.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_msgsMsgJointTarget(const(ubyte)[] bytes, out Ros2Abb_rapid_msgsMsgJointTarget value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/msg/Pos value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 12..12 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_msgsMsgPos
{
    /// @brief Original abb_rapid_msgs/msg/Pos.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_x = 0;
    /// @brief Original abb_rapid_msgs/msg/Pos.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_y = 0;
    /// @brief Original abb_rapid_msgs/msg/Pos.z field.
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
    enum codecIdentity = "UWVMROS1_31d490d6ead5a1a78295dc4e934f0b89e74e4732da2b57d28d297477bf4cbdd2";
}
/// @brief Encode every field of complete abb_rapid_msgs/msg/Pos.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_msgsMsgPos(ref Ros2Abb_rapid_msgsMsgPos value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/msg/Pos.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_msgsMsgPos(const(ubyte)[] bytes, out Ros2Abb_rapid_msgsMsgPos value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/msg/Orient value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 16..16 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_msgsMsgOrient
{
    /// @brief Original abb_rapid_msgs/msg/Orient.q1 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_q1 = 0;
    /// @brief Original abb_rapid_msgs/msg/Orient.q2 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_q2 = 0;
    /// @brief Original abb_rapid_msgs/msg/Orient.q3 field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_q3 = 0;
    /// @brief Original abb_rapid_msgs/msg/Orient.q4 field.
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
    enum codecIdentity = "UWVMROS1_821d887b88298422f9466aaf3926db580f878e964055fbd72226b7f76f2f536e";
}
/// @brief Encode every field of complete abb_rapid_msgs/msg/Orient.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_msgsMsgOrient(ref Ros2Abb_rapid_msgsMsgOrient value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/msg/Orient.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_msgsMsgOrient(const(ubyte)[] bytes, out Ros2Abb_rapid_msgsMsgOrient value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/msg/LoadData value.
/// @details Retain all 6 original fields and 0 constants. Canonical extent 44..44 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_msgsMsgLoadData
{
    /// @brief Original abb_rapid_msgs/msg/LoadData.mass field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_mass = 0;
    /// @brief Original abb_rapid_msgs/msg/LoadData.cog field.
    /// @details Original type abb_rapid_msgs/msg/Pos. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Abb_rapid_msgsMsgPos field_cog;
    /// @brief Original abb_rapid_msgs/msg/LoadData.aom field.
    /// @details Original type abb_rapid_msgs/msg/Orient. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Abb_rapid_msgsMsgOrient field_aom;
    /// @brief Original abb_rapid_msgs/msg/LoadData.ix field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ix = 0;
    /// @brief Original abb_rapid_msgs/msg/LoadData.iy field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_iy = 0;
    /// @brief Original abb_rapid_msgs/msg/LoadData.iz field.
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
    enum codecIdentity = "UWVMROS1_f73e480a0e6746a4df8f4d62bc123d68d01d3dc48f0bc5f0eac51b859a0750f9";
}
/// @brief Encode every field of complete abb_rapid_msgs/msg/LoadData.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_msgsMsgLoadData(ref Ros2Abb_rapid_msgsMsgLoadData value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/msg/LoadData.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_msgsMsgLoadData(const(ubyte)[] bytes, out Ros2Abb_rapid_msgsMsgLoadData value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/msg/Pose value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 28..28 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_msgsMsgPose
{
    /// @brief Original abb_rapid_msgs/msg/Pose.trans field.
    /// @details Original type abb_rapid_msgs/msg/Pos. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Abb_rapid_msgsMsgPos field_trans;
    /// @brief Original abb_rapid_msgs/msg/Pose.rot field.
    /// @details Original type abb_rapid_msgs/msg/Orient. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Abb_rapid_msgsMsgOrient field_rot;
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
    enum codecIdentity = "UWVMROS1_8f1535fe21326706fd0b16314857162d36bca91ce8e8f6a8bec3864dafb9e2f2";
}
/// @brief Encode every field of complete abb_rapid_msgs/msg/Pose.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_msgsMsgPose(ref Ros2Abb_rapid_msgsMsgPose value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/msg/Pose.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_msgsMsgPose(const(ubyte)[] bytes, out Ros2Abb_rapid_msgsMsgPose value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/msg/RobTarget value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 68..68 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_msgsMsgRobTarget
{
    /// @brief Original abb_rapid_msgs/msg/RobTarget.trans field.
    /// @details Original type abb_rapid_msgs/msg/Pos. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Abb_rapid_msgsMsgPos field_trans;
    /// @brief Original abb_rapid_msgs/msg/RobTarget.rot field.
    /// @details Original type abb_rapid_msgs/msg/Orient. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Abb_rapid_msgsMsgOrient field_rot;
    /// @brief Original abb_rapid_msgs/msg/RobTarget.robconf field.
    /// @details Original type abb_rapid_msgs/msg/ConfData. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Abb_rapid_msgsMsgConfData field_robconf;
    /// @brief Original abb_rapid_msgs/msg/RobTarget.extax field.
    /// @details Original type abb_rapid_msgs/msg/ExtJoint. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Abb_rapid_msgsMsgExtJoint field_extax;
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
    enum codecIdentity = "UWVMROS1_8decb56e8faf0a6a954af974adfea5c500aea8392e6a778ae7394174323489d8";
}
/// @brief Encode every field of complete abb_rapid_msgs/msg/RobTarget.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_msgsMsgRobTarget(ref Ros2Abb_rapid_msgsMsgRobTarget value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/msg/RobTarget.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_msgsMsgRobTarget(const(ubyte)[] bytes, out Ros2Abb_rapid_msgsMsgRobTarget value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/msg/ToolData value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 73..73 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_msgsMsgToolData
{
    /// @brief Original abb_rapid_msgs/msg/ToolData.robhold field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_robhold;
    /// @brief Original abb_rapid_msgs/msg/ToolData.tframe field.
    /// @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Abb_rapid_msgsMsgPose field_tframe;
    /// @brief Original abb_rapid_msgs/msg/ToolData.tload field.
    /// @details Original type abb_rapid_msgs/msg/LoadData. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Abb_rapid_msgsMsgLoadData field_tload;
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
    enum codecIdentity = "UWVMROS1_948fa0bbaaf95f0d88ca03cad687f16102261f54b0da889ae8bca82042fc5237";
}
/// @brief Encode every field of complete abb_rapid_msgs/msg/ToolData.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_msgsMsgToolData(ref Ros2Abb_rapid_msgsMsgToolData value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/msg/ToolData.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_msgsMsgToolData(const(ubyte)[] bytes, out Ros2Abb_rapid_msgsMsgToolData value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_msgs/msg/WObjData value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 62..574 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_msgsMsgWObjData
{
    /// @brief Original abb_rapid_msgs/msg/WObjData.robhold field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_robhold;
    /// @brief Original abb_rapid_msgs/msg/WObjData.ufprog field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_ufprog;
    /// @brief Original abb_rapid_msgs/msg/WObjData.ufmec field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_ufmec;
    /// @brief Original abb_rapid_msgs/msg/WObjData.uframe field.
    /// @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Abb_rapid_msgsMsgPose field_uframe;
    /// @brief Original abb_rapid_msgs/msg/WObjData.oframe field.
    /// @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Abb_rapid_msgsMsgPose field_oframe;
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
    enum codecIdentity = "UWVMROS1_b36f0448512fab6028431d19b39a8ae31b7b81b2615ffc8311139f63b5d8e7cd";
}
/// @brief Encode every field of complete abb_rapid_msgs/msg/WObjData.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_msgsMsgWObjData(ref Ros2Abb_rapid_msgsMsgWObjData value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_msgs/msg/WObjData.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_msgsMsgWObjData(const(ubyte)[] bytes, out Ros2Abb_rapid_msgsMsgWObjData value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/msg/EGMActivateSettings value.
/// @details Retain all 8 original fields and 0 constants. Canonical extent 204..716 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings
{
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.tool field.
    /// @details Original type abb_rapid_msgs/msg/ToolData. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Abb_rapid_msgsMsgToolData field_tool;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.wobj field.
    /// @details Original type abb_rapid_msgs/msg/WObjData. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Abb_rapid_msgsMsgWObjData field_wobj;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.correction_frame field.
    /// @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Abb_rapid_msgsMsgPose field_correction_frame;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.sensor_frame field.
    /// @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Abb_rapid_msgsMsgPose field_sensor_frame;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.cond_min_max field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cond_min_max = 0;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.lp_filter field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_lp_filter = 0;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.sample_rate field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_sample_rate;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.max_speed_deviation field.
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
    enum codecIdentity = "UWVMROS1_fce73aea80d9b8a299b8e2ab742602871146b3ebbd624a2e807e25c1ac107cfa";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings(ref Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings(const(ubyte)[] bytes, out Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/msg/EGMRunSettings value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 40..40 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings
{
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.cond_time field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cond_time = 0;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.ramp_in_time field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ramp_in_time = 0;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.offset field.
    /// @details Original type abb_rapid_msgs/msg/Pose. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Abb_rapid_msgsMsgPose field_offset;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.pos_corr_gain field.
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
    enum codecIdentity = "UWVMROS1_92a2a654eb2eda89077933f955f04ed87884827b8875cf563570eed5d211b0e2";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/EGMRunSettings.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_sm_addin_msgsMsgEGMRunSettings(ref Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/msg/EGMRunSettings.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_sm_addin_msgsMsgEGMRunSettings(const(ubyte)[] bytes, out Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/msg/EGMSetupSettings value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..5 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings
{
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.use_filtering field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_filtering;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.comm_timeout field.
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
    enum codecIdentity = "UWVMROS1_2565bed5b83b132c69f37d7294c69181800ad2974ddc54f60868da57e28e782c";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings(ref Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings(const(ubyte)[] bytes, out Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/msg/EGMStopSettings value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings
{
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMStopSettings.ramp_out_time field.
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
    enum codecIdentity = "UWVMROS1_0f3f2f6034567a7d49dd140ff9ff620e8567548139597b9b823e63a947673cee";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/EGMStopSettings.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_sm_addin_msgsMsgEGMStopSettings(ref Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/msg/EGMStopSettings.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_sm_addin_msgsMsgEGMStopSettings(const(ubyte)[] bytes, out Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/msg/EGMSettings value.
/// @details Retain all 6 original fields and 0 constants. Canonical extent 255..767 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings
{
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.allow_egm_motions field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_allow_egm_motions;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.use_presync field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_use_presync;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.setup_uc field.
    /// @details Original type abb_rapid_sm_addin_msgs/msg/EGMSetupSettings. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings field_setup_uc;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.activate field.
    /// @details Original type abb_rapid_sm_addin_msgs/msg/EGMActivateSettings. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings field_activate;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.run field.
    /// @details Original type abb_rapid_sm_addin_msgs/msg/EGMRunSettings. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings field_run;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/EGMSettings.stop field.
    /// @details Original type abb_rapid_sm_addin_msgs/msg/EGMStopSettings. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings field_stop;
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
    enum codecIdentity = "UWVMROS1_622d3a975eecb11f7729aecfadc161cada271208d6fe7599f455750b90144ef3";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/EGMSettings.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_sm_addin_msgsMsgEGMSettings(ref Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/msg/EGMSettings.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_sm_addin_msgsMsgEGMSettings(const(ubyte)[] bytes, out Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/msg/StateMachineState value.
/// @details Retain all 3 original fields and 12 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState
{
    /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.rapid_task field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_rapid_task;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.sm_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_sm_state;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.egm_action field.
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
    enum codecIdentity = "UWVMROS1_ff2a09e4b6e8ef26cbdc3ecdffdceb33d6b2c82f0d51ed2c38ce9648c6f47711";
    /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_UNKNOWN constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SM_STATE_UNKNOWN = 1;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_IDLE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SM_STATE_IDLE = 2;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_INITIALIZE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SM_STATE_INITIALIZE = 3;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_RUN_RAPID_ROUTINE
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SM_STATE_RUN_RAPID_ROUTINE = 4;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.SM_STATE_RUN_EGM_ROUTINE
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SM_STATE_RUN_EGM_ROUTINE = 5;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_UNKNOWN constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_ACTION_UNKNOWN = 1;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_NONE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_ACTION_NONE = 2;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_RUN_JOINT constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_ACTION_RUN_JOINT = 3;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_RUN_POSE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_ACTION_RUN_POSE = 4;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_STOP constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_ACTION_STOP = 5;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_START_STREAM
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_ACTION_START_STREAM = 6;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/StateMachineState.EGM_ACTION_STOP_STREAM
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EGM_ACTION_STOP_STREAM = 7;
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/StateMachineState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_sm_addin_msgsMsgStateMachineState(ref Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/msg/StateMachineState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_sm_addin_msgsMsgStateMachineState(const(ubyte)[] bytes, out Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/msg/RuntimeState value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..8368 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState
{
    /// @brief Original abb_rapid_sm_addin_msgs/msg/RuntimeState.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original abb_rapid_sm_addin_msgs/msg/RuntimeState.state_machines field.
    /// @details Original type abb_rapid_sm_addin_msgs/msg/StateMachineState. Shape sequence;
    /// bound/count 16 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState, 16) field_state_machines;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 8368;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_3c0f157544fa82c4e206a4fb42f8ba7f67213d19533f79b77c66dec6fd0460d9";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/msg/RuntimeState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_sm_addin_msgsMsgRuntimeState(ref Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/msg/RuntimeState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_sm_addin_msgsMsgRuntimeState(const(ubyte)[] bytes, out Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..68 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request
{
    /// @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request.task field.
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
    enum codecIdentity = "UWVMROS1_363be2459fcc9c475c6305cbcfebf7689e891eb27645b7667960aace23d56e8e";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request(ref Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request(const(ubyte)[] bytes, out Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 261..1285 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response
{
    /// @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.settings field.
    /// @details Original type abb_rapid_sm_addin_msgs/msg/EGMSettings. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings field_settings;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.message field.
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
    enum codecIdentity = "UWVMROS1_d8f340e1c6d78fc0a782c3279efb34ae5e11df175a82f9dd5ee82e603d6b2ffb";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response(ref Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response(const(ubyte)[] bytes, out Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 259..835 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request
{
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.task field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_task;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.settings field.
    /// @details Original type abb_rapid_sm_addin_msgs/msg/EGMSettings. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings field_settings;
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
    enum codecIdentity = "UWVMROS1_c2f3dd535e9475526bf18bdffa0e9a839049d315c9aebb150f8561ee3361a2bd";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request(ref Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request(const(ubyte)[] bytes, out Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response
{
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.message field.
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
    enum codecIdentity = "UWVMROS1_6a1adeebe31dfe101a6d57019e26ee2f1144b9a6ce30aee08d4c6fe56ea6838d";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response(ref Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response(const(ubyte)[] bytes, out Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..584 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request
{
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.task field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_task;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.routine field.
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
    enum codecIdentity = "UWVMROS1_4561b7e5e296a1a329d5f5684bcbde1ef41324554a34e9a79a85824286dd477c";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request(ref Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request(const(ubyte)[] bytes, out Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response
{
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.message field.
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
    enum codecIdentity = "UWVMROS1_980d2a16536289f446161acdf2fc57d459baa2290d74f1dd5aaf8129126cbba1";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response(ref Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response value,
     ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response(const(ubyte)[] bytes, out Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request value.
/// @details Retain all 3 original fields and 15 constants. Canonical extent 9..73 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request
{
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.task field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_task;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.command field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_command;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.target_position field.
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
    enum codecIdentity = "UWVMROS1_5d6983aa85c2c52f8ec06cbd723d5929cfc381db2e0bfffb4c27078497d86c90";
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_UNKNOWN
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_UNKNOWN = 1;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_NONE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_NONE = 2;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_INITIALIZE
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_INITIALIZE = 3;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_CALIBRATE
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_CALIBRATE = 4;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_MOVE_TO
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_MOVE_TO = 5;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_GRIP_IN
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_GRIP_IN = 6;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_GRIP_OUT
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_GRIP_OUT = 7;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_ON_1
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_BLOW_ON_1 = 8;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_ON_2
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_BLOW_ON_2 = 9;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_OFF_1
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_BLOW_OFF_1 = 10;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_BLOW_OFF_2
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_BLOW_OFF_2 = 11;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_ON_1
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_VACUUM_ON_1 = 12;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_ON_2
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_VACUUM_ON_2 = 13;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_OFF_1
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_VACUUM_OFF_1 = 14;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.SG_COMMAND_VACUUM_OFF_2
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_SG_COMMAND_VACUUM_OFF_2 = 15;
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request(ref Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request(const(ubyte)[] bytes, out Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response
{
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.message field.
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
    enum codecIdentity = "UWVMROS1_87cdc41c81d49930dce7193d4b7af98add266a6e9a7cf5e69457d01ded388cf8";
}
/// @brief Encode every field of complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response(ref Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response(const(ubyte)[] bytes, out Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/msg/MechanicalUnitState value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..69 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsMsgMechanicalUnitState
{
    /// @brief Original abb_robot_msgs/msg/MechanicalUnitState.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_name;
    /// @brief Original abb_robot_msgs/msg/MechanicalUnitState.activated field.
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
    enum codecIdentity = "UWVMROS1_1dc7a7dcbaa19e78cd6419f8844287a7fbd9d7a839ab1a8ad97ef0be34f3a3a8";
}
/// @brief Encode every field of complete abb_robot_msgs/msg/MechanicalUnitState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsMsgMechanicalUnitState(ref Ros2Abb_robot_msgsMsgMechanicalUnitState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/msg/MechanicalUnitState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsMsgMechanicalUnitState(const(ubyte)[] bytes, out Ros2Abb_robot_msgsMsgMechanicalUnitState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/msg/RAPIDSymbolPath value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 12..204 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsMsgRAPIDSymbolPath
{
    /// @brief Original abb_robot_msgs/msg/RAPIDSymbolPath.task field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_task;
    /// @brief Original abb_robot_msgs/msg/RAPIDSymbolPath.module field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_module;
    /// @brief Original abb_robot_msgs/msg/RAPIDSymbolPath.symbol field.
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
    enum codecIdentity = "UWVMROS1_249523197567fbf638f30487a7f5b8d8ff5ea746fcd4a65a35f2dbb18a3adf0e";
}
/// @brief Encode every field of complete abb_robot_msgs/msg/RAPIDSymbolPath.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsMsgRAPIDSymbolPath(ref Ros2Abb_robot_msgsMsgRAPIDSymbolPath value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/msg/RAPIDSymbolPath.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsMsgRAPIDSymbolPath(const(ubyte)[] bytes, out Ros2Abb_robot_msgsMsgRAPIDSymbolPath value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/msg/RAPIDTaskState value.
/// @details Retain all 4 original fields and 5 constants. Canonical extent 7..71 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsMsgRAPIDTaskState
{
    /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_name;
    /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.activated field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_activated;
    /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.execution_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_execution_state;
    /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.motion_task field.
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
    enum codecIdentity = "UWVMROS1_ff698e375b0ff33026cfd248c1ac734f939763aba25a6c4f7cac628d445422fd";
    /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_UNKNOWN constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EXECUTION_STATE_UNKNOWN = 1;
    /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_READY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EXECUTION_STATE_READY = 2;
    /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_STOPPED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EXECUTION_STATE_STOPPED = 3;
    /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_STARTED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EXECUTION_STATE_STARTED = 4;
    /// @brief Original abb_robot_msgs/msg/RAPIDTaskState.EXECUTION_STATE_UNINITIALIZED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ubyte constant_EXECUTION_STATE_UNINITIALIZED = 5;
}
/// @brief Encode every field of complete abb_robot_msgs/msg/RAPIDTaskState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsMsgRAPIDTaskState(ref Ros2Abb_robot_msgsMsgRAPIDTaskState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/msg/RAPIDTaskState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsMsgRAPIDTaskState(const(ubyte)[] bytes, out Ros2Abb_robot_msgsMsgRAPIDTaskState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/msg/ServiceResponses value.
/// @details Retain all 0 original fields and 32 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsMsgServiceResponses
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
    enum codecIdentity = "UWVMROS1_4e01b972b67454e851801f28aee09c0774b67907d2241cc67cae7d045c18f646";
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.SUCCESS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_SUCCESS = "";
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SUCCESS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_SUCCESS = 1;
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.FAILED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_FAILED = "Service failed (e.g. timeout or resource not found, see the DEBUG log for details)";
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_FAILED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_FAILED = 2;
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.SERVER_IS_BUSY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_SERVER_IS_BUSY = "Server is busy";
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SERVER_IS_BUSY constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_SERVER_IS_BUSY = 1001;
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_FILENAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_EMPTY_FILENAME = "Filename is empty";
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_FILENAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_EMPTY_FILENAME = 2001;
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_SIGNAL_NAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_EMPTY_SIGNAL_NAME = "Signal name is empty";
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_SIGNAL_NAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_EMPTY_SIGNAL_NAME = 2002;
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_RAPID_TASK_NAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_EMPTY_RAPID_TASK_NAME = "RAPID task name is empty";
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_RAPID_TASK_NAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_EMPTY_RAPID_TASK_NAME = 2003;
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_RAPID_MODULE_NAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_EMPTY_RAPID_MODULE_NAME = "RAPID module name is empty";
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_RAPID_MODULE_NAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_EMPTY_RAPID_MODULE_NAME = 2004;
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.EMPTY_RAPID_SYMBOL_NAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_EMPTY_RAPID_SYMBOL_NAME = "RAPID symbol name is empty";
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_EMPTY_RAPID_SYMBOL_NAME constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_EMPTY_RAPID_SYMBOL_NAME = 2005;
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.NOT_IN_AUTO_MODE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_NOT_IN_AUTO_MODE = "Robot controller is not in AUTO mode";
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_NOT_IN_AUTO_MODE constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_NOT_IN_AUTO_MODE = 3001;
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.MOTORS_ARE_OFF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_MOTORS_ARE_OFF = "Motors are off";
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_MOTORS_ARE_OFF constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_MOTORS_ARE_OFF = 3002;
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.MOTORS_ARE_ON constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_MOTORS_ARE_ON = "Motors are on";
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_MOTORS_ARE_ON constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_MOTORS_ARE_ON = 3003;
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.RAPID_NOT_STOPPED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_RAPID_NOT_STOPPED = "RAPID has not been stopped";
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_RAPID_NOT_STOPPED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_RAPID_NOT_STOPPED = 3004;
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.RAPID_NOT_RUNNING constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_RAPID_NOT_RUNNING = "RAPID is not running";
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_RAPID_NOT_RUNNING constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_RAPID_NOT_RUNNING = 3005;
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.SM_RUNTIME_STATES_MISSING constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_SM_RUNTIME_STATES_MISSING = "No runtime states received for any StateMachine Add-In instance";
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SM_RUNTIME_STATES_MISSING constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_SM_RUNTIME_STATES_MISSING = 4001;
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.SM_UNKNOWN_RAPID_TASK constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_SM_UNKNOWN_RAPID_TASK = "RAPID task not found among known StateMachine Add-In instances";
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SM_UNKNOWN_RAPID_TASK constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_SM_UNKNOWN_RAPID_TASK = 4002;
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.SM_UNINITIALIZED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum string constant_SM_UNINITIALIZED = "StateMachine Add-In instance has not been initialized";
    /// @brief Original abb_robot_msgs/msg/ServiceResponses.RC_SM_UNINITIALIZED constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_RC_SM_UNINITIALIZED = 4003;
}
/// @brief Encode every field of complete abb_robot_msgs/msg/ServiceResponses.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsMsgServiceResponses(ref Ros2Abb_robot_msgsMsgServiceResponses value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/msg/ServiceResponses.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsMsgServiceResponses(const(ubyte)[] bytes, out Ros2Abb_robot_msgsMsgServiceResponses value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/msg/SystemState value.
/// @details Retain all 6 original fields and 0 constants. Canonical extent 23..2327 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsMsgSystemState
{
    /// @brief Original abb_robot_msgs/msg/SystemState.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original abb_robot_msgs/msg/SystemState.motors_on field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_motors_on;
    /// @brief Original abb_robot_msgs/msg/SystemState.auto_mode field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_auto_mode;
    /// @brief Original abb_robot_msgs/msg/SystemState.rapid_running field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_rapid_running;
    /// @brief Original abb_robot_msgs/msg/SystemState.rapid_tasks field.
    /// @details Original type abb_robot_msgs/msg/RAPIDTaskState. Shape sequence; bound/count 16
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Abb_robot_msgsMsgRAPIDTaskState, 16) field_rapid_tasks;
    /// @brief Original abb_robot_msgs/msg/SystemState.mechanical_units field.
    /// @details Original type abb_robot_msgs/msg/MechanicalUnitState. Shape sequence; bound/count
    /// 16 elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Abb_robot_msgsMsgMechanicalUnitState, 16) field_mechanical_units;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 23;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 2327;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_c1cdbf0e578fddc5bf70cc2cc181d786f3e8189afc6a67962de6eb273973a38f";
}
/// @brief Encode every field of complete abb_robot_msgs/msg/SystemState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsMsgSystemState(ref Ros2Abb_robot_msgsMsgSystemState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/msg/SystemState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsMsgSystemState(const(ubyte)[] bytes, out Ros2Abb_robot_msgsMsgSystemState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/GetFileContents_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..516 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvGetFileContents_Request
{
    /// @brief Original abb_robot_msgs/srv/GetFileContents_Request.filename field.
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
    enum codecIdentity = "UWVMROS1_bdcf73a965bd05356e48019b74d633176fdeda62452bc7185d6b6ff30576016b";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/GetFileContents_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvGetFileContents_Request(ref Ros2Abb_robot_msgsSrvGetFileContents_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/GetFileContents_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvGetFileContents_Request(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvGetFileContents_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/GetFileContents_Response value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 10..4618 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvGetFileContents_Response
{
    /// @brief Original abb_robot_msgs/srv/GetFileContents_Response.contents field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Text!(4096, false) field_contents;
    /// @brief Original abb_robot_msgs/srv/GetFileContents_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/srv/GetFileContents_Response.message field.
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
    enum codecIdentity = "UWVMROS1_f05617145a40043e87cbc251f833274d2a962bd7cdaabc5f9a8e4591bd56e107";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/GetFileContents_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvGetFileContents_Response(ref Ros2Abb_robot_msgsSrvGetFileContents_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/GetFileContents_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvGetFileContents_Response(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvGetFileContents_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/GetIOSignal_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..516 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvGetIOSignal_Request
{
    /// @brief Original abb_robot_msgs/srv/GetIOSignal_Request.signal field.
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
    enum codecIdentity = "UWVMROS1_2406d53c2fce44e72ad7e6f1c9e75ea19c4df694ff9f00917229ec758209b1f5";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/GetIOSignal_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvGetIOSignal_Request(ref Ros2Abb_robot_msgsSrvGetIOSignal_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/GetIOSignal_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvGetIOSignal_Request(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvGetIOSignal_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/GetIOSignal_Response value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 10..1034 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvGetIOSignal_Response
{
    /// @brief Original abb_robot_msgs/srv/GetIOSignal_Response.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_value;
    /// @brief Original abb_robot_msgs/srv/GetIOSignal_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/srv/GetIOSignal_Response.message field.
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
    enum codecIdentity = "UWVMROS1_1f668ef78c353f2ec8defdac619d349cda731576f2429cf07107b9b56ba9030e";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/GetIOSignal_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvGetIOSignal_Response(ref Ros2Abb_robot_msgsSrvGetIOSignal_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/GetIOSignal_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvGetIOSignal_Response(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvGetIOSignal_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/GetRAPIDBool_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvGetRAPIDBool_Request
{
    /// @brief Original abb_robot_msgs/srv/GetRAPIDBool_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath field_path;
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
    enum codecIdentity = "UWVMROS1_c381080d235c78216a8e64275819ff3fb97e1b1de96e7da758c4889630b8e0ff";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDBool_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvGetRAPIDBool_Request(ref Ros2Abb_robot_msgsSrvGetRAPIDBool_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDBool_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvGetRAPIDBool_Request(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvGetRAPIDBool_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/GetRAPIDBool_Response value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 7..519 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvGetRAPIDBool_Response
{
    /// @brief Original abb_robot_msgs/srv/GetRAPIDBool_Response.value field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_value;
    /// @brief Original abb_robot_msgs/srv/GetRAPIDBool_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/srv/GetRAPIDBool_Response.message field.
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
    enum codecIdentity = "UWVMROS1_b853e212489fb815866fa29b165eea474a977483158b6203699c4a1293aa6acd";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDBool_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvGetRAPIDBool_Response(ref Ros2Abb_robot_msgsSrvGetRAPIDBool_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDBool_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvGetRAPIDBool_Response(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvGetRAPIDBool_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/GetRAPIDDnum_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request
{
    /// @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath field_path;
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
    enum codecIdentity = "UWVMROS1_71057c2fe44bc96505ec6e05d998fcb6323b281fff40808ce990207c48626979";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDDnum_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Request(ref Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDDnum_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Request(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/GetRAPIDDnum_Response value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 14..526 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response
{
    /// @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Response.value field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_value = 0;
    /// @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/srv/GetRAPIDDnum_Response.message field.
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
    enum codecIdentity = "UWVMROS1_af0420c126368a7e45b728c7fef76062b5ef2f0adea7535ad38e4771244edd56";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDDnum_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Response(ref Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDDnum_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvGetRAPIDDnum_Response(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/GetRAPIDNum_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvGetRAPIDNum_Request
{
    /// @brief Original abb_robot_msgs/srv/GetRAPIDNum_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath field_path;
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
    enum codecIdentity = "UWVMROS1_03d5da34af8d90ed8a20f8ca38fa75d9e777496828978f0f348e3c1c8f67d0a5";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDNum_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvGetRAPIDNum_Request(ref Ros2Abb_robot_msgsSrvGetRAPIDNum_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDNum_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvGetRAPIDNum_Request(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvGetRAPIDNum_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/GetRAPIDNum_Response value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 10..522 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvGetRAPIDNum_Response
{
    /// @brief Original abb_robot_msgs/srv/GetRAPIDNum_Response.value field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_value = 0;
    /// @brief Original abb_robot_msgs/srv/GetRAPIDNum_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/srv/GetRAPIDNum_Response.message field.
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
    enum codecIdentity = "UWVMROS1_a0da03014dd001e58efc4a5b274cd5c62016e7fa257af1120a8142a79635220d";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDNum_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvGetRAPIDNum_Response(ref Ros2Abb_robot_msgsSrvGetRAPIDNum_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDNum_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvGetRAPIDNum_Response(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvGetRAPIDNum_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/GetRAPIDString_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvGetRAPIDString_Request
{
    /// @brief Original abb_robot_msgs/srv/GetRAPIDString_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath field_path;
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
    enum codecIdentity = "UWVMROS1_c7bc9c788301e619a165c18a1cdb0aca80df8def5be31da5dbf34c0038e73596";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDString_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvGetRAPIDString_Request(ref Ros2Abb_robot_msgsSrvGetRAPIDString_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDString_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvGetRAPIDString_Request(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvGetRAPIDString_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/GetRAPIDString_Response value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 10..1034 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvGetRAPIDString_Response
{
    /// @brief Original abb_robot_msgs/srv/GetRAPIDString_Response.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_value;
    /// @brief Original abb_robot_msgs/srv/GetRAPIDString_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/srv/GetRAPIDString_Response.message field.
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
    enum codecIdentity = "UWVMROS1_cf7bfdb2af5b91eb58b19b909f7fa3357dc1dad02716f8fa4465b53f3f4a1458";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDString_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvGetRAPIDString_Response(ref Ros2Abb_robot_msgsSrvGetRAPIDString_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDString_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvGetRAPIDString_Response(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvGetRAPIDString_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/GetRAPIDSymbol_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 12..204 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request
{
    /// @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath field_path;
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
    enum codecIdentity = "UWVMROS1_e216a54cdae70f8147489928ff05a4b172ba4fc47e9ed5df4828b070354ac469";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDSymbol_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Request(ref Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDSymbol_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Request(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/GetRAPIDSymbol_Response value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 10..1034 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response
{
    /// @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Response.value field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_value;
    /// @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/srv/GetRAPIDSymbol_Response.message field.
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
    enum codecIdentity = "UWVMROS1_b1f6de7ad0640f5645678d327804dc7e732bdad38805e642b13ed7294c21d602";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/GetRAPIDSymbol_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Response(ref Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/GetRAPIDSymbol_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvGetRAPIDSymbol_Response(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/GetRobotControllerDescription_Request value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request
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
    enum codecIdentity = "UWVMROS1_caf70e11b386a933f62d06a433ca1cedaa3c8ecc75b7e8de8c1d5ae00a29f03e";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/GetRobotControllerDescription_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Request(ref Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request value,
     ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/GetRobotControllerDescription_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Request(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/GetRobotControllerDescription_Response value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 10..4618 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response
{
    /// @brief Original abb_robot_msgs/srv/GetRobotControllerDescription_Response.description field.
    /// @details Original type string. String bound 4096 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Text!(4096, false) field_description;
    /// @brief Original abb_robot_msgs/srv/GetRobotControllerDescription_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/srv/GetRobotControllerDescription_Response.message field.
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
    enum codecIdentity = "UWVMROS1_1af2591f035379597f376ed1e2343f73a89f9fef5c29269aa420243a82e6c368";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/GetRobotControllerDescription_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Response(ref Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response value,
     ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/GetRobotControllerDescription_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvGetRobotControllerDescription_Response(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/GetSpeedRatio_Request value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvGetSpeedRatio_Request
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
    enum codecIdentity = "UWVMROS1_54ee2c897e2bf2f39c96cc42246ffe5997c8df280280433e8748b3bcf24c299c";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/GetSpeedRatio_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvGetSpeedRatio_Request(ref Ros2Abb_robot_msgsSrvGetSpeedRatio_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/GetSpeedRatio_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvGetSpeedRatio_Request(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvGetSpeedRatio_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/GetSpeedRatio_Response value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 7..519 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvGetSpeedRatio_Response
{
    /// @brief Original abb_robot_msgs/srv/GetSpeedRatio_Response.speed_ratio field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_speed_ratio;
    /// @brief Original abb_robot_msgs/srv/GetSpeedRatio_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/srv/GetSpeedRatio_Response.message field.
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
    enum codecIdentity = "UWVMROS1_baa271a258c7ca274e0145fea1abb7cbc43e98c82b8e40d67c4743237a19910b";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/GetSpeedRatio_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvGetSpeedRatio_Response(ref Ros2Abb_robot_msgsSrvGetSpeedRatio_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/GetSpeedRatio_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvGetSpeedRatio_Response(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvGetSpeedRatio_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/SetFileContents_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..4616 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvSetFileContents_Request
{
    /// @brief Original abb_robot_msgs/srv/SetFileContents_Request.filename field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_filename;
    /// @brief Original abb_robot_msgs/srv/SetFileContents_Request.contents field.
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
    enum codecIdentity = "UWVMROS1_3bfa8ad1846fc31acae47a875d3555a78a64b777923eb9b62e87a836f041b26b";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/SetFileContents_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvSetFileContents_Request(ref Ros2Abb_robot_msgsSrvSetFileContents_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/SetFileContents_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvSetFileContents_Request(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvSetFileContents_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/SetFileContents_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvSetFileContents_Response
{
    /// @brief Original abb_robot_msgs/srv/SetFileContents_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/srv/SetFileContents_Response.message field.
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
    enum codecIdentity = "UWVMROS1_1586344401d43055460b49f2487567638f66838cfe5cac99a47e0a39c0b06ede";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/SetFileContents_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvSetFileContents_Response(ref Ros2Abb_robot_msgsSrvSetFileContents_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/SetFileContents_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvSetFileContents_Response(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvSetFileContents_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/SetIOSignal_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..1032 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvSetIOSignal_Request
{
    /// @brief Original abb_robot_msgs/srv/SetIOSignal_Request.signal field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_signal;
    /// @brief Original abb_robot_msgs/srv/SetIOSignal_Request.value field.
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
    enum codecIdentity = "UWVMROS1_2d206d0020179263e83e745a428616ed53d809b0c65a79ad495cb882ae9e49b7";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/SetIOSignal_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvSetIOSignal_Request(ref Ros2Abb_robot_msgsSrvSetIOSignal_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/SetIOSignal_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvSetIOSignal_Request(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvSetIOSignal_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/SetIOSignal_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvSetIOSignal_Response
{
    /// @brief Original abb_robot_msgs/srv/SetIOSignal_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/srv/SetIOSignal_Response.message field.
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
    enum codecIdentity = "UWVMROS1_1fa28cc3160d51f71d0740cbe145663ec360d6fa488c2a6bf14ad6ab92004a75";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/SetIOSignal_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvSetIOSignal_Response(ref Ros2Abb_robot_msgsSrvSetIOSignal_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/SetIOSignal_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvSetIOSignal_Response(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvSetIOSignal_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/SetRAPIDBool_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 13..205 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvSetRAPIDBool_Request
{
    /// @brief Original abb_robot_msgs/srv/SetRAPIDBool_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath field_path;
    /// @brief Original abb_robot_msgs/srv/SetRAPIDBool_Request.value field.
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
    enum codecIdentity = "UWVMROS1_4e707e429acc860d032d216bcd2c1eb1a0f731fad7e7c0bef7beed810c6e4a52";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDBool_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvSetRAPIDBool_Request(ref Ros2Abb_robot_msgsSrvSetRAPIDBool_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDBool_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvSetRAPIDBool_Request(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvSetRAPIDBool_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/SetRAPIDBool_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvSetRAPIDBool_Response
{
    /// @brief Original abb_robot_msgs/srv/SetRAPIDBool_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/srv/SetRAPIDBool_Response.message field.
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
    enum codecIdentity = "UWVMROS1_80d2b31c93771cfa8a19ff82a3d9d63951bf9d28c039d2725017327fa3b0114a";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDBool_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvSetRAPIDBool_Response(ref Ros2Abb_robot_msgsSrvSetRAPIDBool_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDBool_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvSetRAPIDBool_Response(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvSetRAPIDBool_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/SetRAPIDDnum_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 20..212 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request
{
    /// @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath field_path;
    /// @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Request.value field.
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
    enum codecIdentity = "UWVMROS1_cece086311a908f12c0b0ab3988ca829e891749c74687c717d2a52bfb8ceaf76";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDDnum_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Request(ref Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDDnum_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Request(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/SetRAPIDDnum_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response
{
    /// @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/srv/SetRAPIDDnum_Response.message field.
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
    enum codecIdentity = "UWVMROS1_e5f77fe9850f109d873a2784b9690c8aa0632b9e91d158ed4d14daf1aaf90ea6";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDDnum_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Response(ref Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDDnum_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvSetRAPIDDnum_Response(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/SetRAPIDNum_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..208 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvSetRAPIDNum_Request
{
    /// @brief Original abb_robot_msgs/srv/SetRAPIDNum_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath field_path;
    /// @brief Original abb_robot_msgs/srv/SetRAPIDNum_Request.value field.
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
    enum codecIdentity = "UWVMROS1_a5bee9a64be69dc4246f68837a44362f52795ae3c6420a2df47685606283ea02";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDNum_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvSetRAPIDNum_Request(ref Ros2Abb_robot_msgsSrvSetRAPIDNum_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDNum_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvSetRAPIDNum_Request(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvSetRAPIDNum_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/SetRAPIDNum_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvSetRAPIDNum_Response
{
    /// @brief Original abb_robot_msgs/srv/SetRAPIDNum_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/srv/SetRAPIDNum_Response.message field.
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
    enum codecIdentity = "UWVMROS1_744f3c5fac58ff098c96cedcea94fe6fa87c88ceb89674449f50fbdcd1ca30bb";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDNum_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvSetRAPIDNum_Response(ref Ros2Abb_robot_msgsSrvSetRAPIDNum_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDNum_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvSetRAPIDNum_Response(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvSetRAPIDNum_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/SetRAPIDString_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..720 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvSetRAPIDString_Request
{
    /// @brief Original abb_robot_msgs/srv/SetRAPIDString_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath field_path;
    /// @brief Original abb_robot_msgs/srv/SetRAPIDString_Request.value field.
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
    enum codecIdentity = "UWVMROS1_f21c45f3f8cd4c0b50781bdd487fdc6ec0c0b35adbc7e36e9ca5b7cc47c3d461";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDString_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvSetRAPIDString_Request(ref Ros2Abb_robot_msgsSrvSetRAPIDString_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDString_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvSetRAPIDString_Request(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvSetRAPIDString_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/SetRAPIDString_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvSetRAPIDString_Response
{
    /// @brief Original abb_robot_msgs/srv/SetRAPIDString_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/srv/SetRAPIDString_Response.message field.
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
    enum codecIdentity = "UWVMROS1_1496ef4f4ffe48fe74b9e25b925c19f10f0e171a9d33fa2e56c15aa5cfbe4774";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDString_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvSetRAPIDString_Response(ref Ros2Abb_robot_msgsSrvSetRAPIDString_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDString_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvSetRAPIDString_Response(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvSetRAPIDString_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/SetRAPIDSymbol_Request value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..720 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request
{
    /// @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Request.path field.
    /// @details Original type abb_robot_msgs/msg/RAPIDSymbolPath. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Abb_robot_msgsMsgRAPIDSymbolPath field_path;
    /// @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Request.value field.
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
    enum codecIdentity = "UWVMROS1_928d427801b79775595fed6e3779f9ba9e7e8e27f2de66cf79610cb51bb72bcf";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDSymbol_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Request(ref Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDSymbol_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Request(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/SetRAPIDSymbol_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response
{
    /// @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/srv/SetRAPIDSymbol_Response.message field.
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
    enum codecIdentity = "UWVMROS1_e156616a51bf4691a1c3853d62a8b0c43bb17d1a330cd4e7a58eceb5fe442382";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/SetRAPIDSymbol_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Response(ref Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/SetRAPIDSymbol_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvSetRAPIDSymbol_Response(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/SetSpeedRatio_Request value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvSetSpeedRatio_Request
{
    /// @brief Original abb_robot_msgs/srv/SetSpeedRatio_Request.speed_ratio field.
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
    enum codecIdentity = "UWVMROS1_da30970377ba1bc151b544560773f02e17f4eaed56eb4c8d791de72bdef04355";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/SetSpeedRatio_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvSetSpeedRatio_Request(ref Ros2Abb_robot_msgsSrvSetSpeedRatio_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/SetSpeedRatio_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvSetSpeedRatio_Request(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvSetSpeedRatio_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/SetSpeedRatio_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvSetSpeedRatio_Response
{
    /// @brief Original abb_robot_msgs/srv/SetSpeedRatio_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/srv/SetSpeedRatio_Response.message field.
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
    enum codecIdentity = "UWVMROS1_25e6d7edaa0503a4d45d893e886db4215bfd0af8711307c141bc63552609e3a5";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/SetSpeedRatio_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvSetSpeedRatio_Response(ref Ros2Abb_robot_msgsSrvSetSpeedRatio_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/SetSpeedRatio_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvSetSpeedRatio_Response(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvSetSpeedRatio_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/TriggerWithResultCode_Request value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request
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
    enum codecIdentity = "UWVMROS1_fd1d49c3b4e489464c6662f306210137f71d15192f64cd8a8abf93acd5fbff8d";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/TriggerWithResultCode_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Request(ref Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/TriggerWithResultCode_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Request(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete abb_robot_msgs/srv/TriggerWithResultCode_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 6..518 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response
{
    /// @brief Original abb_robot_msgs/srv/TriggerWithResultCode_Response.result_code field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_result_code;
    /// @brief Original abb_robot_msgs/srv/TriggerWithResultCode_Response.message field.
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
    enum codecIdentity = "UWVMROS1_e38422b2a008f07e108505ac3ce65c24189a1d6657e88a6289e17d7d4ae38d51";
}
/// @brief Encode every field of complete abb_robot_msgs/srv/TriggerWithResultCode_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Response(ref Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete abb_robot_msgs/srv/TriggerWithResultCode_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Abb_robot_msgsSrvTriggerWithResultCode_Response(const(ubyte)[] bytes, out Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response value) @nogc nothrow
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
    /// @brief Validate the complete original time-domain invariant.
    /// @details Nanoseconds stay in the original normalized domain; no clock or unit conversion
    /// occurs.
    /// @return Zero or canonical error 22.
    uint validate() const @nogc nothrow
    {
        return this.field_nanosec >= 1000000000 ? 22 : 0;
    }
}
/// @brief Encode every field of complete builtin_interfaces/msg/Duration.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Builtin_interfacesMsgDuration(ref Ros2Builtin_interfacesMsgDuration value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete builtin_interfaces/msg/Duration.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Builtin_interfacesMsgDuration(const(ubyte)[] bytes, out Ros2Builtin_interfacesMsgDuration value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete trajectory_msgs/msg/JointTrajectoryPoint value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 24..408 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Trajectory_msgsMsgJointTrajectoryPoint
{
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.positions field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_positions;
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.velocities field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_velocities;
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_accelerations;
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.effort field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_effort;
    /// @brief Original trajectory_msgs/msg/JointTrajectoryPoint.time_from_start field.
    /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Builtin_interfacesMsgDuration field_time_from_start;
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
    enum codecIdentity = "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5";
}
/// @brief Encode every field of complete trajectory_msgs/msg/JointTrajectoryPoint.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Trajectory_msgsMsgJointTrajectoryPoint(ref Ros2Trajectory_msgsMsgJointTrajectoryPoint value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete trajectory_msgs/msg/JointTrajectoryPoint.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Trajectory_msgsMsgJointTrajectoryPoint(const(ubyte)[] bytes, out Ros2Trajectory_msgsMsgJointTrajectoryPoint value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete trajectory_msgs/msg/JointTrajectory value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 20..4164 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Trajectory_msgsMsgJointTrajectory
{
    /// @brief Original trajectory_msgs/msg/JointTrajectory.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original trajectory_msgs/msg/JointTrajectory.joint_names field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Text!(64, false), 12) field_joint_names;
    /// @brief Original trajectory_msgs/msg/JointTrajectory.points field.
    /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Shape sequence; bound/count
    /// 8 elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Trajectory_msgsMsgJointTrajectoryPoint, 8) field_points;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4164;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0";
}
/// @brief Encode every field of complete trajectory_msgs/msg/JointTrajectory.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Trajectory_msgsMsgJointTrajectory(ref Ros2Trajectory_msgsMsgJointTrajectory value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete trajectory_msgs/msg/JointTrajectory.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Trajectory_msgsMsgJointTrajectory(const(ubyte)[] bytes, out Ros2Trajectory_msgsMsgJointTrajectory value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete geometry_msgs/msg/Vector3 value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Geometry_msgsMsgVector3
{
    /// @brief Original geometry_msgs/msg/Vector3.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_x = 0;
    /// @brief Original geometry_msgs/msg/Vector3.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_y = 0;
    /// @brief Original geometry_msgs/msg/Vector3.z field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_z = 0;
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
    enum codecIdentity = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";
}
/// @brief Encode every field of complete geometry_msgs/msg/Vector3.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Geometry_msgsMsgVector3(ref Ros2Geometry_msgsMsgVector3 value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete geometry_msgs/msg/Vector3.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Geometry_msgsMsgVector3(const(ubyte)[] bytes, out Ros2Geometry_msgsMsgVector3 value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete geometry_msgs/msg/Quaternion value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 32..32 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Geometry_msgsMsgQuaternion
{
    /// @brief Original geometry_msgs/msg/Quaternion.x field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_x = 0.0;
    /// @brief Original geometry_msgs/msg/Quaternion.y field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_y = 0.0;
    /// @brief Original geometry_msgs/msg/Quaternion.z field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_z = 0.0;
    /// @brief Original geometry_msgs/msg/Quaternion.w field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_w = 1.0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 32;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 32;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
}
/// @brief Encode every field of complete geometry_msgs/msg/Quaternion.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Geometry_msgsMsgQuaternion(ref Ros2Geometry_msgsMsgQuaternion value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete geometry_msgs/msg/Quaternion.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Geometry_msgsMsgQuaternion(const(ubyte)[] bytes, out Ros2Geometry_msgsMsgQuaternion value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete geometry_msgs/msg/Transform value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 56..56 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Geometry_msgsMsgTransform
{
    /// @brief Original geometry_msgs/msg/Transform.translation field.
    /// @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Geometry_msgsMsgVector3 field_translation;
    /// @brief Original geometry_msgs/msg/Transform.rotation field.
    /// @details Original type geometry_msgs/msg/Quaternion. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Geometry_msgsMsgQuaternion field_rotation;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 56;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 56;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b";
}
/// @brief Encode every field of complete geometry_msgs/msg/Transform.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Geometry_msgsMsgTransform(ref Ros2Geometry_msgsMsgTransform value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete geometry_msgs/msg/Transform.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Geometry_msgsMsgTransform(const(ubyte)[] bytes, out Ros2Geometry_msgsMsgTransform value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete geometry_msgs/msg/Twist value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 48..48 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Geometry_msgsMsgTwist
{
    /// @brief Original geometry_msgs/msg/Twist.linear field.
    /// @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Geometry_msgsMsgVector3 field_linear;
    /// @brief Original geometry_msgs/msg/Twist.angular field.
    /// @details Original type geometry_msgs/msg/Vector3. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Geometry_msgsMsgVector3 field_angular;
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
    enum codecIdentity = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e";
}
/// @brief Encode every field of complete geometry_msgs/msg/Twist.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Geometry_msgsMsgTwist(ref Ros2Geometry_msgsMsgTwist value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete geometry_msgs/msg/Twist.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Geometry_msgsMsgTwist(const(ubyte)[] bytes, out Ros2Geometry_msgsMsgTwist value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 20..324 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
{
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms field.
    /// @details Original type geometry_msgs/msg/Transform. Shape sequence; bound/count 2 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Geometry_msgsMsgTransform, 2) field_transforms;
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities field.
    /// @details Original type geometry_msgs/msg/Twist. Shape sequence; bound/count 2 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Geometry_msgsMsgTwist, 2) field_velocities;
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations field.
    /// @details Original type geometry_msgs/msg/Twist. Shape sequence; bound/count 2 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Geometry_msgsMsgTwist, 2) field_accelerations;
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start field.
    /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Builtin_interfacesMsgDuration field_time_from_start;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 324;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242";
}
/// @brief Encode every field of complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(ref Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(const(ubyte)[] bytes, out Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete trajectory_msgs/msg/MultiDOFJointTrajectory value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 20..1516 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
{
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Text!(64, false), 2) field_joint_names;
    /// @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory.points field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Shape sequence;
    /// bound/count 4 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint, 4) field_points;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1516;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401";
}
/// @brief Encode every field of complete trajectory_msgs/msg/MultiDOFJointTrajectory.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory(ref Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete trajectory_msgs/msg/MultiDOFJointTrajectory.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory(const(ubyte)[] bytes, out Ros2Trajectory_msgsMsgMultiDOFJointTrajectory value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete control_msgs/msg/JointTolerance value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 28..92 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Control_msgsMsgJointTolerance
{
    /// @brief Original control_msgs/msg/JointTolerance.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(64, false) field_name;
    /// @brief Original control_msgs/msg/JointTolerance.position field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_position = 0;
    /// @brief Original control_msgs/msg/JointTolerance.velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_velocity = 0;
    /// @brief Original control_msgs/msg/JointTolerance.acceleration field.
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
    enum codecIdentity = "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2";
}
/// @brief Encode every field of complete control_msgs/msg/JointTolerance.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Control_msgsMsgJointTolerance(ref Ros2Control_msgsMsgJointTolerance value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete control_msgs/msg/JointTolerance.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Control_msgsMsgJointTolerance(const(ubyte)[] bytes, out Ros2Control_msgsMsgJointTolerance value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete control_msgs/msg/JointComponentTolerance value.
/// @details Retain all 5 original fields and 5 constants. Canonical extent 30..542 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Control_msgsMsgJointComponentTolerance
{
    /// @brief Original control_msgs/msg/JointComponentTolerance.joint_name field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_joint_name;
    /// @brief Original control_msgs/msg/JointComponentTolerance.component field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_component;
    /// @brief Original control_msgs/msg/JointComponentTolerance.position field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_position = 0;
    /// @brief Original control_msgs/msg/JointComponentTolerance.velocity field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_velocity = 0;
    /// @brief Original control_msgs/msg/JointComponentTolerance.acceleration field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_acceleration = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 30;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 542;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342";
    /// @brief Original control_msgs/msg/JointComponentTolerance.X_AXIS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_X_AXIS = 1;
    /// @brief Original control_msgs/msg/JointComponentTolerance.Y_AXIS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_Y_AXIS = 2;
    /// @brief Original control_msgs/msg/JointComponentTolerance.Z_AXIS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_Z_AXIS = 3;
    /// @brief Original control_msgs/msg/JointComponentTolerance.TRANSLATION constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_TRANSLATION = 4;
    /// @brief Original control_msgs/msg/JointComponentTolerance.ROTATION constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum ushort constant_ROTATION = 5;
}
/// @brief Encode every field of complete control_msgs/msg/JointComponentTolerance.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Control_msgsMsgJointComponentTolerance(ref Ros2Control_msgsMsgJointComponentTolerance value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete control_msgs/msg/JointComponentTolerance.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Control_msgsMsgJointComponentTolerance(const(ubyte)[] bytes, out Ros2Control_msgsMsgJointComponentTolerance value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete control_msgs/action/FollowJointTrajectory_Goal value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 64..20920 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Control_msgsActionFollowJointTrajectory_Goal
{
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.trajectory field.
    /// @details Original type trajectory_msgs/msg/JointTrajectory. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Trajectory_msgsMsgJointTrajectory field_trajectory;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectory. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectory field_multi_dof_trajectory;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.path_tolerance field.
    /// @details Original type control_msgs/msg/JointTolerance. Shape sequence; bound/count 12
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Control_msgsMsgJointTolerance, 12) field_path_tolerance;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance
    /// field.
    /// @details Original type control_msgs/msg/JointComponentTolerance. Shape sequence; bound/count
    /// 12 elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Control_msgsMsgJointComponentTolerance, 12) field_component_path_tolerance;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance field.
    /// @details Original type control_msgs/msg/JointTolerance. Shape sequence; bound/count 12
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Control_msgsMsgJointTolerance, 12) field_goal_tolerance;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance
    /// field.
    /// @details Original type control_msgs/msg/JointComponentTolerance. Shape sequence; bound/count
    /// 12 elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Ros2Control_msgsMsgJointComponentTolerance, 12) field_component_goal_tolerance;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance field.
    /// @details Original type builtin_interfaces/msg/Duration. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Builtin_interfacesMsgDuration field_goal_time_tolerance;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 64;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 20920;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16";
}
/// @brief Encode every field of complete control_msgs/action/FollowJointTrajectory_Goal.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Control_msgsActionFollowJointTrajectory_Goal(ref Ros2Control_msgsActionFollowJointTrajectory_Goal value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete control_msgs/action/FollowJointTrajectory_Goal.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Control_msgsActionFollowJointTrajectory_Goal(const(ubyte)[] bytes, out Ros2Control_msgsActionFollowJointTrajectory_Goal value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete control_msgs/action/FollowJointTrajectory_Result value.
/// @details Retain all 2 original fields and 6 constants. Canonical extent 8..4104 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Control_msgsActionFollowJointTrajectory_Result
{
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.error_code field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_error_code;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.error_string field.
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
    enum codecIdentity = "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70";
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.SUCCESSFUL constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum int constant_SUCCESSFUL = 0;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_GOAL constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum int constant_INVALID_GOAL = -1;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_JOINTS constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum int constant_INVALID_JOINTS = -2;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.OLD_HEADER_TIMESTAMP
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum int constant_OLD_HEADER_TIMESTAMP = -3;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.PATH_TOLERANCE_VIOLATED
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum int constant_PATH_TOLERANCE_VIOLATED = -4;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Result.GOAL_TOLERANCE_VIOLATED
    /// constant.
    /// @details An immutable source constant consumes no instance or canonical wire field.
    enum int constant_GOAL_TOLERANCE_VIOLATED = -5;
}
/// @brief Encode every field of complete control_msgs/action/FollowJointTrajectory_Result.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Control_msgsActionFollowJointTrajectory_Result(ref Ros2Control_msgsActionFollowJointTrajectory_Result value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete control_msgs/action/FollowJointTrajectory_Result.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Control_msgsActionFollowJointTrajectory_Result(const(ubyte)[] bytes, out Ros2Control_msgsActionFollowJointTrajectory_Result value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete control_msgs/action/FollowJointTrajectory_Feedback value.
/// @details Retain all 9 original fields and 0 constants. Canonical extent 152..4128 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Control_msgsActionFollowJointTrajectory_Feedback
{
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.joint_names field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Text!(64, false), 12) field_joint_names;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.desired field.
    /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Ros2Trajectory_msgsMsgJointTrajectoryPoint field_desired;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.actual field.
    /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Ros2Trajectory_msgsMsgJointTrajectoryPoint field_actual;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.error field.
    /// @details Original type trajectory_msgs/msg/JointTrajectoryPoint. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Ros2Trajectory_msgsMsgJointTrajectoryPoint field_error;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names
    /// field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Shape sequence;
    /// bound/count 2 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Text!(512, false), 2) field_multi_dof_joint_names;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint field_multi_dof_desired;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint field_multi_dof_actual;
    /// @brief Original control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error field.
    /// @details Original type trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint field_multi_dof_error;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 152;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4128;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb";
}
/// @brief Encode every field of complete control_msgs/action/FollowJointTrajectory_Feedback.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Control_msgsActionFollowJointTrajectory_Feedback(ref Ros2Control_msgsActionFollowJointTrajectory_Feedback value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete control_msgs/action/FollowJointTrajectory_Feedback.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Control_msgsActionFollowJointTrajectory_Feedback(const(ubyte)[] bytes, out Ros2Control_msgsActionFollowJointTrajectory_Feedback value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete sensor_msgs/msg/JointState value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 28..1196 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Sensor_msgsMsgJointState
{
    /// @brief Original sensor_msgs/msg/JointState.header field.
    /// @details Original type std_msgs/msg/Header. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Std_msgsMsgHeader field_header;
    /// @brief Original sensor_msgs/msg/JointState.name field.
    /// @details Original type string. String bound 64 bytes; domain utf8. Shape sequence;
    /// bound/count 12 elements. Preserve declared units, frame, signedness and field order. Backing
    /// storage belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence!(Text!(64, false), 12) field_name;
    /// @brief Original sensor_msgs/msg/JointState.position field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_position;
    /// @brief Original sensor_msgs/msg/JointState.velocity field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_velocity;
    /// @brief Original sensor_msgs/msg/JointState.effort field.
    /// @details Original type float64. Shape sequence; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence!(double, 12) field_effort;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 28;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1196;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884";
}
/// @brief Encode every field of complete sensor_msgs/msg/JointState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Sensor_msgsMsgJointState(ref Ros2Sensor_msgsMsgJointState value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete sensor_msgs/msg/JointState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Sensor_msgsMsgJointState(const(ubyte)[] bytes, out Ros2Sensor_msgsMsgJointState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete std_srvs/srv/Trigger_Request value.
/// @details Retain all 0 original fields and 0 constants. Canonical extent 0..0 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Std_srvsSrvTrigger_Request
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
    enum codecIdentity = "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77";
}
/// @brief Encode every field of complete std_srvs/srv/Trigger_Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Std_srvsSrvTrigger_Request(ref Ros2Std_srvsSrvTrigger_Request value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete std_srvs/srv/Trigger_Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Std_srvsSrvTrigger_Request(const(ubyte)[] bytes, out Ros2Std_srvsSrvTrigger_Request value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete std_srvs/srv/Trigger_Response value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..517 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Std_srvsSrvTrigger_Response
{
    /// @brief Original std_srvs/srv/Trigger_Response.success field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_success;
    /// @brief Original std_srvs/srv/Trigger_Response.message field.
    /// @details Original type string. String bound 512 bytes; domain utf8. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    Text!(512, false) field_message;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 5;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 517;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d";
}
/// @brief Encode every field of complete std_srvs/srv/Trigger_Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Std_srvsSrvTrigger_Response(ref Ros2Std_srvsSrvTrigger_Response value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}
/// @brief Decode every field of complete std_srvs/srv/Trigger_Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Std_srvsSrvTrigger_Response(const(ubyte)[] bytes, out Ros2Std_srvsSrvTrigger_Response value) @nogc nothrow
{
    return decode(bytes, value);
}

