//! @file records.zig
//! @brief Complete owned original Unitree ROS 2 native records and codecs.
//! @details Generated from the admitted source-pinned catalog; no ROS authority is created.
const std = @import("std");
const wire = @import("unitree_wire");

/// @brief Complete unitree_api/msg/RequestIdentity value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 16..16 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_apiMsgRequestIdentity = struct {
    /// @brief Original unitree_api/msg/RequestIdentity.id field.
    /// @details Original type int64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_id: i64 = 0,
    /// @brief Original unitree_api/msg/RequestIdentity.api_id field.
    /// @details Original type int64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_api_id: i64 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 16;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 16;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2";
};
/// @brief Encode every field of complete unitree_api/msg/RequestIdentity.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_apiMsgRequestIdentity(
    value: *Ros2Unitree_apiMsgRequestIdentity,
    output: []u8,
) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_api/msg/RequestIdentity.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_apiMsgRequestIdentity(bytes: []const u8) wire.Error!Ros2Unitree_apiMsgRequestIdentity {
    return wire.decode(Ros2Unitree_apiMsgRequestIdentity, bytes);
}

/// @brief Complete unitree_api/msg/RequestLease value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_apiMsgRequestLease = struct {
    /// @brief Original unitree_api/msg/RequestLease.id field.
    /// @details Original type int64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_id: i64 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 8;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e";
};
/// @brief Encode every field of complete unitree_api/msg/RequestLease.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_apiMsgRequestLease(value: *Ros2Unitree_apiMsgRequestLease, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_api/msg/RequestLease.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_apiMsgRequestLease(bytes: []const u8) wire.Error!Ros2Unitree_apiMsgRequestLease {
    return wire.decode(Ros2Unitree_apiMsgRequestLease, bytes);
}

/// @brief Complete unitree_api/msg/RequestPolicy value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 5..5 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_apiMsgRequestPolicy = struct {
    /// @brief Original unitree_api/msg/RequestPolicy.priority field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_priority: i32 = 0,
    /// @brief Original unitree_api/msg/RequestPolicy.noreply field.
    /// @details Original type bool. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_noreply: bool = false,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 5;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 5;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8";
};
/// @brief Encode every field of complete unitree_api/msg/RequestPolicy.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_apiMsgRequestPolicy(value: *Ros2Unitree_apiMsgRequestPolicy, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_api/msg/RequestPolicy.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_apiMsgRequestPolicy(bytes: []const u8) wire.Error!Ros2Unitree_apiMsgRequestPolicy {
    return wire.decode(Ros2Unitree_apiMsgRequestPolicy, bytes);
}

/// @brief Complete unitree_api/msg/RequestHeader value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 29..29 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_apiMsgRequestHeader = struct {
    /// @brief Original unitree_api/msg/RequestHeader.identity field.
    /// @details Original type unitree_api/msg/RequestIdentity. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_identity: Ros2Unitree_apiMsgRequestIdentity = .{},
    /// @brief Original unitree_api/msg/RequestHeader.lease field.
    /// @details Original type unitree_api/msg/RequestLease. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_lease: Ros2Unitree_apiMsgRequestLease = .{},
    /// @brief Original unitree_api/msg/RequestHeader.policy field.
    /// @details Original type unitree_api/msg/RequestPolicy. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_policy: Ros2Unitree_apiMsgRequestPolicy = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 29;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 29;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0";
};
/// @brief Encode every field of complete unitree_api/msg/RequestHeader.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_apiMsgRequestHeader(value: *Ros2Unitree_apiMsgRequestHeader, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_api/msg/RequestHeader.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_apiMsgRequestHeader(bytes: []const u8) wire.Error!Ros2Unitree_apiMsgRequestHeader {
    return wire.decode(Ros2Unitree_apiMsgRequestHeader, bytes);
}

/// @brief Complete unitree_api/msg/Request value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 37..4133 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_apiMsgRequest = struct {
    /// @brief Original unitree_api/msg/Request.header field.
    /// @details Original type unitree_api/msg/RequestHeader. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_header: Ros2Unitree_apiMsgRequestHeader = .{},
    /// @brief Original unitree_api/msg/Request.parameter field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_parameter: wire.Text(2048, false) = .{},
    /// @brief Original unitree_api/msg/Request.binary field.
    /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_binary: wire.Sequence(u8, 2048) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 37;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 4133;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192";
};
/// @brief Encode every field of complete unitree_api/msg/Request.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_apiMsgRequest(value: *Ros2Unitree_apiMsgRequest, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_api/msg/Request.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_apiMsgRequest(bytes: []const u8) wire.Error!Ros2Unitree_apiMsgRequest {
    return wire.decode(Ros2Unitree_apiMsgRequest, bytes);
}

/// @brief Complete unitree_api/msg/ResponseStatus value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_apiMsgResponseStatus = struct {
    /// @brief Original unitree_api/msg/ResponseStatus.code field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_code: i32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1";
};
/// @brief Encode every field of complete unitree_api/msg/ResponseStatus.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_apiMsgResponseStatus(value: *Ros2Unitree_apiMsgResponseStatus, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_api/msg/ResponseStatus.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_apiMsgResponseStatus(bytes: []const u8) wire.Error!Ros2Unitree_apiMsgResponseStatus {
    return wire.decode(Ros2Unitree_apiMsgResponseStatus, bytes);
}

/// @brief Complete unitree_api/msg/ResponseHeader value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 20..20 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_apiMsgResponseHeader = struct {
    /// @brief Original unitree_api/msg/ResponseHeader.identity field.
    /// @details Original type unitree_api/msg/RequestIdentity. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_identity: Ros2Unitree_apiMsgRequestIdentity = .{},
    /// @brief Original unitree_api/msg/ResponseHeader.status field.
    /// @details Original type unitree_api/msg/ResponseStatus. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_status: Ros2Unitree_apiMsgResponseStatus = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 20;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0";
};
/// @brief Encode every field of complete unitree_api/msg/ResponseHeader.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_apiMsgResponseHeader(value: *Ros2Unitree_apiMsgResponseHeader, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_api/msg/ResponseHeader.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_apiMsgResponseHeader(bytes: []const u8) wire.Error!Ros2Unitree_apiMsgResponseHeader {
    return wire.decode(Ros2Unitree_apiMsgResponseHeader, bytes);
}

/// @brief Complete unitree_api/msg/Response value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 28..2108 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_apiMsgResponse = struct {
    /// @brief Original unitree_api/msg/Response.header field.
    /// @details Original type unitree_api/msg/ResponseHeader. Preserve declared units, frame,
    /// signedness and field order. Backing storage belongs to this value; constructing or copying
    /// it creates no native ROS owner.
    field_header: Ros2Unitree_apiMsgResponseHeader = .{},
    /// @brief Original unitree_api/msg/Response.data field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_data: wire.Text(2048, false) = .{},
    /// @brief Original unitree_api/msg/Response.binary field.
    /// @details Original type int8. Shape sequence; bound/count 32 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_binary: wire.Sequence(i8, 32) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 28;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 2108;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f";
};
/// @brief Encode every field of complete unitree_api/msg/Response.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_apiMsgResponse(value: *Ros2Unitree_apiMsgResponse, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_api/msg/Response.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_apiMsgResponse(bytes: []const u8) wire.Error!Ros2Unitree_apiMsgResponse {
    return wire.decode(Ros2Unitree_apiMsgResponse, bytes);
}

/// @brief Complete unitree_go/msg/AudioData value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 12..2060 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgAudioData = struct {
    /// @brief Original unitree_go/msg/AudioData.time_frame field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_time_frame: u64 = 0,
    /// @brief Original unitree_go/msg/AudioData.data field.
    /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_data: wire.Sequence(u8, 2048) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 2060;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe";
};
/// @brief Encode every field of complete unitree_go/msg/AudioData.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgAudioData(value: *Ros2Unitree_goMsgAudioData, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/AudioData.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgAudioData(bytes: []const u8) wire.Error!Ros2Unitree_goMsgAudioData {
    return wire.decode(Ros2Unitree_goMsgAudioData, bytes);
}

/// @brief Complete unitree_go/msg/BmsCmd value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgBmsCmd = struct {
    /// @brief Original unitree_go/msg/BmsCmd.off field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_off: u8 = 0,
    /// @brief Original unitree_go/msg/BmsCmd.reserve field.
    /// @details Original type uint8. Shape array; bound/count 3 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [3]u8 = @splat(std.mem.zeroes(u8)),
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339";
};
/// @brief Encode every field of complete unitree_go/msg/BmsCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgBmsCmd(value: *Ros2Unitree_goMsgBmsCmd, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/BmsCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgBmsCmd(bytes: []const u8) wire.Error!Ros2Unitree_goMsgBmsCmd {
    return wire.decode(Ros2Unitree_goMsgBmsCmd, bytes);
}

/// @brief Complete unitree_go/msg/BmsState value.
/// @details Retain all 9 original fields and 0 constants. Canonical extent 44..44 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgBmsState = struct {
    /// @brief Original unitree_go/msg/BmsState.version_high field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_version_high: u8 = 0,
    /// @brief Original unitree_go/msg/BmsState.version_low field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_version_low: u8 = 0,
    /// @brief Original unitree_go/msg/BmsState.status field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_status: u8 = 0,
    /// @brief Original unitree_go/msg/BmsState.soc field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_soc: u8 = 0,
    /// @brief Original unitree_go/msg/BmsState.current field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_current: i32 = 0,
    /// @brief Original unitree_go/msg/BmsState.cycle field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cycle: u16 = 0,
    /// @brief Original unitree_go/msg/BmsState.bq_ntc field.
    /// @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_bq_ntc: [2]i8 = @splat(std.mem.zeroes(i8)),
    /// @brief Original unitree_go/msg/BmsState.mcu_ntc field.
    /// @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_mcu_ntc: [2]i8 = @splat(std.mem.zeroes(i8)),
    /// @brief Original unitree_go/msg/BmsState.cell_vol field.
    /// @details Original type uint16. Shape array; bound/count 15 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_cell_vol: [15]u16 = @splat(std.mem.zeroes(u16)),
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 44;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 44;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0";
};
/// @brief Encode every field of complete unitree_go/msg/BmsState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgBmsState(value: *Ros2Unitree_goMsgBmsState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/BmsState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgBmsState(bytes: []const u8) wire.Error!Ros2Unitree_goMsgBmsState {
    return wire.decode(Ros2Unitree_goMsgBmsState, bytes);
}

/// @brief Complete unitree_go/msg/Error value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgError = struct {
    /// @brief Original unitree_go/msg/Error.source field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_source: u32 = 0,
    /// @brief Original unitree_go/msg/Error.state field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_state: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 8;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd";
};
/// @brief Encode every field of complete unitree_go/msg/Error.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgError(value: *Ros2Unitree_goMsgError, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/Error.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgError(bytes: []const u8) wire.Error!Ros2Unitree_goMsgError {
    return wire.decode(Ros2Unitree_goMsgError, bytes);
}

/// @brief Complete unitree_go/msg/Go2FrontVideoData value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 20..6164 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgGo2FrontVideoData = struct {
    /// @brief Original unitree_go/msg/Go2FrontVideoData.time_frame field.
    /// @details Original type uint64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_time_frame: u64 = 0,
    /// @brief Original unitree_go/msg/Go2FrontVideoData.video720p field.
    /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_video720p: wire.Sequence(u8, 2048) = .{},
    /// @brief Original unitree_go/msg/Go2FrontVideoData.video360p field.
    /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_video360p: wire.Sequence(u8, 2048) = .{},
    /// @brief Original unitree_go/msg/Go2FrontVideoData.video180p field.
    /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_video180p: wire.Sequence(u8, 2048) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 6164;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad";
};
/// @brief Encode every field of complete unitree_go/msg/Go2FrontVideoData.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgGo2FrontVideoData(
    value: *Ros2Unitree_goMsgGo2FrontVideoData,
    output: []u8,
) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/Go2FrontVideoData.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgGo2FrontVideoData(bytes: []const u8) wire.Error!Ros2Unitree_goMsgGo2FrontVideoData {
    return wire.decode(Ros2Unitree_goMsgGo2FrontVideoData, bytes);
}

/// @brief Complete unitree_go/msg/HeightMap value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 36..2212 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgHeightMap = struct {
    /// @brief Original unitree_go/msg/HeightMap.stamp field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stamp: f64 = 0,
    /// @brief Original unitree_go/msg/HeightMap.frame_id field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_frame_id: wire.Text(2048, false) = .{},
    /// @brief Original unitree_go/msg/HeightMap.resolution field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_resolution: f32 = 0,
    /// @brief Original unitree_go/msg/HeightMap.width field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_width: u32 = 0,
    /// @brief Original unitree_go/msg/HeightMap.height field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_height: u32 = 0,
    /// @brief Original unitree_go/msg/HeightMap.origin field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_origin: [2]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_go/msg/HeightMap.data field.
    /// @details Original type float32. Shape sequence; bound/count 32 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_data: wire.Sequence(f32, 32) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 36;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 2212;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d";
};
/// @brief Encode every field of complete unitree_go/msg/HeightMap.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgHeightMap(value: *Ros2Unitree_goMsgHeightMap, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/HeightMap.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgHeightMap(bytes: []const u8) wire.Error!Ros2Unitree_goMsgHeightMap {
    return wire.decode(Ros2Unitree_goMsgHeightMap, bytes);
}

/// @brief Complete unitree_go/msg/IMUState value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 53..53 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgIMUState = struct {
    /// @brief Original unitree_go/msg/IMUState.quaternion field.
    /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_quaternion: [4]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_go/msg/IMUState.gyroscope field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_gyroscope: [3]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_go/msg/IMUState.accelerometer field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_accelerometer: [3]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_go/msg/IMUState.rpy field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_rpy: [3]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_go/msg/IMUState.temperature field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_temperature: i8 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 53;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 53;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc";
};
/// @brief Encode every field of complete unitree_go/msg/IMUState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgIMUState(value: *Ros2Unitree_goMsgIMUState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/IMUState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgIMUState(bytes: []const u8) wire.Error!Ros2Unitree_goMsgIMUState {
    return wire.decode(Ros2Unitree_goMsgIMUState, bytes);
}

/// @brief Complete unitree_go/msg/InterfaceConfig value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 4..4 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgInterfaceConfig = struct {
    /// @brief Original unitree_go/msg/InterfaceConfig.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8 = 0,
    /// @brief Original unitree_go/msg/InterfaceConfig.value field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_value: u8 = 0,
    /// @brief Original unitree_go/msg/InterfaceConfig.reserve field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [2]u8 = @splat(std.mem.zeroes(u8)),
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 4;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110";
};
/// @brief Encode every field of complete unitree_go/msg/InterfaceConfig.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgInterfaceConfig(value: *Ros2Unitree_goMsgInterfaceConfig, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/InterfaceConfig.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgInterfaceConfig(bytes: []const u8) wire.Error!Ros2Unitree_goMsgInterfaceConfig {
    return wire.decode(Ros2Unitree_goMsgInterfaceConfig, bytes);
}

/// @brief Complete unitree_go/msg/LidarState value.
/// @details Retain all 17 original fields and 0 constants. Canonical extent 81..6225 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgLidarState = struct {
    /// @brief Original unitree_go/msg/LidarState.stamp field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_stamp: f64 = 0,
    /// @brief Original unitree_go/msg/LidarState.firmware_version field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_firmware_version: wire.Text(2048, false) = .{},
    /// @brief Original unitree_go/msg/LidarState.software_version field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_software_version: wire.Text(2048, false) = .{},
    /// @brief Original unitree_go/msg/LidarState.sdk_version field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_sdk_version: wire.Text(2048, false) = .{},
    /// @brief Original unitree_go/msg/LidarState.sys_rotation_speed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sys_rotation_speed: f32 = 0,
    /// @brief Original unitree_go/msg/LidarState.com_rotation_speed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_com_rotation_speed: f32 = 0,
    /// @brief Original unitree_go/msg/LidarState.error_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error_state: u8 = 0,
    /// @brief Original unitree_go/msg/LidarState.cloud_frequency field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cloud_frequency: f32 = 0,
    /// @brief Original unitree_go/msg/LidarState.cloud_packet_loss_rate field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cloud_packet_loss_rate: f32 = 0,
    /// @brief Original unitree_go/msg/LidarState.cloud_size field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cloud_size: u32 = 0,
    /// @brief Original unitree_go/msg/LidarState.cloud_scan_num field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cloud_scan_num: u32 = 0,
    /// @brief Original unitree_go/msg/LidarState.imu_frequency field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_imu_frequency: f32 = 0,
    /// @brief Original unitree_go/msg/LidarState.imu_packet_loss_rate field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_imu_packet_loss_rate: f32 = 0,
    /// @brief Original unitree_go/msg/LidarState.imu_rpy field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_imu_rpy: [3]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_go/msg/LidarState.serial_recv_stamp field.
    /// @details Original type float64. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_serial_recv_stamp: f64 = 0,
    /// @brief Original unitree_go/msg/LidarState.serial_buffer_size field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_serial_buffer_size: u32 = 0,
    /// @brief Original unitree_go/msg/LidarState.serial_buffer_read field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_serial_buffer_read: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 81;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 6225;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb";
};
/// @brief Encode every field of complete unitree_go/msg/LidarState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgLidarState(value: *Ros2Unitree_goMsgLidarState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/LidarState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgLidarState(bytes: []const u8) wire.Error!Ros2Unitree_goMsgLidarState {
    return wire.decode(Ros2Unitree_goMsgLidarState, bytes);
}

/// @brief Complete unitree_go/msg/MotorCmd value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 33..33 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgMotorCmd = struct {
    /// @brief Original unitree_go/msg/MotorCmd.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8 = 0,
    /// @brief Original unitree_go/msg/MotorCmd.q field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q: f32 = 0,
    /// @brief Original unitree_go/msg/MotorCmd.dq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_dq: f32 = 0,
    /// @brief Original unitree_go/msg/MotorCmd.tau field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tau: f32 = 0,
    /// @brief Original unitree_go/msg/MotorCmd.kp field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_kp: f32 = 0,
    /// @brief Original unitree_go/msg/MotorCmd.kd field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_kd: f32 = 0,
    /// @brief Original unitree_go/msg/MotorCmd.reserve field.
    /// @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [3]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 33;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 33;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989";
};
/// @brief Encode every field of complete unitree_go/msg/MotorCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgMotorCmd(value: *Ros2Unitree_goMsgMotorCmd, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/MotorCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgMotorCmd(bytes: []const u8) wire.Error!Ros2Unitree_goMsgMotorCmd {
    return wire.decode(Ros2Unitree_goMsgMotorCmd, bytes);
}

/// @brief Complete unitree_go/msg/LowCmd value.
/// @details Retain all 14 original fields and 0 constants. Canonical extent 749..749 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgLowCmd = struct {
    /// @brief Original unitree_go/msg/LowCmd.head field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_head: [2]u8 = @splat(std.mem.zeroes(u8)),
    /// @brief Original unitree_go/msg/LowCmd.level_flag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_level_flag: u8 = 0,
    /// @brief Original unitree_go/msg/LowCmd.frame_reserve field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_frame_reserve: u8 = 0,
    /// @brief Original unitree_go/msg/LowCmd.sn field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_sn: [2]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Original unitree_go/msg/LowCmd.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_version: [2]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Original unitree_go/msg/LowCmd.bandwidth field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bandwidth: u16 = 0,
    /// @brief Original unitree_go/msg/LowCmd.motor_cmd field.
    /// @details Original type unitree_go/msg/MotorCmd. Shape array; bound/count 20 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motor_cmd: [20]Ros2Unitree_goMsgMotorCmd = @splat(std.mem.zeroes(Ros2Unitree_goMsgMotorCmd)),
    /// @brief Original unitree_go/msg/LowCmd.bms_cmd field.
    /// @details Original type unitree_go/msg/BmsCmd. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_bms_cmd: Ros2Unitree_goMsgBmsCmd = .{},
    /// @brief Original unitree_go/msg/LowCmd.wireless_remote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_wireless_remote: [40]u8 = @splat(std.mem.zeroes(u8)),
    /// @brief Original unitree_go/msg/LowCmd.led field.
    /// @details Original type uint8. Shape array; bound/count 12 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_led: [12]u8 = @splat(std.mem.zeroes(u8)),
    /// @brief Original unitree_go/msg/LowCmd.fan field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_fan: [2]u8 = @splat(std.mem.zeroes(u8)),
    /// @brief Original unitree_go/msg/LowCmd.gpio field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_gpio: u8 = 0,
    /// @brief Original unitree_go/msg/LowCmd.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_reserve: u32 = 0,
    /// @brief Original unitree_go/msg/LowCmd.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_crc: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 749;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 749;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63";
};
/// @brief Encode every field of complete unitree_go/msg/LowCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgLowCmd(value: *Ros2Unitree_goMsgLowCmd, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/LowCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgLowCmd(bytes: []const u8) wire.Error!Ros2Unitree_goMsgLowCmd {
    return wire.decode(Ros2Unitree_goMsgLowCmd, bytes);
}

/// @brief Complete unitree_go/msg/MotorState value.
/// @details Retain all 11 original fields and 0 constants. Canonical extent 42..42 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgMotorState = struct {
    /// @brief Original unitree_go/msg/MotorState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8 = 0,
    /// @brief Original unitree_go/msg/MotorState.q field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q: f32 = 0,
    /// @brief Original unitree_go/msg/MotorState.dq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_dq: f32 = 0,
    /// @brief Original unitree_go/msg/MotorState.ddq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ddq: f32 = 0,
    /// @brief Original unitree_go/msg/MotorState.tau_est field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tau_est: f32 = 0,
    /// @brief Original unitree_go/msg/MotorState.q_raw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q_raw: f32 = 0,
    /// @brief Original unitree_go/msg/MotorState.dq_raw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_dq_raw: f32 = 0,
    /// @brief Original unitree_go/msg/MotorState.ddq_raw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ddq_raw: f32 = 0,
    /// @brief Original unitree_go/msg/MotorState.temperature field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_temperature: i8 = 0,
    /// @brief Original unitree_go/msg/MotorState.lost field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_lost: u32 = 0,
    /// @brief Original unitree_go/msg/MotorState.reserve field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [2]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 42;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 42;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62";
};
/// @brief Encode every field of complete unitree_go/msg/MotorState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgMotorState(value: *Ros2Unitree_goMsgMotorState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/MotorState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgMotorState(bytes: []const u8) wire.Error!Ros2Unitree_goMsgMotorState {
    return wire.decode(Ros2Unitree_goMsgMotorState, bytes);
}

/// @brief Complete unitree_go/msg/LowState value.
/// @details Retain all 22 original fields and 0 constants. Canonical extent 1050..1050 bytes.
/// Native registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgLowState = struct {
    /// @brief Original unitree_go/msg/LowState.head field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_head: [2]u8 = @splat(std.mem.zeroes(u8)),
    /// @brief Original unitree_go/msg/LowState.level_flag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_level_flag: u8 = 0,
    /// @brief Original unitree_go/msg/LowState.frame_reserve field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_frame_reserve: u8 = 0,
    /// @brief Original unitree_go/msg/LowState.sn field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_sn: [2]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Original unitree_go/msg/LowState.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_version: [2]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Original unitree_go/msg/LowState.bandwidth field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bandwidth: u16 = 0,
    /// @brief Original unitree_go/msg/LowState.imu_state field.
    /// @details Original type unitree_go/msg/IMUState. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_imu_state: Ros2Unitree_goMsgIMUState = .{},
    /// @brief Original unitree_go/msg/LowState.motor_state field.
    /// @details Original type unitree_go/msg/MotorState. Shape array; bound/count 20 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motor_state: [20]Ros2Unitree_goMsgMotorState = @splat(std.mem.zeroes(Ros2Unitree_goMsgMotorState)),
    /// @brief Original unitree_go/msg/LowState.bms_state field.
    /// @details Original type unitree_go/msg/BmsState. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_bms_state: Ros2Unitree_goMsgBmsState = .{},
    /// @brief Original unitree_go/msg/LowState.foot_force field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_foot_force: [4]i16 = @splat(std.mem.zeroes(i16)),
    /// @brief Original unitree_go/msg/LowState.foot_force_est field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_foot_force_est: [4]i16 = @splat(std.mem.zeroes(i16)),
    /// @brief Original unitree_go/msg/LowState.tick field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tick: u32 = 0,
    /// @brief Original unitree_go/msg/LowState.wireless_remote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_wireless_remote: [40]u8 = @splat(std.mem.zeroes(u8)),
    /// @brief Original unitree_go/msg/LowState.bit_flag field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_bit_flag: u8 = 0,
    /// @brief Original unitree_go/msg/LowState.adc_reel field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_adc_reel: f32 = 0,
    /// @brief Original unitree_go/msg/LowState.temperature_ntc1 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_temperature_ntc1: i8 = 0,
    /// @brief Original unitree_go/msg/LowState.temperature_ntc2 field.
    /// @details Original type int8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_temperature_ntc2: i8 = 0,
    /// @brief Original unitree_go/msg/LowState.power_v field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_power_v: f32 = 0,
    /// @brief Original unitree_go/msg/LowState.power_a field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_power_a: f32 = 0,
    /// @brief Original unitree_go/msg/LowState.fan_frequency field.
    /// @details Original type uint16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_fan_frequency: [4]u16 = @splat(std.mem.zeroes(u16)),
    /// @brief Original unitree_go/msg/LowState.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_reserve: u32 = 0,
    /// @brief Original unitree_go/msg/LowState.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_crc: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 1050;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1050;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab";
};
/// @brief Encode every field of complete unitree_go/msg/LowState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgLowState(value: *Ros2Unitree_goMsgLowState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/LowState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgLowState(bytes: []const u8) wire.Error!Ros2Unitree_goMsgLowState {
    return wire.decode(Ros2Unitree_goMsgLowState, bytes);
}

/// @brief Complete unitree_go/msg/MotorCmds value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..1060 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgMotorCmds = struct {
    /// @brief Original unitree_go/msg/MotorCmds.cmds field.
    /// @details Original type unitree_go/msg/MotorCmd. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_cmds: wire.Sequence(Ros2Unitree_goMsgMotorCmd, 32) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1060;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3";
};
/// @brief Encode every field of complete unitree_go/msg/MotorCmds.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgMotorCmds(value: *Ros2Unitree_goMsgMotorCmds, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/MotorCmds.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgMotorCmds(bytes: []const u8) wire.Error!Ros2Unitree_goMsgMotorCmds {
    return wire.decode(Ros2Unitree_goMsgMotorCmds, bytes);
}

/// @brief Complete unitree_go/msg/MotorStates value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 4..1348 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgMotorStates = struct {
    /// @brief Original unitree_go/msg/MotorStates.states field.
    /// @details Original type unitree_go/msg/MotorState. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_states: wire.Sequence(Ros2Unitree_goMsgMotorState, 32) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 4;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1348;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e";
};
/// @brief Encode every field of complete unitree_go/msg/MotorStates.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgMotorStates(value: *Ros2Unitree_goMsgMotorStates, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/MotorStates.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgMotorStates(bytes: []const u8) wire.Error!Ros2Unitree_goMsgMotorStates {
    return wire.decode(Ros2Unitree_goMsgMotorStates, bytes);
}

/// @brief Complete unitree_go/msg/PathPoint value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 28..28 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgPathPoint = struct {
    /// @brief Original unitree_go/msg/PathPoint.t_from_start field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_t_from_start: f32 = 0,
    /// @brief Original unitree_go/msg/PathPoint.x field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_x: f32 = 0,
    /// @brief Original unitree_go/msg/PathPoint.y field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_y: f32 = 0,
    /// @brief Original unitree_go/msg/PathPoint.yaw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_yaw: f32 = 0,
    /// @brief Original unitree_go/msg/PathPoint.vx field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_vx: f32 = 0,
    /// @brief Original unitree_go/msg/PathPoint.vy field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_vy: f32 = 0,
    /// @brief Original unitree_go/msg/PathPoint.vyaw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_vyaw: f32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 28;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 28;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4";
};
/// @brief Encode every field of complete unitree_go/msg/PathPoint.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgPathPoint(value: *Ros2Unitree_goMsgPathPoint, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/PathPoint.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgPathPoint(bytes: []const u8) wire.Error!Ros2Unitree_goMsgPathPoint {
    return wire.decode(Ros2Unitree_goMsgPathPoint, bytes);
}

/// @brief Complete unitree_go/msg/Req value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..4104 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgReq = struct {
    /// @brief Original unitree_go/msg/Req.uuid field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_uuid: wire.Text(2048, false) = .{},
    /// @brief Original unitree_go/msg/Req.body field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_body: wire.Text(2048, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 4104;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8";
};
/// @brief Encode every field of complete unitree_go/msg/Req.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgReq(value: *Ros2Unitree_goMsgReq, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/Req.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgReq(bytes: []const u8) wire.Error!Ros2Unitree_goMsgReq {
    return wire.decode(Ros2Unitree_goMsgReq, bytes);
}

/// @brief Complete unitree_go/msg/Res value.
/// @details Retain all 3 original fields and 0 constants. Canonical extent 12..6156 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgRes = struct {
    /// @brief Original unitree_go/msg/Res.uuid field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_uuid: wire.Text(2048, false) = .{},
    /// @brief Original unitree_go/msg/Res.data field.
    /// @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_data: wire.Sequence(u8, 2048) = .{},
    /// @brief Original unitree_go/msg/Res.body field.
    /// @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_body: wire.Text(2048, false) = .{},
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 12;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 6156;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963";
};
/// @brief Encode every field of complete unitree_go/msg/Res.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgRes(value: *Ros2Unitree_goMsgRes, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/Res.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgRes(bytes: []const u8) wire.Error!Ros2Unitree_goMsgRes {
    return wire.decode(Ros2Unitree_goMsgRes, bytes);
}

/// @brief Complete unitree_go/msg/SportModeCmd value.
/// @details Retain all 11 original fields and 0 constants. Canonical extent 887..887 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgSportModeCmd = struct {
    /// @brief Original unitree_go/msg/SportModeCmd.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8 = 0,
    /// @brief Original unitree_go/msg/SportModeCmd.gait_type field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_gait_type: u8 = 0,
    /// @brief Original unitree_go/msg/SportModeCmd.speed_level field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_speed_level: u8 = 0,
    /// @brief Original unitree_go/msg/SportModeCmd.foot_raise_height field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_foot_raise_height: f32 = 0,
    /// @brief Original unitree_go/msg/SportModeCmd.body_height field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_body_height: f32 = 0,
    /// @brief Original unitree_go/msg/SportModeCmd.position field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_position: [2]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_go/msg/SportModeCmd.euler field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_euler: [3]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_go/msg/SportModeCmd.velocity field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_velocity: [2]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_go/msg/SportModeCmd.yaw_speed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_yaw_speed: f32 = 0,
    /// @brief Original unitree_go/msg/SportModeCmd.bms_cmd field.
    /// @details Original type unitree_go/msg/BmsCmd. Preserve declared units, frame, signedness and
    /// field order. Backing storage belongs to this value; constructing or copying it creates no
    /// native ROS owner.
    field_bms_cmd: Ros2Unitree_goMsgBmsCmd = .{},
    /// @brief Original unitree_go/msg/SportModeCmd.path_point field.
    /// @details Original type unitree_go/msg/PathPoint. Shape array; bound/count 30 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_path_point: [30]Ros2Unitree_goMsgPathPoint = @splat(std.mem.zeroes(Ros2Unitree_goMsgPathPoint)),
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 887;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 887;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c";
};
/// @brief Encode every field of complete unitree_go/msg/SportModeCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgSportModeCmd(value: *Ros2Unitree_goMsgSportModeCmd, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/SportModeCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgSportModeCmd(bytes: []const u8) wire.Error!Ros2Unitree_goMsgSportModeCmd {
    return wire.decode(Ros2Unitree_goMsgSportModeCmd, bytes);
}

/// @brief Complete unitree_go/msg/TimeSpec value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgTimeSpec = struct {
    /// @brief Original unitree_go/msg/TimeSpec.sec field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_sec: i32 = 0,
    /// @brief Original unitree_go/msg/TimeSpec.nanosec field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_nanosec: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 8;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 8;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4";
};
/// @brief Encode every field of complete unitree_go/msg/TimeSpec.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgTimeSpec(value: *Ros2Unitree_goMsgTimeSpec, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/TimeSpec.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgTimeSpec(bytes: []const u8) wire.Error!Ros2Unitree_goMsgTimeSpec {
    return wire.decode(Ros2Unitree_goMsgTimeSpec, bytes);
}

/// @brief Complete unitree_go/msg/SportModeState value.
/// @details Retain all 15 original fields and 0 constants. Canonical extent 227..227 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgSportModeState = struct {
    /// @brief Original unitree_go/msg/SportModeState.stamp field.
    /// @details Original type unitree_go/msg/TimeSpec. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_stamp: Ros2Unitree_goMsgTimeSpec = .{},
    /// @brief Original unitree_go/msg/SportModeState.error_code field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error_code: u32 = 0,
    /// @brief Original unitree_go/msg/SportModeState.imu_state field.
    /// @details Original type unitree_go/msg/IMUState. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_imu_state: Ros2Unitree_goMsgIMUState = .{},
    /// @brief Original unitree_go/msg/SportModeState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8 = 0,
    /// @brief Original unitree_go/msg/SportModeState.progress field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_progress: f32 = 0,
    /// @brief Original unitree_go/msg/SportModeState.gait_type field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_gait_type: u8 = 0,
    /// @brief Original unitree_go/msg/SportModeState.foot_raise_height field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_foot_raise_height: f32 = 0,
    /// @brief Original unitree_go/msg/SportModeState.position field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_position: [3]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_go/msg/SportModeState.body_height field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_body_height: f32 = 0,
    /// @brief Original unitree_go/msg/SportModeState.velocity field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_velocity: [3]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_go/msg/SportModeState.yaw_speed field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_yaw_speed: f32 = 0,
    /// @brief Original unitree_go/msg/SportModeState.range_obstacle field.
    /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_range_obstacle: [4]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_go/msg/SportModeState.foot_force field.
    /// @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_foot_force: [4]i16 = @splat(std.mem.zeroes(i16)),
    /// @brief Original unitree_go/msg/SportModeState.foot_position_body field.
    /// @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_foot_position_body: [12]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_go/msg/SportModeState.foot_speed_body field.
    /// @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_foot_speed_body: [12]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 227;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 227;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760";
};
/// @brief Encode every field of complete unitree_go/msg/SportModeState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgSportModeState(value: *Ros2Unitree_goMsgSportModeState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/SportModeState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgSportModeState(bytes: []const u8) wire.Error!Ros2Unitree_goMsgSportModeState {
    return wire.decode(Ros2Unitree_goMsgSportModeState, bytes);
}

/// @brief Complete unitree_go/msg/UwbState value.
/// @details Retain all 17 original fields and 0 constants. Canonical extent 55..55 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgUwbState = struct {
    /// @brief Original unitree_go/msg/UwbState.version field.
    /// @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_version: [2]u8 = @splat(std.mem.zeroes(u8)),
    /// @brief Original unitree_go/msg/UwbState.channel field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_channel: u8 = 0,
    /// @brief Original unitree_go/msg/UwbState.joy_mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_joy_mode: u8 = 0,
    /// @brief Original unitree_go/msg/UwbState.orientation_est field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_orientation_est: f32 = 0,
    /// @brief Original unitree_go/msg/UwbState.pitch_est field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_pitch_est: f32 = 0,
    /// @brief Original unitree_go/msg/UwbState.distance_est field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_distance_est: f32 = 0,
    /// @brief Original unitree_go/msg/UwbState.yaw_est field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_yaw_est: f32 = 0,
    /// @brief Original unitree_go/msg/UwbState.tag_roll field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tag_roll: f32 = 0,
    /// @brief Original unitree_go/msg/UwbState.tag_pitch field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tag_pitch: f32 = 0,
    /// @brief Original unitree_go/msg/UwbState.tag_yaw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tag_yaw: f32 = 0,
    /// @brief Original unitree_go/msg/UwbState.base_roll field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_base_roll: f32 = 0,
    /// @brief Original unitree_go/msg/UwbState.base_pitch field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_base_pitch: f32 = 0,
    /// @brief Original unitree_go/msg/UwbState.base_yaw field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_base_yaw: f32 = 0,
    /// @brief Original unitree_go/msg/UwbState.joystick field.
    /// @details Original type float32. Shape array; bound/count 2 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_joystick: [2]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_go/msg/UwbState.error_state field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_error_state: u8 = 0,
    /// @brief Original unitree_go/msg/UwbState.buttons field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_buttons: u8 = 0,
    /// @brief Original unitree_go/msg/UwbState.enabled_from_app field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_enabled_from_app: u8 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 55;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 55;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34";
};
/// @brief Encode every field of complete unitree_go/msg/UwbState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgUwbState(value: *Ros2Unitree_goMsgUwbState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/UwbState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgUwbState(bytes: []const u8) wire.Error!Ros2Unitree_goMsgUwbState {
    return wire.decode(Ros2Unitree_goMsgUwbState, bytes);
}

/// @brief Complete unitree_go/msg/UwbSwitch value.
/// @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgUwbSwitch = struct {
    /// @brief Original unitree_go/msg/UwbSwitch.enabled field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_enabled: u8 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 1;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5";
};
/// @brief Encode every field of complete unitree_go/msg/UwbSwitch.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgUwbSwitch(value: *Ros2Unitree_goMsgUwbSwitch, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/UwbSwitch.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgUwbSwitch(bytes: []const u8) wire.Error!Ros2Unitree_goMsgUwbSwitch {
    return wire.decode(Ros2Unitree_goMsgUwbSwitch, bytes);
}

/// @brief Complete unitree_go/msg/WirelessController value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 18..18 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_goMsgWirelessController = struct {
    /// @brief Original unitree_go/msg/WirelessController.lx field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_lx: f32 = 0,
    /// @brief Original unitree_go/msg/WirelessController.ly field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ly: f32 = 0,
    /// @brief Original unitree_go/msg/WirelessController.rx field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_rx: f32 = 0,
    /// @brief Original unitree_go/msg/WirelessController.ry field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ry: f32 = 0,
    /// @brief Original unitree_go/msg/WirelessController.keys field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_keys: u16 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 18;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 18;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438";
};
/// @brief Encode every field of complete unitree_go/msg/WirelessController.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_goMsgWirelessController(
    value: *Ros2Unitree_goMsgWirelessController,
    output: []u8,
) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_go/msg/WirelessController.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_goMsgWirelessController(bytes: []const u8) wire.Error!Ros2Unitree_goMsgWirelessController {
    return wire.decode(Ros2Unitree_goMsgWirelessController, bytes);
}

/// @brief Complete unitree_hg/msg/BmsCmd value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 41..41 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_hgMsgBmsCmd = struct {
    /// @brief Original unitree_hg/msg/BmsCmd.cmd field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cmd: u8 = 0,
    /// @brief Original unitree_hg/msg/BmsCmd.reserve field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [40]u8 = @splat(std.mem.zeroes(u8)),
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 41;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 41;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de";
};
/// @brief Encode every field of complete unitree_hg/msg/BmsCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_hgMsgBmsCmd(value: *Ros2Unitree_hgMsgBmsCmd, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_hg/msg/BmsCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_hgMsgBmsCmd(bytes: []const u8) wire.Error!Ros2Unitree_hgMsgBmsCmd {
    return wire.decode(Ros2Unitree_hgMsgBmsCmd, bytes);
}

/// @brief Complete unitree_hg/msg/BmsState value.
/// @details Retain all 13 original fields and 0 constants. Canonical extent 161..161 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_hgMsgBmsState = struct {
    /// @brief Original unitree_hg/msg/BmsState.version_high field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_version_high: u8 = 0,
    /// @brief Original unitree_hg/msg/BmsState.version_low field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_version_low: u8 = 0,
    /// @brief Original unitree_hg/msg/BmsState.fn field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_fn: u8 = 0,
    /// @brief Original unitree_hg/msg/BmsState.cell_vol field.
    /// @details Original type uint16. Shape array; bound/count 40 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_cell_vol: [40]u16 = @splat(std.mem.zeroes(u16)),
    /// @brief Original unitree_hg/msg/BmsState.bmsvoltage field.
    /// @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_bmsvoltage: [3]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Original unitree_hg/msg/BmsState.current field.
    /// @details Original type int32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_current: i32 = 0,
    /// @brief Original unitree_hg/msg/BmsState.soc field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_soc: u8 = 0,
    /// @brief Original unitree_hg/msg/BmsState.soh field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_soh: u8 = 0,
    /// @brief Original unitree_hg/msg/BmsState.temperature field.
    /// @details Original type int16. Shape array; bound/count 12 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_temperature: [12]i16 = @splat(std.mem.zeroes(i16)),
    /// @brief Original unitree_hg/msg/BmsState.cycle field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_cycle: u16 = 0,
    /// @brief Original unitree_hg/msg/BmsState.manufacturer_date field.
    /// @details Original type uint16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_manufacturer_date: u16 = 0,
    /// @brief Original unitree_hg/msg/BmsState.bmsstate field.
    /// @details Original type uint32. Shape array; bound/count 5 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_bmsstate: [5]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Original unitree_hg/msg/BmsState.reserve field.
    /// @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [3]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 161;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 161;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d";
};
/// @brief Encode every field of complete unitree_hg/msg/BmsState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_hgMsgBmsState(value: *Ros2Unitree_hgMsgBmsState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_hg/msg/BmsState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_hgMsgBmsState(bytes: []const u8) wire.Error!Ros2Unitree_hgMsgBmsState {
    return wire.decode(Ros2Unitree_hgMsgBmsState, bytes);
}

/// @brief Complete unitree_hg/msg/MotorCmd value.
/// @details Retain all 7 original fields and 0 constants. Canonical extent 25..25 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_hgMsgMotorCmd = struct {
    /// @brief Original unitree_hg/msg/MotorCmd.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8 = 0,
    /// @brief Original unitree_hg/msg/MotorCmd.q field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q: f32 = 0,
    /// @brief Original unitree_hg/msg/MotorCmd.dq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_dq: f32 = 0,
    /// @brief Original unitree_hg/msg/MotorCmd.tau field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tau: f32 = 0,
    /// @brief Original unitree_hg/msg/MotorCmd.kp field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_kp: f32 = 0,
    /// @brief Original unitree_hg/msg/MotorCmd.kd field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_kd: f32 = 0,
    /// @brief Original unitree_hg/msg/MotorCmd.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_reserve: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 25;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 25;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb";
};
/// @brief Encode every field of complete unitree_hg/msg/MotorCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_hgMsgMotorCmd(value: *Ros2Unitree_hgMsgMotorCmd, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_hg/msg/MotorCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_hgMsgMotorCmd(bytes: []const u8) wire.Error!Ros2Unitree_hgMsgMotorCmd {
    return wire.decode(Ros2Unitree_hgMsgMotorCmd, bytes);
}

/// @brief Complete unitree_hg/msg/HandCmd value.
/// @details Retain all 2 original fields and 0 constants. Canonical extent 20..820 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_hgMsgHandCmd = struct {
    /// @brief Original unitree_hg/msg/HandCmd.motor_cmd field.
    /// @details Original type unitree_hg/msg/MotorCmd. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motor_cmd: wire.Sequence(Ros2Unitree_hgMsgMotorCmd, 32) = .{},
    /// @brief Original unitree_hg/msg/HandCmd.reserve field.
    /// @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [4]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 20;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 820;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006";
};
/// @brief Encode every field of complete unitree_hg/msg/HandCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_hgMsgHandCmd(value: *Ros2Unitree_hgMsgHandCmd, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_hg/msg/HandCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_hgMsgHandCmd(bytes: []const u8) wire.Error!Ros2Unitree_hgMsgHandCmd {
    return wire.decode(Ros2Unitree_hgMsgHandCmd, bytes);
}

/// @brief Complete unitree_hg/msg/MotorState value.
/// @details Retain all 10 original fields and 0 constants. Canonical extent 53..53 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_hgMsgMotorState = struct {
    /// @brief Original unitree_hg/msg/MotorState.mode field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode: u8 = 0,
    /// @brief Original unitree_hg/msg/MotorState.q field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_q: f32 = 0,
    /// @brief Original unitree_hg/msg/MotorState.dq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_dq: f32 = 0,
    /// @brief Original unitree_hg/msg/MotorState.ddq field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_ddq: f32 = 0,
    /// @brief Original unitree_hg/msg/MotorState.tau_est field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tau_est: f32 = 0,
    /// @brief Original unitree_hg/msg/MotorState.temperature field.
    /// @details Original type int16. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_temperature: [2]i16 = @splat(std.mem.zeroes(i16)),
    /// @brief Original unitree_hg/msg/MotorState.vol field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_vol: f32 = 0,
    /// @brief Original unitree_hg/msg/MotorState.sensor field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_sensor: [2]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Original unitree_hg/msg/MotorState.motorstate field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_motorstate: u32 = 0,
    /// @brief Original unitree_hg/msg/MotorState.reserve field.
    /// @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [4]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 53;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 53;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934";
};
/// @brief Encode every field of complete unitree_hg/msg/MotorState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_hgMsgMotorState(value: *Ros2Unitree_hgMsgMotorState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_hg/msg/MotorState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_hgMsgMotorState(bytes: []const u8) wire.Error!Ros2Unitree_hgMsgMotorState {
    return wire.decode(Ros2Unitree_hgMsgMotorState, bytes);
}

/// @brief Complete unitree_hg/msg/PressSensorState value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 104..104 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_hgMsgPressSensorState = struct {
    /// @brief Original unitree_hg/msg/PressSensorState.pressure field.
    /// @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_pressure: [12]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_hg/msg/PressSensorState.temperature field.
    /// @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_temperature: [12]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_hg/msg/PressSensorState.lost field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_lost: u32 = 0,
    /// @brief Original unitree_hg/msg/PressSensorState.reserve field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_reserve: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 104;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 104;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5";
};
/// @brief Encode every field of complete unitree_hg/msg/PressSensorState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_hgMsgPressSensorState(
    value: *Ros2Unitree_hgMsgPressSensorState,
    output: []u8,
) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_hg/msg/PressSensorState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_hgMsgPressSensorState(bytes: []const u8) wire.Error!Ros2Unitree_hgMsgPressSensorState {
    return wire.decode(Ros2Unitree_hgMsgPressSensorState, bytes);
}

/// @brief Complete unitree_hg/msg/IMUState value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 54..54 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_hgMsgIMUState = struct {
    /// @brief Original unitree_hg/msg/IMUState.quaternion field.
    /// @details Original type float32. Shape array; bound/count 4 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_quaternion: [4]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_hg/msg/IMUState.gyroscope field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_gyroscope: [3]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_hg/msg/IMUState.accelerometer field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_accelerometer: [3]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_hg/msg/IMUState.rpy field.
    /// @details Original type float32. Shape array; bound/count 3 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_rpy: [3]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_hg/msg/IMUState.temperature field.
    /// @details Original type int16. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_temperature: i16 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 54;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 54;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420";
};
/// @brief Encode every field of complete unitree_hg/msg/IMUState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_hgMsgIMUState(value: *Ros2Unitree_hgMsgIMUState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_hg/msg/IMUState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_hgMsgIMUState(bytes: []const u8) wire.Error!Ros2Unitree_hgMsgIMUState {
    return wire.decode(Ros2Unitree_hgMsgIMUState, bytes);
}

/// @brief Complete unitree_hg/msg/HandState value.
/// @details Retain all 9 original fields and 0 constants. Canonical extent 94..5118 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_hgMsgHandState = struct {
    /// @brief Original unitree_hg/msg/HandState.motor_state field.
    /// @details Original type unitree_hg/msg/MotorState. Shape sequence; bound/count 32 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motor_state: wire.Sequence(Ros2Unitree_hgMsgMotorState, 32) = .{},
    /// @brief Original unitree_hg/msg/HandState.press_sensor_state field.
    /// @details Original type unitree_hg/msg/PressSensorState. Shape sequence; bound/count 32
    /// elements. Preserve declared units, frame, signedness and field order. Backing storage
    /// belongs to this value; constructing or copying it creates no native ROS owner.
    field_press_sensor_state: wire.Sequence(Ros2Unitree_hgMsgPressSensorState, 32) = .{},
    /// @brief Original unitree_hg/msg/HandState.imu_state field.
    /// @details Original type unitree_hg/msg/IMUState. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_imu_state: Ros2Unitree_hgMsgIMUState = .{},
    /// @brief Original unitree_hg/msg/HandState.power_v field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_power_v: f32 = 0,
    /// @brief Original unitree_hg/msg/HandState.power_a field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_power_a: f32 = 0,
    /// @brief Original unitree_hg/msg/HandState.system_v field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_system_v: f32 = 0,
    /// @brief Original unitree_hg/msg/HandState.device_v field.
    /// @details Original type float32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_device_v: f32 = 0,
    /// @brief Original unitree_hg/msg/HandState.error field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_error: [2]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Original unitree_hg/msg/HandState.reserve field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [2]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 94;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 5118;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6";
};
/// @brief Encode every field of complete unitree_hg/msg/HandState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_hgMsgHandState(value: *Ros2Unitree_hgMsgHandState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_hg/msg/HandState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_hgMsgHandState(bytes: []const u8) wire.Error!Ros2Unitree_hgMsgHandState {
    return wire.decode(Ros2Unitree_hgMsgHandState, bytes);
}

/// @brief Complete unitree_hg/msg/LowCmd value.
/// @details Retain all 5 original fields and 0 constants. Canonical extent 897..897 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_hgMsgLowCmd = struct {
    /// @brief Original unitree_hg/msg/LowCmd.mode_pr field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode_pr: u8 = 0,
    /// @brief Original unitree_hg/msg/LowCmd.mode_machine field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode_machine: u8 = 0,
    /// @brief Original unitree_hg/msg/LowCmd.motor_cmd field.
    /// @details Original type unitree_hg/msg/MotorCmd. Shape array; bound/count 35 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motor_cmd: [35]Ros2Unitree_hgMsgMotorCmd = @splat(std.mem.zeroes(Ros2Unitree_hgMsgMotorCmd)),
    /// @brief Original unitree_hg/msg/LowCmd.reserve field.
    /// @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [4]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Original unitree_hg/msg/LowCmd.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_crc: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 897;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 897;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461";
};
/// @brief Encode every field of complete unitree_hg/msg/LowCmd.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_hgMsgLowCmd(value: *Ros2Unitree_hgMsgLowCmd, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_hg/msg/LowCmd.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_hgMsgLowCmd(bytes: []const u8) wire.Error!Ros2Unitree_hgMsgLowCmd {
    return wire.decode(Ros2Unitree_hgMsgLowCmd, bytes);
}

/// @brief Complete unitree_hg/msg/LowState value.
/// @details Retain all 9 original fields and 0 constants. Canonical extent 1983..1983 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_hgMsgLowState = struct {
    /// @brief Original unitree_hg/msg/LowState.version field.
    /// @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_version: [2]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Original unitree_hg/msg/LowState.mode_pr field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode_pr: u8 = 0,
    /// @brief Original unitree_hg/msg/LowState.mode_machine field.
    /// @details Original type uint8. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_mode_machine: u8 = 0,
    /// @brief Original unitree_hg/msg/LowState.tick field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_tick: u32 = 0,
    /// @brief Original unitree_hg/msg/LowState.imu_state field.
    /// @details Original type unitree_hg/msg/IMUState. Preserve declared units, frame, signedness
    /// and field order. Backing storage belongs to this value; constructing or copying it creates
    /// no native ROS owner.
    field_imu_state: Ros2Unitree_hgMsgIMUState = .{},
    /// @brief Original unitree_hg/msg/LowState.motor_state field.
    /// @details Original type unitree_hg/msg/MotorState. Shape array; bound/count 35 elements.
    /// Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    /// value; constructing or copying it creates no native ROS owner.
    field_motor_state: [35]Ros2Unitree_hgMsgMotorState = @splat(std.mem.zeroes(Ros2Unitree_hgMsgMotorState)),
    /// @brief Original unitree_hg/msg/LowState.wireless_remote field.
    /// @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_wireless_remote: [40]u8 = @splat(std.mem.zeroes(u8)),
    /// @brief Original unitree_hg/msg/LowState.reserve field.
    /// @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_reserve: [4]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Original unitree_hg/msg/LowState.crc field.
    /// @details Original type uint32. Preserve declared units, frame, signedness and field order.
    /// Backing storage belongs to this value; constructing or copying it creates no native ROS
    /// owner.
    field_crc: u32 = 0,
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 1983;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 1983;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d";
};
/// @brief Encode every field of complete unitree_hg/msg/LowState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_hgMsgLowState(value: *Ros2Unitree_hgMsgLowState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_hg/msg/LowState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_hgMsgLowState(bytes: []const u8) wire.Error!Ros2Unitree_hgMsgLowState {
    return wire.decode(Ros2Unitree_hgMsgLowState, bytes);
}

/// @brief Complete unitree_hg/msg/MainBoardState value.
/// @details Retain all 4 original fields and 0 constants. Canonical extent 72..72 bytes. Native
/// registration and transport permission require independent deployment proof.
pub const Ros2Unitree_hgMsgMainBoardState = struct {
    /// @brief Original unitree_hg/msg/MainBoardState.fan_state field.
    /// @details Original type uint16. Shape array; bound/count 6 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_fan_state: [6]u16 = @splat(std.mem.zeroes(u16)),
    /// @brief Original unitree_hg/msg/MainBoardState.temperature field.
    /// @details Original type int16. Shape array; bound/count 6 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_temperature: [6]i16 = @splat(std.mem.zeroes(i16)),
    /// @brief Original unitree_hg/msg/MainBoardState.value field.
    /// @details Original type float32. Shape array; bound/count 6 elements. Preserve declared
    /// units, frame, signedness and field order. Backing storage belongs to this value;
    /// constructing or copying it creates no native ROS owner.
    field_value: [6]f32 = @splat(std.mem.zeroes(f32)),
    /// @brief Original unitree_hg/msg/MainBoardState.state field.
    /// @details Original type uint32. Shape array; bound/count 6 elements. Preserve declared units,
    /// frame, signedness and field order. Backing storage belongs to this value; constructing or
    /// copying it creates no native ROS owner.
    field_state: [6]u32 = @splat(std.mem.zeroes(u32)),
    /// @brief Inclusive minimum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const minimum_wire_bytes: usize = 72;
    /// @brief Inclusive maximum canonical wire extent.
    /// @details This is an initialized byte bound, never a native sizeof or an allocation
    /// reservation.
    pub const maximum_wire_bytes: usize = 72;
    /// @brief Exact complete canonical codec identity.
    /// @details Preserve original field order, shape, bounds and constants; this is not a native
    /// registry hash.
    pub const codec_identity = "UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6";
};
/// @brief Encode every field of complete unitree_hg/msg/MainBoardState.
/// @details The caller owns output and value storage. Failure invalidates partial output; no host
/// operation occurs.
/// @param value Complete exclusive owned record.
/// @param output Disjoint exclusive writable bytes.
/// @return Complete initialized extent or canonical error.
pub fn encodeRos2Unitree_hgMsgMainBoardState(value: *Ros2Unitree_hgMsgMainBoardState, output: []u8) wire.Error!usize {
    return wire.encode(value, output);
}
/// @brief Decode every field of complete unitree_hg/msg/MainBoardState.
/// @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
/// whole independent value.
/// @param bytes Complete immutable canonical input; no reference escapes.
/// @return Complete independent value or canonical error.
pub fn decodeRos2Unitree_hgMsgMainBoardState(bytes: []const u8) wire.Error!Ros2Unitree_hgMsgMainBoardState {
    return wire.decode(Ros2Unitree_hgMsgMainBoardState, bytes);
}
