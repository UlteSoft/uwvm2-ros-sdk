/**
 * @file records.mts
 * @brief Complete original nvidia-groot typed values and JS-backed canonical operations.
 * @details All fields, exact tuple counts, BigInt values, defaults and runtime bounds are retained.
 * Genuine Microsoft TypeScript semantic checks and the shared QuickJS guest remain required.
 */
import * as legacy from "nvidia-groot/js/ros2/complete/records";
import type {CanonicalCodec, UInt8, UInt16, UInt32, UInt64, Int32, Float32, Float64,
    Tuple2, Tuple3, Tuple4, Tuple5, Tuple36} from "nvidia/typescript/codec";
import {bindCodec, validRuntimeValue} from "nvidia/typescript/codec";
export {CodecError} from "nvidia/typescript/codec";

/** @brief Complete original uwvm_groot_bridge/msg/RGBFrame; canonical codec identity is retained. */
export interface Ros2Uwvm_groot_bridgeMsgRGBFrame
{
    /** @brief Original string, with its declared units and signedness. Strict UTF-8/no-NUL, maximum 64 bytes. */
    key: string;
    /** @brief Original uint32, with its declared units and signedness. Fixed count 5. */
    shape: Tuple5<UInt32>;
    /** @brief Original uint8, with its declared units and signedness. Active count at most 768. */
    pixels: UInt8[];
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Uwvm_groot_bridgeMsgRGBFrameConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Uwvm_groot_bridgeMsgRGBFrame(value: unknown): value is Ros2Uwvm_groot_bridgeMsgRGBFrame
{
    return validRuntimeValue(legacy.Ros2Uwvm_groot_bridgeMsgRGBFrameCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Uwvm_groot_bridgeMsgRGBFrameCodec: CanonicalCodec<
    Ros2Uwvm_groot_bridgeMsgRGBFrame,
    Ros2Uwvm_groot_bridgeMsgRGBFrameConstants
> = bindCodec<
    Ros2Uwvm_groot_bridgeMsgRGBFrame,
    Ros2Uwvm_groot_bridgeMsgRGBFrameConstants
>(
    legacy.Ros2Uwvm_groot_bridgeMsgRGBFrameCodec,
    isRos2Uwvm_groot_bridgeMsgRGBFrame,
    "UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364",
    860,
    28
);

/** @brief Complete original uwvm_groot_bridge/msg/FloatTensor; canonical codec identity is retained. */
export interface Ros2Uwvm_groot_bridgeMsgFloatTensor
{
    /** @brief Original string, with its declared units and signedness. Strict UTF-8/no-NUL, maximum 64 bytes. */
    key: string;
    /** @brief Original uint32, with its declared units and signedness. Fixed count 3. */
    shape: Tuple3<UInt32>;
    /** @brief Original float32, with its declared units and signedness. Active count at most 320. */
    values: Float32[];
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Uwvm_groot_bridgeMsgFloatTensorConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Uwvm_groot_bridgeMsgFloatTensor(value: unknown): value is Ros2Uwvm_groot_bridgeMsgFloatTensor
{
    return validRuntimeValue(legacy.Ros2Uwvm_groot_bridgeMsgFloatTensorCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Uwvm_groot_bridgeMsgFloatTensorCodec: CanonicalCodec<
    Ros2Uwvm_groot_bridgeMsgFloatTensor,
    Ros2Uwvm_groot_bridgeMsgFloatTensorConstants
> = bindCodec<
    Ros2Uwvm_groot_bridgeMsgFloatTensor,
    Ros2Uwvm_groot_bridgeMsgFloatTensorConstants
>(
    legacy.Ros2Uwvm_groot_bridgeMsgFloatTensorCodec,
    isRos2Uwvm_groot_bridgeMsgFloatTensor,
    "UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae",
    1364,
    20
);

/** @brief Complete original uwvm_groot_bridge/msg/TextSequence; canonical codec identity is retained. */
export interface Ros2Uwvm_groot_bridgeMsgTextSequence
{
    /** @brief Original string, with its declared units and signedness. Strict UTF-8/no-NUL, maximum 64 bytes. */
    key: string;
    /** @brief Original uint32, with its declared units and signedness. Fixed count 2. */
    shape: Tuple2<UInt32>;
    /** @brief Original string, with its declared units and signedness. Strict UTF-8/no-NUL, maximum 256 bytes. Active count at most 4. */
    texts: string[];
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Uwvm_groot_bridgeMsgTextSequenceConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Uwvm_groot_bridgeMsgTextSequence(value: unknown): value is Ros2Uwvm_groot_bridgeMsgTextSequence
{
    return validRuntimeValue(legacy.Ros2Uwvm_groot_bridgeMsgTextSequenceCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Uwvm_groot_bridgeMsgTextSequenceCodec: CanonicalCodec<
    Ros2Uwvm_groot_bridgeMsgTextSequence,
    Ros2Uwvm_groot_bridgeMsgTextSequenceConstants
> = bindCodec<
    Ros2Uwvm_groot_bridgeMsgTextSequence,
    Ros2Uwvm_groot_bridgeMsgTextSequenceConstants
>(
    legacy.Ros2Uwvm_groot_bridgeMsgTextSequenceCodec,
    isRos2Uwvm_groot_bridgeMsgTextSequence,
    "UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d",
    1120,
    16
);

/** @brief Complete original uwvm_groot_bridge/srv/InferAction_Request; canonical codec identity is retained. */
export interface Ros2Uwvm_groot_bridgeSrvInferAction_Request
{
    /** @brief Original uint64, with its declared units and signedness. */
    application_nonce: UInt64;
    /** @brief Original uwvm_groot_bridge/msg/RGBFrame, with its declared units and signedness. Active count at most 3. */
    video: Ros2Uwvm_groot_bridgeMsgRGBFrame[];
    /** @brief Original uwvm_groot_bridge/msg/FloatTensor, with its declared units and signedness. Active count at most 4. */
    state: Ros2Uwvm_groot_bridgeMsgFloatTensor[];
    /** @brief Original uwvm_groot_bridge/msg/TextSequence, with its declared units and signedness. Active count at most 2. */
    language: Ros2Uwvm_groot_bridgeMsgTextSequence[];
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Uwvm_groot_bridgeSrvInferAction_RequestConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Uwvm_groot_bridgeSrvInferAction_Request(value: unknown): value is Ros2Uwvm_groot_bridgeSrvInferAction_Request
{
    return validRuntimeValue(legacy.Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodec: CanonicalCodec<
    Ros2Uwvm_groot_bridgeSrvInferAction_Request,
    Ros2Uwvm_groot_bridgeSrvInferAction_RequestConstants
> = bindCodec<
    Ros2Uwvm_groot_bridgeSrvInferAction_Request,
    Ros2Uwvm_groot_bridgeSrvInferAction_RequestConstants
>(
    legacy.Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodec,
    isRos2Uwvm_groot_bridgeSrvInferAction_Request,
    "UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6",
    10296,
    20
);

/** @brief Complete original uwvm_groot_bridge/srv/InferAction_Response; canonical codec identity is retained. */
export interface Ros2Uwvm_groot_bridgeSrvInferAction_Response
{
    /** @brief Original uint32, with its declared units and signedness. */
    status: UInt32;
    /** @brief Original uint64, with its declared units and signedness. */
    application_nonce: UInt64;
    /** @brief Original uwvm_groot_bridge/msg/FloatTensor, with its declared units and signedness. Active count at most 8. */
    action: Ros2Uwvm_groot_bridgeMsgFloatTensor[];
    /** @brief Original bool, with its declared units and signedness. */
    info_is_empty: boolean;
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Uwvm_groot_bridgeSrvInferAction_ResponseConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Uwvm_groot_bridgeSrvInferAction_Response(value: unknown): value is Ros2Uwvm_groot_bridgeSrvInferAction_Response
{
    return validRuntimeValue(legacy.Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodec: CanonicalCodec<
    Ros2Uwvm_groot_bridgeSrvInferAction_Response,
    Ros2Uwvm_groot_bridgeSrvInferAction_ResponseConstants
> = bindCodec<
    Ros2Uwvm_groot_bridgeSrvInferAction_Response,
    Ros2Uwvm_groot_bridgeSrvInferAction_ResponseConstants
>(
    legacy.Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodec,
    isRos2Uwvm_groot_bridgeSrvInferAction_Response,
    "UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce",
    10929,
    17
);

/** @brief Complete original uwvm_groot_bridge/msg/RGBDescriptor; canonical codec identity is retained. */
export interface Ros2Uwvm_groot_bridgeMsgRGBDescriptor
{
    /** @brief Original string, with its declared units and signedness. Strict UTF-8/no-NUL, maximum 64 bytes. */
    key: string;
    /** @brief Original uint32, with its declared units and signedness. Fixed count 5. */
    shape: Tuple5<UInt32>;
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Uwvm_groot_bridgeMsgRGBDescriptorConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Uwvm_groot_bridgeMsgRGBDescriptor(value: unknown): value is Ros2Uwvm_groot_bridgeMsgRGBDescriptor
{
    return validRuntimeValue(legacy.Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodec: CanonicalCodec<
    Ros2Uwvm_groot_bridgeMsgRGBDescriptor,
    Ros2Uwvm_groot_bridgeMsgRGBDescriptorConstants
> = bindCodec<
    Ros2Uwvm_groot_bridgeMsgRGBDescriptor,
    Ros2Uwvm_groot_bridgeMsgRGBDescriptorConstants
>(
    legacy.Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodec,
    isRos2Uwvm_groot_bridgeMsgRGBDescriptor,
    "UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40",
    88,
    24
);

/** @brief Complete original uwvm_groot_bridge/srv/BeginObservation_Request; canonical codec identity is retained. */
export interface Ros2Uwvm_groot_bridgeSrvBeginObservation_Request
{
    /** @brief Original uint64, with its declared units and signedness. */
    observation_nonce: UInt64;
    /** @brief Original uwvm_groot_bridge/msg/RGBDescriptor, with its declared units and signedness. Active count at most 3. */
    video: Ros2Uwvm_groot_bridgeMsgRGBDescriptor[];
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Uwvm_groot_bridgeSrvBeginObservation_Request(value: unknown): value is Ros2Uwvm_groot_bridgeSrvBeginObservation_Request
{
    return validRuntimeValue(legacy.Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodec: CanonicalCodec<
    Ros2Uwvm_groot_bridgeSrvBeginObservation_Request,
    Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestConstants
> = bindCodec<
    Ros2Uwvm_groot_bridgeSrvBeginObservation_Request,
    Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestConstants
>(
    legacy.Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodec,
    isRos2Uwvm_groot_bridgeSrvBeginObservation_Request,
    "UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2",
    276,
    12
);

/** @brief Complete original uwvm_groot_bridge/srv/BeginObservation_Response; canonical codec identity is retained. */
export interface Ros2Uwvm_groot_bridgeSrvBeginObservation_Response
{
    /** @brief Original uint32, with its declared units and signedness. */
    status: UInt32;
    /** @brief Original uint64, with its declared units and signedness. */
    observation_nonce: UInt64;
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Uwvm_groot_bridgeSrvBeginObservation_Response(value: unknown): value is Ros2Uwvm_groot_bridgeSrvBeginObservation_Response
{
    return validRuntimeValue(legacy.Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodec: CanonicalCodec<
    Ros2Uwvm_groot_bridgeSrvBeginObservation_Response,
    Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseConstants
> = bindCodec<
    Ros2Uwvm_groot_bridgeSrvBeginObservation_Response,
    Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseConstants
>(
    legacy.Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodec,
    isRos2Uwvm_groot_bridgeSrvBeginObservation_Response,
    "UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049",
    12,
    12
);

/** @brief Complete original uwvm_groot_bridge/srv/WriteRGBChunk_Request; canonical codec identity is retained. */
export interface Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request
{
    /** @brief Original uint64, with its declared units and signedness. */
    observation_nonce: UInt64;
    /** @brief Original string, with its declared units and signedness. Strict UTF-8/no-NUL, maximum 64 bytes. */
    key: string;
    /** @brief Original uint32, with its declared units and signedness. */
    offset: UInt32;
    /** @brief Original uint8, with its declared units and signedness. Active count at most 768. */
    pixels: UInt8[];
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(value: unknown): value is Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request
{
    return validRuntimeValue(legacy.Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodec: CanonicalCodec<
    Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request,
    Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestConstants
> = bindCodec<
    Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request,
    Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestConstants
>(
    legacy.Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodec,
    isRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request,
    "UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c",
    852,
    20
);

/** @brief Complete original uwvm_groot_bridge/srv/WriteRGBChunk_Response; canonical codec identity is retained. */
export interface Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response
{
    /** @brief Original uint32, with its declared units and signedness. */
    status: UInt32;
    /** @brief Original uint64, with its declared units and signedness. */
    observation_nonce: UInt64;
    /** @brief Original uint32, with its declared units and signedness. */
    accepted_bytes: UInt32;
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(value: unknown): value is Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response
{
    return validRuntimeValue(legacy.Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodec: CanonicalCodec<
    Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response,
    Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseConstants
> = bindCodec<
    Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response,
    Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseConstants
>(
    legacy.Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodec,
    isRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response,
    "UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba",
    16,
    16
);

/** @brief Complete original uwvm_groot_bridge/srv/ReleaseObservation_Request; canonical codec identity is retained. */
export interface Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request
{
    /** @brief Original uint64, with its declared units and signedness. */
    observation_nonce: UInt64;
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Uwvm_groot_bridgeSrvReleaseObservation_Request(value: unknown): value is Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request
{
    return validRuntimeValue(legacy.Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodec: CanonicalCodec<
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request,
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestConstants
> = bindCodec<
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request,
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestConstants
>(
    legacy.Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodec,
    isRos2Uwvm_groot_bridgeSrvReleaseObservation_Request,
    "UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5",
    8,
    8
);

/** @brief Complete original uwvm_groot_bridge/srv/ReleaseObservation_Response; canonical codec identity is retained. */
export interface Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response
{
    /** @brief Original uint32, with its declared units and signedness. */
    status: UInt32;
    /** @brief Original uint64, with its declared units and signedness. */
    observation_nonce: UInt64;
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Uwvm_groot_bridgeSrvReleaseObservation_Response(value: unknown): value is Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response
{
    return validRuntimeValue(legacy.Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodec: CanonicalCodec<
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response,
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseConstants
> = bindCodec<
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response,
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseConstants
>(
    legacy.Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodec,
    isRos2Uwvm_groot_bridgeSrvReleaseObservation_Response,
    "UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69",
    12,
    12
);

/** @brief Complete original uwvm_groot_bridge/srv/InferUploadedAction_Request; canonical codec identity is retained. */
export interface Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request
{
    /** @brief Original uint64, with its declared units and signedness. */
    application_nonce: UInt64;
    /** @brief Original uint64, with its declared units and signedness. */
    observation_nonce: UInt64;
    /** @brief Original uwvm_groot_bridge/msg/FloatTensor, with its declared units and signedness. Active count at most 4. */
    state: Ros2Uwvm_groot_bridgeMsgFloatTensor[];
    /** @brief Original uwvm_groot_bridge/msg/TextSequence, with its declared units and signedness. Active count at most 2. */
    language: Ros2Uwvm_groot_bridgeMsgTextSequence[];
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request(value: unknown): value is Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request
{
    return validRuntimeValue(legacy.Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodec: CanonicalCodec<
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request,
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestConstants
> = bindCodec<
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request,
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestConstants
>(
    legacy.Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodec,
    isRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request,
    "UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d",
    7720,
    24
);

/** @brief Complete original uwvm_groot_bridge/srv/InferUploadedAction_Response; canonical codec identity is retained. */
export interface Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response
{
    /** @brief Original uint32, with its declared units and signedness. */
    status: UInt32;
    /** @brief Original uint64, with its declared units and signedness. */
    application_nonce: UInt64;
    /** @brief Original uwvm_groot_bridge/msg/FloatTensor, with its declared units and signedness. Active count at most 8. */
    action: Ros2Uwvm_groot_bridgeMsgFloatTensor[];
    /** @brief Original bool, with its declared units and signedness. */
    info_is_empty: boolean;
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response(value: unknown): value is Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response
{
    return validRuntimeValue(legacy.Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodec: CanonicalCodec<
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response,
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseConstants
> = bindCodec<
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response,
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseConstants
>(
    legacy.Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodec,
    isRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response,
    "UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e",
    10929,
    17
);

/** @brief Typed original interface/component map, including every service request and response. */
export const interfaces = Object.freeze({
    "uwvm_groot_bridge/msg/RGBFrame": Object.freeze({kind: "message", message: Ros2Uwvm_groot_bridgeMsgRGBFrameCodec}),
    "uwvm_groot_bridge/msg/FloatTensor": Object.freeze({kind: "message", message: Ros2Uwvm_groot_bridgeMsgFloatTensorCodec}),
    "uwvm_groot_bridge/msg/TextSequence": Object.freeze({kind: "message", message: Ros2Uwvm_groot_bridgeMsgTextSequenceCodec}),
    "uwvm_groot_bridge/srv/InferAction": Object.freeze({kind: "service", request: Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodec, response: Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodec}),
    "uwvm_groot_bridge/msg/RGBDescriptor": Object.freeze({kind: "message", message: Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodec}),
    "uwvm_groot_bridge/srv/BeginObservation": Object.freeze({kind: "service", request: Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodec, response: Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodec}),
    "uwvm_groot_bridge/srv/WriteRGBChunk": Object.freeze({kind: "service", request: Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodec, response: Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodec}),
    "uwvm_groot_bridge/srv/ReleaseObservation": Object.freeze({kind: "service", request: Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodec, response: Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodec}),
    "uwvm_groot_bridge/srv/InferUploadedAction": Object.freeze({kind: "service", request: Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodec, response: Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodec}),
});
