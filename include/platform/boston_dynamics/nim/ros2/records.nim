## @file records.nim
## @brief Complete owned original boston_dynamics ROS 2 native records and codecs.
## @details Generated from the admitted source-pinned catalog; no ROS authority is created.
import native/nim/wire

## @brief Complete uwvm_spot_bridge/srv/State_Request value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Uwvm_spot_bridgeSrvState_Request* = object
    ## @brief Original uwvm_spot_bridge/srv/State_Request.token field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_token*: uint64
    ## @brief Original uwvm_spot_bridge/srv/State_Request.nonce field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_nonce*: uint64
    ## @brief Original uwvm_spot_bridge/srv/State_Request.budget_ns field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_budget_ns*: uint64
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Uwvm_spot_bridgeSrvState_Request*(): Ros2Uwvm_spot_bridgeSrvState_Request =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvState_RequestMinimumWireBytes* = 24
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvState_RequestMaximumWireBytes* = 24
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Uwvm_spot_bridgeSrvState_RequestCodecIdentity* = "UWVMROS1_9becf278bc168ed6d5b15fe7f1ec35b83e274de8a5173cb2335948306bc7a47e"
## @brief Encode every field of complete uwvm_spot_bridge/srv/State_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Uwvm_spot_bridgeSrvState_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 24, written)
## @brief Decode every field of complete uwvm_spot_bridge/srv/State_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Uwvm_spot_bridgeSrvState_Request*(bytes: openArray[byte]; value: var Ros2Uwvm_spot_bridgeSrvState_Request): uint32 =
  wire.decode(bytes, 24, 24, value)

## @brief Complete uwvm_spot_bridge/srv/State_Response value.
## @details Retain all 12 original fields and 0 constants. Canonical extent 57..21433 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Uwvm_spot_bridgeSrvState_Response* = object
    ## @brief Original uwvm_spot_bridge/srv/State_Response.token field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_token*: uint64
    ## @brief Original uwvm_spot_bridge/srv/State_Response.nonce field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_nonce*: uint64
    ## @brief Original uwvm_spot_bridge/srv/State_Response.error field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_error*: uint32
    ## @brief Original uwvm_spot_bridge/srv/State_Response.unknown field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_unknown*: bool
    ## @brief Original uwvm_spot_bridge/srv/State_Response.acquisition_sec field.
    ## @details Original type int64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_acquisition_sec*: int64
    ## @brief Original uwvm_spot_bridge/srv/State_Response.acquisition_nsec field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_acquisition_nsec*: uint32
    ## @brief Original uwvm_spot_bridge/srv/State_Response.joint_names field.
    ## @details Original type string. String bound 128 bytes; domain utf8. Shape sequence;
    ## bound/count 32 elements. Preserve declared units, frame, signedness and field order. Backing
    ## storage belongs to this value; constructing or copying it creates no native ROS owner.
    field_joint_names*: NativeSequence[NativeText[128, false], 32]
    ## @brief Original uwvm_spot_bridge/srv/State_Response.joint_position field.
    ## @details Original type float64. Shape sequence; bound/count 32 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_joint_position*: NativeSequence[float64, 32]
    ## @brief Original uwvm_spot_bridge/srv/State_Response.joint_velocity field.
    ## @details Original type float64. Shape sequence; bound/count 32 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_joint_velocity*: NativeSequence[float64, 32]
    ## @brief Original uwvm_spot_bridge/srv/State_Response.joint_load field.
    ## @details Original type float64. Shape sequence; bound/count 32 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_joint_load*: NativeSequence[float64, 32]
    ## @brief Original uwvm_spot_bridge/srv/State_Response.motor_power_state field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_motor_power_state*: uint32
    ## @brief Original uwvm_spot_bridge/srv/State_Response.native_proto field.
    ## @details Original type uint8. Shape sequence; bound/count 16384 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_native_proto*: NativeSequence[uint8, 16384]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Uwvm_spot_bridgeSrvState_Response*(): Ros2Uwvm_spot_bridgeSrvState_Response =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvState_ResponseMinimumWireBytes* = 57
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvState_ResponseMaximumWireBytes* = 21433
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Uwvm_spot_bridgeSrvState_ResponseCodecIdentity* = "UWVMROS1_ab07340e952c2ff63f35dad37e9d4837a280eee9ce477ac5be4a05f82408ce0a"
## @brief Encode every field of complete uwvm_spot_bridge/srv/State_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Uwvm_spot_bridgeSrvState_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 21433, written)
## @brief Decode every field of complete uwvm_spot_bridge/srv/State_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Uwvm_spot_bridgeSrvState_Response*(bytes: openArray[byte]; value: var Ros2Uwvm_spot_bridgeSrvState_Response): uint32 =
  wire.decode(bytes, 57, 21433, value)

## @brief Complete uwvm_spot_bridge/srv/Lease_Request value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Uwvm_spot_bridgeSrvLease_Request* = object
    ## @brief Original uwvm_spot_bridge/srv/Lease_Request.token field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_token*: uint64
    ## @brief Original uwvm_spot_bridge/srv/Lease_Request.nonce field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_nonce*: uint64
    ## @brief Original uwvm_spot_bridge/srv/Lease_Request.budget_ns field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_budget_ns*: uint64
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Uwvm_spot_bridgeSrvLease_Request*(): Ros2Uwvm_spot_bridgeSrvLease_Request =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvLease_RequestMinimumWireBytes* = 24
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvLease_RequestMaximumWireBytes* = 24
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Uwvm_spot_bridgeSrvLease_RequestCodecIdentity* = "UWVMROS1_a9aacd78dc6ae9d18fb6bb0d185797c6463c882edadf251eb5c21e3aa3c538a1"
## @brief Encode every field of complete uwvm_spot_bridge/srv/Lease_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Uwvm_spot_bridgeSrvLease_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 24, written)
## @brief Decode every field of complete uwvm_spot_bridge/srv/Lease_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Uwvm_spot_bridgeSrvLease_Request*(bytes: openArray[byte]; value: var Ros2Uwvm_spot_bridgeSrvLease_Request): uint32 =
  wire.decode(bytes, 24, 24, value)

## @brief Complete uwvm_spot_bridge/srv/Lease_Response value.
## @details Retain all 5 original fields and 0 constants. Canonical extent 22..22 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Uwvm_spot_bridgeSrvLease_Response* = object
    ## @brief Original uwvm_spot_bridge/srv/Lease_Response.token field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_token*: uint64
    ## @brief Original uwvm_spot_bridge/srv/Lease_Response.nonce field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_nonce*: uint64
    ## @brief Original uwvm_spot_bridge/srv/Lease_Response.error field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_error*: uint32
    ## @brief Original uwvm_spot_bridge/srv/Lease_Response.unknown field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_unknown*: bool
    ## @brief Original uwvm_spot_bridge/srv/Lease_Response.provider_holds_body_lease field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_provider_holds_body_lease*: bool
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Uwvm_spot_bridgeSrvLease_Response*(): Ros2Uwvm_spot_bridgeSrvLease_Response =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvLease_ResponseMinimumWireBytes* = 22
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvLease_ResponseMaximumWireBytes* = 22
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Uwvm_spot_bridgeSrvLease_ResponseCodecIdentity* = "UWVMROS1_ce875eb701b607c01f8a19dc8fcff607829824ad99276f906c7fc8fc5567f6d3"
## @brief Encode every field of complete uwvm_spot_bridge/srv/Lease_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Uwvm_spot_bridgeSrvLease_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 22, written)
## @brief Decode every field of complete uwvm_spot_bridge/srv/Lease_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Uwvm_spot_bridgeSrvLease_Response*(bytes: openArray[byte]; value: var Ros2Uwvm_spot_bridgeSrvLease_Response): uint32 =
  wire.decode(bytes, 22, 22, value)

## @brief Complete uwvm_spot_bridge/srv/Command_Request value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 24..24 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Uwvm_spot_bridgeSrvCommand_Request* = object
    ## @brief Original uwvm_spot_bridge/srv/Command_Request.token field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_token*: uint64
    ## @brief Original uwvm_spot_bridge/srv/Command_Request.nonce field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_nonce*: uint64
    ## @brief Original uwvm_spot_bridge/srv/Command_Request.budget_ns field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_budget_ns*: uint64
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Uwvm_spot_bridgeSrvCommand_Request*(): Ros2Uwvm_spot_bridgeSrvCommand_Request =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvCommand_RequestMinimumWireBytes* = 24
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvCommand_RequestMaximumWireBytes* = 24
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Uwvm_spot_bridgeSrvCommand_RequestCodecIdentity* = "UWVMROS1_29996d4dacb4ea847c5d629cb634d4aa5e2451627d2469d6cdf301cc007968f8"
## @brief Encode every field of complete uwvm_spot_bridge/srv/Command_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Uwvm_spot_bridgeSrvCommand_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 24, written)
## @brief Decode every field of complete uwvm_spot_bridge/srv/Command_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Uwvm_spot_bridgeSrvCommand_Request*(bytes: openArray[byte]; value: var Ros2Uwvm_spot_bridgeSrvCommand_Request): uint32 =
  wire.decode(bytes, 24, 24, value)

## @brief Complete uwvm_spot_bridge/srv/Command_Response value.
## @details Retain all 6 original fields and 0 constants. Canonical extent 26..26 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Uwvm_spot_bridgeSrvCommand_Response* = object
    ## @brief Original uwvm_spot_bridge/srv/Command_Response.token field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_token*: uint64
    ## @brief Original uwvm_spot_bridge/srv/Command_Response.nonce field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_nonce*: uint64
    ## @brief Original uwvm_spot_bridge/srv/Command_Response.error field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_error*: uint32
    ## @brief Original uwvm_spot_bridge/srv/Command_Response.unknown field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_unknown*: bool
    ## @brief Original uwvm_spot_bridge/srv/Command_Response.native_accepted field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_native_accepted*: bool
    ## @brief Original uwvm_spot_bridge/srv/Command_Response.native_command_id field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_native_command_id*: uint32
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Uwvm_spot_bridgeSrvCommand_Response*(): Ros2Uwvm_spot_bridgeSrvCommand_Response =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvCommand_ResponseMinimumWireBytes* = 26
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvCommand_ResponseMaximumWireBytes* = 26
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Uwvm_spot_bridgeSrvCommand_ResponseCodecIdentity* = "UWVMROS1_e35556e7439c8d5ca79cb0f4ad23cf73c85a8a79d1382cde398dd85082dd1733"
## @brief Encode every field of complete uwvm_spot_bridge/srv/Command_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Uwvm_spot_bridgeSrvCommand_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 26, written)
## @brief Decode every field of complete uwvm_spot_bridge/srv/Command_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Uwvm_spot_bridgeSrvCommand_Response*(bytes: openArray[byte]; value: var Ros2Uwvm_spot_bridgeSrvCommand_Response): uint32 =
  wire.decode(bytes, 26, 26, value)

## @brief Complete uwvm_spot_bridge/srv/Velocity_Request value.
## @details Retain all 7 original fields and 0 constants. Canonical extent 56..56 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Uwvm_spot_bridgeSrvVelocity_Request* = object
    ## @brief Original uwvm_spot_bridge/srv/Velocity_Request.token field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_token*: uint64
    ## @brief Original uwvm_spot_bridge/srv/Velocity_Request.nonce field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_nonce*: uint64
    ## @brief Original uwvm_spot_bridge/srv/Velocity_Request.budget_ns field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_budget_ns*: uint64
    ## @brief Original uwvm_spot_bridge/srv/Velocity_Request.x_mps field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_x_mps*: float64
    ## @brief Original uwvm_spot_bridge/srv/Velocity_Request.y_mps field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_y_mps*: float64
    ## @brief Original uwvm_spot_bridge/srv/Velocity_Request.yaw_rps field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_yaw_rps*: float64
    ## @brief Original uwvm_spot_bridge/srv/Velocity_Request.duration_ns field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_duration_ns*: uint64
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Uwvm_spot_bridgeSrvVelocity_Request*(): Ros2Uwvm_spot_bridgeSrvVelocity_Request =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvVelocity_RequestMinimumWireBytes* = 56
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvVelocity_RequestMaximumWireBytes* = 56
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Uwvm_spot_bridgeSrvVelocity_RequestCodecIdentity* = "UWVMROS1_ffe3b1dec91a25cd84d221ba4ebeae576bd7d6b96f258579c0b3d280cad79f8d"
## @brief Encode every field of complete uwvm_spot_bridge/srv/Velocity_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Uwvm_spot_bridgeSrvVelocity_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 56, written)
## @brief Decode every field of complete uwvm_spot_bridge/srv/Velocity_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Uwvm_spot_bridgeSrvVelocity_Request*(bytes: openArray[byte]; value: var Ros2Uwvm_spot_bridgeSrvVelocity_Request): uint32 =
  wire.decode(bytes, 56, 56, value)

## @brief Complete uwvm_spot_bridge/srv/Velocity_Response value.
## @details Retain all 6 original fields and 0 constants. Canonical extent 26..26 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Uwvm_spot_bridgeSrvVelocity_Response* = object
    ## @brief Original uwvm_spot_bridge/srv/Velocity_Response.token field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_token*: uint64
    ## @brief Original uwvm_spot_bridge/srv/Velocity_Response.nonce field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_nonce*: uint64
    ## @brief Original uwvm_spot_bridge/srv/Velocity_Response.error field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_error*: uint32
    ## @brief Original uwvm_spot_bridge/srv/Velocity_Response.unknown field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_unknown*: bool
    ## @brief Original uwvm_spot_bridge/srv/Velocity_Response.native_accepted field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_native_accepted*: bool
    ## @brief Original uwvm_spot_bridge/srv/Velocity_Response.native_command_id field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_native_command_id*: uint32
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Uwvm_spot_bridgeSrvVelocity_Response*(): Ros2Uwvm_spot_bridgeSrvVelocity_Response =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvVelocity_ResponseMinimumWireBytes* = 26
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvVelocity_ResponseMaximumWireBytes* = 26
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Uwvm_spot_bridgeSrvVelocity_ResponseCodecIdentity* = "UWVMROS1_031f37beeb5a03c4e65d4be8fd70bc680408d110a020e066bea593d86498401a"
## @brief Encode every field of complete uwvm_spot_bridge/srv/Velocity_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Uwvm_spot_bridgeSrvVelocity_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 26, written)
## @brief Decode every field of complete uwvm_spot_bridge/srv/Velocity_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Uwvm_spot_bridgeSrvVelocity_Response*(bytes: openArray[byte]; value: var Ros2Uwvm_spot_bridgeSrvVelocity_Response): uint32 =
  wire.decode(bytes, 26, 26, value)

## @brief Complete uwvm_spot_bridge/srv/Feedback_Request value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 32..32 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Uwvm_spot_bridgeSrvFeedback_Request* = object
    ## @brief Original uwvm_spot_bridge/srv/Feedback_Request.token field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_token*: uint64
    ## @brief Original uwvm_spot_bridge/srv/Feedback_Request.nonce field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_nonce*: uint64
    ## @brief Original uwvm_spot_bridge/srv/Feedback_Request.budget_ns field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_budget_ns*: uint64
    ## @brief Original uwvm_spot_bridge/srv/Feedback_Request.command_token field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_command_token*: uint64
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Uwvm_spot_bridgeSrvFeedback_Request*(): Ros2Uwvm_spot_bridgeSrvFeedback_Request =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvFeedback_RequestMinimumWireBytes* = 32
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvFeedback_RequestMaximumWireBytes* = 32
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Uwvm_spot_bridgeSrvFeedback_RequestCodecIdentity* = "UWVMROS1_de64ce283f49f5c324912ec262f7d15b6fd828879c01039d455c765743c45ba3"
## @brief Encode every field of complete uwvm_spot_bridge/srv/Feedback_Request.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Uwvm_spot_bridgeSrvFeedback_Request; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 32, written)
## @brief Decode every field of complete uwvm_spot_bridge/srv/Feedback_Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Uwvm_spot_bridgeSrvFeedback_Request*(bytes: openArray[byte]; value: var Ros2Uwvm_spot_bridgeSrvFeedback_Request): uint32 =
  wire.decode(bytes, 32, 32, value)

## @brief Complete uwvm_spot_bridge/srv/Feedback_Response value.
## @details Retain all 13 original fields and 0 constants. Canonical extent 45..16429 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Uwvm_spot_bridgeSrvFeedback_Response* = object
    ## @brief Original uwvm_spot_bridge/srv/Feedback_Response.token field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_token*: uint64
    ## @brief Original uwvm_spot_bridge/srv/Feedback_Response.nonce field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_nonce*: uint64
    ## @brief Original uwvm_spot_bridge/srv/Feedback_Response.error field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_error*: uint32
    ## @brief Original uwvm_spot_bridge/srv/Feedback_Response.unknown field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_unknown*: bool
    ## @brief Original uwvm_spot_bridge/srv/Feedback_Response.native_command_id field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_native_command_id*: uint32
    ## @brief Original uwvm_spot_bridge/srv/Feedback_Response.has_full_body_feedback field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_has_full_body_feedback*: bool
    ## @brief Original uwvm_spot_bridge/srv/Feedback_Response.full_body_status field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_full_body_status*: uint32
    ## @brief Original uwvm_spot_bridge/srv/Feedback_Response.has_mobility_feedback field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_has_mobility_feedback*: bool
    ## @brief Original uwvm_spot_bridge/srv/Feedback_Response.mobility_status field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mobility_status*: uint32
    ## @brief Original uwvm_spot_bridge/srv/Feedback_Response.feedback_kind field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_feedback_kind*: uint8
    ## @brief Original uwvm_spot_bridge/srv/Feedback_Response.has_subcommand_status field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_has_subcommand_status*: bool
    ## @brief Original uwvm_spot_bridge/srv/Feedback_Response.subcommand_status field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_subcommand_status*: uint32
    ## @brief Original uwvm_spot_bridge/srv/Feedback_Response.native_proto field.
    ## @details Original type uint8. Shape sequence; bound/count 16384 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_native_proto*: NativeSequence[uint8, 16384]
## @brief Construct every declared original default with independent storage.
## @details Nested values retain their own declared defaults; construction grants no ROS authority.
## @return Complete independently owned original value.
proc initRos2Uwvm_spot_bridgeSrvFeedback_Response*(): Ros2Uwvm_spot_bridgeSrvFeedback_Response =
    discard
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvFeedback_ResponseMinimumWireBytes* = 45
## @brief Inclusive maximum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Uwvm_spot_bridgeSrvFeedback_ResponseMaximumWireBytes* = 16429
## @brief Exact complete canonical codec identity.
## @details Preserve field order, shape and finite bounds; this does not establish a native
## identity.
const Ros2Uwvm_spot_bridgeSrvFeedback_ResponseCodecIdentity* = "UWVMROS1_4a19efe7f64fe0d7f6f13abe8980fb55503d3b897af64abc73bbd236587adfe8"
## @brief Encode every field of complete uwvm_spot_bridge/srv/Feedback_Response.
## @details The caller owns output and value storage. Failure invalidates partial output; no host
## operation occurs.
## @param value Complete exclusive owned record.
## @param output Disjoint exclusive writable bytes.
## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Uwvm_spot_bridgeSrvFeedback_Response; output: var openArray[byte];
             written: var int): uint32 =
  wire.encode(value, output, 16429, written)
## @brief Decode every field of complete uwvm_spot_bridge/srv/Feedback_Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Uwvm_spot_bridgeSrvFeedback_Response*(bytes: openArray[byte]; value: var Ros2Uwvm_spot_bridgeSrvFeedback_Response): uint32 =
  wire.decode(bytes, 45, 16429, value)

