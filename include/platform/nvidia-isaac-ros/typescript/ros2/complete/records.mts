/**
 * @file records.mts
 * @brief Complete original nvidia-isaac-ros typed values and JS-backed canonical operations.
 * @details All fields, exact tuple counts, BigInt values, defaults and runtime bounds are retained.
 * Genuine Microsoft TypeScript semantic checks and the shared QuickJS guest remain required.
 */
import * as legacy from "nvidia-isaac-ros/js/ros2/complete/records";
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

/** @brief Complete original geometry_msgs/msg/Point; canonical codec identity is retained. */
export interface Ros2Geometry_msgsMsgPoint
{
    /** @brief Original float64, with its declared units and signedness. */
    x: Float64;
    /** @brief Original float64, with its declared units and signedness. */
    y: Float64;
    /** @brief Original float64, with its declared units and signedness. */
    z: Float64;
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Geometry_msgsMsgPointConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Geometry_msgsMsgPoint(value: unknown): value is Ros2Geometry_msgsMsgPoint
{
    return validRuntimeValue(legacy.Ros2Geometry_msgsMsgPointCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Geometry_msgsMsgPointCodec: CanonicalCodec<
    Ros2Geometry_msgsMsgPoint,
    Ros2Geometry_msgsMsgPointConstants
> = bindCodec<
    Ros2Geometry_msgsMsgPoint,
    Ros2Geometry_msgsMsgPointConstants
>(
    legacy.Ros2Geometry_msgsMsgPointCodec,
    isRos2Geometry_msgsMsgPoint,
    "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616",
    24,
    24
);

/** @brief Complete original geometry_msgs/msg/Quaternion; canonical codec identity is retained. */
export interface Ros2Geometry_msgsMsgQuaternion
{
    /** @brief Original float64, with its declared units and signedness. Original default 0.0. */
    x: Float64;
    /** @brief Original float64, with its declared units and signedness. Original default 0.0. */
    y: Float64;
    /** @brief Original float64, with its declared units and signedness. Original default 0.0. */
    z: Float64;
    /** @brief Original float64, with its declared units and signedness. Original default 1.0. */
    w: Float64;
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Geometry_msgsMsgQuaternionConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Geometry_msgsMsgQuaternion(value: unknown): value is Ros2Geometry_msgsMsgQuaternion
{
    return validRuntimeValue(legacy.Ros2Geometry_msgsMsgQuaternionCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Geometry_msgsMsgQuaternionCodec: CanonicalCodec<
    Ros2Geometry_msgsMsgQuaternion,
    Ros2Geometry_msgsMsgQuaternionConstants
> = bindCodec<
    Ros2Geometry_msgsMsgQuaternion,
    Ros2Geometry_msgsMsgQuaternionConstants
>(
    legacy.Ros2Geometry_msgsMsgQuaternionCodec,
    isRos2Geometry_msgsMsgQuaternion,
    "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
    32,
    32
);

/** @brief Complete original geometry_msgs/msg/Pose; canonical codec identity is retained. */
export interface Ros2Geometry_msgsMsgPose
{
    /** @brief Original geometry_msgs/msg/Point, with its declared units and signedness. */
    position: Ros2Geometry_msgsMsgPoint;
    /** @brief Original geometry_msgs/msg/Quaternion, with its declared units and signedness. */
    orientation: Ros2Geometry_msgsMsgQuaternion;
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Geometry_msgsMsgPoseConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Geometry_msgsMsgPose(value: unknown): value is Ros2Geometry_msgsMsgPose
{
    return validRuntimeValue(legacy.Ros2Geometry_msgsMsgPoseCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Geometry_msgsMsgPoseCodec: CanonicalCodec<
    Ros2Geometry_msgsMsgPose,
    Ros2Geometry_msgsMsgPoseConstants
> = bindCodec<
    Ros2Geometry_msgsMsgPose,
    Ros2Geometry_msgsMsgPoseConstants
>(
    legacy.Ros2Geometry_msgsMsgPoseCodec,
    isRos2Geometry_msgsMsgPose,
    "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777",
    56,
    56
);

/** @brief Complete original geometry_msgs/msg/PoseWithCovariance; canonical codec identity is retained. */
export interface Ros2Geometry_msgsMsgPoseWithCovariance
{
    /** @brief Original geometry_msgs/msg/Pose, with its declared units and signedness. */
    pose: Ros2Geometry_msgsMsgPose;
    /** @brief Original float64, with its declared units and signedness. Fixed count 36. */
    covariance: Tuple36<Float64>;
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Geometry_msgsMsgPoseWithCovarianceConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Geometry_msgsMsgPoseWithCovariance(value: unknown): value is Ros2Geometry_msgsMsgPoseWithCovariance
{
    return validRuntimeValue(legacy.Ros2Geometry_msgsMsgPoseWithCovarianceCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Geometry_msgsMsgPoseWithCovarianceCodec: CanonicalCodec<
    Ros2Geometry_msgsMsgPoseWithCovariance,
    Ros2Geometry_msgsMsgPoseWithCovarianceConstants
> = bindCodec<
    Ros2Geometry_msgsMsgPoseWithCovariance,
    Ros2Geometry_msgsMsgPoseWithCovarianceConstants
>(
    legacy.Ros2Geometry_msgsMsgPoseWithCovarianceCodec,
    isRos2Geometry_msgsMsgPoseWithCovariance,
    "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2",
    344,
    344
);

/** @brief Complete original geometry_msgs/msg/PoseWithCovarianceStamped; canonical codec identity is retained. */
export interface Ros2Geometry_msgsMsgPoseWithCovarianceStamped
{
    /** @brief Original std_msgs/msg/Header, with its declared units and signedness. */
    header: Ros2Std_msgsMsgHeader;
    /** @brief Original geometry_msgs/msg/PoseWithCovariance, with its declared units and signedness. */
    pose: Ros2Geometry_msgsMsgPoseWithCovariance;
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Geometry_msgsMsgPoseWithCovarianceStampedConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Geometry_msgsMsgPoseWithCovarianceStamped(value: unknown): value is Ros2Geometry_msgsMsgPoseWithCovarianceStamped
{
    return validRuntimeValue(legacy.Ros2Geometry_msgsMsgPoseWithCovarianceStampedCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Geometry_msgsMsgPoseWithCovarianceStampedCodec: CanonicalCodec<
    Ros2Geometry_msgsMsgPoseWithCovarianceStamped,
    Ros2Geometry_msgsMsgPoseWithCovarianceStampedConstants
> = bindCodec<
    Ros2Geometry_msgsMsgPoseWithCovarianceStamped,
    Ros2Geometry_msgsMsgPoseWithCovarianceStampedConstants
>(
    legacy.Ros2Geometry_msgsMsgPoseWithCovarianceStampedCodec,
    isRos2Geometry_msgsMsgPoseWithCovarianceStamped,
    "UWVMROS1_ea380172cde0ee5fef319aff50d92a80c314510e3d12efec45e9ae1f74974af3",
    420,
    356
);

/** @brief Complete original isaac_ros_apriltag_interfaces/msg/AprilTagDetection; canonical codec identity is retained. */
export interface Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection
{
    /** @brief Original string, with its declared units and signedness. Strict UTF-8/no-NUL, maximum 64 bytes. */
    family: string;
    /** @brief Original int32, with its declared units and signedness. */
    id: Int32;
    /** @brief Original geometry_msgs/msg/Point, with its declared units and signedness. */
    center: Ros2Geometry_msgsMsgPoint;
    /** @brief Original geometry_msgs/msg/Point, with its declared units and signedness. Fixed count 4. */
    corners: Tuple4<Ros2Geometry_msgsMsgPoint>;
    /** @brief Original geometry_msgs/msg/PoseWithCovarianceStamped, with its declared units and signedness. */
    pose: Ros2Geometry_msgsMsgPoseWithCovarianceStamped;
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(value: unknown): value is Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection
{
    return validRuntimeValue(legacy.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodec: CanonicalCodec<
    Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection,
    Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionConstants
> = bindCodec<
    Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection,
    Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionConstants
>(
    legacy.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodec,
    isRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection,
    "UWVMROS1_5d840f0d9239a948ce5d17bbee6e248db8151ff31070667e506e9c1647ac6fe7",
    612,
    484
);

/** @brief Complete original isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray; canonical codec identity is retained. */
export interface Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
{
    /** @brief Original std_msgs/msg/Header, with its declared units and signedness. */
    header: Ros2Std_msgsMsgHeader;
    /** @brief Original isaac_ros_apriltag_interfaces/msg/AprilTagDetection, with its declared units and signedness. Active count at most 16. */
    detections: Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection[];
}

/** @brief Original named constants; declaring them grants no authority. */
export interface Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayConstants
{
}

/** @brief Validate all original fields and actual wire finiteness without exposing a partial result. */
export function isRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(value: unknown): value is Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
{
    return validRuntimeValue(legacy.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec, value);
}

/** @brief Use the one original JS codec with a complete statically checked field contract. */
export const Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec: CanonicalCodec<
    Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray,
    Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayConstants
> = bindCodec<
    Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray,
    Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayConstants
>(
    legacy.Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec,
    isRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray,
    "UWVMROS1_60359e405aedd2a627e60bc35e849989fe5ed1d426afb2a884036aef93bfe0a5",
    9872,
    16
);

/** @brief Typed original interface/component map, including every service request and response. */
export const interfaces = Object.freeze({
    "builtin_interfaces/msg/Time": Object.freeze({kind: "message", message: Ros2Builtin_interfacesMsgTimeCodec}),
    "std_msgs/msg/Header": Object.freeze({kind: "message", message: Ros2Std_msgsMsgHeaderCodec}),
    "geometry_msgs/msg/Point": Object.freeze({kind: "message", message: Ros2Geometry_msgsMsgPointCodec}),
    "geometry_msgs/msg/Quaternion": Object.freeze({kind: "message", message: Ros2Geometry_msgsMsgQuaternionCodec}),
    "geometry_msgs/msg/Pose": Object.freeze({kind: "message", message: Ros2Geometry_msgsMsgPoseCodec}),
    "geometry_msgs/msg/PoseWithCovariance": Object.freeze({kind: "message", message: Ros2Geometry_msgsMsgPoseWithCovarianceCodec}),
    "geometry_msgs/msg/PoseWithCovarianceStamped": Object.freeze({kind: "message", message: Ros2Geometry_msgsMsgPoseWithCovarianceStampedCodec}),
    "isaac_ros_apriltag_interfaces/msg/AprilTagDetection": Object.freeze({kind: "message", message: Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodec}),
    "isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray": Object.freeze({kind: "message", message: Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodec}),
});
