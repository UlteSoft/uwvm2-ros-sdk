/**
 * @file bounded_records.mts
 * @brief Complete original typed values for kuka-ros2-complete.
 * @details The public JS codec remains the sole implementation. This module
 * supplies all original field types and checked signatures to the genuine
 * shared TypeScript compiler. No native identity or permission is inferred.
 */
import * as original from "kuka/js/ros2/kuka-ros2-complete/bounded_records.mjs";

/**
 * @brief An owned complete original value codec; bounds are wire-byte capacities.
 * @details Integer width/range, exact fixed lengths, finite/declared float policy,
 * UTF-8, normalized time and admitted source semantics are checked at runtime.
 * TypeScript number is used through 32 bits; native 64-bit integers stay bigint.
 * Returned arrays and byte buffers belong to the caller. No codec acquires ROS.
 */
export interface CanonicalCodec<T>
{
    readonly codecIdentity: string;
    readonly maxWireBytes: number;
    readonly minWireBytes: number;
    readonly cartesianMaxWireBytes: bigint;
    readonly aggregateWireBytes: number;
    readonly constants: Readonly<Record<string, boolean|number|bigint|string>>;
    /** @brief Allocate a complete value with the original declared defaults. */
    defaultValue(): T;
    /** @brief Validate all fields; throws a codec error before exposing output. */
    validateValue(value: T): true;
    /** @brief Capture and encode all original fields into one owned buffer. */
    encode(value: T): Uint8Array;
    /** @brief Decode a copied complete record or throw for malformed input. */
    decode(bytes: Uint8Array): T;
    /** @brief Report complete byte validity without exposing a partial value. */
    valid(bytes: Uint8Array): boolean;
}

/** @brief Codec errors retain the shared implementation's numeric code. */
export const ControlCodecError = original.ControlCodecError;

/**
 * @brief Complete original builtin_interfaces/msg/Duration value.
 * @details Codec identity UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Builtin_interfacesMsgDuration
{
    /** @brief Original int32. */
    "sec": number;
    /** @brief Original uint32. */
    "nanosec": number;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Builtin_interfacesMsgDurationCodec: CanonicalCodec<Ros2Builtin_interfacesMsgDuration>&
    {readonly constants : Readonly<{}>} = original.Ros2Builtin_interfacesMsgDurationCodec;

/**
 * @brief Complete original builtin_interfaces/msg/Time value.
 * @details Codec identity UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Builtin_interfacesMsgTime
{
    /** @brief Original int32. */
    "sec": number;
    /** @brief Original uint32. */
    "nanosec": number;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Builtin_interfacesMsgTimeCodec: CanonicalCodec<Ros2Builtin_interfacesMsgTime>&
    {readonly constants : Readonly<{}>} = original.Ros2Builtin_interfacesMsgTimeCodec;

/**
 * @brief Complete original std_msgs/msg/Header value.
 * @details Codec identity UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Std_msgsMsgHeader
{
    /** @brief Original builtin_interfaces/msg/Time. */
    "stamp": Ros2Builtin_interfacesMsgTime;
    /** @brief Original string; utf8; at most 64 bytes. */
    "frame_id": string;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Std_msgsMsgHeaderCodec: CanonicalCodec<Ros2Std_msgsMsgHeader>&{readonly constants : Readonly<{}>} =
    original.Ros2Std_msgsMsgHeaderCodec;

/**
 * @brief Complete original trajectory_msgs/msg/JointTrajectoryPoint value.
 * @details Codec identity UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Trajectory_msgsMsgJointTrajectoryPoint
{
    /** @brief Original float64 sequence; at most 12 elements; finite policy. */
    "positions": Array<number>;
    /** @brief Original float64 sequence; at most 12 elements; finite policy. */
    "velocities": Array<number>;
    /** @brief Original float64 sequence; at most 12 elements; finite policy. */
    "accelerations": Array<number>;
    /** @brief Original float64 sequence; at most 12 elements; finite policy. */
    "effort": Array<number>;
    /** @brief Original builtin_interfaces/msg/Duration. */
    "time_from_start": Ros2Builtin_interfacesMsgDuration;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Trajectory_msgsMsgJointTrajectoryPointCodec:
    CanonicalCodec<Ros2Trajectory_msgsMsgJointTrajectoryPoint>&{readonly constants : Readonly<{}>} =
        original.Ros2Trajectory_msgsMsgJointTrajectoryPointCodec;

/**
 * @brief Complete original trajectory_msgs/msg/JointTrajectory value.
 * @details Codec identity UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Trajectory_msgsMsgJointTrajectory
{
    /** @brief Original std_msgs/msg/Header. */
    "header": Ros2Std_msgsMsgHeader;
    /** @brief Original string sequence; at most 12 elements; utf8; at most 64 bytes. */
    "joint_names": Array<string>;
    /** @brief Original trajectory_msgs/msg/JointTrajectoryPoint sequence; at most 8 elements. */
    "points": Array<Ros2Trajectory_msgsMsgJointTrajectoryPoint>;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Trajectory_msgsMsgJointTrajectoryCodec: CanonicalCodec<Ros2Trajectory_msgsMsgJointTrajectory>&
    {readonly constants : Readonly<{}>} = original.Ros2Trajectory_msgsMsgJointTrajectoryCodec;

/**
 * @brief Complete original geometry_msgs/msg/Vector3 value.
 * @details Codec identity UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Geometry_msgsMsgVector3
{
    /** @brief Original float64; finite policy. */
    "x": number;
    /** @brief Original float64; finite policy. */
    "y": number;
    /** @brief Original float64; finite policy. */
    "z": number;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Geometry_msgsMsgVector3Codec: CanonicalCodec<Ros2Geometry_msgsMsgVector3>&
    {readonly constants : Readonly<{}>} = original.Ros2Geometry_msgsMsgVector3Codec;

/**
 * @brief Complete original geometry_msgs/msg/Quaternion value.
 * @details Codec identity UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Geometry_msgsMsgQuaternion
{
    /** @brief Original float64; finite policy; original default 0.0. */
    "x": number;
    /** @brief Original float64; finite policy; original default 0.0. */
    "y": number;
    /** @brief Original float64; finite policy; original default 0.0. */
    "z": number;
    /** @brief Original float64; finite policy; original default 1.0. */
    "w": number;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Geometry_msgsMsgQuaternionCodec: CanonicalCodec<Ros2Geometry_msgsMsgQuaternion>&
    {readonly constants : Readonly<{}>} = original.Ros2Geometry_msgsMsgQuaternionCodec;

/**
 * @brief Complete original geometry_msgs/msg/Transform value.
 * @details Codec identity UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Geometry_msgsMsgTransform
{
    /** @brief Original geometry_msgs/msg/Vector3. */
    "translation": Ros2Geometry_msgsMsgVector3;
    /** @brief Original geometry_msgs/msg/Quaternion. */
    "rotation": Ros2Geometry_msgsMsgQuaternion;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Geometry_msgsMsgTransformCodec: CanonicalCodec<Ros2Geometry_msgsMsgTransform>&
    {readonly constants : Readonly<{}>} = original.Ros2Geometry_msgsMsgTransformCodec;

/**
 * @brief Complete original geometry_msgs/msg/Twist value.
 * @details Codec identity UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Geometry_msgsMsgTwist
{
    /** @brief Original geometry_msgs/msg/Vector3. */
    "linear": Ros2Geometry_msgsMsgVector3;
    /** @brief Original geometry_msgs/msg/Vector3. */
    "angular": Ros2Geometry_msgsMsgVector3;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Geometry_msgsMsgTwistCodec: CanonicalCodec<Ros2Geometry_msgsMsgTwist>&
    {readonly constants : Readonly<{}>} = original.Ros2Geometry_msgsMsgTwistCodec;

/**
 * @brief Complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.
 * @details Codec identity UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
{
    /** @brief Original geometry_msgs/msg/Transform sequence; at most 2 elements. */
    "transforms": Array<Ros2Geometry_msgsMsgTransform>;
    /** @brief Original geometry_msgs/msg/Twist sequence; at most 2 elements. */
    "velocities": Array<Ros2Geometry_msgsMsgTwist>;
    /** @brief Original geometry_msgs/msg/Twist sequence; at most 2 elements. */
    "accelerations": Array<Ros2Geometry_msgsMsgTwist>;
    /** @brief Original builtin_interfaces/msg/Duration. */
    "time_from_start": Ros2Builtin_interfacesMsgDuration;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec:
    CanonicalCodec<Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint>&{readonly constants : Readonly<{}>} =
        original.Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec;

/**
 * @brief Complete original trajectory_msgs/msg/MultiDOFJointTrajectory value.
 * @details Codec identity UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
{
    /** @brief Original std_msgs/msg/Header. */
    "header": Ros2Std_msgsMsgHeader;
    /** @brief Original string sequence; at most 2 elements; utf8; at most 64 bytes. */
    "joint_names": Array<string>;
    /** @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint sequence; at most 4 elements. */
    "points": Array<Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint>;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec:
    CanonicalCodec<Ros2Trajectory_msgsMsgMultiDOFJointTrajectory>&{readonly constants : Readonly<{}>} =
        original.Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec;

/**
 * @brief Complete original control_msgs/msg/JointTolerance value.
 * @details Codec identity UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Control_msgsMsgJointTolerance
{
    /** @brief Original string; utf8; at most 64 bytes. */
    "name": string;
    /** @brief Original float64; finite policy. */
    "position": number;
    /** @brief Original float64; finite policy. */
    "velocity": number;
    /** @brief Original float64; finite policy. */
    "acceleration": number;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Control_msgsMsgJointToleranceCodec: CanonicalCodec<Ros2Control_msgsMsgJointTolerance>&
    {readonly constants : Readonly<{}>} = original.Ros2Control_msgsMsgJointToleranceCodec;

/**
 * @brief Complete original control_msgs/msg/JointComponentTolerance value.
 * @details Codec identity UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Control_msgsMsgJointComponentTolerance
{
    /** @brief Original string; utf8; at most 512 bytes. */
    "joint_name": string;
    /** @brief Original uint16. */
    "component": number;
    /** @brief Original float64; finite policy. */
    "position": number;
    /** @brief Original float64; finite policy. */
    "velocity": number;
    /** @brief Original float64; finite policy. */
    "acceleration": number;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Control_msgsMsgJointComponentToleranceCodec: CanonicalCodec<
    Ros2Control_msgsMsgJointComponentTolerance>&{
    readonly constants : Readonly<
                 {"X_AXIS" : number; "Y_AXIS" : number; "Z_AXIS" : number; "TRANSLATION" : number; "ROTATION" : number}>
} = original.Ros2Control_msgsMsgJointComponentToleranceCodec;

/**
 * @brief Complete original control_msgs/action/FollowJointTrajectory_Goal value.
 * @details Codec identity UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Control_msgsActionFollowJointTrajectory_Goal
{
    /** @brief Original trajectory_msgs/msg/JointTrajectory. */
    "trajectory": Ros2Trajectory_msgsMsgJointTrajectory;
    /** @brief Original trajectory_msgs/msg/MultiDOFJointTrajectory. */
    "multi_dof_trajectory": Ros2Trajectory_msgsMsgMultiDOFJointTrajectory;
    /** @brief Original control_msgs/msg/JointTolerance sequence; at most 12 elements. */
    "path_tolerance": Array<Ros2Control_msgsMsgJointTolerance>;
    /** @brief Original control_msgs/msg/JointComponentTolerance sequence; at most 12 elements. */
    "component_path_tolerance": Array<Ros2Control_msgsMsgJointComponentTolerance>;
    /** @brief Original control_msgs/msg/JointTolerance sequence; at most 12 elements. */
    "goal_tolerance": Array<Ros2Control_msgsMsgJointTolerance>;
    /** @brief Original control_msgs/msg/JointComponentTolerance sequence; at most 12 elements. */
    "component_goal_tolerance": Array<Ros2Control_msgsMsgJointComponentTolerance>;
    /** @brief Original builtin_interfaces/msg/Duration. */
    "goal_time_tolerance": Ros2Builtin_interfacesMsgDuration;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Control_msgsActionFollowJointTrajectory_GoalCodec:
    CanonicalCodec<Ros2Control_msgsActionFollowJointTrajectory_Goal>&{readonly constants : Readonly<{}>} =
        original.Ros2Control_msgsActionFollowJointTrajectory_GoalCodec;

/**
 * @brief Complete original control_msgs/action/FollowJointTrajectory_Result value.
 * @details Codec identity UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Control_msgsActionFollowJointTrajectory_Result
{
    /** @brief Original int32. */
    "error_code": number;
    /** @brief Original string; utf8; at most 4096 bytes. */
    "error_string": string;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Control_msgsActionFollowJointTrajectory_ResultCodec:
    CanonicalCodec<Ros2Control_msgsActionFollowJointTrajectory_Result>&{
        readonly constants : Readonly<{
                     "SUCCESSFUL" : number; "INVALID_GOAL" : number; "INVALID_JOINTS" : number;
                     "OLD_HEADER_TIMESTAMP" : number;
                     "PATH_TOLERANCE_VIOLATED" : number;
                     "GOAL_TOLERANCE_VIOLATED" : number
                 }>
    } = original.Ros2Control_msgsActionFollowJointTrajectory_ResultCodec;

/**
 * @brief Complete original control_msgs/action/FollowJointTrajectory_Feedback value.
 * @details Codec identity UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Control_msgsActionFollowJointTrajectory_Feedback
{
    /** @brief Original std_msgs/msg/Header. */
    "header": Ros2Std_msgsMsgHeader;
    /** @brief Original string sequence; at most 12 elements; utf8; at most 64 bytes. */
    "joint_names": Array<string>;
    /** @brief Original trajectory_msgs/msg/JointTrajectoryPoint. */
    "desired": Ros2Trajectory_msgsMsgJointTrajectoryPoint;
    /** @brief Original trajectory_msgs/msg/JointTrajectoryPoint. */
    "actual": Ros2Trajectory_msgsMsgJointTrajectoryPoint;
    /** @brief Original trajectory_msgs/msg/JointTrajectoryPoint. */
    "error": Ros2Trajectory_msgsMsgJointTrajectoryPoint;
    /** @brief Original string sequence; at most 2 elements; utf8; at most 512 bytes. */
    "multi_dof_joint_names": Array<string>;
    /** @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. */
    "multi_dof_desired": Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint;
    /** @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. */
    "multi_dof_actual": Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint;
    /** @brief Original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint. */
    "multi_dof_error": Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec:
    CanonicalCodec<Ros2Control_msgsActionFollowJointTrajectory_Feedback>&{readonly constants : Readonly<{}>} =
        original.Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec;

/**
 * @brief Complete original kuka_driver_interfaces/msg/FRIState value.
 * @details Codec identity UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Kuka_driver_interfacesMsgFRIState
{
    /** @brief Original int32. */
    "session_state": number;
    /** @brief Original int32. */
    "connection_quality": number;
    /** @brief Original int32. */
    "safety_state": number;
    /** @brief Original int32. */
    "command_mode": number;
    /** @brief Original int32. */
    "control_mode": number;
    /** @brief Original int32. */
    "operation_mode": number;
    /** @brief Original int32. */
    "drive_state": number;
    /** @brief Original int32. */
    "overlay_type": number;
    /** @brief Original float64; finite policy. */
    "tracking_performance": number;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Kuka_driver_interfacesMsgFRIStateCodec: CanonicalCodec<Ros2Kuka_driver_interfacesMsgFRIState>&
    {readonly constants : Readonly<{}>} = original.Ros2Kuka_driver_interfacesMsgFRIStateCodec;

/**
 * @brief Complete original kuka_driver_interfaces/msg/FRIStateArray value.
 * @details Codec identity UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Kuka_driver_interfacesMsgFRIStateArray
{
    /** @brief Original string sequence; at most 16 elements; utf8; at most 64 bytes. */
    "robot_names": Array<string>;
    /** @brief Original kuka_driver_interfaces/msg/FRIState sequence; at most 16 elements. */
    "states": Array<Ros2Kuka_driver_interfacesMsgFRIState>;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Kuka_driver_interfacesMsgFRIStateArrayCodec:
    CanonicalCodec<Ros2Kuka_driver_interfacesMsgFRIStateArray>&{readonly constants : Readonly<{}>} =
        original.Ros2Kuka_driver_interfacesMsgFRIStateArrayCodec;

/**
 * @brief Complete original kuka_driver_interfaces/msg/FriConfiguration value.
 * @details Codec identity UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Kuka_driver_interfacesMsgFriConfiguration
{
    /** @brief Original int32. */
    "receive_multiplier": number;
    /** @brief Original int32. */
    "send_period_ms": number;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Kuka_driver_interfacesMsgFriConfigurationCodec:
    CanonicalCodec<Ros2Kuka_driver_interfacesMsgFriConfiguration>&{readonly constants : Readonly<{}>} =
        original.Ros2Kuka_driver_interfacesMsgFriConfigurationCodec;

/**
 * @brief Complete original kuka_driver_interfaces/msg/HardwareEvent value.
 * @details Codec identity UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Kuka_driver_interfacesMsgHardwareEvent
{
    /** @brief Original string; utf8; at most 512 bytes. */
    "robot_name": string;
    /** @brief Original uint8. */
    "event": number;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Kuka_driver_interfacesMsgHardwareEventCodec:
    CanonicalCodec<Ros2Kuka_driver_interfacesMsgHardwareEvent>&{readonly constants : Readonly<{}>} =
        original.Ros2Kuka_driver_interfacesMsgHardwareEventCodec;

/**
 * @brief Complete original kuka_driver_interfaces/msg/KssStatus value.
 * @details Codec identity UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Kuka_driver_interfacesMsgKssStatus
{
    /** @brief Original uint8. */
    "control_mode": number;
    /** @brief Original uint8. */
    "cycle_time": number;
    /** @brief Original bool. */
    "drives_powered": boolean;
    /** @brief Original bool. */
    "emergency_stop": boolean;
    /** @brief Original bool. */
    "guard_stop": boolean;
    /** @brief Original bool. */
    "in_motion": boolean;
    /** @brief Original bool. */
    "motion_possible": boolean;
    /** @brief Original uint8. */
    "operation_mode": number;
    /** @brief Original bool. */
    "robot_stopped": boolean;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Kuka_driver_interfacesMsgKssStatusCodec: CanonicalCodec<Ros2Kuka_driver_interfacesMsgKssStatus>&{
    readonly constants : Readonly<{
                 "UNSPECIFIED" : number; "JOINT_POSITION_CONTROL" : number; "CARTESIAN_POSITION_CONTROL" : number;
                 "RSI_4MS" : number;
                 "RSI_12MS" : number;
                 "T1" : number;
                 "T2" : number;
                 "AUT" : number;
                 "EXT" : number
             }>
} = original.Ros2Kuka_driver_interfacesMsgKssStatusCodec;

/**
 * @brief Complete original kuka_driver_interfaces/msg/KssStatusArray value.
 * @details Codec identity UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Kuka_driver_interfacesMsgKssStatusArray
{
    /** @brief Original string sequence; at most 16 elements; utf8; at most 64 bytes. */
    "robot_names": Array<string>;
    /** @brief Original kuka_driver_interfaces/msg/KssStatus sequence; at most 16 elements. */
    "statuses": Array<Ros2Kuka_driver_interfacesMsgKssStatus>;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Kuka_driver_interfacesMsgKssStatusArrayCodec:
    CanonicalCodec<Ros2Kuka_driver_interfacesMsgKssStatusArray>&{readonly constants : Readonly<{}>} =
        original.Ros2Kuka_driver_interfacesMsgKssStatusArrayCodec;

/**
 * @brief Complete original lifecycle_msgs/msg/State value.
 * @details Codec identity UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Lifecycle_msgsMsgState
{
    /** @brief Original uint8. */
    "id": number;
    /** @brief Original string; utf8; at most 512 bytes. */
    "label": string;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Lifecycle_msgsMsgStateCodec: CanonicalCodec<Ros2Lifecycle_msgsMsgState>&{
    readonly constants : Readonly<{
                 "PRIMARY_STATE_UNKNOWN" : number; "PRIMARY_STATE_UNCONFIGURED" : number;
                 "PRIMARY_STATE_INACTIVE" : number;
                 "PRIMARY_STATE_ACTIVE" : number;
                 "PRIMARY_STATE_FINALIZED" : number;
                 "TRANSITION_STATE_CONFIGURING" : number;
                 "TRANSITION_STATE_CLEANINGUP" : number;
                 "TRANSITION_STATE_SHUTTINGDOWN" : number;
                 "TRANSITION_STATE_ACTIVATING" : number;
                 "TRANSITION_STATE_DEACTIVATING" : number;
                 "TRANSITION_STATE_ERRORPROCESSING" : number
             }>
} = original.Ros2Lifecycle_msgsMsgStateCodec;

/**
 * @brief Complete original lifecycle_msgs/msg/Transition value.
 * @details Codec identity UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Lifecycle_msgsMsgTransition
{
    /** @brief Original uint8. */
    "id": number;
    /** @brief Original string; utf8; at most 512 bytes. */
    "label": string;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Lifecycle_msgsMsgTransitionCodec: CanonicalCodec<Ros2Lifecycle_msgsMsgTransition>&{
    readonly constants : Readonly<{
                 "TRANSITION_CREATE" : number; "TRANSITION_CONFIGURE" : number; "TRANSITION_CLEANUP" : number;
                 "TRANSITION_ACTIVATE" : number;
                 "TRANSITION_DEACTIVATE" : number;
                 "TRANSITION_UNCONFIGURED_SHUTDOWN" : number;
                 "TRANSITION_INACTIVE_SHUTDOWN" : number;
                 "TRANSITION_ACTIVE_SHUTDOWN" : number;
                 "TRANSITION_DESTROY" : number;
                 "TRANSITION_ON_CONFIGURE_SUCCESS" : number;
                 "TRANSITION_ON_CONFIGURE_FAILURE" : number;
                 "TRANSITION_ON_CONFIGURE_ERROR" : number;
                 "TRANSITION_ON_CLEANUP_SUCCESS" : number;
                 "TRANSITION_ON_CLEANUP_FAILURE" : number;
                 "TRANSITION_ON_CLEANUP_ERROR" : number;
                 "TRANSITION_ON_ACTIVATE_SUCCESS" : number;
                 "TRANSITION_ON_ACTIVATE_FAILURE" : number;
                 "TRANSITION_ON_ACTIVATE_ERROR" : number;
                 "TRANSITION_ON_DEACTIVATE_SUCCESS" : number;
                 "TRANSITION_ON_DEACTIVATE_FAILURE" : number;
                 "TRANSITION_ON_DEACTIVATE_ERROR" : number;
                 "TRANSITION_ON_SHUTDOWN_SUCCESS" : number;
                 "TRANSITION_ON_SHUTDOWN_FAILURE" : number;
                 "TRANSITION_ON_SHUTDOWN_ERROR" : number;
                 "TRANSITION_ON_ERROR_SUCCESS" : number;
                 "TRANSITION_ON_ERROR_FAILURE" : number;
                 "TRANSITION_ON_ERROR_ERROR" : number;
                 "TRANSITION_CALLBACK_SUCCESS" : number;
                 "TRANSITION_CALLBACK_FAILURE" : number;
                 "TRANSITION_CALLBACK_ERROR" : number
             }>
} = original.Ros2Lifecycle_msgsMsgTransitionCodec;

/**
 * @brief Complete original lifecycle_msgs/srv/ChangeState_Request value.
 * @details Codec identity UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Lifecycle_msgsSrvChangeState_Request
{
    /** @brief Original lifecycle_msgs/msg/Transition. */
    "transition": Ros2Lifecycle_msgsMsgTransition;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Lifecycle_msgsSrvChangeState_RequestCodec: CanonicalCodec<Ros2Lifecycle_msgsSrvChangeState_Request>&
    {readonly constants : Readonly<{}>} = original.Ros2Lifecycle_msgsSrvChangeState_RequestCodec;

/**
 * @brief Complete original lifecycle_msgs/srv/ChangeState_Response value.
 * @details Codec identity UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Lifecycle_msgsSrvChangeState_Response
{
    /** @brief Original bool. */
    "success": boolean;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Lifecycle_msgsSrvChangeState_ResponseCodec: CanonicalCodec<Ros2Lifecycle_msgsSrvChangeState_Response>&
    {readonly constants : Readonly<{}>} = original.Ros2Lifecycle_msgsSrvChangeState_ResponseCodec;

/**
 * @brief Complete original lifecycle_msgs/srv/GetState_Request value.
 * @details Codec identity UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Lifecycle_msgsSrvGetState_Request
{
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Lifecycle_msgsSrvGetState_RequestCodec: CanonicalCodec<Ros2Lifecycle_msgsSrvGetState_Request>&
    {readonly constants : Readonly<{}>} = original.Ros2Lifecycle_msgsSrvGetState_RequestCodec;

/**
 * @brief Complete original lifecycle_msgs/srv/GetState_Response value.
 * @details Codec identity UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Lifecycle_msgsSrvGetState_Response
{
    /** @brief Original lifecycle_msgs/msg/State. */
    "current_state": Ros2Lifecycle_msgsMsgState;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Lifecycle_msgsSrvGetState_ResponseCodec: CanonicalCodec<Ros2Lifecycle_msgsSrvGetState_Response>&
    {readonly constants : Readonly<{}>} = original.Ros2Lifecycle_msgsSrvGetState_ResponseCodec;

/**
 * @brief Complete original sensor_msgs/msg/JointState value.
 * @details Codec identity UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Sensor_msgsMsgJointState
{
    /** @brief Original std_msgs/msg/Header. */
    "header": Ros2Std_msgsMsgHeader;
    /** @brief Original string sequence; at most 12 elements; utf8; at most 64 bytes. */
    "name": Array<string>;
    /** @brief Original float64 sequence; at most 12 elements; finite policy. */
    "position": Array<number>;
    /** @brief Original float64 sequence; at most 12 elements; finite policy. */
    "velocity": Array<number>;
    /** @brief Original float64 sequence; at most 12 elements; finite policy. */
    "effort": Array<number>;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Sensor_msgsMsgJointStateCodec: CanonicalCodec<Ros2Sensor_msgsMsgJointState>&
    {readonly constants : Readonly<{}>} = original.Ros2Sensor_msgsMsgJointStateCodec;

/**
 * @brief Complete original std_srvs/srv/Trigger_Request value.
 * @details Codec identity UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Std_srvsSrvTrigger_Request
{
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Std_srvsSrvTrigger_RequestCodec: CanonicalCodec<Ros2Std_srvsSrvTrigger_Request>&
    {readonly constants : Readonly<{}>} = original.Ros2Std_srvsSrvTrigger_RequestCodec;

/**
 * @brief Complete original std_srvs/srv/Trigger_Response value.
 * @details Codec identity UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d.
 * All declared members are required; empty components keep zero fields.
 */
export interface Ros2Std_srvsSrvTrigger_Response
{
    /** @brief Original bool. */
    "success": boolean;
    /** @brief Original string; utf8; at most 512 bytes. */
    "message": string;
}

/** @brief Original codec with complete typed fields and constants. */
export const Ros2Std_srvsSrvTrigger_ResponseCodec: CanonicalCodec<Ros2Std_srvsSrvTrigger_Response>&
    {readonly constants : Readonly<{}>} = original.Ros2Std_srvsSrvTrigger_ResponseCodec;
