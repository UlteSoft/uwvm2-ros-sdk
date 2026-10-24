/// @file records.d
/// @brief Complete owned original Unitree ROS 2 native records and codecs.
/// @details Generated from the admitted source-pinned catalog; no ROS authority is created.
module unitree.d.ros2.records;
import unitree.d.wire;

/// @brief Complete unitree_api/msg/RequestIdentity value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..16 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_apiMsgRequestIdentity
{
    /// @brief Original unitree_api/msg/RequestIdentity.id field.
    /// @details Original type int64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    long field_id;
    /// @brief Original unitree_api/msg/RequestIdentity.api_id field.
    /// @details Original type int64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    long field_api_id;
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
    enum codecIdentity = "UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2";

}
/// @brief Encode every field of complete unitree_api/msg/RequestIdentity.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_apiMsgRequestIdentity(
    ref Ros2Unitree_apiMsgRequestIdentity value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_api/msg/RequestIdentity.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_apiMsgRequestIdentity(const(ubyte)[] bytes, out Ros2Unitree_apiMsgRequestIdentity value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_api/msg/RequestLease value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_apiMsgRequestLease
{
    /// @brief Original unitree_api/msg/RequestLease.id field.
    /// @details Original type int64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    long field_id;
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
    enum codecIdentity = "UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e";

}
/// @brief Encode every field of complete unitree_api/msg/RequestLease.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_apiMsgRequestLease(
    ref Ros2Unitree_apiMsgRequestLease value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_api/msg/RequestLease.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_apiMsgRequestLease(const(ubyte)[] bytes, out Ros2Unitree_apiMsgRequestLease value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_api/msg/RequestPolicy value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..5 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_apiMsgRequestPolicy
{
    /// @brief Original unitree_api/msg/RequestPolicy.priority field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_priority;
    /// @brief Original unitree_api/msg/RequestPolicy.noreply field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    bool field_noreply;
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
    enum codecIdentity = "UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8";

}
/// @brief Encode every field of complete unitree_api/msg/RequestPolicy.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_apiMsgRequestPolicy(
    ref Ros2Unitree_apiMsgRequestPolicy value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_api/msg/RequestPolicy.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_apiMsgRequestPolicy(const(ubyte)[] bytes, out Ros2Unitree_apiMsgRequestPolicy value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_api/msg/RequestHeader value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 29..29 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_apiMsgRequestHeader
{
    /// @brief Original unitree_api/msg/RequestHeader.identity field.
    /// @details Original type unitree_api/msg/RequestIdentity. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Unitree_apiMsgRequestIdentity field_identity;
    /// @brief Original unitree_api/msg/RequestHeader.lease field.
    /// @details Original type unitree_api/msg/RequestLease. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Unitree_apiMsgRequestLease field_lease;
    /// @brief Original unitree_api/msg/RequestHeader.policy field.
    /// @details Original type unitree_api/msg/RequestPolicy. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Unitree_apiMsgRequestPolicy field_policy;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 29;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 29;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0";

}
/// @brief Encode every field of complete unitree_api/msg/RequestHeader.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_apiMsgRequestHeader(
    ref Ros2Unitree_apiMsgRequestHeader value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_api/msg/RequestHeader.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_apiMsgRequestHeader(const(ubyte)[] bytes, out Ros2Unitree_apiMsgRequestHeader value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_api/msg/Request value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 37..4133 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_apiMsgRequest
{
    /// @brief Original unitree_api/msg/Request.header field.
    /// @details Original type unitree_api/msg/RequestHeader. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Unitree_apiMsgRequestHeader field_header;
    /// @brief Original unitree_api/msg/Request.parameter field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Text !(2048, false)field_parameter;
    /// @brief Original unitree_api/msg/Request.binary field.
    /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(ubyte, 2048)field_binary;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 37;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 4133;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192";

}
/// @brief Encode every field of complete unitree_api/msg/Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_apiMsgRequest(
    ref Ros2Unitree_apiMsgRequest value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_api/msg/Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_apiMsgRequest(const(ubyte)[] bytes, out Ros2Unitree_apiMsgRequest value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_api/msg/ResponseStatus value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_apiMsgResponseStatus
{
    /// @brief Original unitree_api/msg/ResponseStatus.code field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_code;
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
    enum codecIdentity = "UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1";

}
/// @brief Encode every field of complete unitree_api/msg/ResponseStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_apiMsgResponseStatus(
    ref Ros2Unitree_apiMsgResponseStatus value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_api/msg/ResponseStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_apiMsgResponseStatus(const(ubyte)[] bytes, out Ros2Unitree_apiMsgResponseStatus value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_api/msg/ResponseHeader value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 20..20 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_apiMsgResponseHeader
{
    /// @brief Original unitree_api/msg/ResponseHeader.identity field.
    /// @details Original type unitree_api/msg/RequestIdentity. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Unitree_apiMsgRequestIdentity field_identity;
    /// @brief Original unitree_api/msg/ResponseHeader.status field.
    /// @details Original type unitree_api/msg/ResponseStatus. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Unitree_apiMsgResponseStatus field_status;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 20;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0";

}
/// @brief Encode every field of complete unitree_api/msg/ResponseHeader.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_apiMsgResponseHeader(
    ref Ros2Unitree_apiMsgResponseHeader value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_api/msg/ResponseHeader.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_apiMsgResponseHeader(const(ubyte)[] bytes, out Ros2Unitree_apiMsgResponseHeader value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_api/msg/Response value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 28..2108 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_apiMsgResponse
{
    /// @brief Original unitree_api/msg/Response.header field.
    /// @details Original type unitree_api/msg/ResponseHeader. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    Ros2Unitree_apiMsgResponseHeader field_header;
    /// @brief Original unitree_api/msg/Response.data field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Text !(2048, false)field_data;
    /// @brief Original unitree_api/msg/Response.binary field.
    /// @details Original type int8. Shape sequence; bound/count 32 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(byte, 32)field_binary;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 28;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 2108;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f";

}
/// @brief Encode every field of complete unitree_api/msg/Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_apiMsgResponse(
    ref Ros2Unitree_apiMsgResponse value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_api/msg/Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_apiMsgResponse(const(ubyte)[] bytes, out Ros2Unitree_apiMsgResponse value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/AudioData value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 12..2060 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgAudioData
{
    /// @brief Original unitree_go/msg/AudioData.time_frame field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ulong field_time_frame;
    /// @brief Original unitree_go/msg/AudioData.data field.
    /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(ubyte, 2048)field_data;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 2060;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe";

}
/// @brief Encode every field of complete unitree_go/msg/AudioData.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgAudioData(
    ref Ros2Unitree_goMsgAudioData value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/AudioData.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgAudioData(const(ubyte)[] bytes, out Ros2Unitree_goMsgAudioData value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/BmsCmd value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgBmsCmd
{
    /// @brief Original unitree_go/msg/BmsCmd.off field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_off;
    /// @brief Original unitree_go/msg/BmsCmd.reserve field.
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
    enum codecIdentity = "UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339";

}
/// @brief Encode every field of complete unitree_go/msg/BmsCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgBmsCmd(ref Ros2Unitree_goMsgBmsCmd value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/BmsCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgBmsCmd(const(ubyte)[] bytes, out Ros2Unitree_goMsgBmsCmd value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/BmsState value.
/// @details Retain all 9 original fields and 0 constants. Canonical extent 44..44 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgBmsState
{
    /// @brief Original unitree_go/msg/BmsState.version_high field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_version_high;
    /// @brief Original unitree_go/msg/BmsState.version_low field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_version_low;
    /// @brief Original unitree_go/msg/BmsState.status field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_status;
    /// @brief Original unitree_go/msg/BmsState.soc field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_soc;
    /// @brief Original unitree_go/msg/BmsState.current field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_current;
    /// @brief Original unitree_go/msg/BmsState.cycle field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_cycle;
    /// @brief Original unitree_go/msg/BmsState.bq_ntc field.
    /// @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    byte[2] field_bq_ntc;
    /// @brief Original unitree_go/msg/BmsState.mcu_ntc field.
    /// @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    byte[2] field_mcu_ntc;
    /// @brief Original unitree_go/msg/BmsState.cell_vol field.
    /// @details Original type uint16. Shape array; bound/count 15 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    ushort[15] field_cell_vol;
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
    enum codecIdentity = "UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0";

}
/// @brief Encode every field of complete unitree_go/msg/BmsState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgBmsState(
    ref Ros2Unitree_goMsgBmsState value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/BmsState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgBmsState(const(ubyte)[] bytes, out Ros2Unitree_goMsgBmsState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/Error value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgError
{
    /// @brief Original unitree_go/msg/Error.source field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_source;
    /// @brief Original unitree_go/msg/Error.state field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_state;
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
    enum codecIdentity = "UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd";

}
/// @brief Encode every field of complete unitree_go/msg/Error.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgError(ref Ros2Unitree_goMsgError value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/Error.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgError(const(ubyte)[] bytes, out Ros2Unitree_goMsgError value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/Go2FrontVideoData value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 20..6164 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgGo2FrontVideoData
{
    /// @brief Original unitree_go/msg/Go2FrontVideoData.time_frame field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ulong field_time_frame;
    /// @brief Original unitree_go/msg/Go2FrontVideoData.video720p field.
    /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(ubyte, 2048)field_video720p;
    /// @brief Original unitree_go/msg/Go2FrontVideoData.video360p field.
    /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(ubyte, 2048)field_video360p;
    /// @brief Original unitree_go/msg/Go2FrontVideoData.video180p field.
    /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(ubyte, 2048)field_video180p;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 6164;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad";

}
/// @brief Encode every field of complete unitree_go/msg/Go2FrontVideoData.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgGo2FrontVideoData(
    ref Ros2Unitree_goMsgGo2FrontVideoData value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/Go2FrontVideoData.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgGo2FrontVideoData(const(ubyte)[] bytes, out Ros2Unitree_goMsgGo2FrontVideoData value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/HeightMap value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 36..2212 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgHeightMap
{
    /// @brief Original unitree_go/msg/HeightMap.stamp field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_stamp = 0;
    /// @brief Original unitree_go/msg/HeightMap.frame_id field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Text !(2048, false)field_frame_id;
    /// @brief Original unitree_go/msg/HeightMap.resolution field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_resolution = 0;
    /// @brief Original unitree_go/msg/HeightMap.width field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_width;
    /// @brief Original unitree_go/msg/HeightMap.height field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_height;
    /// @brief Original unitree_go/msg/HeightMap.origin field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[2] field_origin = 0;
    /// @brief Original unitree_go/msg/HeightMap.data field.
    /// @details Original type float32. Shape sequence; bound/count 32 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(float, 32)field_data;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 36;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 2212;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d";

}
/// @brief Encode every field of complete unitree_go/msg/HeightMap.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgHeightMap(
    ref Ros2Unitree_goMsgHeightMap value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/HeightMap.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgHeightMap(const(ubyte)[] bytes, out Ros2Unitree_goMsgHeightMap value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/IMUState value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 53..53 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgIMUState
{
    /// @brief Original unitree_go/msg/IMUState.quaternion field.
    /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[4] field_quaternion = 0;
    /// @brief Original unitree_go/msg/IMUState.gyroscope field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[3] field_gyroscope = 0;
    /// @brief Original unitree_go/msg/IMUState.accelerometer field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[3] field_accelerometer = 0;
    /// @brief Original unitree_go/msg/IMUState.rpy field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[3] field_rpy = 0;
    /// @brief Original unitree_go/msg/IMUState.temperature field.
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
    enum codecIdentity = "UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc";

}
/// @brief Encode every field of complete unitree_go/msg/IMUState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgIMUState(
    ref Ros2Unitree_goMsgIMUState value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/IMUState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgIMUState(const(ubyte)[] bytes, out Ros2Unitree_goMsgIMUState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/InterfaceConfig value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgInterfaceConfig
{
    /// @brief Original unitree_go/msg/InterfaceConfig.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_mode;
    /// @brief Original unitree_go/msg/InterfaceConfig.value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_value;
    /// @brief Original unitree_go/msg/InterfaceConfig.reserve field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ubyte[2] field_reserve;
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
    enum codecIdentity = "UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110";

}
/// @brief Encode every field of complete unitree_go/msg/InterfaceConfig.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgInterfaceConfig(
    ref Ros2Unitree_goMsgInterfaceConfig value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/InterfaceConfig.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgInterfaceConfig(const(ubyte)[] bytes, out Ros2Unitree_goMsgInterfaceConfig value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/LidarState value.
/// @details Retain all 17 original fields and 0 constants. Canonical extent 81..6225 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgLidarState
{
    /// @brief Original unitree_go/msg/LidarState.stamp field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_stamp = 0;
    /// @brief Original unitree_go/msg/LidarState.firmware_version field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Text !(2048, false)field_firmware_version;
    /// @brief Original unitree_go/msg/LidarState.software_version field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Text !(2048, false)field_software_version;
    /// @brief Original unitree_go/msg/LidarState.sdk_version field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Text !(2048, false)field_sdk_version;
    /// @brief Original unitree_go/msg/LidarState.sys_rotation_speed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_sys_rotation_speed = 0;
    /// @brief Original unitree_go/msg/LidarState.com_rotation_speed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_com_rotation_speed = 0;
    /// @brief Original unitree_go/msg/LidarState.error_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_error_state;
    /// @brief Original unitree_go/msg/LidarState.cloud_frequency field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cloud_frequency = 0;
    /// @brief Original unitree_go/msg/LidarState.cloud_packet_loss_rate field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_cloud_packet_loss_rate = 0;
    /// @brief Original unitree_go/msg/LidarState.cloud_size field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_cloud_size;
    /// @brief Original unitree_go/msg/LidarState.cloud_scan_num field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_cloud_scan_num;
    /// @brief Original unitree_go/msg/LidarState.imu_frequency field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_imu_frequency = 0;
    /// @brief Original unitree_go/msg/LidarState.imu_packet_loss_rate field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_imu_packet_loss_rate = 0;
    /// @brief Original unitree_go/msg/LidarState.imu_rpy field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[3] field_imu_rpy = 0;
    /// @brief Original unitree_go/msg/LidarState.serial_recv_stamp field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    double field_serial_recv_stamp = 0;
    /// @brief Original unitree_go/msg/LidarState.serial_buffer_size field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_serial_buffer_size;
    /// @brief Original unitree_go/msg/LidarState.serial_buffer_read field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_serial_buffer_read;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 81;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 6225;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb";

}
/// @brief Encode every field of complete unitree_go/msg/LidarState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgLidarState(
    ref Ros2Unitree_goMsgLidarState value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/LidarState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgLidarState(const(ubyte)[] bytes, out Ros2Unitree_goMsgLidarState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/MotorCmd value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 33..33 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgMotorCmd
{
    /// @brief Original unitree_go/msg/MotorCmd.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_mode;
    /// @brief Original unitree_go/msg/MotorCmd.q field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_q = 0;
    /// @brief Original unitree_go/msg/MotorCmd.dq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_dq = 0;
    /// @brief Original unitree_go/msg/MotorCmd.tau field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_tau = 0;
    /// @brief Original unitree_go/msg/MotorCmd.kp field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_kp = 0;
    /// @brief Original unitree_go/msg/MotorCmd.kd field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_kd = 0;
    /// @brief Original unitree_go/msg/MotorCmd.reserve field.
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
    enum codecIdentity = "UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989";

}
/// @brief Encode every field of complete unitree_go/msg/MotorCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgMotorCmd(
    ref Ros2Unitree_goMsgMotorCmd value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/MotorCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgMotorCmd(const(ubyte)[] bytes, out Ros2Unitree_goMsgMotorCmd value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/LowCmd value.
/// @details Retain all 14 original fields and 0 constants. Canonical extent 749..749 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgLowCmd
{
    /// @brief Original unitree_go/msg/LowCmd.head field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ubyte[2] field_head;
    /// @brief Original unitree_go/msg/LowCmd.level_flag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_level_flag;
    /// @brief Original unitree_go/msg/LowCmd.frame_reserve field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_frame_reserve;
    /// @brief Original unitree_go/msg/LowCmd.sn field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[2] field_sn;
    /// @brief Original unitree_go/msg/LowCmd.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[2] field_version;
    /// @brief Original unitree_go/msg/LowCmd.bandwidth field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_bandwidth;
    /// @brief Original unitree_go/msg/LowCmd.motor_cmd field.
    /// @details Original type unitree_go/msg/MotorCmd. Shape array; bound/count 20 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Ros2Unitree_goMsgMotorCmd[20] field_motor_cmd;
    /// @brief Original unitree_go/msg/LowCmd.bms_cmd field.
    /// @details Original type unitree_go/msg/BmsCmd. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Unitree_goMsgBmsCmd field_bms_cmd;
    /// @brief Original unitree_go/msg/LowCmd.wireless_remote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ubyte[40] field_wireless_remote;
    /// @brief Original unitree_go/msg/LowCmd.led field.
    /// @details Original type uint8. Shape array; bound/count 12 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ubyte[12] field_led;
    /// @brief Original unitree_go/msg/LowCmd.fan field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ubyte[2] field_fan;
    /// @brief Original unitree_go/msg/LowCmd.gpio field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_gpio;
    /// @brief Original unitree_go/msg/LowCmd.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_reserve;
    /// @brief Original unitree_go/msg/LowCmd.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_crc;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 749;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 749;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63";

}
/// @brief Encode every field of complete unitree_go/msg/LowCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgLowCmd(ref Ros2Unitree_goMsgLowCmd value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/LowCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgLowCmd(const(ubyte)[] bytes, out Ros2Unitree_goMsgLowCmd value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/MotorState value.
/// @details Retain all 11 original fields and 0 constants. Canonical extent 42..42 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgMotorState
{
    /// @brief Original unitree_go/msg/MotorState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_mode;
    /// @brief Original unitree_go/msg/MotorState.q field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_q = 0;
    /// @brief Original unitree_go/msg/MotorState.dq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_dq = 0;
    /// @brief Original unitree_go/msg/MotorState.ddq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ddq = 0;
    /// @brief Original unitree_go/msg/MotorState.tau_est field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_tau_est = 0;
    /// @brief Original unitree_go/msg/MotorState.q_raw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_q_raw = 0;
    /// @brief Original unitree_go/msg/MotorState.dq_raw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_dq_raw = 0;
    /// @brief Original unitree_go/msg/MotorState.ddq_raw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ddq_raw = 0;
    /// @brief Original unitree_go/msg/MotorState.temperature field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_temperature;
    /// @brief Original unitree_go/msg/MotorState.lost field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_lost;
    /// @brief Original unitree_go/msg/MotorState.reserve field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[2] field_reserve;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 42;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 42;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62";

}
/// @brief Encode every field of complete unitree_go/msg/MotorState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgMotorState(
    ref Ros2Unitree_goMsgMotorState value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/MotorState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgMotorState(const(ubyte)[] bytes, out Ros2Unitree_goMsgMotorState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/LowState value.
/// @details Retain all 22 original fields and 0 constants. Canonical extent 1050..1050 bytes.
/// Native registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgLowState
{
    /// @brief Original unitree_go/msg/LowState.head field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ubyte[2] field_head;
    /// @brief Original unitree_go/msg/LowState.level_flag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_level_flag;
    /// @brief Original unitree_go/msg/LowState.frame_reserve field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_frame_reserve;
    /// @brief Original unitree_go/msg/LowState.sn field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[2] field_sn;
    /// @brief Original unitree_go/msg/LowState.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[2] field_version;
    /// @brief Original unitree_go/msg/LowState.bandwidth field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_bandwidth;
    /// @brief Original unitree_go/msg/LowState.imu_state field.
    /// @details Original type unitree_go/msg/IMUState. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Unitree_goMsgIMUState field_imu_state;
    /// @brief Original unitree_go/msg/LowState.motor_state field.
    /// @details Original type unitree_go/msg/MotorState. Shape array; bound/count 20 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Ros2Unitree_goMsgMotorState[20] field_motor_state;
    /// @brief Original unitree_go/msg/LowState.bms_state field.
    /// @details Original type unitree_go/msg/BmsState. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Unitree_goMsgBmsState field_bms_state;
    /// @brief Original unitree_go/msg/LowState.foot_force field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    short[4] field_foot_force;
    /// @brief Original unitree_go/msg/LowState.foot_force_est field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    short[4] field_foot_force_est;
    /// @brief Original unitree_go/msg/LowState.tick field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_tick;
    /// @brief Original unitree_go/msg/LowState.wireless_remote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ubyte[40] field_wireless_remote;
    /// @brief Original unitree_go/msg/LowState.bit_flag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_bit_flag;
    /// @brief Original unitree_go/msg/LowState.adc_reel field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_adc_reel = 0;
    /// @brief Original unitree_go/msg/LowState.temperature_ntc1 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_temperature_ntc1;
    /// @brief Original unitree_go/msg/LowState.temperature_ntc2 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    byte field_temperature_ntc2;
    /// @brief Original unitree_go/msg/LowState.power_v field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_power_v = 0;
    /// @brief Original unitree_go/msg/LowState.power_a field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_power_a = 0;
    /// @brief Original unitree_go/msg/LowState.fan_frequency field.
    /// @details Original type uint16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ushort[4] field_fan_frequency;
    /// @brief Original unitree_go/msg/LowState.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_reserve;
    /// @brief Original unitree_go/msg/LowState.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_crc;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 1050;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1050;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab";

}
/// @brief Encode every field of complete unitree_go/msg/LowState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgLowState(
    ref Ros2Unitree_goMsgLowState value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/LowState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgLowState(const(ubyte)[] bytes, out Ros2Unitree_goMsgLowState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/MotorCmds value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..1060 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgMotorCmds
{
    /// @brief Original unitree_go/msg/MotorCmds.cmds field.
    /// @details Original type unitree_go/msg/MotorCmd. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Sequence !(Ros2Unitree_goMsgMotorCmd, 32)field_cmds;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1060;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3";

}
/// @brief Encode every field of complete unitree_go/msg/MotorCmds.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgMotorCmds(
    ref Ros2Unitree_goMsgMotorCmds value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/MotorCmds.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgMotorCmds(const(ubyte)[] bytes, out Ros2Unitree_goMsgMotorCmds value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/MotorStates value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..1348 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgMotorStates
{
    /// @brief Original unitree_go/msg/MotorStates.states field.
    /// @details Original type unitree_go/msg/MotorState. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Sequence !(Ros2Unitree_goMsgMotorState, 32)field_states;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1348;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e";

}
/// @brief Encode every field of complete unitree_go/msg/MotorStates.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgMotorStates(
    ref Ros2Unitree_goMsgMotorStates value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/MotorStates.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgMotorStates(const(ubyte)[] bytes, out Ros2Unitree_goMsgMotorStates value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/PathPoint value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 28..28 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgPathPoint
{
    /// @brief Original unitree_go/msg/PathPoint.t_from_start field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_t_from_start = 0;
    /// @brief Original unitree_go/msg/PathPoint.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_x = 0;
    /// @brief Original unitree_go/msg/PathPoint.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_y = 0;
    /// @brief Original unitree_go/msg/PathPoint.yaw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_yaw = 0;
    /// @brief Original unitree_go/msg/PathPoint.vx field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_vx = 0;
    /// @brief Original unitree_go/msg/PathPoint.vy field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_vy = 0;
    /// @brief Original unitree_go/msg/PathPoint.vyaw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_vyaw = 0;
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
    enum codecIdentity = "UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4";

}
/// @brief Encode every field of complete unitree_go/msg/PathPoint.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgPathPoint(
    ref Ros2Unitree_goMsgPathPoint value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/PathPoint.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgPathPoint(const(ubyte)[] bytes, out Ros2Unitree_goMsgPathPoint value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/Req value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..4104 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgReq
{
    /// @brief Original unitree_go/msg/Req.uuid field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Text !(2048, false)field_uuid;
    /// @brief Original unitree_go/msg/Req.body field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Text !(2048, false)field_body;
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
    enum codecIdentity = "UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8";

}
/// @brief Encode every field of complete unitree_go/msg/Req.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgReq(ref Ros2Unitree_goMsgReq value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/Req.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgReq(const(ubyte)[] bytes, out Ros2Unitree_goMsgReq value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/Res value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 12..6156 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgRes
{
    /// @brief Original unitree_go/msg/Res.uuid field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Text !(2048, false)field_uuid;
    /// @brief Original unitree_go/msg/Res.data field.
    /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Sequence !(ubyte, 2048)field_data;
    /// @brief Original unitree_go/msg/Res.body field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    Text !(2048, false)field_body;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 6156;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963";

}
/// @brief Encode every field of complete unitree_go/msg/Res.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgRes(ref Ros2Unitree_goMsgRes value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/Res.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgRes(const(ubyte)[] bytes, out Ros2Unitree_goMsgRes value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/SportModeCmd value.
/// @details Retain all 11 original fields and 0 constants. Canonical extent 887..887 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgSportModeCmd
{
    /// @brief Original unitree_go/msg/SportModeCmd.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_mode;
    /// @brief Original unitree_go/msg/SportModeCmd.gait_type field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_gait_type;
    /// @brief Original unitree_go/msg/SportModeCmd.speed_level field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_speed_level;
    /// @brief Original unitree_go/msg/SportModeCmd.foot_raise_height field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_foot_raise_height = 0;
    /// @brief Original unitree_go/msg/SportModeCmd.body_height field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_body_height = 0;
    /// @brief Original unitree_go/msg/SportModeCmd.position field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[2] field_position = 0;
    /// @brief Original unitree_go/msg/SportModeCmd.euler field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[3] field_euler = 0;
    /// @brief Original unitree_go/msg/SportModeCmd.velocity field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[2] field_velocity = 0;
    /// @brief Original unitree_go/msg/SportModeCmd.yaw_speed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_yaw_speed = 0;
    /// @brief Original unitree_go/msg/SportModeCmd.bms_cmd field.
    /// @details Original type unitree_go/msg/BmsCmd. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    Ros2Unitree_goMsgBmsCmd field_bms_cmd;
    /// @brief Original unitree_go/msg/SportModeCmd.path_point field.
    /// @details Original type unitree_go/msg/PathPoint. Shape array; bound/count 30 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Ros2Unitree_goMsgPathPoint[30] field_path_point;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 887;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 887;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c";

}
/// @brief Encode every field of complete unitree_go/msg/SportModeCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgSportModeCmd(
    ref Ros2Unitree_goMsgSportModeCmd value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/SportModeCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgSportModeCmd(const(ubyte)[] bytes, out Ros2Unitree_goMsgSportModeCmd value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/TimeSpec value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgTimeSpec
{
    /// @brief Original unitree_go/msg/TimeSpec.sec field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_sec;
    /// @brief Original unitree_go/msg/TimeSpec.nanosec field.
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
    enum codecIdentity = "UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4";

}
/// @brief Encode every field of complete unitree_go/msg/TimeSpec.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgTimeSpec(
    ref Ros2Unitree_goMsgTimeSpec value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/TimeSpec.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgTimeSpec(const(ubyte)[] bytes, out Ros2Unitree_goMsgTimeSpec value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/SportModeState value.
/// @details Retain all 15 original fields and 0 constants. Canonical extent 227..227 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgSportModeState
{
    /// @brief Original unitree_go/msg/SportModeState.stamp field.
    /// @details Original type unitree_go/msg/TimeSpec. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Unitree_goMsgTimeSpec field_stamp;
    /// @brief Original unitree_go/msg/SportModeState.error_code field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_error_code;
    /// @brief Original unitree_go/msg/SportModeState.imu_state field.
    /// @details Original type unitree_go/msg/IMUState. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Unitree_goMsgIMUState field_imu_state;
    /// @brief Original unitree_go/msg/SportModeState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_mode;
    /// @brief Original unitree_go/msg/SportModeState.progress field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_progress = 0;
    /// @brief Original unitree_go/msg/SportModeState.gait_type field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_gait_type;
    /// @brief Original unitree_go/msg/SportModeState.foot_raise_height field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_foot_raise_height = 0;
    /// @brief Original unitree_go/msg/SportModeState.position field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[3] field_position = 0;
    /// @brief Original unitree_go/msg/SportModeState.body_height field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_body_height = 0;
    /// @brief Original unitree_go/msg/SportModeState.velocity field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[3] field_velocity = 0;
    /// @brief Original unitree_go/msg/SportModeState.yaw_speed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_yaw_speed = 0;
    /// @brief Original unitree_go/msg/SportModeState.range_obstacle field.
    /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[4] field_range_obstacle = 0;
    /// @brief Original unitree_go/msg/SportModeState.foot_force field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    short[4] field_foot_force;
    /// @brief Original unitree_go/msg/SportModeState.foot_position_body field.
    /// @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[12] field_foot_position_body = 0;
    /// @brief Original unitree_go/msg/SportModeState.foot_speed_body field.
    /// @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[12] field_foot_speed_body = 0;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 227;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 227;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760";

}
/// @brief Encode every field of complete unitree_go/msg/SportModeState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgSportModeState(
    ref Ros2Unitree_goMsgSportModeState value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/SportModeState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgSportModeState(const(ubyte)[] bytes, out Ros2Unitree_goMsgSportModeState value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/UwbState value.
/// @details Retain all 17 original fields and 0 constants. Canonical extent 55..55 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgUwbState
{
    /// @brief Original unitree_go/msg/UwbState.version field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ubyte[2] field_version;
    /// @brief Original unitree_go/msg/UwbState.channel field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_channel;
    /// @brief Original unitree_go/msg/UwbState.joy_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_joy_mode;
    /// @brief Original unitree_go/msg/UwbState.orientation_est field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_orientation_est = 0;
    /// @brief Original unitree_go/msg/UwbState.pitch_est field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_pitch_est = 0;
    /// @brief Original unitree_go/msg/UwbState.distance_est field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_distance_est = 0;
    /// @brief Original unitree_go/msg/UwbState.yaw_est field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_yaw_est = 0;
    /// @brief Original unitree_go/msg/UwbState.tag_roll field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_tag_roll = 0;
    /// @brief Original unitree_go/msg/UwbState.tag_pitch field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_tag_pitch = 0;
    /// @brief Original unitree_go/msg/UwbState.tag_yaw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_tag_yaw = 0;
    /// @brief Original unitree_go/msg/UwbState.base_roll field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_base_roll = 0;
    /// @brief Original unitree_go/msg/UwbState.base_pitch field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_base_pitch = 0;
    /// @brief Original unitree_go/msg/UwbState.base_yaw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_base_yaw = 0;
    /// @brief Original unitree_go/msg/UwbState.joystick field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[2] field_joystick = 0;
    /// @brief Original unitree_go/msg/UwbState.error_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_error_state;
    /// @brief Original unitree_go/msg/UwbState.buttons field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_buttons;
    /// @brief Original unitree_go/msg/UwbState.enabled_from_app field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_enabled_from_app;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 55;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 55;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34";

}
/// @brief Encode every field of complete unitree_go/msg/UwbState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgUwbState(
    ref Ros2Unitree_goMsgUwbState value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/UwbState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgUwbState(const(ubyte)[] bytes, out Ros2Unitree_goMsgUwbState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/UwbSwitch value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgUwbSwitch
{
    /// @brief Original unitree_go/msg/UwbSwitch.enabled field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_enabled;
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
    enum codecIdentity = "UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5";

}
/// @brief Encode every field of complete unitree_go/msg/UwbSwitch.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgUwbSwitch(
    ref Ros2Unitree_goMsgUwbSwitch value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/UwbSwitch.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgUwbSwitch(const(ubyte)[] bytes, out Ros2Unitree_goMsgUwbSwitch value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_go/msg/WirelessController value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 18..18 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_goMsgWirelessController
{
    /// @brief Original unitree_go/msg/WirelessController.lx field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_lx = 0;
    /// @brief Original unitree_go/msg/WirelessController.ly field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ly = 0;
    /// @brief Original unitree_go/msg/WirelessController.rx field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_rx = 0;
    /// @brief Original unitree_go/msg/WirelessController.ry field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ry = 0;
    /// @brief Original unitree_go/msg/WirelessController.keys field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_keys;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 18;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 18;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438";

}
/// @brief Encode every field of complete unitree_go/msg/WirelessController.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_goMsgWirelessController(
    ref Ros2Unitree_goMsgWirelessController value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_go/msg/WirelessController.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_goMsgWirelessController(const(ubyte)[] bytes, out Ros2Unitree_goMsgWirelessController value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_hg/msg/BmsCmd value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 41..41 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_hgMsgBmsCmd
{
    /// @brief Original unitree_hg/msg/BmsCmd.cmd field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_cmd;
    /// @brief Original unitree_hg/msg/BmsCmd.reserve field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ubyte[40] field_reserve;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 41;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 41;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de";

}
/// @brief Encode every field of complete unitree_hg/msg/BmsCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_hgMsgBmsCmd(ref Ros2Unitree_hgMsgBmsCmd value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_hg/msg/BmsCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_hgMsgBmsCmd(const(ubyte)[] bytes, out Ros2Unitree_hgMsgBmsCmd value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_hg/msg/BmsState value.
/// @details Retain all 13 original fields and 0 constants. Canonical extent 161..161 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_hgMsgBmsState
{
    /// @brief Original unitree_hg/msg/BmsState.version_high field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_version_high;
    /// @brief Original unitree_hg/msg/BmsState.version_low field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_version_low;
    /// @brief Original unitree_hg/msg/BmsState.fn field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_fn;
    /// @brief Original unitree_hg/msg/BmsState.cell_vol field.
    /// @details Original type uint16. Shape array; bound/count 40 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    ushort[40] field_cell_vol;
    /// @brief Original unitree_hg/msg/BmsState.bmsvoltage field.
    /// @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[3] field_bmsvoltage;
    /// @brief Original unitree_hg/msg/BmsState.current field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    int field_current;
    /// @brief Original unitree_hg/msg/BmsState.soc field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_soc;
    /// @brief Original unitree_hg/msg/BmsState.soh field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_soh;
    /// @brief Original unitree_hg/msg/BmsState.temperature field.
    /// @details Original type int16. Shape array; bound/count 12 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    short[12] field_temperature;
    /// @brief Original unitree_hg/msg/BmsState.cycle field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_cycle;
    /// @brief Original unitree_hg/msg/BmsState.manufacturer_date field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ushort field_manufacturer_date;
    /// @brief Original unitree_hg/msg/BmsState.bmsstate field.
    /// @details Original type uint32. Shape array; bound/count 5 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[5] field_bmsstate;
    /// @brief Original unitree_hg/msg/BmsState.reserve field.
    /// @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[3] field_reserve;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 161;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 161;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d";

}
/// @brief Encode every field of complete unitree_hg/msg/BmsState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_hgMsgBmsState(
    ref Ros2Unitree_hgMsgBmsState value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_hg/msg/BmsState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_hgMsgBmsState(const(ubyte)[] bytes, out Ros2Unitree_hgMsgBmsState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_hg/msg/MotorCmd value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 25..25 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_hgMsgMotorCmd
{
    /// @brief Original unitree_hg/msg/MotorCmd.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_mode;
    /// @brief Original unitree_hg/msg/MotorCmd.q field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_q = 0;
    /// @brief Original unitree_hg/msg/MotorCmd.dq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_dq = 0;
    /// @brief Original unitree_hg/msg/MotorCmd.tau field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_tau = 0;
    /// @brief Original unitree_hg/msg/MotorCmd.kp field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_kp = 0;
    /// @brief Original unitree_hg/msg/MotorCmd.kd field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_kd = 0;
    /// @brief Original unitree_hg/msg/MotorCmd.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_reserve;
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
    enum codecIdentity = "UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb";

}
/// @brief Encode every field of complete unitree_hg/msg/MotorCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_hgMsgMotorCmd(
    ref Ros2Unitree_hgMsgMotorCmd value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_hg/msg/MotorCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_hgMsgMotorCmd(const(ubyte)[] bytes, out Ros2Unitree_hgMsgMotorCmd value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_hg/msg/HandCmd value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 20..820 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_hgMsgHandCmd
{
    /// @brief Original unitree_hg/msg/HandCmd.motor_cmd field.
    /// @details Original type unitree_hg/msg/MotorCmd. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Sequence !(Ros2Unitree_hgMsgMotorCmd, 32)field_motor_cmd;
    /// @brief Original unitree_hg/msg/HandCmd.reserve field.
    /// @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[4] field_reserve;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 820;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006";

}
/// @brief Encode every field of complete unitree_hg/msg/HandCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_hgMsgHandCmd(
    ref Ros2Unitree_hgMsgHandCmd value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_hg/msg/HandCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_hgMsgHandCmd(const(ubyte)[] bytes, out Ros2Unitree_hgMsgHandCmd value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_hg/msg/MotorState value.
/// @details Retain all 10 original fields and 0 constants. Canonical extent 53..53 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_hgMsgMotorState
{
    /// @brief Original unitree_hg/msg/MotorState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_mode;
    /// @brief Original unitree_hg/msg/MotorState.q field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_q = 0;
    /// @brief Original unitree_hg/msg/MotorState.dq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_dq = 0;
    /// @brief Original unitree_hg/msg/MotorState.ddq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_ddq = 0;
    /// @brief Original unitree_hg/msg/MotorState.tau_est field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_tau_est = 0;
    /// @brief Original unitree_hg/msg/MotorState.temperature field.
    /// @details Original type int16. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    short[2] field_temperature;
    /// @brief Original unitree_hg/msg/MotorState.vol field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_vol = 0;
    /// @brief Original unitree_hg/msg/MotorState.sensor field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[2] field_sensor;
    /// @brief Original unitree_hg/msg/MotorState.motorstate field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_motorstate;
    /// @brief Original unitree_hg/msg/MotorState.reserve field.
    /// @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[4] field_reserve;
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
    enum codecIdentity = "UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934";

}
/// @brief Encode every field of complete unitree_hg/msg/MotorState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_hgMsgMotorState(
    ref Ros2Unitree_hgMsgMotorState value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_hg/msg/MotorState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_hgMsgMotorState(const(ubyte)[] bytes, out Ros2Unitree_hgMsgMotorState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_hg/msg/PressSensorState value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 104..104 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_hgMsgPressSensorState
{
    /// @brief Original unitree_hg/msg/PressSensorState.pressure field.
    /// @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[12] field_pressure = 0;
    /// @brief Original unitree_hg/msg/PressSensorState.temperature field.
    /// @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[12] field_temperature = 0;
    /// @brief Original unitree_hg/msg/PressSensorState.lost field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_lost;
    /// @brief Original unitree_hg/msg/PressSensorState.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_reserve;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 104;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 104;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5";

}
/// @brief Encode every field of complete unitree_hg/msg/PressSensorState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_hgMsgPressSensorState(
    ref Ros2Unitree_hgMsgPressSensorState value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_hg/msg/PressSensorState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_hgMsgPressSensorState(const(ubyte)[] bytes, out Ros2Unitree_hgMsgPressSensorState value)
    @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_hg/msg/IMUState value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 54..54 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_hgMsgIMUState
{
    /// @brief Original unitree_hg/msg/IMUState.quaternion field.
    /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[4] field_quaternion = 0;
    /// @brief Original unitree_hg/msg/IMUState.gyroscope field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[3] field_gyroscope = 0;
    /// @brief Original unitree_hg/msg/IMUState.accelerometer field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[3] field_accelerometer = 0;
    /// @brief Original unitree_hg/msg/IMUState.rpy field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[3] field_rpy = 0;
    /// @brief Original unitree_hg/msg/IMUState.temperature field.
    /// @details Original type int16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    short field_temperature;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 54;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 54;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420";

}
/// @brief Encode every field of complete unitree_hg/msg/IMUState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_hgMsgIMUState(
    ref Ros2Unitree_hgMsgIMUState value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_hg/msg/IMUState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_hgMsgIMUState(const(ubyte)[] bytes, out Ros2Unitree_hgMsgIMUState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_hg/msg/HandState value.
/// @details Retain all 9 original fields and 0 constants. Canonical extent 94..5118 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_hgMsgHandState
{
    /// @brief Original unitree_hg/msg/HandState.motor_state field.
    /// @details Original type unitree_hg/msg/MotorState. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Sequence !(Ros2Unitree_hgMsgMotorState, 32)field_motor_state;
    /// @brief Original unitree_hg/msg/HandState.press_sensor_state field.
    /// @details Original type unitree_hg/msg/PressSensorState. Shape sequence; bound/count 32
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    Sequence !(Ros2Unitree_hgMsgPressSensorState, 32)field_press_sensor_state;
    /// @brief Original unitree_hg/msg/HandState.imu_state field.
    /// @details Original type unitree_hg/msg/IMUState. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Unitree_hgMsgIMUState field_imu_state;
    /// @brief Original unitree_hg/msg/HandState.power_v field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_power_v = 0;
    /// @brief Original unitree_hg/msg/HandState.power_a field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_power_a = 0;
    /// @brief Original unitree_hg/msg/HandState.system_v field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_system_v = 0;
    /// @brief Original unitree_hg/msg/HandState.device_v field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    float field_device_v = 0;
    /// @brief Original unitree_hg/msg/HandState.error field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[2] field_error;
    /// @brief Original unitree_hg/msg/HandState.reserve field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[2] field_reserve;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 94;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 5118;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6";

}
/// @brief Encode every field of complete unitree_hg/msg/HandState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_hgMsgHandState(
    ref Ros2Unitree_hgMsgHandState value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_hg/msg/HandState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_hgMsgHandState(const(ubyte)[] bytes, out Ros2Unitree_hgMsgHandState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_hg/msg/LowCmd value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 897..897 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_hgMsgLowCmd
{
    /// @brief Original unitree_hg/msg/LowCmd.mode_pr field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_mode_pr;
    /// @brief Original unitree_hg/msg/LowCmd.mode_machine field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_mode_machine;
    /// @brief Original unitree_hg/msg/LowCmd.motor_cmd field.
    /// @details Original type unitree_hg/msg/MotorCmd. Shape array; bound/count 35 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Ros2Unitree_hgMsgMotorCmd[35] field_motor_cmd;
    /// @brief Original unitree_hg/msg/LowCmd.reserve field.
    /// @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[4] field_reserve;
    /// @brief Original unitree_hg/msg/LowCmd.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_crc;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 897;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 897;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461";

}
/// @brief Encode every field of complete unitree_hg/msg/LowCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_hgMsgLowCmd(ref Ros2Unitree_hgMsgLowCmd value, ubyte[] output, out size_t written) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_hg/msg/LowCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_hgMsgLowCmd(const(ubyte)[] bytes, out Ros2Unitree_hgMsgLowCmd value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_hg/msg/LowState value.
/// @details Retain all 9 original fields and 0 constants. Canonical extent 1983..1983 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_hgMsgLowState
{
    /// @brief Original unitree_hg/msg/LowState.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[2] field_version;
    /// @brief Original unitree_hg/msg/LowState.mode_pr field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_mode_pr;
    /// @brief Original unitree_hg/msg/LowState.mode_machine field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    ubyte field_mode_machine;
    /// @brief Original unitree_hg/msg/LowState.tick field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_tick;
    /// @brief Original unitree_hg/msg/LowState.imu_state field.
    /// @details Original type unitree_hg/msg/IMUState. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    Ros2Unitree_hgMsgIMUState field_imu_state;
    /// @brief Original unitree_hg/msg/LowState.motor_state field.
    /// @details Original type unitree_hg/msg/MotorState. Shape array; bound/count 35 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    Ros2Unitree_hgMsgMotorState[35] field_motor_state;
    /// @brief Original unitree_hg/msg/LowState.wireless_remote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ubyte[40] field_wireless_remote;
    /// @brief Original unitree_hg/msg/LowState.reserve field.
    /// @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[4] field_reserve;
    /// @brief Original unitree_hg/msg/LowState.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    uint field_crc;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 1983;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 1983;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d";

}
/// @brief Encode every field of complete unitree_hg/msg/LowState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_hgMsgLowState(
    ref Ros2Unitree_hgMsgLowState value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_hg/msg/LowState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_hgMsgLowState(const(ubyte)[] bytes, out Ros2Unitree_hgMsgLowState value) @nogc nothrow
{
    return decode(bytes, value);
}

/// @brief Complete unitree_hg/msg/MainBoardState value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 72..72 bytes. Native
/// registration and transport permission require independent deployment proof.
struct Ros2Unitree_hgMsgMainBoardState
{
    /// @brief Original unitree_hg/msg/MainBoardState.fan_state field.
    /// @details Original type uint16. Shape array; bound/count 6 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    ushort[6] field_fan_state;
    /// @brief Original unitree_hg/msg/MainBoardState.temperature field.
    /// @details Original type int16. Shape array; bound/count 6 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    short[6] field_temperature;
    /// @brief Original unitree_hg/msg/MainBoardState.value field.
    /// @details Original type float32. Shape array; bound/count 6 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    float[6] field_value = 0;
    /// @brief Original unitree_hg/msg/MainBoardState.state field.
    /// @details Original type uint32. Shape array; bound/count 6 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    uint[6] field_state;
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t minimumWireBytes = 72;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    enum size_t maximumWireBytes = 72;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    enum codecIdentity = "UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6";

}
/// @brief Encode every field of complete unitree_hg/msg/MainBoardState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Zero or canonical error 22; written is valid on success.
uint encodeRos2Unitree_hgMsgMainBoardState(
    ref Ros2Unitree_hgMsgMainBoardState value,
    ubyte[] output,
    out size_t written
) @nogc nothrow
{
    return encode(value, output, written);
}

/// @brief Decode every field of complete unitree_hg/msg/MainBoardState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Zero or canonical error 22; value is usable only on success.
uint decodeRos2Unitree_hgMsgMainBoardState(const(ubyte)[] bytes, out Ros2Unitree_hgMsgMainBoardState value)
    @nogc nothrow
{
    return decode(bytes, value);
}
