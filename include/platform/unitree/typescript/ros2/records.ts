// SPDX-License-Identifier: Apache-2.0
/** @file records.ts
 * @brief Complete strongly typed facade over the one original JavaScript catalog.
 * @details Constructor aliases intentionally preserve exact nested class identity.
 * No subclass, new wire implementation, engine, host execution or authority is added.
 */

import * as JavaScript from "unitree/js/ros2/records";

/** @brief Owned complete canonical bytes; encoding validates domains at runtime. */
export interface CanonicalValue
{
    /**
     * @brief Encode a complete record into newly owned canonical bytes.
     * @details The shared codec validates numeric domains, lengths and nesting.
     * @return A fresh byte array; subsequent mutations do not alter this record.
     * @throws Error If any original field violates its schema.
     */
    encode(): Uint8Array;
}

/** @brief Original trusted schema metadata; native and codec identities differ. */
export interface FieldSchema
{
    /** @brief Original field name, including its case. */
    readonly name: string;
    /** @brief Original ROS type name or primitive domain. */
    readonly type: string;
    /** @brief Scalar, fixed array, or bounded sequence shape. */
    readonly array: "" | "array" | "sequence";
    /** @brief Canonical element count or maximum sequence length. */
    readonly count: number;
    /** @brief Maximum canonical encoded string bytes. */
    readonly string_bound: number;
    /** @brief Original ROS string bound from the native schema. */
    readonly native_string_bound: number;
    /** @brief Original ROS sequence bound from the native schema. */
    readonly native_sequence_bound: number;
    /** @brief Original native default value, retained without coercion. */
    readonly native_default: unknown;
    /** @brief Native scalar spelling used by the schema generator. */
    readonly native_scalar: string;
    /** @brief Canonical string encoding and validation policy. */
    readonly string_encoding: string;
    /** @brief Canonical floating-point domain and encoding policy. */
    readonly float_policy: string;
    /** @brief Canonical default value used by the original constructor. */
    readonly default: unknown;
}

/**
 * @brief Read-only identity and byte bounds for an original Unitree record.
 * @details A codec identity describes canonical bytes. A native identity describes
 * a ROS type and is not evidence of a loaded native registry or a granted policy.
 */
export interface RecordSchema
{
    /** @brief Original ROS type name or primitive domain. */
    readonly type: string;
    /** @brief Native ROS identity, or null when none is declared. */
    readonly native_identity: string | null;
    /** @brief Identity of the canonical codec schema. */
    readonly codec_identity: string;
    /** @brief Minimum complete canonical frame size, in bytes. */
    readonly minimum: number;
    /** @brief Maximum complete canonical frame size, in bytes. */
    readonly maximum: number;
    /** @brief Record-wide semantic validation contract. */
    readonly semantics: string;
    /** @brief Original fields in canonical encoding order. */
    readonly fields: readonly FieldSchema[];
}

/** @brief Original runtime constructor with exact typed native field initializers. */
export interface RecordConstructor<Fields, Value extends CanonicalValue>
{
    /**
     * @brief Construct the original class with independently owned default fields.
     * @param fields Optional original fields replacing their corresponding defaults.
     * @return A typed value retaining the original JavaScript constructor identity.
     */
    new(fields?: Partial<Fields>): Value;
    /** @brief Original schema; callers must not mutate the shared metadata. */
    readonly schema: RecordSchema;
    /**
     * @brief Validate and decode exactly one complete canonical record.
     * @param bytes Borrowed input, which must remain unchanged during the call.
     * @return A new value only after the entire frame and all domains validate.
     * @throws Error If the frame is incomplete, overlong, or violates the schema.
     */
    decode(bytes: Uint8Array): Value;
}

/** @brief Check trusted bridge identity, then expose the complete generated types.
 * @details This single declaration bridge retains the exact existing JS class.
 * The canonical codec still checks every actual runtime field, count and domain.
 * @param implementation Original JavaScript constructor imported from the SDK.
 * @param nativeType Exact original ROS type name.
 * @param codecIdentity Pinned identity of the canonical schema.
 * @param minimum Minimum complete canonical frame size, in bytes.
 * @param maximum Maximum complete canonical frame size, in bytes.
 * @return The same constructor with its checked TypeScript signature.
 * @throws TypeError If the original constructor or its schema differs.
 */
function bind<Fields, Value extends CanonicalValue>(implementation: unknown, nativeType: string, codecIdentity: string,
                                                    minimum: number, maximum: number): RecordConstructor<Fields, Value>
{
    if (typeof implementation !== "function")
    {
        throw new TypeError("missing original record constructor");
    }
    const constructor = implementation as unknown as RecordConstructor<Fields, Value>;
    const schema = constructor.schema;
    if (schema.type !== nativeType || schema.codec_identity !== codecIdentity || schema.minimum !== minimum ||
        schema.maximum !== maximum)
    {
        throw new TypeError("original record schema changed");
    }
    return constructor;
}

/**
 * @brief Copy a fixed array after checking its exact element count.
 * @details The returned array retains a literal length type; encoding rechecks it.
 * @param values Borrowed elements; the copy is shallow and preserves nested values.
 * @param count Exact nonnegative safe-integer length required by the schema.
 * @return A new array with the specified length.
 * @throws RangeError If the count or input length is invalid.
 */
export function fixed<T, const N extends number>(values: readonly T[], count: N): T[] & { length: N }
{
    if (!Number.isSafeInteger(count) || count < 0 || values.length !== count)
    {
        throw new RangeError("exact fixed array length required");
    }
    return Array.from(values) as T[] & { length: N };
}

/**
 * @brief Copy a bounded sequence after validating its element quota.
 * @param values Borrowed elements; the copy preserves nested object identity.
 * @param maximum Nonnegative safe-integer upper bound from the original schema.
 * @return A new array whose length does not exceed the bound.
 * @throws RangeError If the bound or input length is invalid.
 */
export function bounded<T>(values: readonly T[], maximum: number): T[]
{
    if (!Number.isSafeInteger(maximum) || maximum < 0 || values.length > maximum)
    {
        throw new RangeError("bounded sequence length required");
    }
    return Array.from(values);
}

/** @brief All 2 original fields of unitree_api/msg/RequestIdentity; no field is erased. */
export interface Ros2Unitree_apiMsgRequestIdentityFields
{
    /**
     * @brief Original int64 field id.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "id": bigint;
    /**
     * @brief Original int64 field api_id.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "api_id": bigint;
}

/** @brief Complete typed Ros2Unitree_apiMsgRequestIdentity value with canonical encoding. */
export interface Ros2Unitree_apiMsgRequestIdentity extends Ros2Unitree_apiMsgRequestIdentityFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_apiMsgRequestIdentity:
    RecordConstructor<Ros2Unitree_apiMsgRequestIdentityFields, Ros2Unitree_apiMsgRequestIdentity> =
        bind(JavaScript.Ros2Unitree_apiMsgRequestIdentity, "unitree_api/msg/RequestIdentity",
             "UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2", 16, 16);

/** @brief All 1 original fields of unitree_api/msg/RequestLease; no field is erased. */
export interface Ros2Unitree_apiMsgRequestLeaseFields
{
    /**
     * @brief Original int64 field id.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "id": bigint;
}

/** @brief Complete typed Ros2Unitree_apiMsgRequestLease value with canonical encoding. */
export interface Ros2Unitree_apiMsgRequestLease extends Ros2Unitree_apiMsgRequestLeaseFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_apiMsgRequestLease:
    RecordConstructor<Ros2Unitree_apiMsgRequestLeaseFields, Ros2Unitree_apiMsgRequestLease> =
        bind(JavaScript.Ros2Unitree_apiMsgRequestLease, "unitree_api/msg/RequestLease",
             "UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e", 8, 8);

/** @brief All 2 original fields of unitree_api/msg/RequestPolicy; no field is erased. */
export interface Ros2Unitree_apiMsgRequestPolicyFields
{
    /**
     * @brief Original int32 field priority.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "priority": number;
    /**
     * @brief Original bool field noreply.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "noreply": boolean;
}

/** @brief Complete typed Ros2Unitree_apiMsgRequestPolicy value with canonical encoding. */
export interface Ros2Unitree_apiMsgRequestPolicy extends Ros2Unitree_apiMsgRequestPolicyFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_apiMsgRequestPolicy:
    RecordConstructor<Ros2Unitree_apiMsgRequestPolicyFields, Ros2Unitree_apiMsgRequestPolicy> =
        bind(JavaScript.Ros2Unitree_apiMsgRequestPolicy, "unitree_api/msg/RequestPolicy",
             "UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8", 5, 5);

/** @brief All 3 original fields of unitree_api/msg/RequestHeader; no field is erased. */
export interface Ros2Unitree_apiMsgRequestHeaderFields
{
    /**
     * @brief Original unitree_api/msg/RequestIdentity field identity.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "identity": Ros2Unitree_apiMsgRequestIdentity;
    /**
     * @brief Original unitree_api/msg/RequestLease field lease.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "lease": Ros2Unitree_apiMsgRequestLease;
    /**
     * @brief Original unitree_api/msg/RequestPolicy field policy.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "policy": Ros2Unitree_apiMsgRequestPolicy;
}

/** @brief Complete typed Ros2Unitree_apiMsgRequestHeader value with canonical encoding. */
export interface Ros2Unitree_apiMsgRequestHeader extends Ros2Unitree_apiMsgRequestHeaderFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_apiMsgRequestHeader:
    RecordConstructor<Ros2Unitree_apiMsgRequestHeaderFields, Ros2Unitree_apiMsgRequestHeader> =
        bind(JavaScript.Ros2Unitree_apiMsgRequestHeader, "unitree_api/msg/RequestHeader",
             "UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0", 29, 29);

/** @brief All 3 original fields of unitree_api/msg/Request; no field is erased. */
export interface Ros2Unitree_apiMsgRequestFields
{
    /**
     * @brief Original unitree_api/msg/RequestHeader field header.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "header": Ros2Unitree_apiMsgRequestHeader;
    /**
     * @brief Original string field parameter.
     * @details Scalar, element quota 0, UTF-8 bytes 2048.
     */
    "parameter": string;
    /**
     * @brief Original uint8 field binary.
     * @details Sequence, element quota 2048, UTF-8 bytes 0.
     */
    "binary": number[];
}

/** @brief Complete typed Ros2Unitree_apiMsgRequest value with canonical encoding. */
export interface Ros2Unitree_apiMsgRequest extends Ros2Unitree_apiMsgRequestFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_apiMsgRequest: RecordConstructor<Ros2Unitree_apiMsgRequestFields, Ros2Unitree_apiMsgRequest> =
    bind(JavaScript.Ros2Unitree_apiMsgRequest, "unitree_api/msg/Request",
         "UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192", 37, 4133);

/** @brief All 1 original fields of unitree_api/msg/ResponseStatus; no field is erased. */
export interface Ros2Unitree_apiMsgResponseStatusFields
{
    /**
     * @brief Original int32 field code.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "code": number;
}

/** @brief Complete typed Ros2Unitree_apiMsgResponseStatus value with canonical encoding. */
export interface Ros2Unitree_apiMsgResponseStatus extends Ros2Unitree_apiMsgResponseStatusFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_apiMsgResponseStatus:
    RecordConstructor<Ros2Unitree_apiMsgResponseStatusFields, Ros2Unitree_apiMsgResponseStatus> =
        bind(JavaScript.Ros2Unitree_apiMsgResponseStatus, "unitree_api/msg/ResponseStatus",
             "UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1", 4, 4);

/** @brief All 2 original fields of unitree_api/msg/ResponseHeader; no field is erased. */
export interface Ros2Unitree_apiMsgResponseHeaderFields
{
    /**
     * @brief Original unitree_api/msg/RequestIdentity field identity.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "identity": Ros2Unitree_apiMsgRequestIdentity;
    /**
     * @brief Original unitree_api/msg/ResponseStatus field status.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "status": Ros2Unitree_apiMsgResponseStatus;
}

/** @brief Complete typed Ros2Unitree_apiMsgResponseHeader value with canonical encoding. */
export interface Ros2Unitree_apiMsgResponseHeader extends Ros2Unitree_apiMsgResponseHeaderFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_apiMsgResponseHeader:
    RecordConstructor<Ros2Unitree_apiMsgResponseHeaderFields, Ros2Unitree_apiMsgResponseHeader> =
        bind(JavaScript.Ros2Unitree_apiMsgResponseHeader, "unitree_api/msg/ResponseHeader",
             "UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0", 20, 20);

/** @brief All 3 original fields of unitree_api/msg/Response; no field is erased. */
export interface Ros2Unitree_apiMsgResponseFields
{
    /**
     * @brief Original unitree_api/msg/ResponseHeader field header.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "header": Ros2Unitree_apiMsgResponseHeader;
    /**
     * @brief Original string field data.
     * @details Scalar, element quota 0, UTF-8 bytes 2048.
     */
    "data": string;
    /**
     * @brief Original int8 field binary.
     * @details Sequence, element quota 32, UTF-8 bytes 0.
     */
    "binary": number[];
}

/** @brief Complete typed Ros2Unitree_apiMsgResponse value with canonical encoding. */
export interface Ros2Unitree_apiMsgResponse extends Ros2Unitree_apiMsgResponseFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_apiMsgResponse:
    RecordConstructor<Ros2Unitree_apiMsgResponseFields, Ros2Unitree_apiMsgResponse> =
        bind(JavaScript.Ros2Unitree_apiMsgResponse, "unitree_api/msg/Response",
             "UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f", 28, 2108);

/** @brief All 2 original fields of unitree_go/msg/AudioData; no field is erased. */
export interface Ros2Unitree_goMsgAudioDataFields
{
    /**
     * @brief Original uint64 field time_frame.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "time_frame": bigint;
    /**
     * @brief Original uint8 field data.
     * @details Sequence, element quota 2048, UTF-8 bytes 0.
     */
    "data": number[];
}

/** @brief Complete typed Ros2Unitree_goMsgAudioData value with canonical encoding. */
export interface Ros2Unitree_goMsgAudioData extends Ros2Unitree_goMsgAudioDataFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgAudioData:
    RecordConstructor<Ros2Unitree_goMsgAudioDataFields, Ros2Unitree_goMsgAudioData> =
        bind(JavaScript.Ros2Unitree_goMsgAudioData, "unitree_go/msg/AudioData",
             "UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe", 12, 2060);

/** @brief All 2 original fields of unitree_go/msg/BmsCmd; no field is erased. */
export interface Ros2Unitree_goMsgBmsCmdFields
{
    /**
     * @brief Original uint8 field off.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "off": number;
    /**
     * @brief Original uint8 field reserve.
     * @details Array, element quota 3, UTF-8 bytes 0.
     */
    "reserve": number[];
}

/** @brief Complete typed Ros2Unitree_goMsgBmsCmd value with canonical encoding. */
export interface Ros2Unitree_goMsgBmsCmd extends Ros2Unitree_goMsgBmsCmdFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgBmsCmd: RecordConstructor<Ros2Unitree_goMsgBmsCmdFields, Ros2Unitree_goMsgBmsCmd> =
    bind(JavaScript.Ros2Unitree_goMsgBmsCmd, "unitree_go/msg/BmsCmd",
         "UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339", 4, 4);

/** @brief All 9 original fields of unitree_go/msg/BmsState; no field is erased. */
export interface Ros2Unitree_goMsgBmsStateFields
{
    /**
     * @brief Original uint8 field version_high.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "version_high": number;
    /**
     * @brief Original uint8 field version_low.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "version_low": number;
    /**
     * @brief Original uint8 field status.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "status": number;
    /**
     * @brief Original uint8 field soc.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "soc": number;
    /**
     * @brief Original int32 field current.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "current": number;
    /**
     * @brief Original uint16 field cycle.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "cycle": number;
    /**
     * @brief Original int8 field bq_ntc.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "bq_ntc": number[];
    /**
     * @brief Original int8 field mcu_ntc.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "mcu_ntc": number[];
    /**
     * @brief Original uint16 field cell_vol.
     * @details Array, element quota 15, UTF-8 bytes 0.
     */
    "cell_vol": number[];
}

/** @brief Complete typed Ros2Unitree_goMsgBmsState value with canonical encoding. */
export interface Ros2Unitree_goMsgBmsState extends Ros2Unitree_goMsgBmsStateFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgBmsState: RecordConstructor<Ros2Unitree_goMsgBmsStateFields, Ros2Unitree_goMsgBmsState> =
    bind(JavaScript.Ros2Unitree_goMsgBmsState, "unitree_go/msg/BmsState",
         "UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0", 44, 44);

/** @brief All 2 original fields of unitree_go/msg/Error; no field is erased. */
export interface Ros2Unitree_goMsgErrorFields
{
    /**
     * @brief Original uint32 field source.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "source": number;
    /**
     * @brief Original uint32 field state.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "state": number;
}

/** @brief Complete typed Ros2Unitree_goMsgError value with canonical encoding. */
export interface Ros2Unitree_goMsgError extends Ros2Unitree_goMsgErrorFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgError: RecordConstructor<Ros2Unitree_goMsgErrorFields, Ros2Unitree_goMsgError> =
    bind(JavaScript.Ros2Unitree_goMsgError, "unitree_go/msg/Error",
         "UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd", 8, 8);

/** @brief All 4 original fields of unitree_go/msg/Go2FrontVideoData; no field is erased. */
export interface Ros2Unitree_goMsgGo2FrontVideoDataFields
{
    /**
     * @brief Original uint64 field time_frame.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "time_frame": bigint;
    /**
     * @brief Original uint8 field video720p.
     * @details Sequence, element quota 2048, UTF-8 bytes 0.
     */
    "video720p": number[];
    /**
     * @brief Original uint8 field video360p.
     * @details Sequence, element quota 2048, UTF-8 bytes 0.
     */
    "video360p": number[];
    /**
     * @brief Original uint8 field video180p.
     * @details Sequence, element quota 2048, UTF-8 bytes 0.
     */
    "video180p": number[];
}

/** @brief Complete typed Ros2Unitree_goMsgGo2FrontVideoData value with canonical encoding. */
export interface Ros2Unitree_goMsgGo2FrontVideoData extends Ros2Unitree_goMsgGo2FrontVideoDataFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgGo2FrontVideoData:
    RecordConstructor<Ros2Unitree_goMsgGo2FrontVideoDataFields, Ros2Unitree_goMsgGo2FrontVideoData> =
        bind(JavaScript.Ros2Unitree_goMsgGo2FrontVideoData, "unitree_go/msg/Go2FrontVideoData",
             "UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad", 20, 6164);

/** @brief All 7 original fields of unitree_go/msg/HeightMap; no field is erased. */
export interface Ros2Unitree_goMsgHeightMapFields
{
    /**
     * @brief Original float64 field stamp.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "stamp": number;
    /**
     * @brief Original string field frame_id.
     * @details Scalar, element quota 0, UTF-8 bytes 2048.
     */
    "frame_id": string;
    /**
     * @brief Original float32 field resolution.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "resolution": number;
    /**
     * @brief Original uint32 field width.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "width": number;
    /**
     * @brief Original uint32 field height.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "height": number;
    /**
     * @brief Original float32 field origin.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "origin": number[];
    /**
     * @brief Original float32 field data.
     * @details Sequence, element quota 32, UTF-8 bytes 0.
     */
    "data": number[];
}

/** @brief Complete typed Ros2Unitree_goMsgHeightMap value with canonical encoding. */
export interface Ros2Unitree_goMsgHeightMap extends Ros2Unitree_goMsgHeightMapFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgHeightMap:
    RecordConstructor<Ros2Unitree_goMsgHeightMapFields, Ros2Unitree_goMsgHeightMap> =
        bind(JavaScript.Ros2Unitree_goMsgHeightMap, "unitree_go/msg/HeightMap",
             "UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d", 36, 2212);

/** @brief All 5 original fields of unitree_go/msg/IMUState; no field is erased. */
export interface Ros2Unitree_goMsgIMUStateFields
{
    /**
     * @brief Original float32 field quaternion.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "quaternion": number[];
    /**
     * @brief Original float32 field gyroscope.
     * @details Array, element quota 3, UTF-8 bytes 0.
     */
    "gyroscope": number[];
    /**
     * @brief Original float32 field accelerometer.
     * @details Array, element quota 3, UTF-8 bytes 0.
     */
    "accelerometer": number[];
    /**
     * @brief Original float32 field rpy.
     * @details Array, element quota 3, UTF-8 bytes 0.
     */
    "rpy": number[];
    /**
     * @brief Original int8 field temperature.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "temperature": number;
}

/** @brief Complete typed Ros2Unitree_goMsgIMUState value with canonical encoding. */
export interface Ros2Unitree_goMsgIMUState extends Ros2Unitree_goMsgIMUStateFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgIMUState: RecordConstructor<Ros2Unitree_goMsgIMUStateFields, Ros2Unitree_goMsgIMUState> =
    bind(JavaScript.Ros2Unitree_goMsgIMUState, "unitree_go/msg/IMUState",
         "UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc", 53, 53);

/** @brief All 3 original fields of unitree_go/msg/InterfaceConfig; no field is erased. */
export interface Ros2Unitree_goMsgInterfaceConfigFields
{
    /**
     * @brief Original uint8 field mode.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "mode": number;
    /**
     * @brief Original uint8 field value.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "value": number;
    /**
     * @brief Original uint8 field reserve.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "reserve": number[];
}

/** @brief Complete typed Ros2Unitree_goMsgInterfaceConfig value with canonical encoding. */
export interface Ros2Unitree_goMsgInterfaceConfig extends Ros2Unitree_goMsgInterfaceConfigFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgInterfaceConfig:
    RecordConstructor<Ros2Unitree_goMsgInterfaceConfigFields, Ros2Unitree_goMsgInterfaceConfig> =
        bind(JavaScript.Ros2Unitree_goMsgInterfaceConfig, "unitree_go/msg/InterfaceConfig",
             "UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110", 4, 4);

/** @brief All 17 original fields of unitree_go/msg/LidarState; no field is erased. */
export interface Ros2Unitree_goMsgLidarStateFields
{
    /**
     * @brief Original float64 field stamp.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "stamp": number;
    /**
     * @brief Original string field firmware_version.
     * @details Scalar, element quota 0, UTF-8 bytes 2048.
     */
    "firmware_version": string;
    /**
     * @brief Original string field software_version.
     * @details Scalar, element quota 0, UTF-8 bytes 2048.
     */
    "software_version": string;
    /**
     * @brief Original string field sdk_version.
     * @details Scalar, element quota 0, UTF-8 bytes 2048.
     */
    "sdk_version": string;
    /**
     * @brief Original float32 field sys_rotation_speed.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "sys_rotation_speed": number;
    /**
     * @brief Original float32 field com_rotation_speed.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "com_rotation_speed": number;
    /**
     * @brief Original uint8 field error_state.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "error_state": number;
    /**
     * @brief Original float32 field cloud_frequency.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "cloud_frequency": number;
    /**
     * @brief Original float32 field cloud_packet_loss_rate.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "cloud_packet_loss_rate": number;
    /**
     * @brief Original uint32 field cloud_size.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "cloud_size": number;
    /**
     * @brief Original uint32 field cloud_scan_num.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "cloud_scan_num": number;
    /**
     * @brief Original float32 field imu_frequency.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "imu_frequency": number;
    /**
     * @brief Original float32 field imu_packet_loss_rate.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "imu_packet_loss_rate": number;
    /**
     * @brief Original float32 field imu_rpy.
     * @details Array, element quota 3, UTF-8 bytes 0.
     */
    "imu_rpy": number[];
    /**
     * @brief Original float64 field serial_recv_stamp.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "serial_recv_stamp": number;
    /**
     * @brief Original uint32 field serial_buffer_size.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "serial_buffer_size": number;
    /**
     * @brief Original uint32 field serial_buffer_read.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "serial_buffer_read": number;
}

/** @brief Complete typed Ros2Unitree_goMsgLidarState value with canonical encoding. */
export interface Ros2Unitree_goMsgLidarState extends Ros2Unitree_goMsgLidarStateFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgLidarState:
    RecordConstructor<Ros2Unitree_goMsgLidarStateFields, Ros2Unitree_goMsgLidarState> =
        bind(JavaScript.Ros2Unitree_goMsgLidarState, "unitree_go/msg/LidarState",
             "UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb", 81, 6225);

/** @brief All 7 original fields of unitree_go/msg/MotorCmd; no field is erased. */
export interface Ros2Unitree_goMsgMotorCmdFields
{
    /**
     * @brief Original uint8 field mode.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "mode": number;
    /**
     * @brief Original float32 field q.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "q": number;
    /**
     * @brief Original float32 field dq.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "dq": number;
    /**
     * @brief Original float32 field tau.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "tau": number;
    /**
     * @brief Original float32 field kp.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "kp": number;
    /**
     * @brief Original float32 field kd.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "kd": number;
    /**
     * @brief Original uint32 field reserve.
     * @details Array, element quota 3, UTF-8 bytes 0.
     */
    "reserve": number[];
}

/** @brief Complete typed Ros2Unitree_goMsgMotorCmd value with canonical encoding. */
export interface Ros2Unitree_goMsgMotorCmd extends Ros2Unitree_goMsgMotorCmdFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgMotorCmd: RecordConstructor<Ros2Unitree_goMsgMotorCmdFields, Ros2Unitree_goMsgMotorCmd> =
    bind(JavaScript.Ros2Unitree_goMsgMotorCmd, "unitree_go/msg/MotorCmd",
         "UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989", 33, 33);

/** @brief All 14 original fields of unitree_go/msg/LowCmd; no field is erased. */
export interface Ros2Unitree_goMsgLowCmdFields
{
    /**
     * @brief Original uint8 field head.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "head": number[];
    /**
     * @brief Original uint8 field level_flag.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "level_flag": number;
    /**
     * @brief Original uint8 field frame_reserve.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "frame_reserve": number;
    /**
     * @brief Original uint32 field sn.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "sn": number[];
    /**
     * @brief Original uint32 field version.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "version": number[];
    /**
     * @brief Original uint16 field bandwidth.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "bandwidth": number;
    /**
     * @brief Original unitree_go/msg/MotorCmd field motor_cmd.
     * @details Array, element quota 20, UTF-8 bytes 0.
     */
    "motor_cmd": Ros2Unitree_goMsgMotorCmd[];
    /**
     * @brief Original unitree_go/msg/BmsCmd field bms_cmd.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "bms_cmd": Ros2Unitree_goMsgBmsCmd;
    /**
     * @brief Original uint8 field wireless_remote.
     * @details Array, element quota 40, UTF-8 bytes 0.
     */
    "wireless_remote": number[];
    /**
     * @brief Original uint8 field led.
     * @details Array, element quota 12, UTF-8 bytes 0.
     */
    "led": number[];
    /**
     * @brief Original uint8 field fan.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "fan": number[];
    /**
     * @brief Original uint8 field gpio.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "gpio": number;
    /**
     * @brief Original uint32 field reserve.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "reserve": number;
    /**
     * @brief Original uint32 field crc.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "crc": number;
}

/** @brief Complete typed Ros2Unitree_goMsgLowCmd value with canonical encoding. */
export interface Ros2Unitree_goMsgLowCmd extends Ros2Unitree_goMsgLowCmdFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgLowCmd: RecordConstructor<Ros2Unitree_goMsgLowCmdFields, Ros2Unitree_goMsgLowCmd> =
    bind(JavaScript.Ros2Unitree_goMsgLowCmd, "unitree_go/msg/LowCmd",
         "UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63", 749, 749);

/** @brief All 11 original fields of unitree_go/msg/MotorState; no field is erased. */
export interface Ros2Unitree_goMsgMotorStateFields
{
    /**
     * @brief Original uint8 field mode.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "mode": number;
    /**
     * @brief Original float32 field q.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "q": number;
    /**
     * @brief Original float32 field dq.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "dq": number;
    /**
     * @brief Original float32 field ddq.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "ddq": number;
    /**
     * @brief Original float32 field tau_est.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "tau_est": number;
    /**
     * @brief Original float32 field q_raw.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "q_raw": number;
    /**
     * @brief Original float32 field dq_raw.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "dq_raw": number;
    /**
     * @brief Original float32 field ddq_raw.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "ddq_raw": number;
    /**
     * @brief Original int8 field temperature.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "temperature": number;
    /**
     * @brief Original uint32 field lost.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "lost": number;
    /**
     * @brief Original uint32 field reserve.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "reserve": number[];
}

/** @brief Complete typed Ros2Unitree_goMsgMotorState value with canonical encoding. */
export interface Ros2Unitree_goMsgMotorState extends Ros2Unitree_goMsgMotorStateFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgMotorState:
    RecordConstructor<Ros2Unitree_goMsgMotorStateFields, Ros2Unitree_goMsgMotorState> =
        bind(JavaScript.Ros2Unitree_goMsgMotorState, "unitree_go/msg/MotorState",
             "UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62", 42, 42);

/** @brief All 22 original fields of unitree_go/msg/LowState; no field is erased. */
export interface Ros2Unitree_goMsgLowStateFields
{
    /**
     * @brief Original uint8 field head.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "head": number[];
    /**
     * @brief Original uint8 field level_flag.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "level_flag": number;
    /**
     * @brief Original uint8 field frame_reserve.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "frame_reserve": number;
    /**
     * @brief Original uint32 field sn.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "sn": number[];
    /**
     * @brief Original uint32 field version.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "version": number[];
    /**
     * @brief Original uint16 field bandwidth.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "bandwidth": number;
    /**
     * @brief Original unitree_go/msg/IMUState field imu_state.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "imu_state": Ros2Unitree_goMsgIMUState;
    /**
     * @brief Original unitree_go/msg/MotorState field motor_state.
     * @details Array, element quota 20, UTF-8 bytes 0.
     */
    "motor_state": Ros2Unitree_goMsgMotorState[];
    /**
     * @brief Original unitree_go/msg/BmsState field bms_state.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "bms_state": Ros2Unitree_goMsgBmsState;
    /**
     * @brief Original int16 field foot_force.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "foot_force": number[];
    /**
     * @brief Original int16 field foot_force_est.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "foot_force_est": number[];
    /**
     * @brief Original uint32 field tick.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "tick": number;
    /**
     * @brief Original uint8 field wireless_remote.
     * @details Array, element quota 40, UTF-8 bytes 0.
     */
    "wireless_remote": number[];
    /**
     * @brief Original uint8 field bit_flag.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "bit_flag": number;
    /**
     * @brief Original float32 field adc_reel.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "adc_reel": number;
    /**
     * @brief Original int8 field temperature_ntc1.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "temperature_ntc1": number;
    /**
     * @brief Original int8 field temperature_ntc2.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "temperature_ntc2": number;
    /**
     * @brief Original float32 field power_v.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "power_v": number;
    /**
     * @brief Original float32 field power_a.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "power_a": number;
    /**
     * @brief Original uint16 field fan_frequency.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "fan_frequency": number[];
    /**
     * @brief Original uint32 field reserve.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "reserve": number;
    /**
     * @brief Original uint32 field crc.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "crc": number;
}

/** @brief Complete typed Ros2Unitree_goMsgLowState value with canonical encoding. */
export interface Ros2Unitree_goMsgLowState extends Ros2Unitree_goMsgLowStateFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgLowState: RecordConstructor<Ros2Unitree_goMsgLowStateFields, Ros2Unitree_goMsgLowState> =
    bind(JavaScript.Ros2Unitree_goMsgLowState, "unitree_go/msg/LowState",
         "UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab", 1050, 1050);

/** @brief All 1 original fields of unitree_go/msg/MotorCmds; no field is erased. */
export interface Ros2Unitree_goMsgMotorCmdsFields
{
    /**
     * @brief Original unitree_go/msg/MotorCmd field cmds.
     * @details Sequence, element quota 32, UTF-8 bytes 0.
     */
    "cmds": Ros2Unitree_goMsgMotorCmd[];
}

/** @brief Complete typed Ros2Unitree_goMsgMotorCmds value with canonical encoding. */
export interface Ros2Unitree_goMsgMotorCmds extends Ros2Unitree_goMsgMotorCmdsFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgMotorCmds:
    RecordConstructor<Ros2Unitree_goMsgMotorCmdsFields, Ros2Unitree_goMsgMotorCmds> =
        bind(JavaScript.Ros2Unitree_goMsgMotorCmds, "unitree_go/msg/MotorCmds",
             "UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3", 4, 1060);

/** @brief All 1 original fields of unitree_go/msg/MotorStates; no field is erased. */
export interface Ros2Unitree_goMsgMotorStatesFields
{
    /**
     * @brief Original unitree_go/msg/MotorState field states.
     * @details Sequence, element quota 32, UTF-8 bytes 0.
     */
    "states": Ros2Unitree_goMsgMotorState[];
}

/** @brief Complete typed Ros2Unitree_goMsgMotorStates value with canonical encoding. */
export interface Ros2Unitree_goMsgMotorStates extends Ros2Unitree_goMsgMotorStatesFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgMotorStates:
    RecordConstructor<Ros2Unitree_goMsgMotorStatesFields, Ros2Unitree_goMsgMotorStates> =
        bind(JavaScript.Ros2Unitree_goMsgMotorStates, "unitree_go/msg/MotorStates",
             "UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e", 4, 1348);

/** @brief All 7 original fields of unitree_go/msg/PathPoint; no field is erased. */
export interface Ros2Unitree_goMsgPathPointFields
{
    /**
     * @brief Original float32 field t_from_start.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "t_from_start": number;
    /**
     * @brief Original float32 field x.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "x": number;
    /**
     * @brief Original float32 field y.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "y": number;
    /**
     * @brief Original float32 field yaw.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "yaw": number;
    /**
     * @brief Original float32 field vx.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "vx": number;
    /**
     * @brief Original float32 field vy.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "vy": number;
    /**
     * @brief Original float32 field vyaw.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "vyaw": number;
}

/** @brief Complete typed Ros2Unitree_goMsgPathPoint value with canonical encoding. */
export interface Ros2Unitree_goMsgPathPoint extends Ros2Unitree_goMsgPathPointFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgPathPoint:
    RecordConstructor<Ros2Unitree_goMsgPathPointFields, Ros2Unitree_goMsgPathPoint> =
        bind(JavaScript.Ros2Unitree_goMsgPathPoint, "unitree_go/msg/PathPoint",
             "UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4", 28, 28);

/** @brief All 2 original fields of unitree_go/msg/Req; no field is erased. */
export interface Ros2Unitree_goMsgReqFields
{
    /**
     * @brief Original string field uuid.
     * @details Scalar, element quota 0, UTF-8 bytes 2048.
     */
    "uuid": string;
    /**
     * @brief Original string field body.
     * @details Scalar, element quota 0, UTF-8 bytes 2048.
     */
    "body": string;
}

/** @brief Complete typed Ros2Unitree_goMsgReq value with canonical encoding. */
export interface Ros2Unitree_goMsgReq extends Ros2Unitree_goMsgReqFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgReq: RecordConstructor<Ros2Unitree_goMsgReqFields, Ros2Unitree_goMsgReq> =
    bind(JavaScript.Ros2Unitree_goMsgReq, "unitree_go/msg/Req",
         "UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8", 8, 4104);

/** @brief All 3 original fields of unitree_go/msg/Res; no field is erased. */
export interface Ros2Unitree_goMsgResFields
{
    /**
     * @brief Original string field uuid.
     * @details Scalar, element quota 0, UTF-8 bytes 2048.
     */
    "uuid": string;
    /**
     * @brief Original uint8 field data.
     * @details Sequence, element quota 2048, UTF-8 bytes 0.
     */
    "data": number[];
    /**
     * @brief Original string field body.
     * @details Scalar, element quota 0, UTF-8 bytes 2048.
     */
    "body": string;
}

/** @brief Complete typed Ros2Unitree_goMsgRes value with canonical encoding. */
export interface Ros2Unitree_goMsgRes extends Ros2Unitree_goMsgResFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgRes: RecordConstructor<Ros2Unitree_goMsgResFields, Ros2Unitree_goMsgRes> =
    bind(JavaScript.Ros2Unitree_goMsgRes, "unitree_go/msg/Res",
         "UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963", 12, 6156);

/** @brief All 11 original fields of unitree_go/msg/SportModeCmd; no field is erased. */
export interface Ros2Unitree_goMsgSportModeCmdFields
{
    /**
     * @brief Original uint8 field mode.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "mode": number;
    /**
     * @brief Original uint8 field gait_type.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "gait_type": number;
    /**
     * @brief Original uint8 field speed_level.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "speed_level": number;
    /**
     * @brief Original float32 field foot_raise_height.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "foot_raise_height": number;
    /**
     * @brief Original float32 field body_height.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "body_height": number;
    /**
     * @brief Original float32 field position.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "position": number[];
    /**
     * @brief Original float32 field euler.
     * @details Array, element quota 3, UTF-8 bytes 0.
     */
    "euler": number[];
    /**
     * @brief Original float32 field velocity.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "velocity": number[];
    /**
     * @brief Original float32 field yaw_speed.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "yaw_speed": number;
    /**
     * @brief Original unitree_go/msg/BmsCmd field bms_cmd.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "bms_cmd": Ros2Unitree_goMsgBmsCmd;
    /**
     * @brief Original unitree_go/msg/PathPoint field path_point.
     * @details Array, element quota 30, UTF-8 bytes 0.
     */
    "path_point": Ros2Unitree_goMsgPathPoint[];
}

/** @brief Complete typed Ros2Unitree_goMsgSportModeCmd value with canonical encoding. */
export interface Ros2Unitree_goMsgSportModeCmd extends Ros2Unitree_goMsgSportModeCmdFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgSportModeCmd:
    RecordConstructor<Ros2Unitree_goMsgSportModeCmdFields, Ros2Unitree_goMsgSportModeCmd> =
        bind(JavaScript.Ros2Unitree_goMsgSportModeCmd, "unitree_go/msg/SportModeCmd",
             "UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c", 887, 887);

/** @brief All 2 original fields of unitree_go/msg/TimeSpec; no field is erased. */
export interface Ros2Unitree_goMsgTimeSpecFields
{
    /**
     * @brief Original int32 field sec.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "sec": number;
    /**
     * @brief Original uint32 field nanosec.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "nanosec": number;
}

/** @brief Complete typed Ros2Unitree_goMsgTimeSpec value with canonical encoding. */
export interface Ros2Unitree_goMsgTimeSpec extends Ros2Unitree_goMsgTimeSpecFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgTimeSpec: RecordConstructor<Ros2Unitree_goMsgTimeSpecFields, Ros2Unitree_goMsgTimeSpec> =
    bind(JavaScript.Ros2Unitree_goMsgTimeSpec, "unitree_go/msg/TimeSpec",
         "UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4", 8, 8);

/** @brief All 15 original fields of unitree_go/msg/SportModeState; no field is erased. */
export interface Ros2Unitree_goMsgSportModeStateFields
{
    /**
     * @brief Original unitree_go/msg/TimeSpec field stamp.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "stamp": Ros2Unitree_goMsgTimeSpec;
    /**
     * @brief Original uint32 field error_code.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "error_code": number;
    /**
     * @brief Original unitree_go/msg/IMUState field imu_state.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "imu_state": Ros2Unitree_goMsgIMUState;
    /**
     * @brief Original uint8 field mode.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "mode": number;
    /**
     * @brief Original float32 field progress.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "progress": number;
    /**
     * @brief Original uint8 field gait_type.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "gait_type": number;
    /**
     * @brief Original float32 field foot_raise_height.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "foot_raise_height": number;
    /**
     * @brief Original float32 field position.
     * @details Array, element quota 3, UTF-8 bytes 0.
     */
    "position": number[];
    /**
     * @brief Original float32 field body_height.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "body_height": number;
    /**
     * @brief Original float32 field velocity.
     * @details Array, element quota 3, UTF-8 bytes 0.
     */
    "velocity": number[];
    /**
     * @brief Original float32 field yaw_speed.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "yaw_speed": number;
    /**
     * @brief Original float32 field range_obstacle.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "range_obstacle": number[];
    /**
     * @brief Original int16 field foot_force.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "foot_force": number[];
    /**
     * @brief Original float32 field foot_position_body.
     * @details Array, element quota 12, UTF-8 bytes 0.
     */
    "foot_position_body": number[];
    /**
     * @brief Original float32 field foot_speed_body.
     * @details Array, element quota 12, UTF-8 bytes 0.
     */
    "foot_speed_body": number[];
}

/** @brief Complete typed Ros2Unitree_goMsgSportModeState value with canonical encoding. */
export interface Ros2Unitree_goMsgSportModeState extends Ros2Unitree_goMsgSportModeStateFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgSportModeState:
    RecordConstructor<Ros2Unitree_goMsgSportModeStateFields, Ros2Unitree_goMsgSportModeState> =
        bind(JavaScript.Ros2Unitree_goMsgSportModeState, "unitree_go/msg/SportModeState",
             "UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760", 227, 227);

/** @brief All 17 original fields of unitree_go/msg/UwbState; no field is erased. */
export interface Ros2Unitree_goMsgUwbStateFields
{
    /**
     * @brief Original uint8 field version.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "version": number[];
    /**
     * @brief Original uint8 field channel.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "channel": number;
    /**
     * @brief Original uint8 field joy_mode.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "joy_mode": number;
    /**
     * @brief Original float32 field orientation_est.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "orientation_est": number;
    /**
     * @brief Original float32 field pitch_est.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "pitch_est": number;
    /**
     * @brief Original float32 field distance_est.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "distance_est": number;
    /**
     * @brief Original float32 field yaw_est.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "yaw_est": number;
    /**
     * @brief Original float32 field tag_roll.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "tag_roll": number;
    /**
     * @brief Original float32 field tag_pitch.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "tag_pitch": number;
    /**
     * @brief Original float32 field tag_yaw.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "tag_yaw": number;
    /**
     * @brief Original float32 field base_roll.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "base_roll": number;
    /**
     * @brief Original float32 field base_pitch.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "base_pitch": number;
    /**
     * @brief Original float32 field base_yaw.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "base_yaw": number;
    /**
     * @brief Original float32 field joystick.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "joystick": number[];
    /**
     * @brief Original uint8 field error_state.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "error_state": number;
    /**
     * @brief Original uint8 field buttons.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "buttons": number;
    /**
     * @brief Original uint8 field enabled_from_app.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "enabled_from_app": number;
}

/** @brief Complete typed Ros2Unitree_goMsgUwbState value with canonical encoding. */
export interface Ros2Unitree_goMsgUwbState extends Ros2Unitree_goMsgUwbStateFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgUwbState: RecordConstructor<Ros2Unitree_goMsgUwbStateFields, Ros2Unitree_goMsgUwbState> =
    bind(JavaScript.Ros2Unitree_goMsgUwbState, "unitree_go/msg/UwbState",
         "UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34", 55, 55);

/** @brief All 1 original fields of unitree_go/msg/UwbSwitch; no field is erased. */
export interface Ros2Unitree_goMsgUwbSwitchFields
{
    /**
     * @brief Original uint8 field enabled.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "enabled": number;
}

/** @brief Complete typed Ros2Unitree_goMsgUwbSwitch value with canonical encoding. */
export interface Ros2Unitree_goMsgUwbSwitch extends Ros2Unitree_goMsgUwbSwitchFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgUwbSwitch:
    RecordConstructor<Ros2Unitree_goMsgUwbSwitchFields, Ros2Unitree_goMsgUwbSwitch> =
        bind(JavaScript.Ros2Unitree_goMsgUwbSwitch, "unitree_go/msg/UwbSwitch",
             "UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5", 1, 1);

/** @brief All 5 original fields of unitree_go/msg/WirelessController; no field is erased. */
export interface Ros2Unitree_goMsgWirelessControllerFields
{
    /**
     * @brief Original float32 field lx.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "lx": number;
    /**
     * @brief Original float32 field ly.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "ly": number;
    /**
     * @brief Original float32 field rx.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "rx": number;
    /**
     * @brief Original float32 field ry.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "ry": number;
    /**
     * @brief Original uint16 field keys.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "keys": number;
}

/** @brief Complete typed Ros2Unitree_goMsgWirelessController value with canonical encoding. */
export interface Ros2Unitree_goMsgWirelessController extends Ros2Unitree_goMsgWirelessControllerFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_goMsgWirelessController:
    RecordConstructor<Ros2Unitree_goMsgWirelessControllerFields, Ros2Unitree_goMsgWirelessController> =
        bind(JavaScript.Ros2Unitree_goMsgWirelessController, "unitree_go/msg/WirelessController",
             "UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438", 18, 18);

/** @brief All 2 original fields of unitree_hg/msg/BmsCmd; no field is erased. */
export interface Ros2Unitree_hgMsgBmsCmdFields
{
    /**
     * @brief Original uint8 field cmd.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "cmd": number;
    /**
     * @brief Original uint8 field reserve.
     * @details Array, element quota 40, UTF-8 bytes 0.
     */
    "reserve": number[];
}

/** @brief Complete typed Ros2Unitree_hgMsgBmsCmd value with canonical encoding. */
export interface Ros2Unitree_hgMsgBmsCmd extends Ros2Unitree_hgMsgBmsCmdFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_hgMsgBmsCmd: RecordConstructor<Ros2Unitree_hgMsgBmsCmdFields, Ros2Unitree_hgMsgBmsCmd> =
    bind(JavaScript.Ros2Unitree_hgMsgBmsCmd, "unitree_hg/msg/BmsCmd",
         "UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de", 41, 41);

/** @brief All 13 original fields of unitree_hg/msg/BmsState; no field is erased. */
export interface Ros2Unitree_hgMsgBmsStateFields
{
    /**
     * @brief Original uint8 field version_high.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "version_high": number;
    /**
     * @brief Original uint8 field version_low.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "version_low": number;
    /**
     * @brief Original uint8 field fn.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "fn": number;
    /**
     * @brief Original uint16 field cell_vol.
     * @details Array, element quota 40, UTF-8 bytes 0.
     */
    "cell_vol": number[];
    /**
     * @brief Original uint32 field bmsvoltage.
     * @details Array, element quota 3, UTF-8 bytes 0.
     */
    "bmsvoltage": number[];
    /**
     * @brief Original int32 field current.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "current": number;
    /**
     * @brief Original uint8 field soc.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "soc": number;
    /**
     * @brief Original uint8 field soh.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "soh": number;
    /**
     * @brief Original int16 field temperature.
     * @details Array, element quota 12, UTF-8 bytes 0.
     */
    "temperature": number[];
    /**
     * @brief Original uint16 field cycle.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "cycle": number;
    /**
     * @brief Original uint16 field manufacturer_date.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "manufacturer_date": number;
    /**
     * @brief Original uint32 field bmsstate.
     * @details Array, element quota 5, UTF-8 bytes 0.
     */
    "bmsstate": number[];
    /**
     * @brief Original uint32 field reserve.
     * @details Array, element quota 3, UTF-8 bytes 0.
     */
    "reserve": number[];
}

/** @brief Complete typed Ros2Unitree_hgMsgBmsState value with canonical encoding. */
export interface Ros2Unitree_hgMsgBmsState extends Ros2Unitree_hgMsgBmsStateFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_hgMsgBmsState: RecordConstructor<Ros2Unitree_hgMsgBmsStateFields, Ros2Unitree_hgMsgBmsState> =
    bind(JavaScript.Ros2Unitree_hgMsgBmsState, "unitree_hg/msg/BmsState",
         "UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d", 161, 161);

/** @brief All 7 original fields of unitree_hg/msg/MotorCmd; no field is erased. */
export interface Ros2Unitree_hgMsgMotorCmdFields
{
    /**
     * @brief Original uint8 field mode.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "mode": number;
    /**
     * @brief Original float32 field q.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "q": number;
    /**
     * @brief Original float32 field dq.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "dq": number;
    /**
     * @brief Original float32 field tau.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "tau": number;
    /**
     * @brief Original float32 field kp.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "kp": number;
    /**
     * @brief Original float32 field kd.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "kd": number;
    /**
     * @brief Original uint32 field reserve.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "reserve": number;
}

/** @brief Complete typed Ros2Unitree_hgMsgMotorCmd value with canonical encoding. */
export interface Ros2Unitree_hgMsgMotorCmd extends Ros2Unitree_hgMsgMotorCmdFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_hgMsgMotorCmd: RecordConstructor<Ros2Unitree_hgMsgMotorCmdFields, Ros2Unitree_hgMsgMotorCmd> =
    bind(JavaScript.Ros2Unitree_hgMsgMotorCmd, "unitree_hg/msg/MotorCmd",
         "UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb", 25, 25);

/** @brief All 2 original fields of unitree_hg/msg/HandCmd; no field is erased. */
export interface Ros2Unitree_hgMsgHandCmdFields
{
    /**
     * @brief Original unitree_hg/msg/MotorCmd field motor_cmd.
     * @details Sequence, element quota 32, UTF-8 bytes 0.
     */
    "motor_cmd": Ros2Unitree_hgMsgMotorCmd[];
    /**
     * @brief Original uint32 field reserve.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "reserve": number[];
}

/** @brief Complete typed Ros2Unitree_hgMsgHandCmd value with canonical encoding. */
export interface Ros2Unitree_hgMsgHandCmd extends Ros2Unitree_hgMsgHandCmdFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_hgMsgHandCmd: RecordConstructor<Ros2Unitree_hgMsgHandCmdFields, Ros2Unitree_hgMsgHandCmd> =
    bind(JavaScript.Ros2Unitree_hgMsgHandCmd, "unitree_hg/msg/HandCmd",
         "UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006", 20, 820);

/** @brief All 10 original fields of unitree_hg/msg/MotorState; no field is erased. */
export interface Ros2Unitree_hgMsgMotorStateFields
{
    /**
     * @brief Original uint8 field mode.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "mode": number;
    /**
     * @brief Original float32 field q.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "q": number;
    /**
     * @brief Original float32 field dq.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "dq": number;
    /**
     * @brief Original float32 field ddq.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "ddq": number;
    /**
     * @brief Original float32 field tau_est.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "tau_est": number;
    /**
     * @brief Original int16 field temperature.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "temperature": number[];
    /**
     * @brief Original float32 field vol.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "vol": number;
    /**
     * @brief Original uint32 field sensor.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "sensor": number[];
    /**
     * @brief Original uint32 field motorstate.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "motorstate": number;
    /**
     * @brief Original uint32 field reserve.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "reserve": number[];
}

/** @brief Complete typed Ros2Unitree_hgMsgMotorState value with canonical encoding. */
export interface Ros2Unitree_hgMsgMotorState extends Ros2Unitree_hgMsgMotorStateFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_hgMsgMotorState:
    RecordConstructor<Ros2Unitree_hgMsgMotorStateFields, Ros2Unitree_hgMsgMotorState> =
        bind(JavaScript.Ros2Unitree_hgMsgMotorState, "unitree_hg/msg/MotorState",
             "UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934", 53, 53);

/** @brief All 4 original fields of unitree_hg/msg/PressSensorState; no field is erased. */
export interface Ros2Unitree_hgMsgPressSensorStateFields
{
    /**
     * @brief Original float32 field pressure.
     * @details Array, element quota 12, UTF-8 bytes 0.
     */
    "pressure": number[];
    /**
     * @brief Original float32 field temperature.
     * @details Array, element quota 12, UTF-8 bytes 0.
     */
    "temperature": number[];
    /**
     * @brief Original uint32 field lost.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "lost": number;
    /**
     * @brief Original uint32 field reserve.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "reserve": number;
}

/** @brief Complete typed Ros2Unitree_hgMsgPressSensorState value with canonical encoding. */
export interface Ros2Unitree_hgMsgPressSensorState extends Ros2Unitree_hgMsgPressSensorStateFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_hgMsgPressSensorState:
    RecordConstructor<Ros2Unitree_hgMsgPressSensorStateFields, Ros2Unitree_hgMsgPressSensorState> =
        bind(JavaScript.Ros2Unitree_hgMsgPressSensorState, "unitree_hg/msg/PressSensorState",
             "UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5", 104, 104);

/** @brief All 5 original fields of unitree_hg/msg/IMUState; no field is erased. */
export interface Ros2Unitree_hgMsgIMUStateFields
{
    /**
     * @brief Original float32 field quaternion.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "quaternion": number[];
    /**
     * @brief Original float32 field gyroscope.
     * @details Array, element quota 3, UTF-8 bytes 0.
     */
    "gyroscope": number[];
    /**
     * @brief Original float32 field accelerometer.
     * @details Array, element quota 3, UTF-8 bytes 0.
     */
    "accelerometer": number[];
    /**
     * @brief Original float32 field rpy.
     * @details Array, element quota 3, UTF-8 bytes 0.
     */
    "rpy": number[];
    /**
     * @brief Original int16 field temperature.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "temperature": number;
}

/** @brief Complete typed Ros2Unitree_hgMsgIMUState value with canonical encoding. */
export interface Ros2Unitree_hgMsgIMUState extends Ros2Unitree_hgMsgIMUStateFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_hgMsgIMUState: RecordConstructor<Ros2Unitree_hgMsgIMUStateFields, Ros2Unitree_hgMsgIMUState> =
    bind(JavaScript.Ros2Unitree_hgMsgIMUState, "unitree_hg/msg/IMUState",
         "UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420", 54, 54);

/** @brief All 9 original fields of unitree_hg/msg/HandState; no field is erased. */
export interface Ros2Unitree_hgMsgHandStateFields
{
    /**
     * @brief Original unitree_hg/msg/MotorState field motor_state.
     * @details Sequence, element quota 32, UTF-8 bytes 0.
     */
    "motor_state": Ros2Unitree_hgMsgMotorState[];
    /**
     * @brief Original unitree_hg/msg/PressSensorState field press_sensor_state.
     * @details Sequence, element quota 32, UTF-8 bytes 0.
     */
    "press_sensor_state": Ros2Unitree_hgMsgPressSensorState[];
    /**
     * @brief Original unitree_hg/msg/IMUState field imu_state.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "imu_state": Ros2Unitree_hgMsgIMUState;
    /**
     * @brief Original float32 field power_v.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "power_v": number;
    /**
     * @brief Original float32 field power_a.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "power_a": number;
    /**
     * @brief Original float32 field system_v.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "system_v": number;
    /**
     * @brief Original float32 field device_v.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "device_v": number;
    /**
     * @brief Original uint32 field error.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "error": number[];
    /**
     * @brief Original uint32 field reserve.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "reserve": number[];
}

/** @brief Complete typed Ros2Unitree_hgMsgHandState value with canonical encoding. */
export interface Ros2Unitree_hgMsgHandState extends Ros2Unitree_hgMsgHandStateFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_hgMsgHandState:
    RecordConstructor<Ros2Unitree_hgMsgHandStateFields, Ros2Unitree_hgMsgHandState> =
        bind(JavaScript.Ros2Unitree_hgMsgHandState, "unitree_hg/msg/HandState",
             "UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6", 94, 5118);

/** @brief All 5 original fields of unitree_hg/msg/LowCmd; no field is erased. */
export interface Ros2Unitree_hgMsgLowCmdFields
{
    /**
     * @brief Original uint8 field mode_pr.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "mode_pr": number;
    /**
     * @brief Original uint8 field mode_machine.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "mode_machine": number;
    /**
     * @brief Original unitree_hg/msg/MotorCmd field motor_cmd.
     * @details Array, element quota 35, UTF-8 bytes 0.
     */
    "motor_cmd": Ros2Unitree_hgMsgMotorCmd[];
    /**
     * @brief Original uint32 field reserve.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "reserve": number[];
    /**
     * @brief Original uint32 field crc.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "crc": number;
}

/** @brief Complete typed Ros2Unitree_hgMsgLowCmd value with canonical encoding. */
export interface Ros2Unitree_hgMsgLowCmd extends Ros2Unitree_hgMsgLowCmdFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_hgMsgLowCmd: RecordConstructor<Ros2Unitree_hgMsgLowCmdFields, Ros2Unitree_hgMsgLowCmd> =
    bind(JavaScript.Ros2Unitree_hgMsgLowCmd, "unitree_hg/msg/LowCmd",
         "UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461", 897, 897);

/** @brief All 9 original fields of unitree_hg/msg/LowState; no field is erased. */
export interface Ros2Unitree_hgMsgLowStateFields
{
    /**
     * @brief Original uint32 field version.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "version": number[];
    /**
     * @brief Original uint8 field mode_pr.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "mode_pr": number;
    /**
     * @brief Original uint8 field mode_machine.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "mode_machine": number;
    /**
     * @brief Original uint32 field tick.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "tick": number;
    /**
     * @brief Original unitree_hg/msg/IMUState field imu_state.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "imu_state": Ros2Unitree_hgMsgIMUState;
    /**
     * @brief Original unitree_hg/msg/MotorState field motor_state.
     * @details Array, element quota 35, UTF-8 bytes 0.
     */
    "motor_state": Ros2Unitree_hgMsgMotorState[];
    /**
     * @brief Original uint8 field wireless_remote.
     * @details Array, element quota 40, UTF-8 bytes 0.
     */
    "wireless_remote": number[];
    /**
     * @brief Original uint32 field reserve.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "reserve": number[];
    /**
     * @brief Original uint32 field crc.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "crc": number;
}

/** @brief Complete typed Ros2Unitree_hgMsgLowState value with canonical encoding. */
export interface Ros2Unitree_hgMsgLowState extends Ros2Unitree_hgMsgLowStateFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_hgMsgLowState: RecordConstructor<Ros2Unitree_hgMsgLowStateFields, Ros2Unitree_hgMsgLowState> =
    bind(JavaScript.Ros2Unitree_hgMsgLowState, "unitree_hg/msg/LowState",
         "UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d", 1983, 1983);

/** @brief All 4 original fields of unitree_hg/msg/MainBoardState; no field is erased. */
export interface Ros2Unitree_hgMsgMainBoardStateFields
{
    /**
     * @brief Original uint16 field fan_state.
     * @details Array, element quota 6, UTF-8 bytes 0.
     */
    "fan_state": number[];
    /**
     * @brief Original int16 field temperature.
     * @details Array, element quota 6, UTF-8 bytes 0.
     */
    "temperature": number[];
    /**
     * @brief Original float32 field value.
     * @details Array, element quota 6, UTF-8 bytes 0.
     */
    "value": number[];
    /**
     * @brief Original uint32 field state.
     * @details Array, element quota 6, UTF-8 bytes 0.
     */
    "state": number[];
}

/** @brief Complete typed Ros2Unitree_hgMsgMainBoardState value with canonical encoding. */
export interface Ros2Unitree_hgMsgMainBoardState extends Ros2Unitree_hgMsgMainBoardStateFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros2Unitree_hgMsgMainBoardState:
    RecordConstructor<Ros2Unitree_hgMsgMainBoardStateFields, Ros2Unitree_hgMsgMainBoardState> =
        bind(JavaScript.Ros2Unitree_hgMsgMainBoardState, "unitree_hg/msg/MainBoardState",
             "UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6", 72, 72);

/** @brief Union of every complete original value in this backend. */
export type CatalogValue = Ros2Unitree_apiMsgRequestIdentity | Ros2Unitree_apiMsgRequestLease|
    Ros2Unitree_apiMsgRequestPolicy | Ros2Unitree_apiMsgRequestHeader | Ros2Unitree_apiMsgRequest|
    Ros2Unitree_apiMsgResponseStatus | Ros2Unitree_apiMsgResponseHeader | Ros2Unitree_apiMsgResponse|
    Ros2Unitree_goMsgAudioData | Ros2Unitree_goMsgBmsCmd | Ros2Unitree_goMsgBmsState | Ros2Unitree_goMsgError|
    Ros2Unitree_goMsgGo2FrontVideoData | Ros2Unitree_goMsgHeightMap | Ros2Unitree_goMsgIMUState|
    Ros2Unitree_goMsgInterfaceConfig | Ros2Unitree_goMsgLidarState | Ros2Unitree_goMsgMotorCmd | Ros2Unitree_goMsgLowCmd|
    Ros2Unitree_goMsgMotorState | Ros2Unitree_goMsgLowState | Ros2Unitree_goMsgMotorCmds | Ros2Unitree_goMsgMotorStates|
    Ros2Unitree_goMsgPathPoint | Ros2Unitree_goMsgReq | Ros2Unitree_goMsgRes | Ros2Unitree_goMsgSportModeCmd|
    Ros2Unitree_goMsgTimeSpec | Ros2Unitree_goMsgSportModeState | Ros2Unitree_goMsgUwbState | Ros2Unitree_goMsgUwbSwitch|
    Ros2Unitree_goMsgWirelessController | Ros2Unitree_hgMsgBmsCmd | Ros2Unitree_hgMsgBmsState | Ros2Unitree_hgMsgMotorCmd|
    Ros2Unitree_hgMsgHandCmd | Ros2Unitree_hgMsgMotorState | Ros2Unitree_hgMsgPressSensorState | Ros2Unitree_hgMsgIMUState|
    Ros2Unitree_hgMsgHandState | Ros2Unitree_hgMsgLowCmd | Ros2Unitree_hgMsgLowState | Ros2Unitree_hgMsgMainBoardState;

/**
 * @brief Typed access to the original catalog registry.
 * @details Constructors and codecs are shared with the JavaScript SDK.
 */
export interface CatalogRegistry
{
    /**
     * @brief Validate and encode one complete catalog value.
     * @param value An original record instance from this backend.
     * @return Newly owned canonical bytes.
     * @throws Error If the value or any nested field is invalid.
     */
    encode(value: CatalogValue): Uint8Array;
    /**
     * @brief Decode a complete frame using its exact original constructor.
     * @param constructor Registered constructor selecting the schema.
     * @param bytes Complete borrowed canonical frame.
     * @return A newly decoded, fully validated value.
     * @throws Error If identity, frame bounds, or field domains are invalid.
     */
    decode<F, V extends CanonicalValue>(constructor: RecordConstructor<F, V>, bytes: Uint8Array): V;
}

/** @brief Existing registry, with no second registration or implementation. */
export const REGISTRY = JavaScript.REGISTRY as unknown as CatalogRegistry;

/** @brief Original native constants consume zero canonical bytes. */
export const CONSTANTS = {} as const;
