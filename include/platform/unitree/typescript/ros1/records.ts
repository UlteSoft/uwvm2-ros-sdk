// SPDX-License-Identifier: Apache-2.0
/** @file records.ts
 * @brief Complete strongly typed facade over the one original JavaScript catalog.
 * @details Constructor aliases intentionally preserve exact nested class identity.
 * No subclass, new wire implementation, engine, host execution or authority is added.
 */

import * as JavaScript from "unitree/js/ros1/records";

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

/** @brief All 2 original fields of unitree_legged_msgs/BmsCmd; no field is erased. */
export interface Ros1Unitree_legged_msgsBmsCmdFields
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

/** @brief Complete typed Ros1Unitree_legged_msgsBmsCmd value with canonical encoding. */
export interface Ros1Unitree_legged_msgsBmsCmd extends Ros1Unitree_legged_msgsBmsCmdFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros1Unitree_legged_msgsBmsCmd:
    RecordConstructor<Ros1Unitree_legged_msgsBmsCmdFields, Ros1Unitree_legged_msgsBmsCmd> =
        bind(JavaScript.Ros1Unitree_legged_msgsBmsCmd, "unitree_legged_msgs/BmsCmd",
             "UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928", 4, 4);

/** @brief All 9 original fields of unitree_legged_msgs/BmsState; no field is erased. */
export interface Ros1Unitree_legged_msgsBmsStateFields
{
    /**
     * @brief Original uint8 field version_h.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "version_h": number;
    /**
     * @brief Original uint8 field version_l.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "version_l": number;
    /**
     * @brief Original uint8 field bms_status.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "bms_status": number;
    /**
     * @brief Original uint8 field SOC.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "SOC": number;
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
     * @brief Original int8 field BQ_NTC.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "BQ_NTC": number[];
    /**
     * @brief Original int8 field MCU_NTC.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "MCU_NTC": number[];
    /**
     * @brief Original uint16 field cell_vol.
     * @details Array, element quota 10, UTF-8 bytes 0.
     */
    "cell_vol": number[];
}

/** @brief Complete typed Ros1Unitree_legged_msgsBmsState value with canonical encoding. */
export interface Ros1Unitree_legged_msgsBmsState extends Ros1Unitree_legged_msgsBmsStateFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros1Unitree_legged_msgsBmsState:
    RecordConstructor<Ros1Unitree_legged_msgsBmsStateFields, Ros1Unitree_legged_msgsBmsState> =
        bind(JavaScript.Ros1Unitree_legged_msgsBmsState, "unitree_legged_msgs/BmsState",
             "UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a", 34, 34);

/** @brief All 3 original fields of unitree_legged_msgs/Cartesian; no field is erased. */
export interface Ros1Unitree_legged_msgsCartesianFields
{
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
     * @brief Original float32 field z.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "z": number;
}

/** @brief Complete typed Ros1Unitree_legged_msgsCartesian value with canonical encoding. */
export interface Ros1Unitree_legged_msgsCartesian extends Ros1Unitree_legged_msgsCartesianFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros1Unitree_legged_msgsCartesian:
    RecordConstructor<Ros1Unitree_legged_msgsCartesianFields, Ros1Unitree_legged_msgsCartesian> =
        bind(JavaScript.Ros1Unitree_legged_msgsCartesian, "unitree_legged_msgs/Cartesian",
             "UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722", 12, 12);

/** @brief All 3 original fields of unitree_legged_msgs/LED; no field is erased. */
export interface Ros1Unitree_legged_msgsLEDFields
{
    /**
     * @brief Original uint8 field r.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "r": number;
    /**
     * @brief Original uint8 field g.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "g": number;
    /**
     * @brief Original uint8 field b.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "b": number;
}

/** @brief Complete typed Ros1Unitree_legged_msgsLED value with canonical encoding. */
export interface Ros1Unitree_legged_msgsLED extends Ros1Unitree_legged_msgsLEDFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros1Unitree_legged_msgsLED:
    RecordConstructor<Ros1Unitree_legged_msgsLEDFields, Ros1Unitree_legged_msgsLED> =
        bind(JavaScript.Ros1Unitree_legged_msgsLED, "unitree_legged_msgs/LED",
             "UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5", 3, 3);

/** @brief All 20 original fields of unitree_legged_msgs/HighCmd; no field is erased. */
export interface Ros1Unitree_legged_msgsHighCmdFields
{
    /**
     * @brief Original uint8 field head.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "head": number[];
    /**
     * @brief Original uint8 field levelFlag.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "levelFlag": number;
    /**
     * @brief Original uint8 field frameReserve.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "frameReserve": number;
    /**
     * @brief Original uint32 field SN.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "SN": number[];
    /**
     * @brief Original uint32 field version.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "version": number[];
    /**
     * @brief Original uint16 field bandWidth.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "bandWidth": number;
    /**
     * @brief Original uint8 field mode.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "mode": number;
    /**
     * @brief Original uint8 field gaitType.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "gaitType": number;
    /**
     * @brief Original uint8 field speedLevel.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "speedLevel": number;
    /**
     * @brief Original float32 field footRaiseHeight.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "footRaiseHeight": number;
    /**
     * @brief Original float32 field bodyHeight.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "bodyHeight": number;
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
     * @brief Original float32 field yawSpeed.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "yawSpeed": number;
    /**
     * @brief Original unitree_legged_msgs/BmsCmd field bms.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "bms": Ros1Unitree_legged_msgsBmsCmd;
    /**
     * @brief Original unitree_legged_msgs/LED field led.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "led": Ros1Unitree_legged_msgsLED[];
    /**
     * @brief Original uint8 field wirelessRemote.
     * @details Array, element quota 40, UTF-8 bytes 0.
     */
    "wirelessRemote": number[];
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

/** @brief Complete typed Ros1Unitree_legged_msgsHighCmd value with canonical encoding. */
export interface Ros1Unitree_legged_msgsHighCmd extends Ros1Unitree_legged_msgsHighCmdFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros1Unitree_legged_msgsHighCmd:
    RecordConstructor<Ros1Unitree_legged_msgsHighCmdFields, Ros1Unitree_legged_msgsHighCmd> =
        bind(JavaScript.Ros1Unitree_legged_msgsHighCmd, "unitree_legged_msgs/HighCmd",
             "UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38", 129, 129);

/** @brief All 5 original fields of unitree_legged_msgs/IMU; no field is erased. */
export interface Ros1Unitree_legged_msgsIMUFields
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

/** @brief Complete typed Ros1Unitree_legged_msgsIMU value with canonical encoding. */
export interface Ros1Unitree_legged_msgsIMU extends Ros1Unitree_legged_msgsIMUFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros1Unitree_legged_msgsIMU:
    RecordConstructor<Ros1Unitree_legged_msgsIMUFields, Ros1Unitree_legged_msgsIMU> =
        bind(JavaScript.Ros1Unitree_legged_msgsIMU, "unitree_legged_msgs/IMU",
             "UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276", 53, 53);

/** @brief All 10 original fields of unitree_legged_msgs/MotorState; no field is erased. */
export interface Ros1Unitree_legged_msgsMotorStateFields
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
     * @brief Original float32 field tauEst.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "tauEst": number;
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
     * @brief Original uint32 field reserve.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "reserve": number[];
}

/** @brief Complete typed Ros1Unitree_legged_msgsMotorState value with canonical encoding. */
export interface Ros1Unitree_legged_msgsMotorState extends Ros1Unitree_legged_msgsMotorStateFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros1Unitree_legged_msgsMotorState:
    RecordConstructor<Ros1Unitree_legged_msgsMotorStateFields, Ros1Unitree_legged_msgsMotorState> =
        bind(JavaScript.Ros1Unitree_legged_msgsMotorState, "unitree_legged_msgs/MotorState",
             "UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf", 38, 38);

/** @brief All 25 original fields of unitree_legged_msgs/HighState; no field is erased. */
export interface Ros1Unitree_legged_msgsHighStateFields
{
    /**
     * @brief Original uint8 field head.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "head": number[];
    /**
     * @brief Original uint8 field levelFlag.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "levelFlag": number;
    /**
     * @brief Original uint8 field frameReserve.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "frameReserve": number;
    /**
     * @brief Original uint32 field SN.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "SN": number[];
    /**
     * @brief Original uint32 field version.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "version": number[];
    /**
     * @brief Original uint16 field bandWidth.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "bandWidth": number;
    /**
     * @brief Original unitree_legged_msgs/IMU field imu.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "imu": Ros1Unitree_legged_msgsIMU;
    /**
     * @brief Original unitree_legged_msgs/MotorState field motorState.
     * @details Array, element quota 20, UTF-8 bytes 0.
     */
    "motorState": Ros1Unitree_legged_msgsMotorState[];
    /**
     * @brief Original unitree_legged_msgs/BmsState field bms.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "bms": Ros1Unitree_legged_msgsBmsState;
    /**
     * @brief Original int16 field footForce.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "footForce": number[];
    /**
     * @brief Original int16 field footForceEst.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "footForceEst": number[];
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
     * @brief Original uint8 field gaitType.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "gaitType": number;
    /**
     * @brief Original float32 field footRaiseHeight.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "footRaiseHeight": number;
    /**
     * @brief Original float32 field position.
     * @details Array, element quota 3, UTF-8 bytes 0.
     */
    "position": number[];
    /**
     * @brief Original float32 field bodyHeight.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "bodyHeight": number;
    /**
     * @brief Original float32 field velocity.
     * @details Array, element quota 3, UTF-8 bytes 0.
     */
    "velocity": number[];
    /**
     * @brief Original float32 field yawSpeed.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "yawSpeed": number;
    /**
     * @brief Original float32 field rangeObstacle.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "rangeObstacle": number[];
    /**
     * @brief Original unitree_legged_msgs/Cartesian field footPosition2Body.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "footPosition2Body": Ros1Unitree_legged_msgsCartesian[];
    /**
     * @brief Original unitree_legged_msgs/Cartesian field footSpeed2Body.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "footSpeed2Body": Ros1Unitree_legged_msgsCartesian[];
    /**
     * @brief Original uint8 field wirelessRemote.
     * @details Array, element quota 40, UTF-8 bytes 0.
     */
    "wirelessRemote": number[];
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

/** @brief Complete typed Ros1Unitree_legged_msgsHighState value with canonical encoding. */
export interface Ros1Unitree_legged_msgsHighState extends Ros1Unitree_legged_msgsHighStateFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros1Unitree_legged_msgsHighState:
    RecordConstructor<Ros1Unitree_legged_msgsHighStateFields, Ros1Unitree_legged_msgsHighState> =
        bind(JavaScript.Ros1Unitree_legged_msgsHighState, "unitree_legged_msgs/HighState",
             "UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d", 1087, 1087);

/** @brief All 7 original fields of unitree_legged_msgs/MotorCmd; no field is erased. */
export interface Ros1Unitree_legged_msgsMotorCmdFields
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
     * @brief Original float32 field Kp.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "Kp": number;
    /**
     * @brief Original float32 field Kd.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "Kd": number;
    /**
     * @brief Original uint32 field reserve.
     * @details Array, element quota 3, UTF-8 bytes 0.
     */
    "reserve": number[];
}

/** @brief Complete typed Ros1Unitree_legged_msgsMotorCmd value with canonical encoding. */
export interface Ros1Unitree_legged_msgsMotorCmd extends Ros1Unitree_legged_msgsMotorCmdFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros1Unitree_legged_msgsMotorCmd:
    RecordConstructor<Ros1Unitree_legged_msgsMotorCmdFields, Ros1Unitree_legged_msgsMotorCmd> =
        bind(JavaScript.Ros1Unitree_legged_msgsMotorCmd, "unitree_legged_msgs/MotorCmd",
             "UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083", 33, 33);

/** @brief All 11 original fields of unitree_legged_msgs/LowCmd; no field is erased. */
export interface Ros1Unitree_legged_msgsLowCmdFields
{
    /**
     * @brief Original uint8 field head.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "head": number[];
    /**
     * @brief Original uint8 field levelFlag.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "levelFlag": number;
    /**
     * @brief Original uint8 field frameReserve.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "frameReserve": number;
    /**
     * @brief Original uint32 field SN.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "SN": number[];
    /**
     * @brief Original uint32 field version.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "version": number[];
    /**
     * @brief Original uint16 field bandWidth.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "bandWidth": number;
    /**
     * @brief Original unitree_legged_msgs/MotorCmd field motorCmd.
     * @details Array, element quota 20, UTF-8 bytes 0.
     */
    "motorCmd": Ros1Unitree_legged_msgsMotorCmd[];
    /**
     * @brief Original unitree_legged_msgs/BmsCmd field bms.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "bms": Ros1Unitree_legged_msgsBmsCmd;
    /**
     * @brief Original uint8 field wirelessRemote.
     * @details Array, element quota 40, UTF-8 bytes 0.
     */
    "wirelessRemote": number[];
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

/** @brief Complete typed Ros1Unitree_legged_msgsLowCmd value with canonical encoding. */
export interface Ros1Unitree_legged_msgsLowCmd extends Ros1Unitree_legged_msgsLowCmdFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros1Unitree_legged_msgsLowCmd:
    RecordConstructor<Ros1Unitree_legged_msgsLowCmdFields, Ros1Unitree_legged_msgsLowCmd> =
        bind(JavaScript.Ros1Unitree_legged_msgsLowCmd, "unitree_legged_msgs/LowCmd",
             "UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181", 734, 734);

/** @brief All 20 original fields of unitree_legged_msgs/LowState; no field is erased. */
export interface Ros1Unitree_legged_msgsLowStateFields
{
    /**
     * @brief Original uint8 field head.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "head": number[];
    /**
     * @brief Original uint8 field levelFlag.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "levelFlag": number;
    /**
     * @brief Original uint8 field frameReserve.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "frameReserve": number;
    /**
     * @brief Original uint32 field SN.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "SN": number[];
    /**
     * @brief Original uint32 field version.
     * @details Array, element quota 2, UTF-8 bytes 0.
     */
    "version": number[];
    /**
     * @brief Original uint16 field bandWidth.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "bandWidth": number;
    /**
     * @brief Original unitree_legged_msgs/IMU field imu.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "imu": Ros1Unitree_legged_msgsIMU;
    /**
     * @brief Original unitree_legged_msgs/MotorState field motorState.
     * @details Array, element quota 20, UTF-8 bytes 0.
     */
    "motorState": Ros1Unitree_legged_msgsMotorState[];
    /**
     * @brief Original unitree_legged_msgs/BmsState field bms.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "bms": Ros1Unitree_legged_msgsBmsState;
    /**
     * @brief Original int16 field footForce.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "footForce": number[];
    /**
     * @brief Original int16 field footForceEst.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "footForceEst": number[];
    /**
     * @brief Original uint32 field tick.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "tick": number;
    /**
     * @brief Original uint8 field wirelessRemote.
     * @details Array, element quota 40, UTF-8 bytes 0.
     */
    "wirelessRemote": number[];
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
    /**
     * @brief Original unitree_legged_msgs/Cartesian field eeForceRaw.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "eeForceRaw": Ros1Unitree_legged_msgsCartesian[];
    /**
     * @brief Original unitree_legged_msgs/Cartesian field eeForce.
     * @details Array, element quota 4, UTF-8 bytes 0.
     */
    "eeForce": Ros1Unitree_legged_msgsCartesian[];
    /**
     * @brief Original unitree_legged_msgs/Cartesian field position.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "position": Ros1Unitree_legged_msgsCartesian;
    /**
     * @brief Original unitree_legged_msgs/Cartesian field velocity.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "velocity": Ros1Unitree_legged_msgsCartesian;
    /**
     * @brief Original unitree_legged_msgs/Cartesian field velocity_w.
     * @details Scalar, element quota 0, UTF-8 bytes 0.
     */
    "velocity_w": Ros1Unitree_legged_msgsCartesian;
}

/** @brief Complete typed Ros1Unitree_legged_msgsLowState value with canonical encoding. */
export interface Ros1Unitree_legged_msgsLowState extends Ros1Unitree_legged_msgsLowStateFields, CanonicalValue
{
}

/** @brief Actual original class; owned defaults and strict whole-wire decode. */
export const Ros1Unitree_legged_msgsLowState:
    RecordConstructor<Ros1Unitree_legged_msgsLowStateFields, Ros1Unitree_legged_msgsLowState> =
        bind(JavaScript.Ros1Unitree_legged_msgsLowState, "unitree_legged_msgs/LowState",
             "UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0", 1069, 1069);

/** @brief Union of every complete original value in this backend. */
export type CatalogValue = Ros1Unitree_legged_msgsBmsCmd | Ros1Unitree_legged_msgsBmsState|
    Ros1Unitree_legged_msgsCartesian | Ros1Unitree_legged_msgsLED | Ros1Unitree_legged_msgsHighCmd|
    Ros1Unitree_legged_msgsIMU | Ros1Unitree_legged_msgsMotorState | Ros1Unitree_legged_msgsHighState|
    Ros1Unitree_legged_msgsMotorCmd | Ros1Unitree_legged_msgsLowCmd | Ros1Unitree_legged_msgsLowState;

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
