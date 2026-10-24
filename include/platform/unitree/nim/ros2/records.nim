## @file records.nim
## @brief Complete owned original Unitree ROS 2 native records and codecs.
## @details Generated from the admitted source-pinned catalog; no ROS authority is created.
import unitree/nim/wire

## @brief Complete unitree_api/msg/RequestIdentity value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 16..16 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_apiMsgRequestIdentity* = object
    ## @brief Original unitree_api/msg/RequestIdentity.id field.
    ## @details Original type int64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_id*: int64
    ## @brief Original unitree_api/msg/RequestIdentity.api_id field.
    ## @details Original type int64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_api_id*: int64
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_apiMsgRequestIdentityMinimumWireBytes* = 16
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_apiMsgRequestIdentityMaximumWireBytes* = 16
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_apiMsgRequestIdentityCodecIdentity* =
    "UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2"
 ## @brief Encode every field of complete unitree_api/msg/RequestIdentity.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_apiMsgRequestIdentity; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 16, written)
## @brief Decode every field of complete unitree_api/msg/RequestIdentity.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_apiMsgRequestIdentity*(bytes: openArray[byte];
        value: var Ros2Unitree_apiMsgRequestIdentity): uint32 =
    wire.decode(bytes, 16, 16, value)

## @brief Complete unitree_api/msg/RequestLease value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 8..8 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_apiMsgRequestLease* = object
    ## @brief Original unitree_api/msg/RequestLease.id field.
    ## @details Original type int64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_id*: int64
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_apiMsgRequestLeaseMinimumWireBytes* = 8
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_apiMsgRequestLeaseMaximumWireBytes* = 8
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_apiMsgRequestLeaseCodecIdentity* =
    "UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e"
 ## @brief Encode every field of complete unitree_api/msg/RequestLease.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_apiMsgRequestLease; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 8, written)
## @brief Decode every field of complete unitree_api/msg/RequestLease.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_apiMsgRequestLease*(bytes: openArray[byte]; value: var Ros2Unitree_apiMsgRequestLease): uint32 =
    wire.decode(bytes, 8, 8, value)

## @brief Complete unitree_api/msg/RequestPolicy value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 5..5 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_apiMsgRequestPolicy* = object
    ## @brief Original unitree_api/msg/RequestPolicy.priority field.
    ## @details Original type int32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_priority*: int32
    ## @brief Original unitree_api/msg/RequestPolicy.noreply field.
    ## @details Original type bool. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_noreply*: bool
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_apiMsgRequestPolicyMinimumWireBytes* = 5
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_apiMsgRequestPolicyMaximumWireBytes* = 5
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_apiMsgRequestPolicyCodecIdentity* =
    "UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8"
 ## @brief Encode every field of complete unitree_api/msg/RequestPolicy.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_apiMsgRequestPolicy; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 5, written)
## @brief Decode every field of complete unitree_api/msg/RequestPolicy.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_apiMsgRequestPolicy*(bytes: openArray[byte];
        value: var Ros2Unitree_apiMsgRequestPolicy): uint32 =
    wire.decode(bytes, 5, 5, value)

## @brief Complete unitree_api/msg/RequestHeader value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 29..29 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_apiMsgRequestHeader* = object
    ## @brief Original unitree_api/msg/RequestHeader.identity field.
    ## @details Original type unitree_api/msg/RequestIdentity. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_identity*: Ros2Unitree_apiMsgRequestIdentity
    ## @brief Original unitree_api/msg/RequestHeader.lease field.
    ## @details Original type unitree_api/msg/RequestLease. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_lease*: Ros2Unitree_apiMsgRequestLease
    ## @brief Original unitree_api/msg/RequestHeader.policy field.
    ## @details Original type unitree_api/msg/RequestPolicy. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_policy*: Ros2Unitree_apiMsgRequestPolicy
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_apiMsgRequestHeaderMinimumWireBytes* = 29
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_apiMsgRequestHeaderMaximumWireBytes* = 29
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_apiMsgRequestHeaderCodecIdentity* =
    "UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0"
 ## @brief Encode every field of complete unitree_api/msg/RequestHeader.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_apiMsgRequestHeader; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 29, written)
## @brief Decode every field of complete unitree_api/msg/RequestHeader.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_apiMsgRequestHeader*(bytes: openArray[byte];
        value: var Ros2Unitree_apiMsgRequestHeader): uint32 =
    wire.decode(bytes, 29, 29, value)

## @brief Complete unitree_api/msg/Request value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 37..4133 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_apiMsgRequest* = object
    ## @brief Original unitree_api/msg/Request.header field.
    ## @details Original type unitree_api/msg/RequestHeader. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_header*: Ros2Unitree_apiMsgRequestHeader
    ## @brief Original unitree_api/msg/Request.parameter field.
    ## @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_parameter*: NativeText[2048, false]
    ## @brief Original unitree_api/msg/Request.binary field.
    ## @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_binary*: NativeSequence[uint8, 2048]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_apiMsgRequestMinimumWireBytes* = 37
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_apiMsgRequestMaximumWireBytes* = 4133
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_apiMsgRequestCodecIdentity* =
    "UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192"
 ## @brief Encode every field of complete unitree_api/msg/Request.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_apiMsgRequest; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 4133, written)
## @brief Decode every field of complete unitree_api/msg/Request.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_apiMsgRequest*(bytes: openArray[byte]; value: var Ros2Unitree_apiMsgRequest): uint32 =
    wire.decode(bytes, 37, 4133, value)

## @brief Complete unitree_api/msg/ResponseStatus value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..4 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_apiMsgResponseStatus* = object
    ## @brief Original unitree_api/msg/ResponseStatus.code field.
    ## @details Original type int32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_code*: int32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_apiMsgResponseStatusMinimumWireBytes* = 4
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_apiMsgResponseStatusMaximumWireBytes* = 4
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_apiMsgResponseStatusCodecIdentity* =
    "UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1"
 ## @brief Encode every field of complete unitree_api/msg/ResponseStatus.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_apiMsgResponseStatus; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 4, written)
## @brief Decode every field of complete unitree_api/msg/ResponseStatus.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_apiMsgResponseStatus*(bytes: openArray[byte];
        value: var Ros2Unitree_apiMsgResponseStatus): uint32 =
    wire.decode(bytes, 4, 4, value)

## @brief Complete unitree_api/msg/ResponseHeader value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 20..20 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_apiMsgResponseHeader* = object
    ## @brief Original unitree_api/msg/ResponseHeader.identity field.
    ## @details Original type unitree_api/msg/RequestIdentity. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_identity*: Ros2Unitree_apiMsgRequestIdentity
    ## @brief Original unitree_api/msg/ResponseHeader.status field.
    ## @details Original type unitree_api/msg/ResponseStatus. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_status*: Ros2Unitree_apiMsgResponseStatus
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_apiMsgResponseHeaderMinimumWireBytes* = 20
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_apiMsgResponseHeaderMaximumWireBytes* = 20
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_apiMsgResponseHeaderCodecIdentity* =
    "UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0"
 ## @brief Encode every field of complete unitree_api/msg/ResponseHeader.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_apiMsgResponseHeader; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 20, written)
## @brief Decode every field of complete unitree_api/msg/ResponseHeader.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_apiMsgResponseHeader*(bytes: openArray[byte];
        value: var Ros2Unitree_apiMsgResponseHeader): uint32 =
    wire.decode(bytes, 20, 20, value)

## @brief Complete unitree_api/msg/Response value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 28..2108 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_apiMsgResponse* = object
    ## @brief Original unitree_api/msg/Response.header field.
    ## @details Original type unitree_api/msg/ResponseHeader. Preserve declared units, frame,
    ## signedness and field order. Backing storage belongs to this value; constructing or copying it
    ## creates no native ROS owner.
    field_header*: Ros2Unitree_apiMsgResponseHeader
    ## @brief Original unitree_api/msg/Response.data field.
    ## @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_data*: NativeText[2048, false]
    ## @brief Original unitree_api/msg/Response.binary field.
    ## @details Original type int8. Shape sequence; bound/count 32 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_binary*: NativeSequence[int8, 32]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_apiMsgResponseMinimumWireBytes* = 28
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_apiMsgResponseMaximumWireBytes* = 2108
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_apiMsgResponseCodecIdentity* =
    "UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f"
 ## @brief Encode every field of complete unitree_api/msg/Response.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_apiMsgResponse; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 2108, written)
## @brief Decode every field of complete unitree_api/msg/Response.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_apiMsgResponse*(bytes: openArray[byte]; value: var Ros2Unitree_apiMsgResponse): uint32 =
    wire.decode(bytes, 28, 2108, value)

## @brief Complete unitree_go/msg/AudioData value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 12..2060 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgAudioData* = object
    ## @brief Original unitree_go/msg/AudioData.time_frame field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_time_frame*: uint64
    ## @brief Original unitree_go/msg/AudioData.data field.
    ## @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_data*: NativeSequence[uint8, 2048]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgAudioDataMinimumWireBytes* = 12
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgAudioDataMaximumWireBytes* = 2060
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgAudioDataCodecIdentity* =
    "UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe"
 ## @brief Encode every field of complete unitree_go/msg/AudioData.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgAudioData; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 2060, written)
## @brief Decode every field of complete unitree_go/msg/AudioData.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgAudioData*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgAudioData): uint32 =
    wire.decode(bytes, 12, 2060, value)

## @brief Complete unitree_go/msg/BmsCmd value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 4..4 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgBmsCmd* = object
    ## @brief Original unitree_go/msg/BmsCmd.off field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_off*: uint8
    ## @brief Original unitree_go/msg/BmsCmd.reserve field.
    ## @details Original type uint8. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_reserve*: array[3, uint8]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgBmsCmdMinimumWireBytes* = 4
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgBmsCmdMaximumWireBytes* = 4
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgBmsCmdCodecIdentity* =
    "UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339"
 ## @brief Encode every field of complete unitree_go/msg/BmsCmd.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgBmsCmd; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 4, written)
## @brief Decode every field of complete unitree_go/msg/BmsCmd.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgBmsCmd*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgBmsCmd): uint32 =
    wire.decode(bytes, 4, 4, value)

## @brief Complete unitree_go/msg/BmsState value.
## @details Retain all 9 original fields and 0 constants. Canonical extent 44..44 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgBmsState* = object
    ## @brief Original unitree_go/msg/BmsState.version_high field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_version_high*: uint8
    ## @brief Original unitree_go/msg/BmsState.version_low field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_version_low*: uint8
    ## @brief Original unitree_go/msg/BmsState.status field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_status*: uint8
    ## @brief Original unitree_go/msg/BmsState.soc field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_soc*: uint8
    ## @brief Original unitree_go/msg/BmsState.current field.
    ## @details Original type int32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_current*: int32
    ## @brief Original unitree_go/msg/BmsState.cycle field.
    ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_cycle*: uint16
    ## @brief Original unitree_go/msg/BmsState.bq_ntc field.
    ## @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_bq_ntc*: array[2, int8]
    ## @brief Original unitree_go/msg/BmsState.mcu_ntc field.
    ## @details Original type int8. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_mcu_ntc*: array[2, int8]
    ## @brief Original unitree_go/msg/BmsState.cell_vol field.
    ## @details Original type uint16. Shape array; bound/count 15 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_cell_vol*: array[15, uint16]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgBmsStateMinimumWireBytes* = 44
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgBmsStateMaximumWireBytes* = 44
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgBmsStateCodecIdentity* =
    "UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0"
 ## @brief Encode every field of complete unitree_go/msg/BmsState.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgBmsState; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 44, written)
## @brief Decode every field of complete unitree_go/msg/BmsState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgBmsState*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgBmsState): uint32 =
    wire.decode(bytes, 44, 44, value)

## @brief Complete unitree_go/msg/Error value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgError* = object
    ## @brief Original unitree_go/msg/Error.source field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_source*: uint32
    ## @brief Original unitree_go/msg/Error.state field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_state*: uint32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgErrorMinimumWireBytes* = 8
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgErrorMaximumWireBytes* = 8
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgErrorCodecIdentity* = "UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd"
 ## @brief Encode every field of complete unitree_go/msg/Error.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgError; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 8, written)
## @brief Decode every field of complete unitree_go/msg/Error.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgError*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgError): uint32 =
    wire.decode(bytes, 8, 8, value)

## @brief Complete unitree_go/msg/Go2FrontVideoData value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 20..6164 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgGo2FrontVideoData* = object
    ## @brief Original unitree_go/msg/Go2FrontVideoData.time_frame field.
    ## @details Original type uint64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_time_frame*: uint64
    ## @brief Original unitree_go/msg/Go2FrontVideoData.video720p field.
    ## @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_video720p*: NativeSequence[uint8, 2048]
    ## @brief Original unitree_go/msg/Go2FrontVideoData.video360p field.
    ## @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_video360p*: NativeSequence[uint8, 2048]
    ## @brief Original unitree_go/msg/Go2FrontVideoData.video180p field.
    ## @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_video180p*: NativeSequence[uint8, 2048]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgGo2FrontVideoDataMinimumWireBytes* = 20
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgGo2FrontVideoDataMaximumWireBytes* = 6164
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgGo2FrontVideoDataCodecIdentity* =
    "UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad"
 ## @brief Encode every field of complete unitree_go/msg/Go2FrontVideoData.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgGo2FrontVideoData; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 6164, written)
## @brief Decode every field of complete unitree_go/msg/Go2FrontVideoData.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgGo2FrontVideoData*(bytes: openArray[byte];
        value: var Ros2Unitree_goMsgGo2FrontVideoData): uint32 =
    wire.decode(bytes, 20, 6164, value)

## @brief Complete unitree_go/msg/HeightMap value.
## @details Retain all 7 original fields and 0 constants. Canonical extent 36..2212 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgHeightMap* = object
    ## @brief Original unitree_go/msg/HeightMap.stamp field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_stamp*: float64
    ## @brief Original unitree_go/msg/HeightMap.frame_id field.
    ## @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_frame_id*: NativeText[2048, false]
    ## @brief Original unitree_go/msg/HeightMap.resolution field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_resolution*: float32
    ## @brief Original unitree_go/msg/HeightMap.width field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_width*: uint32
    ## @brief Original unitree_go/msg/HeightMap.height field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_height*: uint32
    ## @brief Original unitree_go/msg/HeightMap.origin field.
    ## @details Original type float32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_origin*: array[2, float32]
    ## @brief Original unitree_go/msg/HeightMap.data field.
    ## @details Original type float32. Shape sequence; bound/count 32 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_data*: NativeSequence[float32, 32]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgHeightMapMinimumWireBytes* = 36
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgHeightMapMaximumWireBytes* = 2212
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgHeightMapCodecIdentity* =
    "UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d"
 ## @brief Encode every field of complete unitree_go/msg/HeightMap.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgHeightMap; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 2212, written)
## @brief Decode every field of complete unitree_go/msg/HeightMap.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgHeightMap*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgHeightMap): uint32 =
    wire.decode(bytes, 36, 2212, value)

## @brief Complete unitree_go/msg/IMUState value.
## @details Retain all 5 original fields and 0 constants. Canonical extent 53..53 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgIMUState* = object
    ## @brief Original unitree_go/msg/IMUState.quaternion field.
    ## @details Original type float32. Shape array; bound/count 4 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_quaternion*: array[4, float32]
    ## @brief Original unitree_go/msg/IMUState.gyroscope field.
    ## @details Original type float32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_gyroscope*: array[3, float32]
    ## @brief Original unitree_go/msg/IMUState.accelerometer field.
    ## @details Original type float32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_accelerometer*: array[3, float32]
    ## @brief Original unitree_go/msg/IMUState.rpy field.
    ## @details Original type float32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_rpy*: array[3, float32]
    ## @brief Original unitree_go/msg/IMUState.temperature field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_temperature*: int8
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgIMUStateMinimumWireBytes* = 53
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgIMUStateMaximumWireBytes* = 53
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgIMUStateCodecIdentity* =
    "UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc"
 ## @brief Encode every field of complete unitree_go/msg/IMUState.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgIMUState; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 53, written)
## @brief Decode every field of complete unitree_go/msg/IMUState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgIMUState*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgIMUState): uint32 =
    wire.decode(bytes, 53, 53, value)

## @brief Complete unitree_go/msg/InterfaceConfig value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 4..4 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgInterfaceConfig* = object
    ## @brief Original unitree_go/msg/InterfaceConfig.mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mode*: uint8
    ## @brief Original unitree_go/msg/InterfaceConfig.value field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_value*: uint8
    ## @brief Original unitree_go/msg/InterfaceConfig.reserve field.
    ## @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_reserve*: array[2, uint8]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgInterfaceConfigMinimumWireBytes* = 4
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgInterfaceConfigMaximumWireBytes* = 4
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgInterfaceConfigCodecIdentity* =
    "UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110"
 ## @brief Encode every field of complete unitree_go/msg/InterfaceConfig.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgInterfaceConfig; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 4, written)
## @brief Decode every field of complete unitree_go/msg/InterfaceConfig.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgInterfaceConfig*(bytes: openArray[byte];
        value: var Ros2Unitree_goMsgInterfaceConfig): uint32 =
    wire.decode(bytes, 4, 4, value)

## @brief Complete unitree_go/msg/LidarState value.
## @details Retain all 17 original fields and 0 constants. Canonical extent 81..6225 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgLidarState* = object
    ## @brief Original unitree_go/msg/LidarState.stamp field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_stamp*: float64
    ## @brief Original unitree_go/msg/LidarState.firmware_version field.
    ## @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_firmware_version*: NativeText[2048, false]
    ## @brief Original unitree_go/msg/LidarState.software_version field.
    ## @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_software_version*: NativeText[2048, false]
    ## @brief Original unitree_go/msg/LidarState.sdk_version field.
    ## @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_sdk_version*: NativeText[2048, false]
    ## @brief Original unitree_go/msg/LidarState.sys_rotation_speed field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_sys_rotation_speed*: float32
    ## @brief Original unitree_go/msg/LidarState.com_rotation_speed field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_com_rotation_speed*: float32
    ## @brief Original unitree_go/msg/LidarState.error_state field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_error_state*: uint8
    ## @brief Original unitree_go/msg/LidarState.cloud_frequency field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_cloud_frequency*: float32
    ## @brief Original unitree_go/msg/LidarState.cloud_packet_loss_rate field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_cloud_packet_loss_rate*: float32
    ## @brief Original unitree_go/msg/LidarState.cloud_size field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_cloud_size*: uint32
    ## @brief Original unitree_go/msg/LidarState.cloud_scan_num field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_cloud_scan_num*: uint32
    ## @brief Original unitree_go/msg/LidarState.imu_frequency field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_imu_frequency*: float32
    ## @brief Original unitree_go/msg/LidarState.imu_packet_loss_rate field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_imu_packet_loss_rate*: float32
    ## @brief Original unitree_go/msg/LidarState.imu_rpy field.
    ## @details Original type float32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_imu_rpy*: array[3, float32]
    ## @brief Original unitree_go/msg/LidarState.serial_recv_stamp field.
    ## @details Original type float64. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_serial_recv_stamp*: float64
    ## @brief Original unitree_go/msg/LidarState.serial_buffer_size field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_serial_buffer_size*: uint32
    ## @brief Original unitree_go/msg/LidarState.serial_buffer_read field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_serial_buffer_read*: uint32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgLidarStateMinimumWireBytes* = 81
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgLidarStateMaximumWireBytes* = 6225
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgLidarStateCodecIdentity* =
    "UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb"
 ## @brief Encode every field of complete unitree_go/msg/LidarState.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgLidarState; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 6225, written)
## @brief Decode every field of complete unitree_go/msg/LidarState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgLidarState*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgLidarState): uint32 =
    wire.decode(bytes, 81, 6225, value)

## @brief Complete unitree_go/msg/MotorCmd value.
## @details Retain all 7 original fields and 0 constants. Canonical extent 33..33 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgMotorCmd* = object
    ## @brief Original unitree_go/msg/MotorCmd.mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mode*: uint8
    ## @brief Original unitree_go/msg/MotorCmd.q field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_q*: float32
    ## @brief Original unitree_go/msg/MotorCmd.dq field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_dq*: float32
    ## @brief Original unitree_go/msg/MotorCmd.tau field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_tau*: float32
    ## @brief Original unitree_go/msg/MotorCmd.kp field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_kp*: float32
    ## @brief Original unitree_go/msg/MotorCmd.kd field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_kd*: float32
    ## @brief Original unitree_go/msg/MotorCmd.reserve field.
    ## @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_reserve*: array[3, uint32]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgMotorCmdMinimumWireBytes* = 33
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgMotorCmdMaximumWireBytes* = 33
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgMotorCmdCodecIdentity* =
    "UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989"
 ## @brief Encode every field of complete unitree_go/msg/MotorCmd.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgMotorCmd; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 33, written)
## @brief Decode every field of complete unitree_go/msg/MotorCmd.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgMotorCmd*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgMotorCmd): uint32 =
    wire.decode(bytes, 33, 33, value)

## @brief Complete unitree_go/msg/LowCmd value.
## @details Retain all 14 original fields and 0 constants. Canonical extent 749..749 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgLowCmd* = object
    ## @brief Original unitree_go/msg/LowCmd.head field.
    ## @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_head*: array[2, uint8]
    ## @brief Original unitree_go/msg/LowCmd.level_flag field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_level_flag*: uint8
    ## @brief Original unitree_go/msg/LowCmd.frame_reserve field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_frame_reserve*: uint8
    ## @brief Original unitree_go/msg/LowCmd.sn field.
    ## @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_sn*: array[2, uint32]
    ## @brief Original unitree_go/msg/LowCmd.version field.
    ## @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_version*: array[2, uint32]
    ## @brief Original unitree_go/msg/LowCmd.bandwidth field.
    ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_bandwidth*: uint16
    ## @brief Original unitree_go/msg/LowCmd.motor_cmd field.
    ## @details Original type unitree_go/msg/MotorCmd. Shape array; bound/count 20 elements.
    ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    ## value; constructing or copying it creates no native ROS owner.
    field_motor_cmd*: array[20, Ros2Unitree_goMsgMotorCmd]
    ## @brief Original unitree_go/msg/LowCmd.bms_cmd field.
    ## @details Original type unitree_go/msg/BmsCmd. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_bms_cmd*: Ros2Unitree_goMsgBmsCmd
    ## @brief Original unitree_go/msg/LowCmd.wireless_remote field.
    ## @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_wireless_remote*: array[40, uint8]
    ## @brief Original unitree_go/msg/LowCmd.led field.
    ## @details Original type uint8. Shape array; bound/count 12 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_led*: array[12, uint8]
    ## @brief Original unitree_go/msg/LowCmd.fan field.
    ## @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_fan*: array[2, uint8]
    ## @brief Original unitree_go/msg/LowCmd.gpio field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_gpio*: uint8
    ## @brief Original unitree_go/msg/LowCmd.reserve field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_reserve*: uint32
    ## @brief Original unitree_go/msg/LowCmd.crc field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_crc*: uint32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgLowCmdMinimumWireBytes* = 749
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgLowCmdMaximumWireBytes* = 749
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgLowCmdCodecIdentity* =
    "UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63"
 ## @brief Encode every field of complete unitree_go/msg/LowCmd.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgLowCmd; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 749, written)
## @brief Decode every field of complete unitree_go/msg/LowCmd.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgLowCmd*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgLowCmd): uint32 =
    wire.decode(bytes, 749, 749, value)

## @brief Complete unitree_go/msg/MotorState value.
## @details Retain all 11 original fields and 0 constants. Canonical extent 42..42 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgMotorState* = object
    ## @brief Original unitree_go/msg/MotorState.mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mode*: uint8
    ## @brief Original unitree_go/msg/MotorState.q field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_q*: float32
    ## @brief Original unitree_go/msg/MotorState.dq field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_dq*: float32
    ## @brief Original unitree_go/msg/MotorState.ddq field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_ddq*: float32
    ## @brief Original unitree_go/msg/MotorState.tau_est field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_tau_est*: float32
    ## @brief Original unitree_go/msg/MotorState.q_raw field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_q_raw*: float32
    ## @brief Original unitree_go/msg/MotorState.dq_raw field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_dq_raw*: float32
    ## @brief Original unitree_go/msg/MotorState.ddq_raw field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_ddq_raw*: float32
    ## @brief Original unitree_go/msg/MotorState.temperature field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_temperature*: int8
    ## @brief Original unitree_go/msg/MotorState.lost field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_lost*: uint32
    ## @brief Original unitree_go/msg/MotorState.reserve field.
    ## @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_reserve*: array[2, uint32]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgMotorStateMinimumWireBytes* = 42
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgMotorStateMaximumWireBytes* = 42
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgMotorStateCodecIdentity* =
    "UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62"
 ## @brief Encode every field of complete unitree_go/msg/MotorState.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgMotorState; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 42, written)
## @brief Decode every field of complete unitree_go/msg/MotorState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgMotorState*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgMotorState): uint32 =
    wire.decode(bytes, 42, 42, value)

## @brief Complete unitree_go/msg/LowState value.
## @details Retain all 22 original fields and 0 constants. Canonical extent 1050..1050 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgLowState* = object
    ## @brief Original unitree_go/msg/LowState.head field.
    ## @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_head*: array[2, uint8]
    ## @brief Original unitree_go/msg/LowState.level_flag field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_level_flag*: uint8
    ## @brief Original unitree_go/msg/LowState.frame_reserve field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_frame_reserve*: uint8
    ## @brief Original unitree_go/msg/LowState.sn field.
    ## @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_sn*: array[2, uint32]
    ## @brief Original unitree_go/msg/LowState.version field.
    ## @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_version*: array[2, uint32]
    ## @brief Original unitree_go/msg/LowState.bandwidth field.
    ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_bandwidth*: uint16
    ## @brief Original unitree_go/msg/LowState.imu_state field.
    ## @details Original type unitree_go/msg/IMUState. Preserve declared units, frame, signedness
    ## and field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_imu_state*: Ros2Unitree_goMsgIMUState
    ## @brief Original unitree_go/msg/LowState.motor_state field.
    ## @details Original type unitree_go/msg/MotorState. Shape array; bound/count 20 elements.
    ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    ## value; constructing or copying it creates no native ROS owner.
    field_motor_state*: array[20, Ros2Unitree_goMsgMotorState]
    ## @brief Original unitree_go/msg/LowState.bms_state field.
    ## @details Original type unitree_go/msg/BmsState. Preserve declared units, frame, signedness
    ## and field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_bms_state*: Ros2Unitree_goMsgBmsState
    ## @brief Original unitree_go/msg/LowState.foot_force field.
    ## @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_foot_force*: array[4, int16]
    ## @brief Original unitree_go/msg/LowState.foot_force_est field.
    ## @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_foot_force_est*: array[4, int16]
    ## @brief Original unitree_go/msg/LowState.tick field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_tick*: uint32
    ## @brief Original unitree_go/msg/LowState.wireless_remote field.
    ## @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_wireless_remote*: array[40, uint8]
    ## @brief Original unitree_go/msg/LowState.bit_flag field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_bit_flag*: uint8
    ## @brief Original unitree_go/msg/LowState.adc_reel field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_adc_reel*: float32
    ## @brief Original unitree_go/msg/LowState.temperature_ntc1 field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_temperature_ntc1*: int8
    ## @brief Original unitree_go/msg/LowState.temperature_ntc2 field.
    ## @details Original type int8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_temperature_ntc2*: int8
    ## @brief Original unitree_go/msg/LowState.power_v field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_power_v*: float32
    ## @brief Original unitree_go/msg/LowState.power_a field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_power_a*: float32
    ## @brief Original unitree_go/msg/LowState.fan_frequency field.
    ## @details Original type uint16. Shape array; bound/count 4 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_fan_frequency*: array[4, uint16]
    ## @brief Original unitree_go/msg/LowState.reserve field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_reserve*: uint32
    ## @brief Original unitree_go/msg/LowState.crc field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_crc*: uint32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgLowStateMinimumWireBytes* = 1050
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgLowStateMaximumWireBytes* = 1050
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgLowStateCodecIdentity* =
    "UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab"
 ## @brief Encode every field of complete unitree_go/msg/LowState.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgLowState; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 1050, written)
## @brief Decode every field of complete unitree_go/msg/LowState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgLowState*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgLowState): uint32 =
    wire.decode(bytes, 1050, 1050, value)

## @brief Complete unitree_go/msg/MotorCmds value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..1060 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgMotorCmds* = object
    ## @brief Original unitree_go/msg/MotorCmds.cmds field.
    ## @details Original type unitree_go/msg/MotorCmd. Shape sequence; bound/count 32 elements.
    ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    ## value; constructing or copying it creates no native ROS owner.
    field_cmds*: NativeSequence[Ros2Unitree_goMsgMotorCmd, 32]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgMotorCmdsMinimumWireBytes* = 4
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgMotorCmdsMaximumWireBytes* = 1060
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgMotorCmdsCodecIdentity* =
    "UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3"
 ## @brief Encode every field of complete unitree_go/msg/MotorCmds.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgMotorCmds; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 1060, written)
## @brief Decode every field of complete unitree_go/msg/MotorCmds.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgMotorCmds*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgMotorCmds): uint32 =
    wire.decode(bytes, 4, 1060, value)

## @brief Complete unitree_go/msg/MotorStates value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 4..1348 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgMotorStates* = object
    ## @brief Original unitree_go/msg/MotorStates.states field.
    ## @details Original type unitree_go/msg/MotorState. Shape sequence; bound/count 32 elements.
    ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    ## value; constructing or copying it creates no native ROS owner.
    field_states*: NativeSequence[Ros2Unitree_goMsgMotorState, 32]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgMotorStatesMinimumWireBytes* = 4
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgMotorStatesMaximumWireBytes* = 1348
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgMotorStatesCodecIdentity* =
    "UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e"
 ## @brief Encode every field of complete unitree_go/msg/MotorStates.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgMotorStates; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 1348, written)
## @brief Decode every field of complete unitree_go/msg/MotorStates.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgMotorStates*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgMotorStates): uint32 =
    wire.decode(bytes, 4, 1348, value)

## @brief Complete unitree_go/msg/PathPoint value.
## @details Retain all 7 original fields and 0 constants. Canonical extent 28..28 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgPathPoint* = object
    ## @brief Original unitree_go/msg/PathPoint.t_from_start field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_t_from_start*: float32
    ## @brief Original unitree_go/msg/PathPoint.x field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_x*: float32
    ## @brief Original unitree_go/msg/PathPoint.y field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_y*: float32
    ## @brief Original unitree_go/msg/PathPoint.yaw field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_yaw*: float32
    ## @brief Original unitree_go/msg/PathPoint.vx field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_vx*: float32
    ## @brief Original unitree_go/msg/PathPoint.vy field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_vy*: float32
    ## @brief Original unitree_go/msg/PathPoint.vyaw field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_vyaw*: float32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgPathPointMinimumWireBytes* = 28
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgPathPointMaximumWireBytes* = 28
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgPathPointCodecIdentity* =
    "UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4"
 ## @brief Encode every field of complete unitree_go/msg/PathPoint.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgPathPoint; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 28, written)
## @brief Decode every field of complete unitree_go/msg/PathPoint.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgPathPoint*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgPathPoint): uint32 =
    wire.decode(bytes, 28, 28, value)

## @brief Complete unitree_go/msg/Req value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..4104 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgReq* = object
    ## @brief Original unitree_go/msg/Req.uuid field.
    ## @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_uuid*: NativeText[2048, false]
    ## @brief Original unitree_go/msg/Req.body field.
    ## @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_body*: NativeText[2048, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgReqMinimumWireBytes* = 8
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgReqMaximumWireBytes* = 4104
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgReqCodecIdentity* = "UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8"
 ## @brief Encode every field of complete unitree_go/msg/Req.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgReq; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 4104, written)
## @brief Decode every field of complete unitree_go/msg/Req.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgReq*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgReq): uint32 =
    wire.decode(bytes, 8, 4104, value)

## @brief Complete unitree_go/msg/Res value.
## @details Retain all 3 original fields and 0 constants. Canonical extent 12..6156 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgRes* = object
    ## @brief Original unitree_go/msg/Res.uuid field.
    ## @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_uuid*: NativeText[2048, false]
    ## @brief Original unitree_go/msg/Res.data field.
    ## @details Original type uint8. Shape sequence; bound/count 2048 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_data*: NativeSequence[uint8, 2048]
    ## @brief Original unitree_go/msg/Res.body field.
    ## @details Original type string. String bound 2048 bytes; domain utf8. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_body*: NativeText[2048, false]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgResMinimumWireBytes* = 12
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgResMaximumWireBytes* = 6156
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgResCodecIdentity* = "UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963"
 ## @brief Encode every field of complete unitree_go/msg/Res.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgRes; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 6156, written)
## @brief Decode every field of complete unitree_go/msg/Res.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgRes*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgRes): uint32 =
    wire.decode(bytes, 12, 6156, value)

## @brief Complete unitree_go/msg/SportModeCmd value.
## @details Retain all 11 original fields and 0 constants. Canonical extent 887..887 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgSportModeCmd* = object
    ## @brief Original unitree_go/msg/SportModeCmd.mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mode*: uint8
    ## @brief Original unitree_go/msg/SportModeCmd.gait_type field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_gait_type*: uint8
    ## @brief Original unitree_go/msg/SportModeCmd.speed_level field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_speed_level*: uint8
    ## @brief Original unitree_go/msg/SportModeCmd.foot_raise_height field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_foot_raise_height*: float32
    ## @brief Original unitree_go/msg/SportModeCmd.body_height field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_body_height*: float32
    ## @brief Original unitree_go/msg/SportModeCmd.position field.
    ## @details Original type float32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_position*: array[2, float32]
    ## @brief Original unitree_go/msg/SportModeCmd.euler field.
    ## @details Original type float32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_euler*: array[3, float32]
    ## @brief Original unitree_go/msg/SportModeCmd.velocity field.
    ## @details Original type float32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_velocity*: array[2, float32]
    ## @brief Original unitree_go/msg/SportModeCmd.yaw_speed field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_yaw_speed*: float32
    ## @brief Original unitree_go/msg/SportModeCmd.bms_cmd field.
    ## @details Original type unitree_go/msg/BmsCmd. Preserve declared units, frame, signedness and
    ## field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_bms_cmd*: Ros2Unitree_goMsgBmsCmd
    ## @brief Original unitree_go/msg/SportModeCmd.path_point field.
    ## @details Original type unitree_go/msg/PathPoint. Shape array; bound/count 30 elements.
    ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    ## value; constructing or copying it creates no native ROS owner.
    field_path_point*: array[30, Ros2Unitree_goMsgPathPoint]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgSportModeCmdMinimumWireBytes* = 887
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgSportModeCmdMaximumWireBytes* = 887
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgSportModeCmdCodecIdentity* =
    "UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c"
 ## @brief Encode every field of complete unitree_go/msg/SportModeCmd.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgSportModeCmd; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 887, written)
## @brief Decode every field of complete unitree_go/msg/SportModeCmd.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgSportModeCmd*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgSportModeCmd): uint32 =
    wire.decode(bytes, 887, 887, value)

## @brief Complete unitree_go/msg/TimeSpec value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 8..8 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgTimeSpec* = object
    ## @brief Original unitree_go/msg/TimeSpec.sec field.
    ## @details Original type int32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_sec*: int32
    ## @brief Original unitree_go/msg/TimeSpec.nanosec field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_nanosec*: uint32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgTimeSpecMinimumWireBytes* = 8
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgTimeSpecMaximumWireBytes* = 8
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgTimeSpecCodecIdentity* =
    "UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4"
 ## @brief Encode every field of complete unitree_go/msg/TimeSpec.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgTimeSpec; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 8, written)
## @brief Decode every field of complete unitree_go/msg/TimeSpec.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgTimeSpec*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgTimeSpec): uint32 =
    wire.decode(bytes, 8, 8, value)

## @brief Complete unitree_go/msg/SportModeState value.
## @details Retain all 15 original fields and 0 constants. Canonical extent 227..227 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgSportModeState* = object
    ## @brief Original unitree_go/msg/SportModeState.stamp field.
    ## @details Original type unitree_go/msg/TimeSpec. Preserve declared units, frame, signedness
    ## and field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_stamp*: Ros2Unitree_goMsgTimeSpec
    ## @brief Original unitree_go/msg/SportModeState.error_code field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_error_code*: uint32
    ## @brief Original unitree_go/msg/SportModeState.imu_state field.
    ## @details Original type unitree_go/msg/IMUState. Preserve declared units, frame, signedness
    ## and field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_imu_state*: Ros2Unitree_goMsgIMUState
    ## @brief Original unitree_go/msg/SportModeState.mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mode*: uint8
    ## @brief Original unitree_go/msg/SportModeState.progress field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_progress*: float32
    ## @brief Original unitree_go/msg/SportModeState.gait_type field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_gait_type*: uint8
    ## @brief Original unitree_go/msg/SportModeState.foot_raise_height field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_foot_raise_height*: float32
    ## @brief Original unitree_go/msg/SportModeState.position field.
    ## @details Original type float32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_position*: array[3, float32]
    ## @brief Original unitree_go/msg/SportModeState.body_height field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_body_height*: float32
    ## @brief Original unitree_go/msg/SportModeState.velocity field.
    ## @details Original type float32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_velocity*: array[3, float32]
    ## @brief Original unitree_go/msg/SportModeState.yaw_speed field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_yaw_speed*: float32
    ## @brief Original unitree_go/msg/SportModeState.range_obstacle field.
    ## @details Original type float32. Shape array; bound/count 4 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_range_obstacle*: array[4, float32]
    ## @brief Original unitree_go/msg/SportModeState.foot_force field.
    ## @details Original type int16. Shape array; bound/count 4 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_foot_force*: array[4, int16]
    ## @brief Original unitree_go/msg/SportModeState.foot_position_body field.
    ## @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_foot_position_body*: array[12, float32]
    ## @brief Original unitree_go/msg/SportModeState.foot_speed_body field.
    ## @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_foot_speed_body*: array[12, float32]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgSportModeStateMinimumWireBytes* = 227
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgSportModeStateMaximumWireBytes* = 227
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgSportModeStateCodecIdentity* =
    "UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760"
 ## @brief Encode every field of complete unitree_go/msg/SportModeState.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgSportModeState; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 227, written)
## @brief Decode every field of complete unitree_go/msg/SportModeState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgSportModeState*(bytes: openArray[byte];
        value: var Ros2Unitree_goMsgSportModeState): uint32 =
    wire.decode(bytes, 227, 227, value)

## @brief Complete unitree_go/msg/UwbState value.
## @details Retain all 17 original fields and 0 constants. Canonical extent 55..55 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgUwbState* = object
    ## @brief Original unitree_go/msg/UwbState.version field.
    ## @details Original type uint8. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_version*: array[2, uint8]
    ## @brief Original unitree_go/msg/UwbState.channel field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_channel*: uint8
    ## @brief Original unitree_go/msg/UwbState.joy_mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_joy_mode*: uint8
    ## @brief Original unitree_go/msg/UwbState.orientation_est field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_orientation_est*: float32
    ## @brief Original unitree_go/msg/UwbState.pitch_est field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_pitch_est*: float32
    ## @brief Original unitree_go/msg/UwbState.distance_est field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_distance_est*: float32
    ## @brief Original unitree_go/msg/UwbState.yaw_est field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_yaw_est*: float32
    ## @brief Original unitree_go/msg/UwbState.tag_roll field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_tag_roll*: float32
    ## @brief Original unitree_go/msg/UwbState.tag_pitch field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_tag_pitch*: float32
    ## @brief Original unitree_go/msg/UwbState.tag_yaw field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_tag_yaw*: float32
    ## @brief Original unitree_go/msg/UwbState.base_roll field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_base_roll*: float32
    ## @brief Original unitree_go/msg/UwbState.base_pitch field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_base_pitch*: float32
    ## @brief Original unitree_go/msg/UwbState.base_yaw field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_base_yaw*: float32
    ## @brief Original unitree_go/msg/UwbState.joystick field.
    ## @details Original type float32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_joystick*: array[2, float32]
    ## @brief Original unitree_go/msg/UwbState.error_state field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_error_state*: uint8
    ## @brief Original unitree_go/msg/UwbState.buttons field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_buttons*: uint8
    ## @brief Original unitree_go/msg/UwbState.enabled_from_app field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_enabled_from_app*: uint8
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgUwbStateMinimumWireBytes* = 55
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgUwbStateMaximumWireBytes* = 55
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgUwbStateCodecIdentity* =
    "UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34"
 ## @brief Encode every field of complete unitree_go/msg/UwbState.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgUwbState; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 55, written)
## @brief Decode every field of complete unitree_go/msg/UwbState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgUwbState*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgUwbState): uint32 =
    wire.decode(bytes, 55, 55, value)

## @brief Complete unitree_go/msg/UwbSwitch value.
## @details Retain all 1 original fields and 0 constants. Canonical extent 1..1 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgUwbSwitch* = object
    ## @brief Original unitree_go/msg/UwbSwitch.enabled field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_enabled*: uint8
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgUwbSwitchMinimumWireBytes* = 1
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgUwbSwitchMaximumWireBytes* = 1
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgUwbSwitchCodecIdentity* =
    "UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5"
 ## @brief Encode every field of complete unitree_go/msg/UwbSwitch.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgUwbSwitch; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 1, written)
## @brief Decode every field of complete unitree_go/msg/UwbSwitch.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgUwbSwitch*(bytes: openArray[byte]; value: var Ros2Unitree_goMsgUwbSwitch): uint32 =
    wire.decode(bytes, 1, 1, value)

## @brief Complete unitree_go/msg/WirelessController value.
## @details Retain all 5 original fields and 0 constants. Canonical extent 18..18 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_goMsgWirelessController* = object
    ## @brief Original unitree_go/msg/WirelessController.lx field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_lx*: float32
    ## @brief Original unitree_go/msg/WirelessController.ly field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_ly*: float32
    ## @brief Original unitree_go/msg/WirelessController.rx field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_rx*: float32
    ## @brief Original unitree_go/msg/WirelessController.ry field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_ry*: float32
    ## @brief Original unitree_go/msg/WirelessController.keys field.
    ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_keys*: uint16
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgWirelessControllerMinimumWireBytes* = 18
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_goMsgWirelessControllerMaximumWireBytes* = 18
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_goMsgWirelessControllerCodecIdentity* =
    "UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438"
 ## @brief Encode every field of complete unitree_go/msg/WirelessController.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_goMsgWirelessController; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 18, written)
## @brief Decode every field of complete unitree_go/msg/WirelessController.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_goMsgWirelessController*(bytes: openArray[byte];
        value: var Ros2Unitree_goMsgWirelessController): uint32 =
    wire.decode(bytes, 18, 18, value)

## @brief Complete unitree_hg/msg/BmsCmd value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 41..41 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_hgMsgBmsCmd* = object
    ## @brief Original unitree_hg/msg/BmsCmd.cmd field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_cmd*: uint8
    ## @brief Original unitree_hg/msg/BmsCmd.reserve field.
    ## @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_reserve*: array[40, uint8]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgBmsCmdMinimumWireBytes* = 41
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgBmsCmdMaximumWireBytes* = 41
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_hgMsgBmsCmdCodecIdentity* =
    "UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de"
 ## @brief Encode every field of complete unitree_hg/msg/BmsCmd.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_hgMsgBmsCmd; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 41, written)
## @brief Decode every field of complete unitree_hg/msg/BmsCmd.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_hgMsgBmsCmd*(bytes: openArray[byte]; value: var Ros2Unitree_hgMsgBmsCmd): uint32 =
    wire.decode(bytes, 41, 41, value)

## @brief Complete unitree_hg/msg/BmsState value.
## @details Retain all 13 original fields and 0 constants. Canonical extent 161..161 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_hgMsgBmsState* = object
    ## @brief Original unitree_hg/msg/BmsState.version_high field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_version_high*: uint8
    ## @brief Original unitree_hg/msg/BmsState.version_low field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_version_low*: uint8
    ## @brief Original unitree_hg/msg/BmsState.fn field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_fn*: uint8
    ## @brief Original unitree_hg/msg/BmsState.cell_vol field.
    ## @details Original type uint16. Shape array; bound/count 40 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_cell_vol*: array[40, uint16]
    ## @brief Original unitree_hg/msg/BmsState.bmsvoltage field.
    ## @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_bmsvoltage*: array[3, uint32]
    ## @brief Original unitree_hg/msg/BmsState.current field.
    ## @details Original type int32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_current*: int32
    ## @brief Original unitree_hg/msg/BmsState.soc field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_soc*: uint8
    ## @brief Original unitree_hg/msg/BmsState.soh field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_soh*: uint8
    ## @brief Original unitree_hg/msg/BmsState.temperature field.
    ## @details Original type int16. Shape array; bound/count 12 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_temperature*: array[12, int16]
    ## @brief Original unitree_hg/msg/BmsState.cycle field.
    ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_cycle*: uint16
    ## @brief Original unitree_hg/msg/BmsState.manufacturer_date field.
    ## @details Original type uint16. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_manufacturer_date*: uint16
    ## @brief Original unitree_hg/msg/BmsState.bmsstate field.
    ## @details Original type uint32. Shape array; bound/count 5 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_bmsstate*: array[5, uint32]
    ## @brief Original unitree_hg/msg/BmsState.reserve field.
    ## @details Original type uint32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_reserve*: array[3, uint32]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgBmsStateMinimumWireBytes* = 161
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgBmsStateMaximumWireBytes* = 161
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_hgMsgBmsStateCodecIdentity* =
    "UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d"
 ## @brief Encode every field of complete unitree_hg/msg/BmsState.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_hgMsgBmsState; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 161, written)
## @brief Decode every field of complete unitree_hg/msg/BmsState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_hgMsgBmsState*(bytes: openArray[byte]; value: var Ros2Unitree_hgMsgBmsState): uint32 =
    wire.decode(bytes, 161, 161, value)

## @brief Complete unitree_hg/msg/MotorCmd value.
## @details Retain all 7 original fields and 0 constants. Canonical extent 25..25 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_hgMsgMotorCmd* = object
    ## @brief Original unitree_hg/msg/MotorCmd.mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mode*: uint8
    ## @brief Original unitree_hg/msg/MotorCmd.q field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_q*: float32
    ## @brief Original unitree_hg/msg/MotorCmd.dq field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_dq*: float32
    ## @brief Original unitree_hg/msg/MotorCmd.tau field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_tau*: float32
    ## @brief Original unitree_hg/msg/MotorCmd.kp field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_kp*: float32
    ## @brief Original unitree_hg/msg/MotorCmd.kd field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_kd*: float32
    ## @brief Original unitree_hg/msg/MotorCmd.reserve field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_reserve*: uint32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgMotorCmdMinimumWireBytes* = 25
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgMotorCmdMaximumWireBytes* = 25
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_hgMsgMotorCmdCodecIdentity* =
    "UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb"
 ## @brief Encode every field of complete unitree_hg/msg/MotorCmd.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_hgMsgMotorCmd; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 25, written)
## @brief Decode every field of complete unitree_hg/msg/MotorCmd.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_hgMsgMotorCmd*(bytes: openArray[byte]; value: var Ros2Unitree_hgMsgMotorCmd): uint32 =
    wire.decode(bytes, 25, 25, value)

## @brief Complete unitree_hg/msg/HandCmd value.
## @details Retain all 2 original fields and 0 constants. Canonical extent 20..820 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_hgMsgHandCmd* = object
    ## @brief Original unitree_hg/msg/HandCmd.motor_cmd field.
    ## @details Original type unitree_hg/msg/MotorCmd. Shape sequence; bound/count 32 elements.
    ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    ## value; constructing or copying it creates no native ROS owner.
    field_motor_cmd*: NativeSequence[Ros2Unitree_hgMsgMotorCmd, 32]
    ## @brief Original unitree_hg/msg/HandCmd.reserve field.
    ## @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_reserve*: array[4, uint32]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgHandCmdMinimumWireBytes* = 20
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgHandCmdMaximumWireBytes* = 820
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_hgMsgHandCmdCodecIdentity* =
    "UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006"
 ## @brief Encode every field of complete unitree_hg/msg/HandCmd.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_hgMsgHandCmd; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 820, written)
## @brief Decode every field of complete unitree_hg/msg/HandCmd.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_hgMsgHandCmd*(bytes: openArray[byte]; value: var Ros2Unitree_hgMsgHandCmd): uint32 =
    wire.decode(bytes, 20, 820, value)

## @brief Complete unitree_hg/msg/MotorState value.
## @details Retain all 10 original fields and 0 constants. Canonical extent 53..53 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_hgMsgMotorState* = object
    ## @brief Original unitree_hg/msg/MotorState.mode field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mode*: uint8
    ## @brief Original unitree_hg/msg/MotorState.q field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_q*: float32
    ## @brief Original unitree_hg/msg/MotorState.dq field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_dq*: float32
    ## @brief Original unitree_hg/msg/MotorState.ddq field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_ddq*: float32
    ## @brief Original unitree_hg/msg/MotorState.tau_est field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_tau_est*: float32
    ## @brief Original unitree_hg/msg/MotorState.temperature field.
    ## @details Original type int16. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_temperature*: array[2, int16]
    ## @brief Original unitree_hg/msg/MotorState.vol field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_vol*: float32
    ## @brief Original unitree_hg/msg/MotorState.sensor field.
    ## @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_sensor*: array[2, uint32]
    ## @brief Original unitree_hg/msg/MotorState.motorstate field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_motorstate*: uint32
    ## @brief Original unitree_hg/msg/MotorState.reserve field.
    ## @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_reserve*: array[4, uint32]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgMotorStateMinimumWireBytes* = 53
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgMotorStateMaximumWireBytes* = 53
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_hgMsgMotorStateCodecIdentity* =
    "UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934"
 ## @brief Encode every field of complete unitree_hg/msg/MotorState.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_hgMsgMotorState; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 53, written)
## @brief Decode every field of complete unitree_hg/msg/MotorState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_hgMsgMotorState*(bytes: openArray[byte]; value: var Ros2Unitree_hgMsgMotorState): uint32 =
    wire.decode(bytes, 53, 53, value)

## @brief Complete unitree_hg/msg/PressSensorState value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 104..104 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_hgMsgPressSensorState* = object
    ## @brief Original unitree_hg/msg/PressSensorState.pressure field.
    ## @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_pressure*: array[12, float32]
    ## @brief Original unitree_hg/msg/PressSensorState.temperature field.
    ## @details Original type float32. Shape array; bound/count 12 elements. Preserve declared
    ## units, frame, signedness and field order. Backing storage belongs to this value; constructing
    ## or copying it creates no native ROS owner.
    field_temperature*: array[12, float32]
    ## @brief Original unitree_hg/msg/PressSensorState.lost field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_lost*: uint32
    ## @brief Original unitree_hg/msg/PressSensorState.reserve field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_reserve*: uint32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgPressSensorStateMinimumWireBytes* = 104
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgPressSensorStateMaximumWireBytes* = 104
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_hgMsgPressSensorStateCodecIdentity* =
    "UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5"
 ## @brief Encode every field of complete unitree_hg/msg/PressSensorState.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_hgMsgPressSensorState; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 104, written)
## @brief Decode every field of complete unitree_hg/msg/PressSensorState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_hgMsgPressSensorState*(bytes: openArray[byte];
        value: var Ros2Unitree_hgMsgPressSensorState): uint32 =
    wire.decode(bytes, 104, 104, value)

## @brief Complete unitree_hg/msg/IMUState value.
## @details Retain all 5 original fields and 0 constants. Canonical extent 54..54 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_hgMsgIMUState* = object
    ## @brief Original unitree_hg/msg/IMUState.quaternion field.
    ## @details Original type float32. Shape array; bound/count 4 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_quaternion*: array[4, float32]
    ## @brief Original unitree_hg/msg/IMUState.gyroscope field.
    ## @details Original type float32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_gyroscope*: array[3, float32]
    ## @brief Original unitree_hg/msg/IMUState.accelerometer field.
    ## @details Original type float32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_accelerometer*: array[3, float32]
    ## @brief Original unitree_hg/msg/IMUState.rpy field.
    ## @details Original type float32. Shape array; bound/count 3 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_rpy*: array[3, float32]
    ## @brief Original unitree_hg/msg/IMUState.temperature field.
    ## @details Original type int16. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_temperature*: int16
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgIMUStateMinimumWireBytes* = 54
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgIMUStateMaximumWireBytes* = 54
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_hgMsgIMUStateCodecIdentity* =
    "UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420"
 ## @brief Encode every field of complete unitree_hg/msg/IMUState.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_hgMsgIMUState; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 54, written)
## @brief Decode every field of complete unitree_hg/msg/IMUState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_hgMsgIMUState*(bytes: openArray[byte]; value: var Ros2Unitree_hgMsgIMUState): uint32 =
    wire.decode(bytes, 54, 54, value)

## @brief Complete unitree_hg/msg/HandState value.
## @details Retain all 9 original fields and 0 constants. Canonical extent 94..5118 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_hgMsgHandState* = object
    ## @brief Original unitree_hg/msg/HandState.motor_state field.
    ## @details Original type unitree_hg/msg/MotorState. Shape sequence; bound/count 32 elements.
    ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    ## value; constructing or copying it creates no native ROS owner.
    field_motor_state*: NativeSequence[Ros2Unitree_hgMsgMotorState, 32]
    ## @brief Original unitree_hg/msg/HandState.press_sensor_state field.
    ## @details Original type unitree_hg/msg/PressSensorState. Shape sequence; bound/count 32
    ## elements. Preserve declared units, frame, signedness and field order. Backing storage belongs
    ## to this value; constructing or copying it creates no native ROS owner.
    field_press_sensor_state*: NativeSequence[Ros2Unitree_hgMsgPressSensorState, 32]
    ## @brief Original unitree_hg/msg/HandState.imu_state field.
    ## @details Original type unitree_hg/msg/IMUState. Preserve declared units, frame, signedness
    ## and field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_imu_state*: Ros2Unitree_hgMsgIMUState
    ## @brief Original unitree_hg/msg/HandState.power_v field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_power_v*: float32
    ## @brief Original unitree_hg/msg/HandState.power_a field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_power_a*: float32
    ## @brief Original unitree_hg/msg/HandState.system_v field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_system_v*: float32
    ## @brief Original unitree_hg/msg/HandState.device_v field.
    ## @details Original type float32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_device_v*: float32
    ## @brief Original unitree_hg/msg/HandState.error field.
    ## @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_error*: array[2, uint32]
    ## @brief Original unitree_hg/msg/HandState.reserve field.
    ## @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_reserve*: array[2, uint32]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgHandStateMinimumWireBytes* = 94
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgHandStateMaximumWireBytes* = 5118
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_hgMsgHandStateCodecIdentity* =
    "UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6"
 ## @brief Encode every field of complete unitree_hg/msg/HandState.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_hgMsgHandState; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 5118, written)
## @brief Decode every field of complete unitree_hg/msg/HandState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_hgMsgHandState*(bytes: openArray[byte]; value: var Ros2Unitree_hgMsgHandState): uint32 =
    wire.decode(bytes, 94, 5118, value)

## @brief Complete unitree_hg/msg/LowCmd value.
## @details Retain all 5 original fields and 0 constants. Canonical extent 897..897 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_hgMsgLowCmd* = object
    ## @brief Original unitree_hg/msg/LowCmd.mode_pr field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mode_pr*: uint8
    ## @brief Original unitree_hg/msg/LowCmd.mode_machine field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mode_machine*: uint8
    ## @brief Original unitree_hg/msg/LowCmd.motor_cmd field.
    ## @details Original type unitree_hg/msg/MotorCmd. Shape array; bound/count 35 elements.
    ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    ## value; constructing or copying it creates no native ROS owner.
    field_motor_cmd*: array[35, Ros2Unitree_hgMsgMotorCmd]
    ## @brief Original unitree_hg/msg/LowCmd.reserve field.
    ## @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_reserve*: array[4, uint32]
    ## @brief Original unitree_hg/msg/LowCmd.crc field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_crc*: uint32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgLowCmdMinimumWireBytes* = 897
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgLowCmdMaximumWireBytes* = 897
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_hgMsgLowCmdCodecIdentity* =
    "UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461"
 ## @brief Encode every field of complete unitree_hg/msg/LowCmd.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_hgMsgLowCmd; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 897, written)
## @brief Decode every field of complete unitree_hg/msg/LowCmd.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_hgMsgLowCmd*(bytes: openArray[byte]; value: var Ros2Unitree_hgMsgLowCmd): uint32 =
    wire.decode(bytes, 897, 897, value)

## @brief Complete unitree_hg/msg/LowState value.
## @details Retain all 9 original fields and 0 constants. Canonical extent 1983..1983 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_hgMsgLowState* = object
    ## @brief Original unitree_hg/msg/LowState.version field.
    ## @details Original type uint32. Shape array; bound/count 2 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_version*: array[2, uint32]
    ## @brief Original unitree_hg/msg/LowState.mode_pr field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mode_pr*: uint8
    ## @brief Original unitree_hg/msg/LowState.mode_machine field.
    ## @details Original type uint8. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_mode_machine*: uint8
    ## @brief Original unitree_hg/msg/LowState.tick field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_tick*: uint32
    ## @brief Original unitree_hg/msg/LowState.imu_state field.
    ## @details Original type unitree_hg/msg/IMUState. Preserve declared units, frame, signedness
    ## and field order. Backing storage belongs to this value; constructing or copying it creates no
    ## native ROS owner.
    field_imu_state*: Ros2Unitree_hgMsgIMUState
    ## @brief Original unitree_hg/msg/LowState.motor_state field.
    ## @details Original type unitree_hg/msg/MotorState. Shape array; bound/count 35 elements.
    ## Preserve declared units, frame, signedness and field order. Backing storage belongs to this
    ## value; constructing or copying it creates no native ROS owner.
    field_motor_state*: array[35, Ros2Unitree_hgMsgMotorState]
    ## @brief Original unitree_hg/msg/LowState.wireless_remote field.
    ## @details Original type uint8. Shape array; bound/count 40 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_wireless_remote*: array[40, uint8]
    ## @brief Original unitree_hg/msg/LowState.reserve field.
    ## @details Original type uint32. Shape array; bound/count 4 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_reserve*: array[4, uint32]
    ## @brief Original unitree_hg/msg/LowState.crc field.
    ## @details Original type uint32. Preserve declared units, frame, signedness and field order.
    ## Backing storage belongs to this value; constructing or copying it creates no native ROS
    ## owner.
    field_crc*: uint32
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgLowStateMinimumWireBytes* = 1983
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgLowStateMaximumWireBytes* = 1983
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_hgMsgLowStateCodecIdentity* =
    "UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d"
 ## @brief Encode every field of complete unitree_hg/msg/LowState.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_hgMsgLowState; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 1983, written)
## @brief Decode every field of complete unitree_hg/msg/LowState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_hgMsgLowState*(bytes: openArray[byte]; value: var Ros2Unitree_hgMsgLowState): uint32 =
    wire.decode(bytes, 1983, 1983, value)

## @brief Complete unitree_hg/msg/MainBoardState value.
## @details Retain all 4 original fields and 0 constants. Canonical extent 72..72 bytes. Native
## registration and transport permission require independent deployment proof.
type Ros2Unitree_hgMsgMainBoardState* = object
    ## @brief Original unitree_hg/msg/MainBoardState.fan_state field.
    ## @details Original type uint16. Shape array; bound/count 6 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_fan_state*: array[6, uint16]
    ## @brief Original unitree_hg/msg/MainBoardState.temperature field.
    ## @details Original type int16. Shape array; bound/count 6 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_temperature*: array[6, int16]
    ## @brief Original unitree_hg/msg/MainBoardState.value field.
    ## @details Original type float32. Shape array; bound/count 6 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_value*: array[6, float32]
    ## @brief Original unitree_hg/msg/MainBoardState.state field.
    ## @details Original type uint32. Shape array; bound/count 6 elements. Preserve declared units,
    ## frame, signedness and field order. Backing storage belongs to this value; constructing or
    ## copying it creates no native ROS owner.
    field_state*: array[6, uint32]
## @brief Inclusive minimum canonical wire extent.
## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgMainBoardStateMinimumWireBytes* = 72
 ## @brief Inclusive maximum canonical wire extent.
 ## @details This is a byte bound, never a native object-size or allocation reservation.
const Ros2Unitree_hgMsgMainBoardStateMaximumWireBytes* = 72
 ## @brief Exact complete canonical codec identity.
 ## @details Preserve field order, shape and finite bounds; this does not establish a native
 ## identity.
const Ros2Unitree_hgMsgMainBoardStateCodecIdentity* =
    "UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6"
 ## @brief Encode every field of complete unitree_hg/msg/MainBoardState.
 ## @details The caller owns output and value storage. Failure invalidates partial output; no host
 ## operation occurs.
 ## @param value Complete exclusive owned record.
 ## @param output Disjoint exclusive writable bytes.
 ## @return Zero or canonical error 22; written is valid on success.
proc encode*(value: var Ros2Unitree_hgMsgMainBoardState; output: var openArray[byte];
             written: var int): uint32 =
    wire.encode(value, output, 72, written)
## @brief Decode every field of complete unitree_hg/msg/MainBoardState.
## @details Reject malformed fields, finite-bound violations and trailing bytes before publishing a
## whole independent value.
## @param bytes Complete immutable canonical input; no reference escapes.
## @return Zero or canonical error 22; value is usable only on success.
proc decodeRos2Unitree_hgMsgMainBoardState*(bytes: openArray[byte];
        value: var Ros2Unitree_hgMsgMainBoardState): uint32 =
    wire.decode(bytes, 72, 72, value)

