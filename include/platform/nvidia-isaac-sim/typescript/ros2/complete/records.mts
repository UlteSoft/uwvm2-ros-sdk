/**
 * @file records.mts
 * @brief Complete original nvidia-isaac-sim typed values and JS-backed canonical operations.
 * @details All fields, exact tuple counts, BigInt values, defaults and runtime bounds are retained.
 * Genuine Microsoft TypeScript semantic checks and the shared QuickJS guest remain required.
 */
import * as legacy from "nvidia-isaac-sim/js/ros2/complete/records";
import type {CanonicalCodec, UInt8, UInt16, UInt32, UInt64, Int32, Float32, Float64,
    Tuple2, Tuple3, Tuple4, Tuple5, Tuple36} from "nvidia/typescript/codec";
import {bindCodec, validRuntimeValue} from "nvidia/typescript/codec";
export {CodecError} from "nvidia/typescript/codec";

/** @brief Complete original builtin_interfaces/msg/Time; canonical codec identity is retained. */
export interface Ros2Builtin_interfacesMsgTime
{
    /** @brief Original int32, with its declared units and signedness. */
    sec: Int32;
    /** @brief Original uint32, with its declared units and signedness. */
    nanosec: UInt32;
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Builtin_interfacesMsgTimeConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Builtin_interfacesMsgTime(value: unknown): value is Ros2Builtin_interfacesMsgTime
{
    return validRuntimeValue(legacy.Ros2Builtin_interfacesMsgTimeCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Builtin_interfacesMsgTimeCodec: CanonicalCodec<
    Ros2Builtin_interfacesMsgTime,
    Ros2Builtin_interfacesMsgTimeConstants
> = bindCodec<
    Ros2Builtin_interfacesMsgTime,
    Ros2Builtin_interfacesMsgTimeConstants
>(
    legacy.Ros2Builtin_interfacesMsgTimeCodec,
    isRos2Builtin_interfacesMsgTime,
    "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
    8,
    8
);

/** @brief Complete original std_msgs/msg/Header; canonical codec identity is retained. */
export interface Ros2Std_msgsMsgHeader
{
    /** @brief Original builtin_interfaces/msg/Time, with its declared units and signedness. */
    stamp: Ros2Builtin_interfacesMsgTime;
    /** @brief Original string, with its declared units and signedness. Strict UTF-8/no-NUL, maximum 64 bytes. */
    frame_id: string;
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Std_msgsMsgHeaderConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Std_msgsMsgHeader(value: unknown): value is Ros2Std_msgsMsgHeader
{
    return validRuntimeValue(legacy.Ros2Std_msgsMsgHeaderCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Std_msgsMsgHeaderCodec: CanonicalCodec<
    Ros2Std_msgsMsgHeader,
    Ros2Std_msgsMsgHeaderConstants
> = bindCodec<
    Ros2Std_msgsMsgHeader,
    Ros2Std_msgsMsgHeaderConstants
>(
    legacy.Ros2Std_msgsMsgHeaderCodec,
    isRos2Std_msgsMsgHeader,
    "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396",
    76,
    12
);

/** @brief Complete original sensor_msgs/msg/JointState; canonical codec identity is retained. */
export interface Ros2Sensor_msgsMsgJointState
{
    /** @brief Original std_msgs/msg/Header, with its declared units and signedness. */
    header: Ros2Std_msgsMsgHeader;
    /** @brief Original string, with its declared units and signedness. Strict UTF-8/no-NUL, maximum 64 bytes. Active count at most 64. */
    name: string[];
    /** @brief Original float64, with its declared units and signedness. Active count at most 64. */
    position: Float64[];
    /** @brief Original float64, with its declared units and signedness. Active count at most 64. */
    velocity: Float64[];
    /** @brief Original float64, with its declared units and signedness. Active count at most 64. */
    effort: Float64[];
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Sensor_msgsMsgJointStateConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Sensor_msgsMsgJointState(value: unknown): value is Ros2Sensor_msgsMsgJointState
{
    return validRuntimeValue(legacy.Ros2Sensor_msgsMsgJointStateCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Sensor_msgsMsgJointStateCodec: CanonicalCodec<
    Ros2Sensor_msgsMsgJointState,
    Ros2Sensor_msgsMsgJointStateConstants
> = bindCodec<
    Ros2Sensor_msgsMsgJointState,
    Ros2Sensor_msgsMsgJointStateConstants
>(
    legacy.Ros2Sensor_msgsMsgJointStateCodec,
    isRos2Sensor_msgsMsgJointState,
    "UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac",
    5980,
    28
);

/** @brief Complete original uwvm_isaac_sim_bridge/msg/ClockEvent; canonical codec identity is retained. */
export interface Ros2Uwvm_isaac_sim_bridgeMsgClockEvent
{
    /** @brief Original uint8, with its declared units and signedness. */
    kind: UInt8;
    /** @brief Original uint8, with its declared units and signedness. */
    phase: UInt8;
    /** @brief Original uint32, with its declared units and signedness. */
    frame: UInt32;
    /** @brief Original int32, with its declared units and signedness. */
    sec: Int32;
    /** @brief Original uint32, with its declared units and signedness. */
    nanosec: UInt32;
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Uwvm_isaac_sim_bridgeMsgClockEventConstants
{
    /** @brief Original value 1. */
    readonly AUTOMATIC: number;
    /** @brief Original value 2. */
    readonly MANUAL: number;
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Uwvm_isaac_sim_bridgeMsgClockEvent(value: unknown): value is Ros2Uwvm_isaac_sim_bridgeMsgClockEvent
{
    return validRuntimeValue(legacy.Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec: CanonicalCodec<
    Ros2Uwvm_isaac_sim_bridgeMsgClockEvent,
    Ros2Uwvm_isaac_sim_bridgeMsgClockEventConstants
> = bindCodec<
    Ros2Uwvm_isaac_sim_bridgeMsgClockEvent,
    Ros2Uwvm_isaac_sim_bridgeMsgClockEventConstants
>(
    legacy.Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec,
    isRos2Uwvm_isaac_sim_bridgeMsgClockEvent,
    "UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6",
    14,
    14
);

/** @brief Complete original uwvm_isaac_sim_bridge/srv/ClockControl_Request; canonical codec identity is retained. */
export interface Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request
{
    /** @brief Original uint8, with its declared units and signedness. */
    operation: UInt8;
    /** @brief Original uint64, with its declared units and signedness. */
    session_nonce: UInt64;
    /** @brief Original uint32, with its declared units and signedness. */
    request_sequence: UInt32;
    /** @brief Original uint8, with its declared units and signedness. */
    phase: UInt8;
    /** @brief Original uint32, with its declared units and signedness. */
    frame: UInt32;
    /** @brief Original bool, with its declared units and signedness. */
    impulse: boolean;
    /** @brief Original bool, with its declared units and signedness. */
    extra_update: boolean;
    /** @brief Original uint16, with its declared units and signedness. */
    pacing_milliseconds: UInt16;
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestConstants
{
    /** @brief Original value 1. */
    readonly START: number;
    /** @brief Original value 2. */
    readonly STEP: number;
    /** @brief Original value 3. */
    readonly FINISH: number;
    /** @brief Original value 4. */
    readonly CANCEL: number;
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request(value: unknown): value is Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request
{
    return validRuntimeValue(legacy.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec: CanonicalCodec<
    Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request,
    Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestConstants
> = bindCodec<
    Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request,
    Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestConstants
>(
    legacy.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec,
    isRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request,
    "UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19",
    22,
    22
);

/** @brief Complete original uwvm_isaac_sim_bridge/srv/ClockControl_Response; canonical codec identity is retained. */
export interface Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response
{
    /** @brief Original uint32, with its declared units and signedness. */
    status: UInt32;
    /** @brief Original uint64, with its declared units and signedness. */
    session_nonce: UInt64;
    /** @brief Original uint32, with its declared units and signedness. */
    request_sequence: UInt32;
    /** @brief Original uint8, with its declared units and signedness. */
    state: UInt8;
    /** @brief Original uint64, with its declared units and signedness. */
    actual_app_updates: UInt64;
    /** @brief Original uint32, with its declared units and signedness. */
    completed_steps: UInt32;
    /** @brief Original bool, with its declared units and signedness. */
    has_event: boolean;
    /** @brief Original uwvm_isaac_sim_bridge/msg/ClockEvent, with its declared units and signedness. */
    event: Ros2Uwvm_isaac_sim_bridgeMsgClockEvent;
    /** @brief Original uint32, with its declared units and signedness. */
    cleanup_status: UInt32;
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response(value: unknown): value is Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response
{
    return validRuntimeValue(legacy.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec: CanonicalCodec<
    Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response,
    Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseConstants
> = bindCodec<
    Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response,
    Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseConstants
>(
    legacy.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec,
    isRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response,
    "UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502",
    48,
    48
);

/** @brief Typed original interface/component map, including every service request and response. */
export const interfaces = Object.freeze({
    "builtin_interfaces/msg/Time": Object.freeze({kind: "message", message: Ros2Builtin_interfacesMsgTimeCodec}),
    "std_msgs/msg/Header": Object.freeze({kind: "message", message: Ros2Std_msgsMsgHeaderCodec}),
    "sensor_msgs/msg/JointState": Object.freeze({kind: "message", message: Ros2Sensor_msgsMsgJointStateCodec}),
    "uwvm_isaac_sim_bridge/msg/ClockEvent": Object.freeze({kind: "message", message: Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec}),
    "uwvm_isaac_sim_bridge/srv/ClockControl": Object.freeze({kind: "service", request: Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec, response: Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec}),
});
